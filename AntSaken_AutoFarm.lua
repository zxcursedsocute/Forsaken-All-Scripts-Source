local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local CORRECT_PLACE = 18687417158
local GIST_URL = "https://gist.githubusercontent.com/anthonycam023-pixel/c02bdb673118a05bfe7a6933b2d57c7f/raw/b4564efbd5211e23cc5473684e4e1b857d562b74/gistfile1.txt"

local LocalPlayer = Players.LocalPlayer
local CurrentChar = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HRP = CurrentChar:WaitForChild("HumanoidRootPart")
local Hum = CurrentChar:WaitForChild("Humanoid")

local FlowGM = require(ReplicatedStorage.Modules.Minigames.FlowGameManager)
local Network = require(ReplicatedStorage.Modules.Network.Network)
local DataHandler = require(ReplicatedStorage.Modules.Data.DataHandler)

local Config = {
    AutoFarm = false,
    Stealth = false,
    AutoSwitchSurvivor = false,
    WebhookEnabled = false,
    WebhookURL = "",
    TargetGens = 5,
    PuzzleDelay = 2.5,
    ToggleKey = Enum.KeyCode.RightShift,
}

local Stats = {
    Fixed = 0,
    Puzzles = 0,
    Hops = 0,
    StartTime = os.clock(),
}

local Running = false
local FixingGen = nil
local LastProgressTime = os.clock()

local CONFIG_FILE = "antsaken_config.json"
local function SaveConfig()
    pcall(function()
        local data = {
            AutoFarm = Config.AutoFarm,
            Stealth = Config.Stealth,
            AutoSwitchSurvivor = Config.AutoSwitchSurvivor,
            WebhookEnabled = Config.WebhookEnabled,
            WebhookURL = Config.WebhookURL,
            TargetGens = Config.TargetGens,
            PuzzleDelay = Config.PuzzleDelay,
            ToggleKey = Config.ToggleKey and Config.ToggleKey.Name or "RightShift",
        }
        writefile(CONFIG_FILE, HttpService:JSONEncode(data))
    end)
end

local function LoadConfig()
    pcall(function()
        if not isfile(CONFIG_FILE) then return end
        local raw = readfile(CONFIG_FILE)
        if not raw or raw == "" then return end
        local data = HttpService:JSONDecode(raw)
        if data.AutoFarm ~= nil then Config.AutoFarm = data.AutoFarm end
        if data.Stealth ~= nil then Config.Stealth = data.Stealth end
        if data.AutoSwitchSurvivor ~= nil then Config.AutoSwitchSurvivor = data.AutoSwitchSurvivor end
        if data.WebhookEnabled ~= nil then Config.WebhookEnabled = data.WebhookEnabled end
        if data.WebhookURL ~= nil then Config.WebhookURL = data.WebhookURL end
        if data.TargetGens ~= nil then Config.TargetGens = data.TargetGens end
        if data.PuzzleDelay ~= nil then Config.PuzzleDelay = data.PuzzleDelay end
        if data.ToggleKey then
            local ok, key = pcall(function() return Enum.KeyCode[data.ToggleKey] end)
            if ok and key then Config.ToggleKey = key end
        end
    end)
end

LoadConfig()

local function CalculateLevelFromEXP(exp)
    local level = math.floor((math.sqrt(exp * 20 + 11225) - 95) / 10)
    if level == 1 then
        local reqFor2 = math.floor((math.sqrt(1 * 20 + 11225) - 95) / 10)
        if reqFor2 <= 1 then
            return 1, 0, 1
        end
    end
    local prevLevelEXP = 0
    local curLevelEXP = 0
    for i = 0, math.min(level, 100) do
        local needed = math.floor(((10 * i + 95) ^ 2 - 11225) / 20)
        if i < level then
            prevLevelEXP = needed
        end
        curLevelEXP = needed
    end
    local currentInLevel = exp - prevLevelEXP
    local neededForNext = curLevelEXP - prevLevelEXP
    if neededForNext <= 0 then neededForNext = 1 end
    return math.min(level, 100), currentInLevel, neededForNext
end

local function GetSurvivorLevelInfo()
    local data = DataHandler:Get()
    if not data then return nil, nil, nil end
    local equippedName = data.Equipped.Survivor.Value
    local survFolder = data.Purchased.Survivors
    local survAsset = ReplicatedStorage.Assets.Survivors:FindFirstChild(equippedName)
    if not survAsset then return equippedName, 0, 0 end
    local survXP = survFolder:FindFirstChild(equippedName)
    if not survXP then return equippedName, 0, 0 end
    local level, curExp, maxExp = CalculateLevelFromEXP(survXP.Value)
    return equippedName, level, survXP.Value
end

local function GetMoney()
    local ls = LocalPlayer:FindFirstChild("leaderstats")
    if ls then
        local m = ls:FindFirstChild("Money")
        if m then return m.Value end
    end
    return 0
end

local function FormatMoney(n)
    local formatted = tostring(n)
    local k
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
        if k == 0 then break end
    end
    return "$" .. formatted
end

local function EquipBestSurvivor()
    if not Config.AutoSwitchSurvivor then return end

    pcall(function()
        local data = DataHandler:Get()
        if not data then return end

        local survFolder = data.Purchased.Survivors
        local survAssets = ReplicatedStorage.Assets.Survivors
        local currentEquipped = data.Equipped.Survivor.Value

        local candidates = {}
        for _, survVal in ipairs(survFolder:GetChildren()) do
            if survVal:IsA("IntValue") or survVal:IsA("NumberValue") then
                local asset = survAssets:FindFirstChild(survVal.Name)
                if asset then
                    local level = CalculateLevelFromEXP(survVal.Value)
                    table.insert(candidates, {
                        Name = survVal.Name,
                        XP = survVal.Value,
                        Level = level,
                        Asset = asset,
                    })
                end
            end
        end

        if #candidates == 0 then return end

        table.sort(candidates, function(a, b) return a.Level > b.Level end)

        local target = nil
        for _, c in ipairs(candidates) do
            if c.Level < 100 then
                target = c
                break
            end
        end

        if not target then
            target = candidates[#candidates]
        end

        if target and target.Name ~= currentEquipped then
            Network:FireServerConnection("EquipState", "REMOTE_EVENT", target.Asset, true)
            Webhook("character switched", string.format("switched to %s (level %d)", target.Name, math.min(target.Level, 100)), 3066993)
        end
    end)
end

local function WatchForLevelUp()
    if not Config.AutoSwitchSurvivor then return end

    pcall(function()
        local data = DataHandler:Get()
        if not data then return end

        local equippedName = data.Equipped.Survivor.Value
        local survFolder = data.Purchased.Survivors
        local survXP = survFolder:FindFirstChild(equippedName)

        if survXP then
            survXP:GetPropertyChangedSignal("Value"):Connect(function()
                local level = CalculateLevelFromEXP(survXP.Value)
                if level >= 100 then
                    task.delay(1, function() EquipBestSurvivor() end)
                end
            end)
        end
    end)
end

local function Webhook(title, desc, color)
    if not Config.WebhookEnabled or Config.WebhookURL == "" then return end
    task.spawn(function()
        pcall(function()
            local money = FormatMoney(GetMoney())
            local surName, surLevel = GetSurvivorLevelInfo()
            local levelStr = surLevel and surLevel >= 100 and "MAX" or tostring(surLevel or 0)
            local elapsed = math.floor(os.clock() - Stats.StartTime)
            local mins = math.floor(elapsed / 60)
            local secs = elapsed % 60
            local sessionTime = string.format("%dm %ds", mins, secs)

            local payload = HttpService:JSONEncode({
                embeds = {{
                    title = string.lower(title),
                    description = desc,
                    color = 8421504,
                    fields = {
                        { name = "money", value = money, inline = true },
                        { name = "survivor", value = string.format("%s (lvl %s)", surName or "?", levelStr), inline = true },
                        { name = "session", value = sessionTime, inline = true },
                    },
                    footer = { text = "made by anthony" },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                }}
            })

            local headers = { ["Content-Type"] = "application/json" }
            if http_request then
                http_request({ Url = Config.WebhookURL, Method = "POST", Headers = headers, Body = payload })
            elseif request then
                request({ Url = Config.WebhookURL, Method = "POST", Headers = headers, Body = payload })
            end
        end)
    end)
end

local function RefreshChar()
    CurrentChar = LocalPlayer.Character
    if CurrentChar then
        HRP = CurrentChar:FindFirstChild("HumanoidRootPart")
        Hum = CurrentChar:FindFirstChildOfClass("Humanoid")
    end
end

LocalPlayer.CharacterAdded:Connect(function(char)
    CurrentChar = char
    HRP = char:WaitForChild("HumanoidRootPart")
    Hum = char:WaitForChild("Humanoid")
    if Config.Stealth then task.delay(1, function() HidePlayerIndicators(char) end) end
end)

pcall(function()
    local VirtualUser = game:GetService("VirtualUser")
    LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

LocalPlayer.CharacterRemoving:Connect(function()
    if not Running then return end
    task.delay(5, function()
        if Running and not CurrentChar then
            ServerHop()
        end
    end)
end)

game:GetService("LogService").MessageOut:Connect(function(msg)
    if string.find(msg, "kick") or string.find(msg, "disconnect") or string.find(msg, "rejected") then
        if Running then task.delay(1, ServerHop) end
    end
end)

local function IsInRound()
    if not CurrentChar or not CurrentChar.Parent then return false end
    local parent = CurrentChar.Parent
    return parent.Name == "Survivors" or parent.Name == "Killers"
end

local stealthConnections = {}
local originalDisplayTypes = {}
local stealthLoop = nil
local originalWalkSpeed = nil
local originalMaxSlopeAngle = nil

local function HidePlayerIndicators(char)
    pcall(function()
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            originalDisplayTypes.health = hum.HealthDisplayType
            originalDisplayTypes.name = hum.DisplayDistanceType
            hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            hum.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
        end
        local head = char:FindFirstChild("Head")
        if head then
            for _, gui in ipairs(head:GetChildren()) do
                if gui:IsA("BillboardGui") or gui:IsA("SurfaceGui") then
                    gui.Enabled = false
                    gui.StudsOffset = Vector3.new(0, 100, 0)
                    table.insert(stealthConnections, gui)
                end
            end
        end
        local torso = char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
        if torso then
            for _, gui in ipairs(torso:GetChildren()) do
                if gui:IsA("BillboardGui") then
                    gui.Enabled = false
                    gui.StudsOffset = Vector3.new(0, 100, 0)
                    table.insert(stealthConnections, gui)
                end
            end
        end
        for _, part in ipairs(char:GetChildren()) do
            if part:IsA("BasePart") then
                for _, gui in ipairs(part:GetChildren()) do
                    if gui:IsA("BillboardGui") or gui:IsA("SurfaceGui") then
                        gui.Enabled = false
                        table.insert(stealthConnections, gui)
                    end
                end
            end
        end
    end)
end

local function RestorePlayerIndicators(char)
    pcall(function()
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum and originalDisplayTypes.health then
            hum.HealthDisplayType = originalDisplayTypes.health
            hum.DisplayDistanceType = originalDisplayTypes.name
        end
    end)
    for _, gui in ipairs(stealthConnections) do
        if gui and gui.Parent then
            gui.Enabled = true
            if gui.StudsOffset then
                gui.StudsOffset = Vector3.new(0, 0, 0)
            end
        end
    end
    stealthConnections = {}
    originalDisplayTypes = {}
end

function EnableStealth()
    Config.Stealth = true
    if CurrentChar then
        HidePlayerIndicators(CurrentChar)
        local hum = CurrentChar:FindFirstChildOfClass("Humanoid")
        if hum then
            originalWalkSpeed = hum.WalkSpeed
            originalMaxSlopeAngle = hum.MaxSlopeAngle
            hum.WalkSpeed = 16
            hum.MaxSlopeAngle = 45
        end
    end
    pcall(function() setsimulationradius(0) end)
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(LocalPlayer, "MaximumSimulationRadius", 0)
        end
    end)
    if stealthLoop then stealthLoop:Disconnect() end
    stealthLoop = RunService.Heartbeat:Connect(function()
        if not Config.Stealth then return end
        if not HRP or not HRP.Parent then RefreshChar() end
        if HRP and HRP.Parent then
            pcall(function()
                setsimulationradius(0)
            end)
        end
    end)
    Webhook("stealth", "stealth mode enabled", 3066993)
end

function DisableStealth()
    Config.Stealth = false
    if CurrentChar then
        RestorePlayerIndicators(CurrentChar)
        local hum = CurrentChar:FindFirstChildOfClass("Humanoid")
        if hum then
            if originalWalkSpeed then hum.WalkSpeed = originalWalkSpeed end
            if originalMaxSlopeAngle then hum.MaxSlopeAngle = originalMaxSlopeAngle end
        end
    end
    pcall(function() setsimulationradius(2048) end)
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(LocalPlayer, "MaximumSimulationRadius", 2048)
        end
    end)
    if stealthLoop then stealthLoop:Disconnect() stealthLoop = nil end
end

local function HumanDelay(minS, maxS)
    local minT = minS or 1
    local maxT = maxS or 4
    task.wait(minT + math.random() * (maxT - minT))
end

local function WalkToPosition(targetPos)
    if not HRP or not Hum or not targetPos then return end
    local currentPos = HRP.Position
    local direction = (targetPos - currentPos)
    local dist = direction.Magnitude
    if dist < 3 then return end
    local steps = math.clamp(math.floor(dist / 6), 3, 8)
    local baseDelay = 0.08 + math.random() * 0.06
    for i = 1, steps do
        if not Running or not HRP or not HRP.Parent then break end
        local alpha = i / steps
        local jitter = Vector3.new(
            (math.random() * 2 - 1) * 0.8 * (1 - alpha),
            0,
            (math.random() * 2 - 1) * 0.8 * (1 - alpha)
        )
        local point = currentPos:Lerp(targetPos, alpha) + jitter
        local lookTarget = currentPos:Lerp(targetPos, math.min(alpha + 0.15, 1))
        HRP.CFrame = CFrame.new(point + Vector3.new(0, 2, 0), lookTarget)
        if math.random() < 0.08 then
            task.wait(baseDelay + math.random() * 0.3)
        else
            task.wait(baseDelay + math.random() * 0.03)
        end
    end
end

local function RandomIdleFidget()
    if not HRP or not Hum then return end
    pcall(function()
        local baseCFrame = HRP.CFrame
        local yawOffset = math.rad(math.random(-25, 25))
        local pitchOffset = math.rad(math.random(-8, 8))
        HRP.CFrame = baseCFrame * CFrame.Angles(pitchOffset, yawOffset, 0)
        task.wait(0.3 + math.random() * 0.5)
        HRP.CFrame = baseCFrame
    end)
end

local function BuildPath(pair)
    local a, b = pair[1], pair[2]
    local path = {}
    local r, c = a.row, a.col
    local tr, tc = b.row, b.col

    table.insert(path, { row = r, col = c })

    while r ~= tr do
        r = r + (tr > r and 1 or -1)
        table.insert(path, { row = r, col = c })
    end
    while c ~= tc do
        c = c + (tc > c and 1 or -1)
        table.insert(path, { row = r, col = c })
    end

    return path
end

local function SolvePuzzle()
    local fg = FlowGM.activeGame
    if not fg then return false end
    if fg.gameEnded then return false end

    local ok = pcall(function()
        for i, pair in ipairs(fg.targetPairs) do
            fg.paths[i] = BuildPath(pair)
        end
        if fg.updateGui then fg:updateGui() end
    end)

    task.wait(0.1)

    if ok then
        pcall(function()
            fg:EndGame(true)
        end)
    end

    if ok then
        Stats.Puzzles += 1
    end
    return ok
end

local function FindGenerators()
    local gens = {}
    local mapRoot = workspace:FindFirstChild("Map")
    if not mapRoot then return gens end

    local ingame = mapRoot:FindFirstChild("Ingame")
    if not ingame then return gens end
    local map = ingame:FindFirstChild("Map")
    if not map then return gens end

    for _, obj in ipairs(map:GetChildren()) do
        if obj.Name == "Generator" and obj:IsA("Model") then
            local prog = obj:FindFirstChild("Progress")
            local remotes = obj:FindFirstChild("Remotes")
            local positions = obj:FindFirstChild("Positions")
            local main = obj:FindFirstChild("Main")
            if prog and remotes and obj.PrimaryPart then
                local posPart = nil
                if positions then
                    posPart = positions:FindFirstChild("Center")
                        or positions:FindFirstChild("Left")
                        or positions:FindFirstChild("Right")
                end
                table.insert(gens, {
                    Model = obj,
                    Progress = prog,
                    RF = remotes:FindFirstChild("RF"),
                    RE = remotes:FindFirstChild("RE"),
                    Prompt = main and main:FindFirstChild("Prompt"),
                    Position = posPart and posPart.Position or obj.PrimaryPart.Position,
                    GenPosition = obj.PrimaryPart.Position,
                })
            end
        end
    end
    return gens
end

local function EnterGenerator(gen)
    if not gen.Prompt then return false end
    pcall(function()
        gen.Prompt.Enabled = true
        task.wait(0.05)
        fireproximityprompt(gen.Prompt, 0.25)
    end)
    local waited = 0
    while not FlowGM.activeGame and waited < 4 do
        task.wait(0.1)
        waited += 0.1
    end
    if not FlowGM.activeGame and gen.RF then
        pcall(function() gen.RF:InvokeServer("Enter") end)
        waited = 0
        while not FlowGM.activeGame and waited < 3 do
            task.wait(0.1)
            waited += 0.1
        end
    end
    return FlowGM.activeGame ~= nil
end

local function WaitNextPuzzle(timeout)
    timeout = timeout or 5
    local waited = 0
    while waited < timeout do
        if FlowGM.activeGame and not FlowGM.activeGame.gameEnded then
            return true
        end
        task.wait(0.15)
        waited += 0.15
    end
    return false
end

local function FixGen(gen)
    if not gen.Model or not gen.Model.Parent then return false end
    if gen.Progress.Value >= 100 then return true end

    FixingGen = gen.Model

    if not HRP or not HRP.Parent then RefreshChar() end
    if not HRP then FixingGen = nil return false end

    local targetPos = gen.Position + Vector3.new(0, 2, 0)
    HRP.CFrame = CFrame.new(targetPos)
    task.wait(0.2)

    if not EnterGenerator(gen) then
        FixingGen = nil
        return false
    end

    local maxPuzzles = 10
    local puzzleCount = 0

    while Running and gen.Model and gen.Model.Parent and gen.Progress.Value < 100 and IsInRound() and puzzleCount < maxPuzzles do
        if not WaitNextPuzzle(5) then
            break
        end

        pcall(function() SolvePuzzle() end)
        puzzleCount += 1
        LastProgressTime = os.clock()

        task.wait(Config.PuzzleDelay)
    end

    FixingGen = nil
    local completed = gen.Progress.Value >= 100
    if completed then LastProgressTime = os.clock() end
    return completed
end

local function FarmLoop()
    Running = true
    Stats.Fixed = 0
    Stats.StartTime = os.clock()
    local diedInRound = false
    local diedConn = nil

    if Config.AutoSwitchSurvivor then
        EquipBestSurvivor()
        WatchForLevelUp()
    end

    Webhook("farm started", string.format("target: %d generators", Config.TargetGens), 3066993)
    LastProgressTime = os.clock()

    while Running do
        if diedInRound then
            diedInRound = false
            if diedConn then pcall(function() diedConn:Disconnect() end) diedConn = nil end
            Webhook("died", "player died in round. hopping...", 15158332)
            task.wait(1)
            ServerHop()
            break
        end

        if not IsInRound() then
            if diedConn then pcall(function() diedConn:Disconnect() end) diedConn = nil end
            task.wait(1)
            LastProgressTime = os.clock()
            continue
        end

        RefreshChar()
        if not diedConn and HRP and HRP.Parent then
            local hum = HRP.Parent:FindFirstChildOfClass("Humanoid")
            if hum then
                diedConn = hum.Died:Connect(function()
                    if Running and IsInRound() then
                        diedInRound = true
                    end
                end)
            end
        end

        local totalProgress = Stats.Fixed + Stats.Puzzles
        if totalProgress > 0 and (os.clock() - LastProgressTime) > 5 then
            Webhook("stalled", string.format("no progress in 5s. fixed: %d | puzzles: %d", Stats.Fixed, Stats.Puzzles), 16776960)
            task.wait(1)
            ServerHop()
            break
        end

        RefreshChar()

        local gens = FindGenerators()
        local unfixed = {}
        for _, g in ipairs(gens) do
            if g.Progress.Value < 100 then
                table.insert(unfixed, g)
            end
        end

        if #unfixed == 0 then
            task.wait(2)
            continue
        end

        for _, g in ipairs(unfixed) do
            if not Running then break end
            if not IsInRound() then break end
            if g.Progress.Value < 100 and g.Model and g.Model.Parent then
                local success = FixGen(g)
                if success then
                    Stats.Fixed += 1
                    Webhook("generator fixed", string.format("fixed: %d/%d | puzzles: %d", Stats.Fixed, Config.TargetGens, Stats.Puzzles), 3066993)
                end
            end
        end

        if Stats.Fixed >= Config.TargetGens then
            Webhook("all done", string.format("fixed %d generators. hopping to low-pop server...", Stats.Fixed), 3066993)
            Running = false
            task.wait(2)
            ServerHop()
            break
        end
    end
end

function ServerHop()
    Stats.Hops += 1

    local money = FormatMoney(GetMoney())
    local surName, surLevel = GetSurvivorLevelInfo()
    local levelStr = (surLevel and surLevel >= 100) and "MAX" or tostring(surLevel or 0)
    local elapsed = math.floor(os.clock() - Stats.StartTime)
    local sessionTime = string.format("%dm %ds", math.floor(elapsed / 60), elapsed % 60)
    Webhook("hopping", string.format("fixed: %d/%d | puzzles: %d\nmoney: %s | survivor: %s (lvl %s)\nsession: %s", Stats.Fixed, Config.TargetGens, Stats.Puzzles, money, surName or "?", levelStr, sessionTime), 16776960)

    pcall(function()
        if getgenv then
            getgenv().AntsakenAutoExec = true
            getgenv().AntsakenConfig = {
                AutoFarm = Config.AutoFarm,
                Stealth = Config.Stealth,
                AutoSwitchSurvivor = Config.AutoSwitchSurvivor,
                WebhookEnabled = Config.WebhookEnabled,
                WebhookURL = Config.WebhookURL,
                TargetGens = Config.TargetGens,
                PuzzleDelay = Config.PuzzleDelay,
            }
            getgenv().AntsakenStats = {
                Fixed = Stats.Fixed,
                Puzzles = Stats.Puzzles,
                Hops = Stats.Hops,
            }
        end
    end)

    pcall(function()
        local servers = HttpService:JSONDecode(game:HttpGet(
            "https://games.roblox.com/v1/games/" .. CORRECT_PLACE .. "/servers/Public?sortOrder=Asc&limit=100&excludeFullServers=true"
        ))
        if servers and servers.data then
            local current = game.JobId
            local candidates = {}
            for _, s in ipairs(servers.data) do
                if s.id ~= current and s.playing <= 3 then
                    table.insert(candidates, s)
                end
            end
            table.sort(candidates, function(a, b) return a.playing < b.playing end)
            if #candidates > 0 then
                local target = candidates[1]
                Webhook("hopping", string.format("server: %d players | %s", target.playing, target.id), 16776960)
                TeleportService:TeleportToPlaceInstance(CORRECT_PLACE, target.id, LocalPlayer)
            else
                Webhook("no server", "all servers full. retrying in 10s...", 15158332)
                task.delay(10, ServerHop)
            end
        end
    end)
end

local function CreateUI()
    if LocalPlayer.PlayerGui:FindFirstChild("AntsakenUI") then
        LocalPlayer.PlayerGui.AntsakenUI:Destroy()
    end

    local gui = Instance.new("ScreenGui")
    gui.Name = "AntsakenUI"
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = LocalPlayer.PlayerGui

    local main = Instance.new("CanvasGroup")
    main.Name = "Main"
    main.Size = UDim2.new(0, 260, 0, 460)
    main.Position = UDim2.new(0.5, -130, 0.5, -230)
    main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    main.BackgroundTransparency = 0
    main.BorderSizePixel = 0
    main.Active = true
    main.ClipsDescendants = true
    main.Parent = gui
    Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)

    local mainStroke = Instance.new("UIStroke", main)
    mainStroke.Color = Color3.fromRGB(30, 30, 35)
    mainStroke.Thickness = 1.2
    mainStroke.Transparency = 0.3

    local mainGradient = Instance.new("UIGradient", mainStroke)
    mainGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 100, 110))})

    task.spawn(function()
        local t = 0
        while main.Parent do
            t += 0.008
            mainGradient.Offset = Vector2.new(math.sin(t) * 0.5, 0)
            task.wait()
        end
    end)

    local titleBar = Instance.new("Frame")
    titleBar.Name = "TitleBar"
    titleBar.Size = UDim2.new(1, 0, 0, 36)
    titleBar.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
    titleBar.BackgroundTransparency = 0
    titleBar.BorderSizePixel = 0
    titleBar.ZIndex = 5
    titleBar.Parent = main
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 8)

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -20, 1, 0)
    title.Position = UDim2.new(0, 18, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = ""
    title.TextColor3 = Color3.fromRGB(240, 240, 245)
    title.Font = Enum.Font.GothamBlack
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.ZIndex = 6
    title.Parent = titleBar

    task.spawn(function()
        local full = "antsaken"
        for i = 1, #full do
            title.Text = string.sub(full, 1, i)
            task.wait(0.06)
        end
    end)

    local discordBtn = Instance.new("TextButton")
    discordBtn.Size = UDim2.new(0, 30, 0, 22)
    discordBtn.Position = UDim2.new(1, -38, 0.5, -11)
    discordBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
    discordBtn.BorderSizePixel = 0
    discordBtn.Text = ""
    discordBtn.ZIndex = 7
    discordBtn.AutoButtonColor = false
    discordBtn.Parent = titleBar
    Instance.new("UICorner", discordBtn).CornerRadius = UDim.new(0, 5)

    local discordStroke = Instance.new("UIStroke", discordBtn)
    discordStroke.Color = Color3.fromRGB(70, 70, 75)
    discordStroke.Thickness = 0.8
    discordStroke.Transparency = 0.3

    local discordIcon = Instance.new("TextLabel")
    discordIcon.Size = UDim2.new(1, 0, 1, 0)
    discordIcon.BackgroundTransparency = 1
    discordIcon.Text = '<font family="rbxasset://luaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"><b>discord</b></font>'
    discordIcon.TextColor3 = Color3.fromRGB(180, 180, 185)
    discordIcon.RichText = true
    discordIcon.TextSize = 14
    discordIcon.Font = Enum.Font.GothamBold
    discordIcon.ZIndex = 8
    discordIcon.Parent = discordBtn

    discordBtn.MouseEnter:Connect(function()
        TweenService:Create(discordBtn, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(45, 45, 50)}):Play()
        TweenService:Create(discordStroke, TweenInfo.new(0.25), {Color = Color3.fromRGB(140, 140, 150)}):Play()
        TweenService:Create(discordIcon, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
    end)
    discordBtn.MouseLeave:Connect(function()
        TweenService:Create(discordBtn, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(30, 30, 32)}):Play()
        TweenService:Create(discordStroke, TweenInfo.new(0.3), {Color = Color3.fromRGB(70, 70, 75)}):Play()
        TweenService:Create(discordIcon, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(180, 180, 185)}):Play()
    end)
    discordBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if setclipboard then
                setclipboard("https://discord.gg/teDtqdHYQ9")
            end
        end)

        for i = 1, 2 do
            local ring = Instance.new("Frame")
            ring.Size = UDim2.new(0, 30, 0, 22)
            ring.Position = UDim2.new(1, -38, 0.5, -11)
            ring.BackgroundColor3 = Color3.fromRGB(180, 180, 185)
            ring.BackgroundTransparency = 0.5
            ring.BorderSizePixel = 0
            ring.ZIndex = 6
            ring.Parent = titleBar
            Instance.new("UICorner", ring).CornerRadius = UDim.new(0, 5)
            task.delay(i * 0.08, function()
                TweenService:Create(ring, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(0, 60, 0, 40),
                    Position = UDim2.new(1, -48, 0.5, -20),
                    BackgroundTransparency = 1,
                }):Play()
                task.delay(0.5, function() ring:Destroy() end)
            end)
        end

        TweenService:Create(discordBtn, TweenInfo.new(0.06), {BackgroundColor3 = Color3.fromRGB(20, 20, 22)}):Play()
        task.delay(0.06, function()
            TweenService:Create(discordBtn, TweenInfo.new(0.2, Enum.EasingStyle.Back), {BackgroundColor3 = Color3.fromRGB(45, 45, 50)}):Play()
        end)
    end)

    local content = Instance.new("ScrollingFrame")
    content.Name = "Content"
    content.Size = UDim2.new(1, -10, 1, -40)
    content.Position = UDim2.new(0, 5, 0, 40)
    content.BackgroundTransparency = 1
    content.ScrollBarThickness = 2
    content.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
    content.BorderSizePixel = 0
    content.CanvasSize = UDim2.new(0, 0, 0, 0)
    content.AutomaticCanvasSize = Enum.AutomaticSize.Y
    content.ZIndex = 3
    content.Parent = main

    local layout = Instance.new("UIListLayout", content)
    layout.Padding = UDim.new(0, 6)
    layout.SortOrder = Enum.SortOrder.LayoutOrder

    local order = 0
    local function NO() order += 1; return order end

    local function Section(text)
        local f = Instance.new("Frame")
        f.Size = UDim2.new(1, 0, 0, 24)
        f.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        f.BackgroundTransparency = 0
        f.BorderSizePixel = 0
        f.LayoutOrder = NO()
        f.ZIndex = 3
        f.Parent = content
        Instance.new("UICorner", f).CornerRadius = UDim.new(0, 4)

        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, -10, 1, 0)
        lbl.Position = UDim2.new(0, 10, 0, 0)
        lbl.BackgroundTransparency = 1
        lbl.Text = string.lower(text)
        lbl.TextColor3 = Color3.fromRGB(95, 95, 100)
        lbl.Font = Enum.Font.GothamBlack
        lbl.TextSize = 8
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.ZIndex = 3
        lbl.Parent = f
    end

    local function Btn(text, callback)
        local b = Instance.new("TextButton")
        b.Size = UDim2.new(1, 0, 0, 32)
        b.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        b.BackgroundTransparency = 0
        b.Text = ""
        b.BorderSizePixel = 0
        b.LayoutOrder = NO()
        b.ZIndex = 4
        b.AutoButtonColor = false
        b.Parent = content
        Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)

        local bStroke = Instance.new("UIStroke", b)
        bStroke.Color = Color3.fromRGB(70, 70, 75)
        bStroke.Thickness = 1
        bStroke.Transparency = 0.3

        local innerLabel = Instance.new("TextLabel")
        innerLabel.Size = UDim2.new(1, -24, 1, 0)
        innerLabel.Position = UDim2.new(0, 12, 0, 0)
        innerLabel.BackgroundTransparency = 1
        innerLabel.Text = string.lower(text)
        innerLabel.TextColor3 = Color3.fromRGB(200, 200, 205)
        innerLabel.Font = Enum.Font.GothamBold
        innerLabel.TextSize = 11
        innerLabel.TextXAlignment = Enum.TextXAlignment.Left
        innerLabel.ZIndex = 5
        innerLabel.Parent = b

        local arrow = Instance.new("TextLabel")
        arrow.Size = UDim2.new(0, 16, 1, 0)
        arrow.Position = UDim2.new(1, -22, 0, 0)
        arrow.BackgroundTransparency = 1
        arrow.Text = ">"
        arrow.TextColor3 = Color3.fromRGB(60, 60, 65)
        arrow.Font = Enum.Font.GothamBold
        arrow.TextSize = 10
        arrow.ZIndex = 5
        arrow.Parent = b

        b.MouseEnter:Connect(function()
            TweenService:Create(b, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(22, 22, 24)}):Play()
            TweenService:Create(bStroke, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {Color = Color3.fromRGB(120, 120, 125)}):Play()
            TweenService:Create(arrow, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {Position = UDim2.new(1, -18, 0, 0), TextColor3 = Color3.fromRGB(200, 200, 205)}):Play()
        end)
        b.MouseLeave:Connect(function()
            TweenService:Create(b, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(14, 14, 14)}):Play()
            TweenService:Create(bStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Color = Color3.fromRGB(70, 70, 75)}):Play()
            TweenService:Create(arrow, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Position = UDim2.new(1, -22, 0, 0), TextColor3 = Color3.fromRGB(60, 60, 65)}):Play()
        end)
        b.MouseButton1Down:Connect(function()
            TweenService:Create(b, TweenInfo.new(0.04), {BackgroundColor3 = Color3.fromRGB(30, 30, 32)}):Play()
        end)
        b.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)
    end

    local function Toggle(text, configKey, callback)
        local f = Instance.new("Frame")
        f.Size = UDim2.new(1, 0, 0, 32)
        f.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        f.BackgroundTransparency = 0
        f.BorderSizePixel = 0
        f.LayoutOrder = NO()
        f.ZIndex = 3
        f.Parent = content
        Instance.new("UICorner", f).CornerRadius = UDim.new(0, 5)

        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, -46, 1, 0)
        lbl.Position = UDim2.new(0, 8, 0, 0)
        lbl.BackgroundTransparency = 1
        lbl.Text = string.lower(text)
        lbl.TextColor3 = Color3.fromRGB(200, 200, 205)
        lbl.Font = Enum.Font.GothamBold
        lbl.TextSize = 10
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.ZIndex = 4
        lbl.Parent = f

        local isOn = Config[configKey] or false

        local tgBg = Instance.new("Frame")
        tgBg.Size = UDim2.new(0, 34, 0, 16)
        tgBg.Position = UDim2.new(1, -42, 0.5, -8)
        tgBg.BackgroundColor3 = isOn and Color3.fromRGB(200, 200, 205) or Color3.fromRGB(30, 30, 32)
        tgBg.BorderSizePixel = 0
        tgBg.ZIndex = 4
        tgBg.Parent = f
        Instance.new("UICorner", tgBg).CornerRadius = UDim.new(1, 0)

        local tgCircle = Instance.new("Frame")
        tgCircle.Size = UDim2.new(0, 12, 0, 12)
        tgCircle.Position = isOn and UDim2.new(1, -15, 0.5, -6) or UDim2.new(0, 2, 0.5, -6)
        tgCircle.BackgroundColor3 = isOn and Color3.fromRGB(14, 14, 14) or Color3.fromRGB(255, 255, 255)
        tgCircle.BorderSizePixel = 0
        tgCircle.ZIndex = 5
        tgCircle.Parent = tgBg
        Instance.new("UICorner", tgCircle).CornerRadius = UDim.new(1, 0)

        f.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(20, 20, 22)}):Play()
            end
        end)
        f.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(14, 14, 14)}):Play()
            end
        end)

        tgBg.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                Config[configKey] = not Config[configKey]
                local on = Config[configKey]

                TweenService:Create(tgCircle, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Position = on and UDim2.new(1, -15, 0.5, -6) or UDim2.new(0, 2, 0.5, -6),
                    BackgroundColor3 = on and Color3.fromRGB(14, 14, 14) or Color3.fromRGB(255, 255, 255),
                }):Play()
                TweenService:Create(tgBg, TweenInfo.new(0.2), {
                    BackgroundColor3 = on and Color3.fromRGB(200, 200, 205) or Color3.fromRGB(30, 30, 32),
                }):Play()

                if callback then callback(on) end
                SaveConfig()
            end
        end)

        return function(state)
            Config[configKey] = state
            TweenService:Create(tgCircle, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                Position = state and UDim2.new(1, -15, 0.5, -6) or UDim2.new(0, 2, 0.5, -6),
                BackgroundColor3 = state and Color3.fromRGB(14, 14, 14) or Color3.fromRGB(255, 255, 255),
            }):Play()
            TweenService:Create(tgBg, TweenInfo.new(0.2), {
                BackgroundColor3 = state and Color3.fromRGB(200, 200, 205) or Color3.fromRGB(30, 30, 32),
            }):Play()
            SaveConfig()
        end
    end

    local function TextInput(text, configKey, placeholder)
        local f = Instance.new("Frame")
        f.Size = UDim2.new(1, 0, 0, 42)
        f.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        f.BackgroundTransparency = 0
        f.BorderSizePixel = 0
        f.LayoutOrder = NO()
        f.ZIndex = 3
        f.Parent = content
        Instance.new("UICorner", f).CornerRadius = UDim.new(0, 5)

        f.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(20, 20, 22)}):Play()
            end
        end)
        f.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(14, 14, 14)}):Play()
            end
        end)

        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, -8, 0, 12)
        lbl.Position = UDim2.new(0, 8, 0, 2)
        lbl.BackgroundTransparency = 1
        lbl.Text = string.lower(text)
        lbl.TextColor3 = Color3.fromRGB(95, 95, 100)
        lbl.Font = Enum.Font.GothamBlack
        lbl.TextSize = 8
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.ZIndex = 4
        lbl.Parent = f

        local tb = Instance.new("TextBox")
        tb.Size = UDim2.new(1, -14, 0, 18)
        tb.Position = UDim2.new(0, 7, 0, 16)
        tb.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        tb.TextColor3 = Color3.fromRGB(170, 170, 180)
        tb.Text = Config[configKey] or ""
        tb.PlaceholderText = string.lower(placeholder or "enter...")
        tb.PlaceholderColor3 = Color3.fromRGB(55, 55, 55)
        tb.Font = Enum.Font.Gotham
        tb.TextSize = 9
        tb.ClearTextOnFocus = false
        tb.BorderSizePixel = 0
        tb.TextXAlignment = Enum.TextXAlignment.Left
        tb.ZIndex = 4
        tb.Parent = f
        Instance.new("UICorner", tb).CornerRadius = UDim.new(0, 3)

        tb.FocusLost:Connect(function()
            Config[configKey] = tb.Text
            SaveConfig()
        end)
    end


    Section("controls")
    local disclaimerShown = false
    local setAutoFarmVisual
    setAutoFarmVisual = Toggle("auto farm", "AutoFarm", function(on)
        if on then
            if disclaimerShown then
                if not Running then task.spawn(FarmLoop) end
            else
                local popup = Instance.new("Frame")
                popup.Size = UDim2.new(0, 220, 0, 120)
                popup.Position = UDim2.new(0.5, -110, 0.5, -60)
                popup.BackgroundColor3 = Color3.fromRGB(12, 12, 14)
                popup.BorderSizePixel = 0
                popup.ZIndex = 100
                popup.Parent = gui
                Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 6)

                local msg = Instance.new("TextLabel")
                msg.Size = UDim2.new(1, -16, 0, 40)
                msg.Position = UDim2.new(0, 8, 0, 8)
                msg.BackgroundTransparency = 1
                msg.Text = "this auto farm has issues with new player servers, continue?"
                msg.TextColor3 = Color3.fromRGB(180, 180, 190)
                msg.Font = Enum.Font.GothamBold
                msg.TextSize = 10
                msg.TextWrapped = true
                msg.TextXAlignment = Enum.TextXAlignment.Left
                msg.ZIndex = 101
                msg.Parent = popup

                local yesBtn = Instance.new("TextButton")
                yesBtn.Size = UDim2.new(0, 90, 0, 28)
                yesBtn.Position = UDim2.new(0, 8, 1, -36)
                yesBtn.BackgroundColor3 = Color3.fromRGB(200, 200, 205)
                yesBtn.Text = "yes"
                yesBtn.TextColor3 = Color3.fromRGB(14, 14, 14)
                yesBtn.Font = Enum.Font.GothamBold
                yesBtn.TextSize = 11
                yesBtn.BorderSizePixel = 0
                yesBtn.AutoButtonColor = false
                yesBtn.ZIndex = 101
                yesBtn.Parent = popup
                Instance.new("UICorner", yesBtn).CornerRadius = UDim.new(0, 4)

                local noBtn = Instance.new("TextButton")
                noBtn.Size = UDim2.new(0, 90, 0, 28)
                noBtn.Position = UDim2.new(1, -98, 1, -36)
                noBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
                noBtn.Text = "no"
                noBtn.TextColor3 = Color3.fromRGB(160, 160, 170)
                noBtn.Font = Enum.Font.GothamBold
                noBtn.TextSize = 11
                noBtn.BorderSizePixel = 0
                noBtn.AutoButtonColor = false
                noBtn.ZIndex = 101
                noBtn.Parent = popup
                Instance.new("UICorner", noBtn).CornerRadius = UDim.new(0, 4)

                yesBtn.MouseButton1Click:Connect(function()
                    popup:Destroy()
                    disclaimerShown = true
                    if not Running then task.spawn(FarmLoop) end
                end)
                noBtn.MouseButton1Click:Connect(function()
                    popup:Destroy()
                    if setAutoFarmVisual then setAutoFarmVisual(false) end
                end)
            end
        else
            Running = false
        end
    end)
    Btn("UNLOAD", function()
        Running = false
        SaveConfig()
        pcall(function() DisableStealth() end)
        pcall(function() gui:Destroy() end)
    end)
    Btn("HOP NOW", function()
        ServerHop()
    end)

    local function KeybindPicker(label, configKey)
        local f = Instance.new("Frame")
        f.Size = UDim2.new(1, 0, 0, 32)
        f.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        f.BackgroundTransparency = 0
        f.BorderSizePixel = 0
        f.LayoutOrder = NO()
        f.ZIndex = 3
        f.Parent = content
        Instance.new("UICorner", f).CornerRadius = UDim.new(0, 5)

        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, -80, 1, 0)
        lbl.Position = UDim2.new(0, 8, 0, 0)
        lbl.BackgroundTransparency = 1
        lbl.Text = string.lower(label)
        lbl.TextColor3 = Color3.fromRGB(200, 200, 205)
        lbl.Font = Enum.Font.GothamBold
        lbl.TextSize = 10
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.ZIndex = 4
        lbl.Parent = f

        local keyBtn = Instance.new("TextButton")
        keyBtn.Size = UDim2.new(0, 60, 0, 20)
        keyBtn.Position = UDim2.new(1, -68, 0.5, -10)
        keyBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        keyBtn.TextColor3 = Color3.fromRGB(170, 170, 180)
        keyBtn.Text = Config[configKey] and string.gsub(tostring(Config[configKey].Name), "^Enum%.KeyCode%.", "") or "None"
        keyBtn.Font = Enum.Font.GothamBold
        keyBtn.TextSize = 9
        keyBtn.BorderSizePixel = 0
        keyBtn.AutoButtonColor = false
        keyBtn.ZIndex = 4
        keyBtn.Parent = f
        Instance.new("UICorner", keyBtn).CornerRadius = UDim.new(0, 3)

        f.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(20, 20, 22)}):Play()
            end
        end)
        f.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(14, 14, 14)}):Play()
            end
        end)

        local listening = false
        keyBtn.MouseButton1Click:Connect(function()
            if listening then return end
            listening = true
            keyBtn.Text = "..."

            local conn
            conn = UserInputService.InputBegan:Connect(function(inp, gpe)
                if gpe then return end
                if inp.UserInputType == Enum.UserInputType.Keyboard then
                    Config[configKey] = inp.KeyCode
                    keyBtn.Text = string.gsub(tostring(inp.KeyCode), "^Enum%.KeyCode%.", "")
                    listening = false
                    if conn then conn:Disconnect() end
                    SaveConfig()
                end
            end)
        end)

        keyBtn.MouseEnter:Connect(function()
            TweenService:Create(keyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(30, 30, 32)}):Play()
        end)
        keyBtn.MouseLeave:Connect(function()
            TweenService:Create(keyBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(24, 24, 24)}):Play()
        end)
    end

    KeybindPicker("Toggle UI", "ToggleKey")

    Section("features")
    Toggle("Stealth Mode", "Stealth", function(on)
        if on then EnableStealth() else DisableStealth() end
    end)
    Toggle("Auto-Switch Survivor", "AutoSwitchSurvivor", function(on)
        if on then task.spawn(EquipBestSurvivor) end
    end)

    do
        local f = Instance.new("Frame")
        f.Size = UDim2.new(1, 0, 0, 32)
        f.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        f.BorderSizePixel = 0
        f.LayoutOrder = NO()
        f.ZIndex = 3
        f.Parent = content
        Instance.new("UICorner", f).CornerRadius = UDim.new(0, 5)

        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, -100, 1, 0)
        lbl.Position = UDim2.new(0, 8, 0, 0)
        lbl.BackgroundTransparency = 1
        lbl.Text = "puzzle delay"
        lbl.TextColor3 = Color3.fromRGB(200, 200, 205)
        lbl.Font = Enum.Font.GothamBold
        lbl.TextSize = 10
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.ZIndex = 4
        lbl.Parent = f

        local valLabel = Instance.new("TextLabel")
        valLabel.Size = UDim2.new(0, 30, 0, 20)
        valLabel.Position = UDim2.new(1, -62, 0.5, -10)
        valLabel.BackgroundTransparency = 1
        valLabel.Text = string.format("%.1fs", Config.PuzzleDelay)
        valLabel.TextColor3 = Color3.fromRGB(170, 170, 180)
        valLabel.Font = Enum.Font.GothamBold
        valLabel.TextSize = 10
        valLabel.ZIndex = 4
        valLabel.Parent = f

        local function makeMinusPlus(text, posX, onClick)
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(0, 20, 0, 20)
            btn.Position = posX
            btn.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
            btn.Text = text
            btn.TextColor3 = Color3.fromRGB(160, 160, 170)
            btn.Font = Enum.Font.GothamBold
            btn.TextSize = 12
            btn.BorderSizePixel = 0
            btn.AutoButtonColor = false
            btn.ZIndex = 4
            btn.Parent = f
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 3)
            btn.MouseButton1Click:Connect(onClick)
            btn.MouseEnter:Connect(function()
                TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(50, 50, 55)}):Play()
            end)
            btn.MouseLeave:Connect(function()
                TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(30, 30, 32)}):Play()
            end)
        end

        makeMinusPlus("-", UDim2.new(1, -90, 0.5, -10), function()
            Config.PuzzleDelay = math.max(2, Config.PuzzleDelay - 0.5)
            valLabel.Text = string.format("%.1fs", Config.PuzzleDelay)
            SaveConfig()
        end)
        makeMinusPlus("+", UDim2.new(1, -24, 0.5, -10), function()
            Config.PuzzleDelay = math.min(5, Config.PuzzleDelay + 0.5)
            valLabel.Text = string.format("%.1fs", Config.PuzzleDelay)
            SaveConfig()
        end)

        f.InputBegan:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(20, 20, 22)}):Play()
            end
        end)
        f.InputEnded:Connect(function(inp)
            if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                TweenService:Create(f, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(14, 14, 14)}):Play()
            end
        end)
    end

    Section("webhook")
    Toggle("Enable Webhook", "WebhookEnabled", function(on)
        if on then Webhook("connected", "antsaken reporting.", 3066993) end
    end)
    TextInput("Webhook URL", "WebhookURL", "paste discord webhook url...")

    Section("stats")

    local sf = Instance.new("Frame")
    sf.Size = UDim2.new(1, 0, 0, 50)
    sf.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
    sf.BackgroundTransparency = 0
    sf.BorderSizePixel = 0
    sf.LayoutOrder = NO()
    sf.ZIndex = 3
    sf.Parent = content
    Instance.new("UICorner", sf).CornerRadius = UDim.new(0, 5)

    local st = Instance.new("TextLabel")
    st.Size = UDim2.new(1, -10, 1, -4)
    st.Position = UDim2.new(0, 5, 0, 2)
    st.BackgroundTransparency = 1
    st.TextColor3 = Color3.fromRGB(160, 160, 170)
    st.Font = Enum.Font.GothamBold
    st.TextSize = 9
    st.TextXAlignment = Enum.TextXAlignment.Left
    st.TextYAlignment = Enum.TextYAlignment.Top
    st.TextWrapped = true
    st.ZIndex = 4
    st.Parent = sf

    task.spawn(function()
        while gui.Parent do
            local e = math.floor(os.clock() - Stats.StartTime)
            st.Text = string.format(
                "fixed: %d / %d     puzzles: %d\nhops: %d     time: %dm %ds",
                Stats.Fixed, Config.TargetGens, Stats.Puzzles,
                Stats.Hops, math.floor(e / 60), e % 60
            )
            task.wait(0.5)
        end
    end)

    local sl = Instance.new("Frame")
    sl.Size = UDim2.new(1, 0, 0, 22)
    sl.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    sl.BackgroundTransparency = 0
    sl.BorderSizePixel = 0
    sl.LayoutOrder = NO()
    sl.ZIndex = 3
    sl.Parent = content
    Instance.new("UICorner", sl).CornerRadius = UDim.new(0, 4)

    local slLabel = Instance.new("TextLabel")
    slLabel.Size = UDim2.new(1, -8, 1, 0)
    slLabel.Position = UDim2.new(0, 8, 0, 0)
    slLabel.BackgroundTransparency = 1
    slLabel.Text = "idle"
    slLabel.TextColor3 = Color3.fromRGB(80, 80, 85)
    slLabel.Font = Enum.Font.GothamBold
    slLabel.TextSize = 9
    slLabel.TextXAlignment = Enum.TextXAlignment.Left
    slLabel.ZIndex = 4
    slLabel.Parent = sl

    local slDot = Instance.new("Frame")
    slDot.Size = UDim2.new(0, 5, 0, 5)
    slDot.Position = UDim2.new(1, -12, 0.5, -2)
    slDot.BackgroundColor3 = Color3.fromRGB(80, 80, 85)
    slDot.BorderSizePixel = 0
    slDot.ZIndex = 5
    slDot.Parent = sl
    Instance.new("UICorner", slDot).CornerRadius = UDim.new(1, 0)

    task.spawn(function()
        local pulseT = 0
        while gui.Parent do
            pulseT += 0.03
            if Running then
                if IsInRound() then
                    slLabel.Text = string.format("farming %d/%d", Stats.Fixed, Config.TargetGens)
                    slLabel.TextColor3 = Color3.fromRGB(220, 170, 60)
                    slDot.BackgroundColor3 = Color3.fromRGB(220, 170, 60)
                    slDot.BackgroundTransparency = 0.3 + math.sin(pulseT * 2) * 0.3
                else
                    slLabel.Text = "waiting for round"
                    slLabel.TextColor3 = Color3.fromRGB(80, 150, 220)
                    slDot.BackgroundColor3 = Color3.fromRGB(80, 150, 220)
                    slDot.BackgroundTransparency = 0.2 + math.sin(pulseT * 1.5) * 0.4
                end
            else
                slLabel.Text = "idle"
                slLabel.TextColor3 = Color3.fromRGB(80, 80, 85)
                slDot.BackgroundColor3 = Color3.fromRGB(80, 80, 85)
                slDot.BackgroundTransparency = 0.5 + math.sin(pulseT) * 0.3
            end
            task.wait()
        end
    end)

    local disclaimer = Instance.new("TextLabel")
    disclaimer.Size = UDim2.new(1, 0, 0, 14)
    disclaimer.BackgroundTransparency = 1
    disclaimer.Text = "made by anthony"
    disclaimer.TextColor3 = Color3.fromRGB(60, 60, 65)
    disclaimer.Font = Enum.Font.Gotham
    disclaimer.TextSize = 8
    disclaimer.LayoutOrder = NO()
    disclaimer.ZIndex = 3
    disclaimer.Parent = content


    do
        local dragging = false
        local dragStartAbs, startAbsPos

        titleBar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStartAbs = input.Position
                startAbsPos = main.AbsolutePosition
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - dragStartAbs
                local viewportSize = workspace.CurrentCamera.ViewportSize
                main.Position = UDim2.new(
                    0, startAbsPos.X + delta.X,
                    0, startAbsPos.Y + delta.Y
                )
            end
        end)
    end

    main.GroupTransparency = 1

    local textElements = {}
    for _, obj in ipairs(content:GetDescendants()) do
        if (obj:IsA("TextLabel") or obj:IsA("TextButton")) and obj.Text ~= "" and obj.TextTransparency < 1 then
            table.insert(textElements, obj)
        end
    end

    local function typeText(obj, delay)
        task.spawn(function()
            task.wait(delay)
            local fullText = obj.Text
            if not fullText or #fullText == 0 then return end
            obj.Text = ""
            obj.TextTransparency = 0
            for c = 1, #fullText do
                obj.Text = string.sub(fullText, 1, c)
                task.wait(0.02)
            end
        end)
    end

    local function fadeIn()
        main.GroupTransparency = 1
        main.Visible = true
        task.wait(0.05)
        local t = TweenService:Create(main, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            GroupTransparency = 0,
        })
        t:Play()
        for i, obj in ipairs(textElements) do
            obj.TextTransparency = 1
            typeText(obj, i * 0.035)
        end
    end

    local function fadeOut(callback)
        local t = TweenService:Create(main, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            GroupTransparency = 1,
        })
        t:Play()
        t.Completed:Connect(function()
            main.Visible = false
            if callback then callback() end
        end)
    end

    fadeIn()

    local visible = true
    local fading = false
    UserInputService.InputBegan:Connect(function(inp, gpe)
        if not gpe and inp.KeyCode == Config.ToggleKey and not fading then
            visible = not visible
            fading = true
            if visible then
                fadeIn()
                task.delay(0.6, function() fading = false end)
            else
                fadeOut(function()
                    fading = false
                end)
            end
        end
    end)
end

local savedData = nil

pcall(function()
    if getgenv and getgenv().AntsakenAutoExec then
        getgenv().AntsakenAutoExec = nil
        savedData = {
            Config = getgenv().AntsakenConfig,
            Stats = getgenv().AntsakenStats,
        }
        getgenv().AntsakenConfig = nil
        getgenv().AntsakenStats = nil
    end
end)

if not savedData then
    pcall(function()
        local td = TeleportService:GetLocalTeleportData()
        if td and td.AntsakenAutoExec then
            savedData = td
        end
    end)
end

if savedData then
    pcall(function()
        if savedData.Config then
            Config.AutoFarm = savedData.Config.AutoFarm or false
            Config.Stealth = savedData.Config.Stealth
            Config.AutoSwitchSurvivor = savedData.Config.AutoSwitchSurvivor
            Config.WebhookEnabled = savedData.Config.WebhookEnabled
            Config.WebhookURL = savedData.Config.WebhookURL
            Config.TargetGens = savedData.Config.TargetGens
            Config.PuzzleDelay = savedData.Config.PuzzleDelay or 2.5
        end
        if savedData.Stats then
            Stats.Fixed = savedData.Stats.Fixed
            Stats.Puzzles = savedData.Stats.Puzzles
            Stats.Hops = savedData.Stats.Hops
        end
    end)

    LoadConfig()

    if game.PlaceId ~= CORRECT_PLACE then
        pcall(function()
            getgenv().AntsakenAutoExec = true
            getgenv().AntsakenConfig = savedData.Config
            getgenv().AntsakenStats = savedData.Stats
        end)
        task.delay(2, function()
            TeleportService:Teleport(CORRECT_PLACE, LocalPlayer)
        end)
    else
        task.delay(4, function()
            local playerCount = #Players:GetPlayers()
            if playerCount <= 1 then
                Webhook("empty server", "detected empty server. hopping again...", 15158332)
                task.delay(2, function() ServerHop() end)
                return
            end

            CreateUI()
            Webhook("joined", string.format("player: %s | place: %d\nfixed: %d/%d | puzzles: %d | hops: %d", LocalPlayer.Name, game.PlaceId, Stats.Fixed, Config.TargetGens, Stats.Puzzles, Stats.Hops), 3066993)
            LoadConfig()
            if Config.AutoFarm then
                Running = true
                task.spawn(FarmLoop)
            end
        end)
    end
else
    CreateUI()
    Webhook("loaded", string.format("player: %s | place: %d", LocalPlayer.Name, game.PlaceId), 3066993)
    if Config.AutoFarm then
        Running = true
        task.spawn(FarmLoop)
    end
end

LoadConfig()

pcall(function()
    if queue_on_teleport then
        queue_on_teleport(string.format('loadstring(game:HttpGet("%s", true))()', GIST_URL))
    end
end)
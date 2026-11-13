--!nonstrict
-- ============================================================
--   XenonZ v1.0 | Luau
--   Tabs: Visual | Survivor | Killer | Stamina | Characters | Misc | Settings
--   Engine: Gloop (Delta X 2.0) | UNC: 100% | Level 8
-- ============================================================

if getgenv().XenonZLoaded then
    print("[XenonZ] Already loaded. Destroying old instance...")
    if getgenv().XenonZDestroy then getgenv().XenonZDestroy() end
end
getgenv().XenonZLoaded = true

local Players: Players      = game:GetService("Players")
local RunService: RunService = game:GetService("RunService")
local Lighting: Lighting    = game:GetService("Lighting")
local LocalPlayer: Player   = Players.LocalPlayer

type Connection = RBXScriptConnection
local Connections: { Connection } = {}
local function AddConn(c: Connection) table.insert(Connections, c) end

getgenv().XenonZDestroy = function()
    for _, c in Connections do pcall(function() c:Disconnect() end) end
    getgenv().XenonZLoaded = false
    print("[XenonZ] Destroyed cleanly.")
end

local function getChar(): Model?    return LocalPlayer.Character end
local function getHumanoid(): Humanoid?
    local c = getChar()
    return c and c:FindFirstChildOfClass("Humanoid") :: Humanoid?
end
local function getHRP(): BasePart?
    local c = getChar()
    return c and c:FindFirstChild("HumanoidRootPart") :: BasePart?
end
local function safeCall(fn: (...any) -> (), ...: any)
    local ok, err = pcall(fn, ...)
    if not ok then warn(`[XenonZ] {tostring(err)}`) end
end
local function removeESP(container: Instance?, name: string)
    if container then
        local ex = container:FindFirstChild(name)
        if ex then ex:Destroy() end
    end
end

type FlagsTable = {
    infStamina: boolean, noclipping: boolean, killerESP: boolean, playerESP: boolean,
    genESP: boolean, itemESP: boolean, tripmineESP: boolean, tripwireESP: boolean,
    fullBright: boolean, removeFog: boolean, autoGen: boolean,
    buildermanESP: boolean, elliotPizzaESP: boolean, veeronicaSprayESP: boolean,
    filesESP: boolean,
}
local flags: FlagsTable = {
    infStamina=false, noclipping=false, killerESP=false, playerESP=false,
    genESP=false, itemESP=false, tripmineESP=false, tripwireESP=false,
    fullBright=false, removeFog=false, autoGen=false,
    buildermanESP=false, elliotPizzaESP=false, veeronicaSprayESP=false,
    filesESP=false,
}

local Rayfield: any
safeCall(function() Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))() end)
if not Rayfield then warn("[XenonZ] Rayfield failed to load."); return end

local function notify(title: string, content: string, duration: number?)
    safeCall(function() Rayfield:Notify({Title=title, Content=content, Duration=duration or 3, Image=4483362458}) end)
end

local Window = Rayfield:CreateWindow({
    Name="XenonZ", Icon=0,
    LoadingTitle="XenonZ is the best",
    LoadingSubtitle="By Developrrpomax ",
    Theme="BloodMoon",
    DisableRayfieldPrompts=false,
    DisableBuildWarnings=true,
    KeySystem = true,
    KeySettings = {
        Title      = "XenonZ",
        Subtitle   = "Enter your key to continue",
        Note       = "Get your key in our Discord → https://discord.gg/ehHtxQuZr",
        FileName   = "XenonZKey",
        SaveKey    = true,
        GrabKeyFromSite = false,
        Key        = {"XenonZ is the best"}
    }
})

-- ▌POST-AUTH LOADING SEQUENCE
-- Runs immediately after the key is accepted.
-- Gives features a moment to initialise before tabs are interactable.
do
    local loadSteps: { { string } } = {
        { "XenonZ", "Initialising ESP systems..."     },
        { "XenonZ", "Loading Auto Block engine..."    },
        { "XenonZ", "Setting up Aimbot module..."     },
        { "XenonZ", "Connecting sound hooks..."       },
        { "XenonZ", "Ready. Welcome to XenonZ! ❤️"   },
    }
    task.spawn(function()
        for i, step in loadSteps do
            task.wait(0.4)
            notify(step[1], step[2], 2)
        end
    end)
end

-- ============================================================
-- TAB 1 ► VISUALS
-- ============================================================
local VisualsTab = Window:CreateTab("Visuals", 4483362458)

VisualsTab:CreateSection("Player ESP")

local function getRole(player: Player): string
    local c = player.Character
    if c then
        if c:FindFirstChild("KillerTag") or c:FindFirstChild("IsKiller") or c:FindFirstChild("Killer") then
            return "killer"
        end
    end
    local data = player:FindFirstChild("Data") or player:FindFirstChild("Stats")
    if data then
        local role = data:FindFirstChild("Role") or data:FindFirstChild("Team")
        if role and tostring((role :: any).Value):lower():find("killer") then return "killer" end
    end
    return "survivor"
end

-- Shared apply function — called on toggle, CharacterAdded, and rescan
local function applyPlayerESPToChar(p: Player, c: Model)
    if not flags.playerESP then return end
    if not c or not c.Parent then return end
    -- Re-use existing highlight if it is still valid, otherwise rebuild
    local existing = c:FindFirstChild("ESP_Hl") :: Highlight?
    if existing and existing:IsA("Highlight") and existing.Parent then return end
    removeESP(c, "ESP_Hl")
    local hl = Instance.new("Highlight")
    hl.Name             = "ESP_Hl"
    hl.OutlineColor     = Color3.fromRGB(255, 255, 255)
    hl.FillTransparency = 0.45
    hl.DepthMode        = Enum.HighlightDepthMode.AlwaysOnTop
    if p == LocalPlayer then
        hl.FillColor    = Color3.fromRGB(80, 160, 255)
        hl.OutlineColor = Color3.fromRGB(180, 220, 255)
    elseif getRole(p) == "killer" then
        hl.FillColor    = Color3.fromRGB(255, 30, 30)
    else
        hl.FillColor    = Color3.fromRGB(0, 220, 80)
    end
    hl.Parent = c
end

local playerESPCharConns: { [Player]: Connection } = {}

local function hookPlayerESPChar(p: Player)
    -- Disconnect old CharacterAdded connection for this player if any
    if playerESPCharConns[p] then
        pcall(function() playerESPCharConns[p]:Disconnect() end)
        playerESPCharConns[p] = nil
    end
    -- Apply to current character immediately
    if p.Character then applyPlayerESPToChar(p, p.Character) end
    -- Re-apply on every future respawn
    playerESPCharConns[p] = p.CharacterAdded:Connect(function(c: Model)
        task.wait(0.5) -- wait for character to fully load
        applyPlayerESPToChar(p, c)
    end)
end

local playerESPPlayerAddedConn: Connection? = nil

VisualsTab:CreateToggle({
    Name="Player ESP (Blue=You / Green=Survivor / Red=Killer)", CurrentValue=false, Flag="PlayerESP",
    Callback=function(v: boolean)
        flags.playerESP = v
        if not v then
            -- Remove all highlights
            for _, p in Players:GetPlayers() do
                local c = p.Character
                if c then removeESP(c, "ESP_Hl") end
            end
            -- Disconnect all CharacterAdded hooks
            for p, conn in playerESPCharConns do
                pcall(function() conn:Disconnect() end)
            end
            playerESPCharConns = {}
            if playerESPPlayerAddedConn then
                pcall(function() playerESPPlayerAddedConn:Disconnect() end)
                playerESPPlayerAddedConn = nil
            end
            notify("Player ESP", "Disabled.", 3)
            return
        end
        -- Apply to all current players and hook their CharacterAdded
        for _, p in Players:GetPlayers() do
            hookPlayerESPChar(p)
        end
        -- Hook players who join later
        playerESPPlayerAddedConn = Players.PlayerAdded:Connect(function(p: Player)
            if not flags.playerESP then return end
            hookPlayerESPChar(p)
        end)
        AddConn(playerESPPlayerAddedConn)
        notify("Player ESP", "Blue=You | Green=Survivor | Red=Killer", 3)
    end,
})

-- Periodic rescan: re-applies missing highlights every 4 seconds
-- Handles cases where the game engine removes highlights unexpectedly
task.spawn(function()
    while true do
        task.wait(4)
        if not flags.playerESP then continue end
        pcall(function()
            for _, p in Players:GetPlayers() do
                local c = p.Character
                if not c then continue end
                local hl = c:FindFirstChild("ESP_Hl")
                if not hl or not hl.Parent then
                    applyPlayerESPToChar(p, c)
                end
            end
        end)
    end
end)

VisualsTab:CreateSection("Objective ESP")

-- ============================================================
-- GENERATOR ESP — rebuilt with broad workspace scan
-- Does not rely on a fixed map path. Scans all workspace descendants
-- for any Model whose name contains "Generator" or "FakeGenerator",
-- and hooks progress values directly for live updates.
-- ============================================================
local generatorESPEnabled: boolean = false
local trackedGenerators: { [Model]: { conn: Connection?, bb: BillboardGui? } } = {}
local genEspPartTrigger: Connection? = nil
local genEspConnection: Connection?  = nil

-- Find every generator Model anywhere in workspace
local function findAllGenerators(): { Model }
    local results: { Model } = {}
    for _, obj in workspace:GetDescendants() do
        if not obj:IsA("Model") then continue end
        local n = obj.Name:lower()
        if n:find("generator") or n:find("fakegenerator") or n == "fakegen" then
            table.insert(results, obj :: Model)
        end
    end
    return results
end

local function isFakeGen(model: Model): boolean
    local n = model.Name:lower()
    return n:find("fake") ~= nil or model:GetAttribute("Fake") == true
end

local function getProgressPercent(value: number): string
    if     value == 0   then return "0%"
    elseif value == 26  then return "25%"
    elseif value == 52  then return "50%"
    elseif value == 78  then return "75%"
    elseif value == 100 then return "100%"
    else return `{math.floor(value)}%`
    end
end

-- Finds the best adornee BasePart in a generator model
local function getGenAdornee(model: Model): BasePart?
    if model.PrimaryPart then return model.PrimaryPart end
    for _, name in {"Base","Main","HumanoidRootPart","Core","Body"} do
        local p = model:FindFirstChild(name)
        if p and p:IsA("BasePart") then return p :: BasePart end
    end
    return model:FindFirstChildWhichIsA("BasePart") :: BasePart?
end

-- Builds or updates the BillboardGui label for a generator
local function buildGenLabel(model: Model): BillboardGui?
    local adornee = getGenAdornee(model)
    if not adornee then return nil end

    local bb = model:FindFirstChild("GenESP_BB") :: BillboardGui?
    if not bb then
        bb = Instance.new("BillboardGui")
        bb.Name        = "GenESP_BB"
        bb.Adornee     = adornee
        bb.Size        = UDim2.new(0, 160, 0, 36)
        bb.StudsOffset = Vector3.new(0, 5, 0)
        bb.AlwaysOnTop = true
        bb.MaxDistance = 200
        bb.Parent      = model

        local lbl = Instance.new("TextLabel")
        lbl.Name                   = "GenLabel"
        lbl.Size                   = UDim2.new(1,0,1,0)
        lbl.BackgroundTransparency = 1
        lbl.TextScaled             = true
        lbl.Font                   = Enum.Font.GothamBold
        lbl.TextStrokeTransparency = 0.3
        lbl.TextStrokeColor3       = Color3.fromRGB(0,0,0)
        lbl.Parent                 = bb
    end

    -- Set initial text
    local lbl = bb:FindFirstChild("GenLabel") :: TextLabel?
    if lbl then
        if isFakeGen(model) then
            lbl.Text       = "⚠️ FAKE GEN"
            lbl.TextColor3 = Color3.fromRGB(255, 60, 60)
        else
            -- Try to read current progress immediately
            local prog = model:FindFirstChild("Progress")
                or model:FindFirstChild("ProgressValue")
                or model:FindFirstChild("Percentage")
                or model:FindFirstChild("GeneratorProgress")
            local pct = "0%"
            if prog and (prog:IsA("NumberValue") or prog:IsA("IntValue")) then
                pct = getProgressPercent((prog :: NumberValue).Value)
            end
            lbl.Text       = `⚡ GEN {pct}`
            lbl.TextColor3 = Color3.fromRGB(0, 200, 255)
        end
    end
    return bb
end

-- Also adds a Highlight so the generator box glows
local function buildGenHighlight(model: Model)
    if model:FindFirstChild("GenESP_Hl") then return end
    local hl = Instance.new("Highlight")
    hl.Name               = "GenESP_Hl"
    hl.FillColor          = isFakeGen(model) and Color3.fromRGB(255, 40, 40) or Color3.fromRGB(0, 140, 255)
    hl.OutlineColor       = isFakeGen(model) and Color3.fromRGB(255, 150, 150) or Color3.fromRGB(100, 200, 255)
    hl.FillTransparency   = 0.4
    hl.OutlineTransparency = 0
    hl.DepthMode          = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent             = model
end

-- Attaches full ESP (Highlight + BillboardGui + live progress hook) to one generator
local function attachGenESP(model: Model)
    if not model or not model.Parent then return end
    if trackedGenerators[model] then return end  -- already tracked

    buildGenHighlight(model)
    local bb = buildGenLabel(model)

    -- Hook live progress updates
    local progressConn: Connection? = nil
    if not isFakeGen(model) then
        local prog = model:FindFirstChild("Progress")
            or model:FindFirstChild("ProgressValue")
            or model:FindFirstChild("Percentage")
            or model:FindFirstChild("GeneratorProgress")
        if prog and (prog:IsA("NumberValue") or prog:IsA("IntValue")) then
            progressConn = (prog :: NumberValue).Changed:Connect(function(val: number)
                if not generatorESPEnabled then return end
                local lbl = model:FindFirstChild("GenESP_BB") and
                    (model:FindFirstChild("GenESP_BB") :: BillboardGui):FindFirstChild("GenLabel") :: TextLabel?
                if lbl then
                    lbl.Text = `⚡ GEN {getProgressPercent(val)}`
                end
            end)
        end
    end

    trackedGenerators[model] = { conn = progressConn, bb = bb }

    -- Auto-clean when generator model is removed
    model.AncestryChanged:Connect(function()
        if model.Parent then return end
        if progressConn then pcall(function() progressConn:Disconnect() end) end
        trackedGenerators[model] = nil
    end)
end

local function detachGenESP(model: Model)
    local entry = trackedGenerators[model]
    if entry then
        if entry.conn then pcall(function() entry.conn:Disconnect() end) end
        trackedGenerators[model] = nil
    end
    local hl = model:FindFirstChild("GenESP_Hl")
    local bb = model:FindFirstChild("GenESP_BB")
    if hl then hl:Destroy() end
    if bb then bb:Destroy() end
end

local function stopGeneratorESP()
    if genEspPartTrigger then genEspPartTrigger:Disconnect(); genEspPartTrigger = nil end
    if genEspConnection  then genEspConnection:Disconnect();  genEspConnection  = nil end
    -- Remove ESP from all tracked generators
    for gen in trackedGenerators do
        pcall(function() detachGenESP(gen) end)
    end
    trackedGenerators = {}
end

local function startGeneratorESP()
    -- Full workspace scan on enable — finds all generators regardless of map path
    for _, model in findAllGenerators() do
        pcall(function() attachGenESP(model) end)
    end

    -- Watch for new generators as they spawn during a round
    if not genEspPartTrigger then
        genEspPartTrigger = workspace.DescendantAdded:Connect(function(obj: Instance)
            if not obj:IsA("Model") then return end
            local n = obj.Name:lower()
            if n:find("generator") or n:find("fakegenerator") or n == "fakegen" then
                task.wait(0.5) -- let it fully load before scanning
                if generatorESPEnabled then pcall(function() attachGenESP(obj :: Model) end) end
            end
        end)
        AddConn(genEspPartTrigger)
    end

    -- Periodic rescan every 6 seconds to catch any generators that slipped through
    if not genEspConnection then
        genEspConnection = RunService.Heartbeat:Connect(function()
            -- Only runs every 6s by using a throttle
        end)
        -- Replace with a proper task loop instead of heartbeat
        genEspConnection:Disconnect()
        genEspConnection = nil
        task.spawn(function()
            while generatorESPEnabled do
                task.wait(6)
                if not generatorESPEnabled then break end
                pcall(function()
                    for _, model in findAllGenerators() do
                        if not trackedGenerators[model] then
                            attachGenESP(model)
                        end
                    end
                end)
            end
        end)
    end
end

VisualsTab:CreateToggle({
    Name="Generator ESP (Progress + Fake Detection)", CurrentValue=false, Flag="GenESP",
    Callback=function(v: boolean)
        flags.genESP        = v
        generatorESPEnabled = v
        if v then startGeneratorESP()
        else stopGeneratorESP() end
        notify("Generator ESP",
            v and "Generators tracked! Blue=Real | Red=FAKE (Noli hallucination)" or "Disabled.", 4)
    end,
})

VisualsTab:CreateLabel("🔵 Blue = Real Generator  |  🔴 Red = FAKE Generator (Noli hallucination)")

VisualsTab:CreateSection("Item ESP")

VisualsTab:CreateToggle({
    Name="Medkit & BloxyCola ESP (Purple)", CurrentValue=false, Flag="ItemESP",
    Callback=function(v: boolean)
        flags.itemESP = v
        safeCall(function()
            local keywords = {
                "medkit","med_kit","medpack","med_pack","firstaid","first_aid","firstaidkit",
                "bloxycola","bloxy_cola","bloxy cola","cola","healthpack","health_pack",
                "potion","elixir","bandage","inject"
            }
            for _, obj in workspace:GetDescendants() do
                local n = obj.Name:lower()
                local matched = false
                for _, kw in keywords do
                    if n == kw or n:find(`^{kw}`) or n:find(`{kw}$`) then matched = true; break end
                end
                if not matched then continue end
                local target = obj:IsA("Model") and obj
                    or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent:IsA("Model") and obj.Parent)
                    or (obj:IsA("BasePart") and obj)
                if not target then continue end
                removeESP(target :: Instance, "ItemESP_Hl")
                if v then
                    local hl = Instance.new("Highlight")
                    hl.Name             = "ItemESP_Hl"
                    hl.FillColor        = Color3.fromRGB(160,0,255)
                    hl.OutlineColor     = Color3.fromRGB(220,150,255)
                    hl.FillTransparency = 0.3
                    hl.DepthMode        = Enum.HighlightDepthMode.AlwaysOnTop
                    hl.Parent           = target :: Instance
                end
            end
        end)
        notify("Item ESP", v and "Medkits & BloxyColas highlighted in Purple!" or "Disabled.", 3)
    end,
})

VisualsTab:CreateSection("Taph Trap ESP")

VisualsTab:CreateToggle({
    Name="Subspace Tripmine ESP (Orange)", CurrentValue=false, Flag="TripmineESP",
    Callback=function(v: boolean)
        flags.tripmineESP = v
        safeCall(function()
            local kws = {"tripmine","trip_mine","subspace_tripmine","subspacetripmine","proxmine"}
            for _, obj in workspace:GetDescendants() do
                local n = obj.Name:lower()
                for _, kw in kws do
                    if not n:find(kw) then continue end
                    local t = obj:IsA("Model") and obj
                        or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent)
                        or (obj:IsA("BasePart") and obj)
                    if t then
                        removeESP(t :: Instance, "TripmineESP_Hl")
                        if v then
                            local hl = Instance.new("Highlight")
                            hl.Name             = "TripmineESP_Hl"
                            hl.FillColor        = Color3.fromRGB(255,120,0)
                            hl.OutlineColor     = Color3.fromRGB(255,200,80)
                            hl.FillTransparency = 0.25
                            hl.DepthMode        = Enum.HighlightDepthMode.AlwaysOnTop
                            hl.Parent           = t :: Instance
                        end
                    end
                    break
                end
            end
        end)
        notify("Tripmine ESP", v and "Tripmines in Orange!" or "Disabled.", 3)
    end,
})

AddConn(workspace.DescendantAdded:Connect(function(obj: Instance)
    if not flags.tripmineESP then return end
    safeCall(function()
        local n = obj.Name:lower()
        for _, kw in {"tripmine","trip_mine","subspace_tripmine","subspacetripmine","proxmine"} do
            if not n:find(kw) then continue end
            local t = obj:IsA("Model") and obj
                or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent)
                or (obj:IsA("BasePart") and obj)
            if t and not (t :: Instance):FindFirstChild("TripmineESP_Hl") then
                task.wait(0.1)
                local hl = Instance.new("Highlight")
                hl.Name="TripmineESP_Hl"; hl.FillColor=Color3.fromRGB(255,120,0)
                hl.OutlineColor=Color3.fromRGB(255,200,80); hl.FillTransparency=0.25
                hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent=t :: Instance
            end
            break
        end
    end)
end))

VisualsTab:CreateToggle({
    Name="Subspace Tripwire ESP (Yellow)", CurrentValue=false, Flag="TripwireESP",
    Callback=function(v: boolean)
        flags.tripwireESP = v
        safeCall(function()
            local kws = {"tripwire","trip_wire","subspace_tripwire","subspacetripwire","wiresnare","snare"}
            for _, obj in workspace:GetDescendants() do
                local n = obj.Name:lower()
                for _, kw in kws do
                    if not n:find(kw) then continue end
                    local t = obj:IsA("Model") and obj
                        or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent)
                        or (obj:IsA("BasePart") and obj)
                    if t then
                        removeESP(t :: Instance, "TripwireESP_Hl")
                        if v then
                            local hl = Instance.new("Highlight")
                            hl.Name="TripwireESP_Hl"; hl.FillColor=Color3.fromRGB(255,240,0)
                            hl.OutlineColor=Color3.fromRGB(255,255,150); hl.FillTransparency=0.2
                            hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent=t :: Instance
                        end
                    end
                    break
                end
            end
        end)
        notify("Tripwire ESP", v and "Tripwires in Yellow!" or "Disabled.", 3)
    end,
})

AddConn(workspace.DescendantAdded:Connect(function(obj: Instance)
    if not flags.tripwireESP then return end
    safeCall(function()
        local n = obj.Name:lower()
        for _, kw in {"tripwire","trip_wire","subspace_tripwire","subspacetripwire","wiresnare","snare"} do
            if not n:find(kw) then continue end
            local t = obj:IsA("Model") and obj
                or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent)
                or (obj:IsA("BasePart") and obj)
            if t and not (t :: Instance):FindFirstChild("TripwireESP_Hl") then
                task.wait(0.1)
                local hl = Instance.new("Highlight")
                hl.Name="TripwireESP_Hl"; hl.FillColor=Color3.fromRGB(255,240,0)
                hl.OutlineColor=Color3.fromRGB(255,255,150); hl.FillTransparency=0.2
                hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent=t :: Instance
            end
            break
        end
    end)
end))

-- ============================================================
-- FILES / DOCUMENTS ESP — Jane Doe Basement Quests (4.0.0)
-- Highlights the lore document objects players collect in the
-- Basement to progress Jane Doe's quests and unlock her.
-- Keywords cover every naming pattern the game is likely to use
-- for the Documents section objects introduced in Update 4.0.0.
-- Because the exact Instance names are runtime-only data, a broad
-- keyword list + AncestryChanged auto-cleanup ensures coverage.
-- ============================================================

VisualsTab:CreateSection("Files / Documents ESP")

local FILES_KWS: { string } = {
    -- Direct document/file references
    "document","documents","doc_","_doc",
    "file","files","file_","_file",
    "dossier","record","records","casefile","case_file",
    "report","reportfile","report_file",
    -- Lore / quest object references
    "lore","lorefile","lore_file","lore_doc",
    "note","notes","note_","_note",
    "letter","letters","memo","memos",
    "page","pages","manuscript","journal",
    "evidence","clue","clues","artifact","relic",
    -- Jane Doe / Basement specific
    "janedoe","jane_doe","janedoefile","jane_file",
    "basement","basementfile","basement_doc",
    "quest","questitem","quest_item","questfile",
    "collectible","pickup","item_pickup",
    -- Forsaken lore prop names (likely patterns)
    "survdoc","survivor_doc","survivorfile",
    "backstory","backstory_doc","lorepage","lore_page",
    "caserecord","case_record","fieldnote","field_note",
}

-- Resolves adornee and container, same approach as Vandalism ESP
local function resolveFilesTarget(obj: Instance): (BasePart?, Instance?)
    if obj:IsA("BasePart") then return obj :: BasePart, obj end
    if obj:IsA("Model") then
        local root: BasePart? = (obj :: Model).PrimaryPart
            or obj:FindFirstChildWhichIsA("BasePart") :: BasePart?
        if not root then
            for _, d in obj:GetDescendants() do
                if d:IsA("BasePart") then root = d :: BasePart; break end
            end
        end
        return root, obj
    end
    return nil, nil
end

local function applyFilesESP(obj: Instance, v: boolean)
    local n = obj.Name:lower()
    local matched = false
    for _, kw in FILES_KWS do
        if n:find(kw) then matched = true; break end
    end
    if not matched then return end

    local adornee, container = resolveFilesTarget(obj)
    if not adornee or not container then return end

    local existHl = container:FindFirstChild("FilesESP_Hl")
    local existBB = container:FindFirstChild("FilesESP_BB")
    if existHl then existHl:Destroy() end
    if existBB then existBB:Destroy() end
    if not v then return end

    -- Warm white / parchment colour — distinct from all other ESP colours
    local hl = Instance.new("Highlight")
    hl.Name               = "FilesESP_Hl"
    hl.Adornee            = adornee
    hl.FillColor          = Color3.fromRGB(255, 245, 200)
    hl.OutlineColor       = Color3.fromRGB(255, 220, 100)
    hl.FillTransparency   = 0.2
    hl.OutlineTransparency = 0
    hl.DepthMode          = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent             = container

    -- BillboardGui label — always faces camera
    local bb = Instance.new("BillboardGui")
    bb.Name        = "FilesESP_BB"
    bb.Adornee     = adornee
    bb.Size        = UDim2.new(0, 120, 0, 22)
    bb.StudsOffset = Vector3.new(0, 3.5, 0)
    bb.AlwaysOnTop = true
    bb.MaxDistance = 100
    bb.Parent      = container
    local lbl = Instance.new("TextLabel")
    lbl.Size                   = UDim2.new(1,0,1,0)
    lbl.BackgroundTransparency = 1
    lbl.Text                   = "📄 FILE"
    lbl.TextColor3             = Color3.fromRGB(255, 245, 200)
    lbl.TextStrokeColor3       = Color3.fromRGB(80, 60, 0)
    lbl.TextStrokeTransparency = 0.2
    lbl.TextScaled             = true
    lbl.Font                   = Enum.Font.GothamBold
    lbl.Parent                 = bb

    -- Auto-cleanup on removal
    container.AncestryChanged:Connect(function()
        if not container.Parent then
            pcall(function() hl:Destroy() end)
            pcall(function() bb:Destroy() end)
        end
    end)
end

local function removeFilesESPAll()
    for _, obj in workspace:GetDescendants() do
        local hl = obj:FindFirstChild("FilesESP_Hl")
        local bb = obj:FindFirstChild("FilesESP_BB")
        if hl then hl:Destroy() end
        if bb then bb:Destroy() end
    end
end

VisualsTab:CreateToggle({
    Name="Files / Documents ESP (Parchment)", CurrentValue=false, Flag="FilesESP",
    Callback=function(v: boolean)
        flags.filesESP = v
        if not v then
            safeCall(removeFilesESPAll)
            notify("Files ESP", "Disabled.", 3)
            return
        end
        safeCall(function()
            for _, obj in workspace:GetDescendants() do
                applyFilesESP(obj, true)
            end
        end)
        notify("Files ESP", "Scanning for Jane Doe quest documents!", 3)
    end,
})

AddConn(workspace.DescendantAdded:Connect(function(obj: Instance)
    if not flags.filesESP then return end
    task.wait(0.05)
    safeCall(function() applyFilesESP(obj, true) end)
end))

-- Periodic rescan every 5s — catches documents that spawn as the
-- player moves through the Basement or starts a quest
task.spawn(function()
    while true do
        task.wait(5)
        if not flags.filesESP then continue end
        pcall(function()
            for _, obj in workspace:GetDescendants() do
                local n = obj.Name:lower()
                local matched = false
                for _, kw in FILES_KWS do if n:find(kw) then matched = true; break end end
                if matched and not obj:FindFirstChild("FilesESP_Hl") then
                    applyFilesESP(obj, true)
                end
            end
        end)
    end
end)

VisualsTab:CreateLabel("📄 Parchment = Jane Doe quest Files / Documents (Basement)")
VisualsTab:CreateLabel("Broad keyword scan covers all likely game object names for docs")

-- ============================================================
-- BUILDERMAN ESP  — Sentry (Orange) + Dispenser (Yellow-Gold)
-- Using colours distinct from normal Player ESP and Vandalism ESP.
-- ============================================================

VisualsTab:CreateSection("Builderman ESP")

local BUILDERMAN_SENTRY_KWS: { string }    = {"sentry","sentrygun","sentry_gun","sentryturret"}
local BUILDERMAN_DISPENSER_KWS: { string } = {"dispenser","dispenser_build","builderdispenser"}

local function applyBuildermanESP(obj: Instance, v: boolean)
    local n = obj.Name:lower()
    local isSentry, isDispenser = false, false
    for _, kw in BUILDERMAN_SENTRY_KWS do
        if n:find(kw) then isSentry = true; break end
    end
    if not isSentry then
        for _, kw in BUILDERMAN_DISPENSER_KWS do
            if n:find(kw) then isDispenser = true; break end
        end
    end
    if not isSentry and not isDispenser then return end
    local target: Instance? = obj:IsA("Model") and obj
        or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent:IsA("Model") and obj.Parent)
        or (obj:IsA("BasePart") and obj)
    if not target then return end
    removeESP(target, "BuilderESP_Hl")
    if not v then return end
    local hl = Instance.new("Highlight")
    hl.Name             = "BuilderESP_Hl"
    -- Sentry  = Deep Orange  (distinct from Player ESP greens/reds and Vandalism cyan)
    -- Dispenser = Yellow-Gold (warm, easy to tell apart from Sentry)
    hl.FillColor        = isSentry and Color3.fromRGB(255, 100, 0) or Color3.fromRGB(255, 210, 0)
    hl.OutlineColor     = isSentry and Color3.fromRGB(255, 180, 80) or Color3.fromRGB(255, 240, 120)
    hl.FillTransparency = 0.3
    hl.DepthMode        = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent           = target
end

VisualsTab:CreateToggle({
    Name="Builderman ESP (Orange=Sentry / Gold=Dispenser)", CurrentValue=false, Flag="BuildermanESP",
    Callback=function(v: boolean)
        flags.buildermanESP = v
        safeCall(function()
            for _, obj in workspace:GetDescendants() do
                applyBuildermanESP(obj, v)
            end
        end)
        notify("Builderman ESP",
            v and "Sentry=Orange | Dispenser=Gold — tracking Builderman builds!" or "Disabled.", 3)
    end,
})

AddConn(workspace.DescendantAdded:Connect(function(obj: Instance)
    if not flags.buildermanESP then return end
    task.wait(0.1)
    safeCall(function() applyBuildermanESP(obj, true) end)
end))

VisualsTab:CreateLabel("🟠 Orange = Sentry  |  🟡 Gold = Dispenser")

-- ============================================================
-- ELLIOT PIZZA ESP  — Pizza Throw skill (Hot Pink)
-- ============================================================

VisualsTab:CreateSection("Elliot ESP")

local ELLIOT_PIZZA_KWS: { string } = {
    "pizza","pizzaslice","pizza_slice","pizzathrow","pizza_throw",
    "elliotpizza","elliot_pizza","healingpizza","healing_pizza","throwpizza"
}

local function applyElliotPizzaESP(obj: Instance, v: boolean)
    local n = obj.Name:lower()
    local matched = false
    for _, kw in ELLIOT_PIZZA_KWS do
        if n:find(kw) then matched = true; break end
    end
    if not matched then return end
    local target: Instance? = obj:IsA("Model") and obj
        or (obj:IsA("BasePart") and obj.Parent ~= workspace and obj.Parent:IsA("Model") and obj.Parent)
        or (obj:IsA("BasePart") and obj)
    if not target then return end
    removeESP(target, "PizzaESP_Hl")
    if not v then return end
    local hl = Instance.new("Highlight")
    hl.Name             = "PizzaESP_Hl"
    hl.FillColor        = Color3.fromRGB(255, 80, 180)
    hl.OutlineColor     = Color3.fromRGB(255, 180, 230)
    hl.FillTransparency = 0.25
    hl.DepthMode        = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent           = target
end

VisualsTab:CreateToggle({
    Name="Elliot Pizza Throw ESP (Hot Pink)", CurrentValue=false, Flag="ElliotPizzaESP",
    Callback=function(v: boolean)
        flags.elliotPizzaESP = v
        safeCall(function()
            for _, obj in workspace:GetDescendants() do
                applyElliotPizzaESP(obj, v)
            end
        end)
        notify("Elliot Pizza ESP",
            v and "Pizza Throw projectiles highlighted in Hot Pink!" or "Disabled.", 3)
    end,
})

AddConn(workspace.DescendantAdded:Connect(function(obj: Instance)
    if not flags.elliotPizzaESP then return end
    task.wait(0.05)
    safeCall(function() applyElliotPizzaESP(obj, true) end)
end))

VisualsTab:CreateLabel("🩷 Hot Pink = Elliot's Pizza Throw (heals allies on contact)")

-- ============================================================
-- VEERONICA ESP  — VANDALISM skill (Cyan)
-- Vandalism spawns a dark black zone at any position and any
-- rotation. We set hl.Adornee to the actual BasePart so the
-- Highlight follows the part's exact CFrame at any angle.
-- ============================================================

VisualsTab:CreateSection("Veeronica ESP")

local VEERONICA_VANDALISM_KWS: { string } = {
    "vandalism",
    "veeronica",
    "veeronicaspray","veeronica_spray","veeronicazone","veeronica_zone",
    "vandalismzone","vandalism_zone","vandalismarea","vandalism_area",
    "vandalismpart","vandalism_part","vandalismhitbox","vandalism_hitbox",
    "vandalismeffect","vandalism_effect","vandalismspray","vandalism_spray",
    "vandalismcloud","vandalism_cloud","vandalismpool","vandalism_pool",
    "spraytag","spray_tag","sprayzone","spray_zone",
    "graffititag","graffiti_tag","graffiti",
    "paintzone","paint_zone","paintcloud","paint_cloud",
    "staminazone","stamina_zone","staminapool","stamina_pool",
}

-- Returns (adornee BasePart, container Instance).
-- Adornee is always a BasePart so Highlight tracks any CFrame.
-- Container is where we parent Highlight and BillboardGui.
local function resolveVandalismAdornee(obj: Instance): (BasePart?, Instance?)
    if obj:IsA("BasePart") then
        return obj :: BasePart, obj
    end
    if obj:IsA("Model") then
        local root: BasePart? = (obj :: Model).PrimaryPart
            or obj:FindFirstChild("HumanoidRootPart") :: BasePart?
            or obj:FindFirstChildWhichIsA("BasePart") :: BasePart?
        if not root then
            for _, d in obj:GetDescendants() do
                if d:IsA("BasePart") then root = d :: BasePart; break end
            end
        end
        return root, obj
    end
    return nil, nil
end

local function applyVeeronicaVandalismESP(obj: Instance, v: boolean)
    local n = obj.Name:lower()
    local matched = false
    for _, kw in VEERONICA_VANDALISM_KWS do
        if n:find(kw) then matched = true; break end
    end
    if not matched then return end

    local adornee, container = resolveVandalismAdornee(obj)
    if not adornee or not container then return end

    local existHl = container:FindFirstChild("VandalismESP_Hl")
    local existBB = container:FindFirstChild("VandalismESP_BB")
    if existHl then existHl:Destroy() end
    if existBB then existBB:Destroy() end
    if not v then return end

    -- Adornee makes the Highlight conform to the part's exact rotated CFrame
    local hl = Instance.new("Highlight")
    hl.Name                = "VandalismESP_Hl"
    hl.Adornee             = adornee
    hl.FillColor           = Color3.fromRGB(0, 230, 255)
    hl.OutlineColor        = Color3.fromRGB(255, 255, 255)
    hl.FillTransparency    = 0.15
    hl.OutlineTransparency = 0
    hl.DepthMode           = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent              = container

    -- BillboardGui always faces the camera regardless of zone rotation
    local bb = Instance.new("BillboardGui")
    bb.Name        = "VandalismESP_BB"
    bb.Adornee     = adornee
    bb.Size        = UDim2.new(0, 110, 0, 22)
    bb.StudsOffset = Vector3.new(0, 3.5, 0)
    bb.AlwaysOnTop = true
    bb.MaxDistance = 80
    bb.Parent      = container
    local lbl = Instance.new("TextLabel")
    lbl.Size                   = UDim2.new(1,0,1,0)
    lbl.BackgroundTransparency = 1
    lbl.Text                   = "VANDALISM"
    lbl.TextColor3             = Color3.fromRGB(0, 230, 255)
    lbl.TextStrokeColor3       = Color3.fromRGB(0, 0, 0)
    lbl.TextStrokeTransparency = 0.2
    lbl.TextScaled             = true
    lbl.Font                   = Enum.Font.GothamBold
    lbl.Parent                 = bb

    -- Auto-cleanup the moment the zone is removed
    container.AncestryChanged:Connect(function()
        if not container.Parent then
            pcall(function() hl:Destroy() end)
            pcall(function() bb:Destroy() end)
        end
    end)
end

local function removeVeeronicaESPAll()
    for _, obj in workspace:GetDescendants() do
        local hl = obj:FindFirstChild("VandalismESP_Hl")
        local bb = obj:FindFirstChild("VandalismESP_BB")
        if hl then hl:Destroy() end
        if bb then bb:Destroy() end
    end
end

VisualsTab:CreateToggle({
    Name="Veeronica Vandalism ESP (Cyan)", CurrentValue=false, Flag="VeeronicaSprayESP",
    Callback=function(v: boolean)
        flags.veeronicaSprayESP = v
        if not v then
            safeCall(removeVeeronicaESPAll)
            notify("Veeronica Vandalism ESP", "Disabled.", 3)
            return
        end
        safeCall(function()
            for _, obj in workspace:GetDescendants() do
                applyVeeronicaVandalismESP(obj, true)
            end
        end)
        notify("Veeronica Vandalism ESP", "VANDALISM tracked — any position, any rotation!", 3)
    end,
})

AddConn(workspace.DescendantAdded:Connect(function(obj: Instance)
    if not flags.veeronicaSprayESP then return end
    task.wait(0.03)
    safeCall(function() applyVeeronicaVandalismESP(obj, true) end)
end))

VisualsTab:CreateLabel("🩵 Cyan = Veeronica VANDALISM — Adornee tracks any position & rotation")

-- ============================================================
-- SHARED WORKSPACE ESP RESCAN LOOP
-- Rescans every 5 seconds and re-applies any missing highlights
-- for Builderman, Elliot Pizza, and Veeronica Vandalism ESPs.
-- Handles cases where Roblox removes highlights mid-round.
-- ============================================================
task.spawn(function()
    while true do
        task.wait(5)
        pcall(function()
            for _, obj in workspace:GetDescendants() do
                if flags.buildermanESP then
                    local n = obj.Name:lower()
                    local isSentry, isDisp = false, false
                    for _, kw in BUILDERMAN_SENTRY_KWS do if n:find(kw) then isSentry = true; break end end
                    if not isSentry then
                        for _, kw in BUILDERMAN_DISPENSER_KWS do if n:find(kw) then isDisp = true; break end end
                    end
                    if (isSentry or isDisp) and not obj:FindFirstChild("BuilderESP_Hl") then
                        applyBuildermanESP(obj, true)
                    end
                end
                if flags.elliotPizzaESP then
                    local n = obj.Name:lower()
                    local matched = false
                    for _, kw in ELLIOT_PIZZA_KWS do if n:find(kw) then matched = true; break end end
                    if matched and not obj:FindFirstChild("PizzaESP_Hl") then
                        applyElliotPizzaESP(obj, true)
                    end
                end
                if flags.veeronicaSprayESP then
                    local n = obj.Name:lower()
                    local matched = false
                    for _, kw in VEERONICA_VANDALISM_KWS do if n:find(kw) then matched = true; break end end
                    if matched and not obj:FindFirstChild("VandalismESP_Hl") then
                        applyVeeronicaVandalismESP(obj, true)
                    end
                end
            end
        end)
    end
end)

VisualsTab:CreateSection("Lighting")

local origLighting = {
    Brightness     = Lighting.Brightness,
    ClockTime      = Lighting.ClockTime,
    FogEnd         = Lighting.FogEnd,
    FogStart       = Lighting.FogStart,
    GlobalShadows  = Lighting.GlobalShadows,
    Ambient        = Lighting.Ambient,
    OutdoorAmbient = Lighting.OutdoorAmbient,
}

VisualsTab:CreateToggle({
    Name="Full Bright (Anti-Darkness)", CurrentValue=false, Flag="FullBright",
    Callback=function(v: boolean)
        flags.fullBright = v
        safeCall(function()
            if v then
                Lighting.Brightness     = 10
                Lighting.ClockTime      = 14
                Lighting.FogEnd         = 100000
                Lighting.GlobalShadows  = false
                Lighting.Ambient        = Color3.fromRGB(255,255,255)
                Lighting.OutdoorAmbient = Color3.fromRGB(255,255,255)
                for _, fx in Lighting:GetChildren() do
                    if fx:IsA("ColorCorrectionEffect") or fx:IsA("BlurEffect") or fx:IsA("DepthOfFieldEffect") then
                        (fx :: ColorCorrectionEffect).Enabled = false
                    end
                end
            else
                Lighting.Brightness     = origLighting.Brightness
                Lighting.ClockTime      = origLighting.ClockTime
                Lighting.FogEnd         = origLighting.FogEnd
                Lighting.GlobalShadows  = origLighting.GlobalShadows
                Lighting.Ambient        = origLighting.Ambient
                Lighting.OutdoorAmbient = origLighting.OutdoorAmbient
                for _, fx in Lighting:GetChildren() do
                    if fx:IsA("ColorCorrectionEffect") or fx:IsA("BlurEffect") or fx:IsA("DepthOfFieldEffect") then
                        (fx :: ColorCorrectionEffect).Enabled = true
                    end
                end
            end
        end)
        notify("Full Bright", v and "Map lit up!" or "Lighting restored.", 3)
    end,
})

VisualsTab:CreateToggle({
    Name="Remove Fog", CurrentValue=false, Flag="RemoveFog",
    Callback=function(v: boolean)
        flags.removeFog = v
        safeCall(function()
            Lighting.FogEnd   = v and 100000 or origLighting.FogEnd
            Lighting.FogStart = v and 100000 or origLighting.FogStart
            local atmo = Lighting:FindFirstChildOfClass("Atmosphere") :: Atmosphere?
            if atmo then
                atmo.Density = v and 0 or 0.395
                atmo.Haze    = v and 0 or atmo.Haze
                atmo.Glare   = v and 0 or atmo.Glare
            end
        end)
        notify("Fog", v and "Fog removed!" or "Fog restored.", 3)
    end,
})

-- ============================================================
-- TAB 2 ► SURVIVORS
-- ============================================================
local SurvivorTab = Window:CreateTab("Survivors", 4483362458)

SurvivorTab:CreateSection("Survival Tools")

local noclipConn: Connection? = nil
SurvivorTab:CreateToggle({
    Name="Noclip (Wall Phase)", CurrentValue=false, Flag="Noclip",
    Callback=function(v: boolean)
        flags.noclipping = v
        if v then
            noclipConn = RunService.Stepped:Connect(function()
                if not flags.noclipping then
                    noclipConn:Disconnect(); noclipConn = nil; return
                end
                safeCall(function()
                    local c = getChar()
                    if not c then return end
                    for _, p in c:GetDescendants() do
                        if p:IsA("BasePart") then (p :: BasePart).CanCollide = false end
                    end
                end)
            end)
            AddConn(noclipConn)
        end
        notify("Noclip", v and "Wall phase active!" or "Disabled.", 3)
    end,
})

SurvivorTab:CreateButton({
    Name="Cleanse Status Effects",
    Callback=function()
        safeCall(function()
            local char = getChar(); if not char then return end
            local folder = char:FindFirstChild("StatusEffects")
                or char:FindFirstChild("Effects")
                or char:FindFirstChild("Debuffs")
            local count = 0
            if folder then
                local bad = {"bleeding","corrupted","poisoned","weakness","helpless","entangled","infection","slowed","marked"}
                for _, fx in folder:GetChildren() do
                    local n = fx.Name:lower()
                    for _, b in bad do
                        if n:find(b) then fx:Destroy(); count += 1; break end
                    end
                end
                notify("Cleanse", `{count} effect(s) removed!`, 3)
            else
                local rs = game:GetService("ReplicatedStorage")
                local remote = rs:FindFirstChild("CleanseEffect") or rs:FindFirstChild("RemoveEffect")
                if remote then
                    (remote :: RemoteEvent):FireServer()
                    notify("Cleanse", "Cleanse remote fired!", 3)
                else
                    notify("Cleanse", "No status folder found.", 3)
                end
            end
        end)
    end,
})

SurvivorTab:CreateSection("Generator Puzzle Auto-Solver")

local genFlowSolverEnabled: boolean = false
local genFlowNodeDelay: number      = 0.04
local genFlowLineDelay: number      = 0.60
local genPuzzleUI: ScreenGui?       = nil

local function genRefreshPuzzleUI()
    genPuzzleUI = LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") :: ScreenGui?
end

local function genGetDirection(cr: number, cc: number, or2: number, oc: number): string
    if     or2 < cr then return "up"
    elseif or2 > cr then return "down"
    elseif oc < cc  then return "left"
    else                 return "right"
    end
end

type Node = { row: number, col: number }

local function genGetConnections(prev: Node?, curr: Node, nxt: Node?): { [string]: boolean }
    local conn: { [string]: boolean } = {}
    if prev and curr then
        local d = genGetDirection(curr.row, curr.col, prev.row, prev.col)
        if     d == "up"    then d = "down"
        elseif d == "down"  then d = "up"
        elseif d == "left"  then d = "right"
        else                     d = "left"
        end
        conn[d] = true
    end
    if nxt and curr then
        local d = genGetDirection(curr.row, curr.col, nxt.row, nxt.col)
        if d then conn[d] = true end
    end
    return conn
end

local function genIsNeighbour(r1: number, c1: number, r2: number, c2: number): string | boolean
    if r2 == r1-1 and c2 == c1 then return "up" end
    if r2 == r1+1 and c2 == c1 then return "down" end
    if r2 == r1 and c2 == c1-1 then return "left" end
    if r2 == r1 and c2 == c1+1 then return "right" end
    return false
end

local function genCoordKey(n: Node): string return `{n.row}-{n.col}` end

local function genOrderPath(path: { Node }, endpoints: { Node }?): { Node }
    if not path or #path == 0 then return path end
    local inPath: { [string]: Node } = {}
    for _, n in path do inPath[genCoordKey(n)] = n end

    local startNode: Node?
    for _, ep in endpoints or {} do
        for _, n in path do
            if n.row == ep.row and n.col == ep.col then
                startNode = {row=ep.row, col=ep.col}; break
            end
        end
        if startNode then break end
    end

    if not startNode then
        for _, n in path do
            local neighbors = 0
            for _, d in {{-1,0},{1,0},{0,-1},{0,1}} do
                if inPath[`{n.row+d[1]}-{n.col+d[2]}`] then neighbors += 1 end
            end
            if neighbors == 1 then startNode = {row=n.row, col=n.col}; break end
        end
    end

    if not startNode then startNode = {row=path[1].row, col=path[1].col} end

    local remaining: { [string]: Node } = {}
    local ordered: { Node } = {}
    for _, n in path do remaining[genCoordKey(n)] = {row=n.row, col=n.col} end

    local current = startNode :: Node
    table.insert(ordered, {row=current.row, col=current.col})
    remaining[genCoordKey(current)] = nil

    while next(remaining) do
        local found = false
        for key, node in remaining do
            if genIsNeighbour(current.row, current.col, node.row, node.col) then
                table.insert(ordered, {row=node.row, col=node.col})
                remaining[key] = nil; current = node; found = true; break
            end
        end
        if not found then break end
    end
    return ordered
end

local function genDrawSolution(puzzle: any)
    if not puzzle or not puzzle.Solution then return end
    local indices: { number } = {}
    for i = 1, #puzzle.Solution do table.insert(indices, i) end
    for i = #indices, 2, -1 do
        local j = math.random(1, i)
        indices[i], indices[j] = indices[j], indices[i]
    end
    for _, colorIndex in indices do
        local path      = puzzle.Solution[colorIndex]
        local endpoints = puzzle.targetPairs[colorIndex]
        local ordered   = genOrderPath(path, endpoints)
        puzzle.paths[colorIndex] = {}
        for i, node in ordered do
            table.insert(puzzle.paths[colorIndex], {row=node.row, col=node.col})
            local conn = genGetConnections(ordered[i-1], node, ordered[i+1])
            puzzle.gridConnections = puzzle.gridConnections or {}
            puzzle.gridConnections[genCoordKey(node)] = conn
            pcall(function() puzzle:updateGui() end)
            task.wait(genFlowNodeDelay)
        end
        task.wait(genFlowLineDelay)
        pcall(function() puzzle:checkForWin() end)
    end
end

local genFlowModule: ModuleScript? = nil
local _gs, _gm = pcall(function()
    return game:GetService("ReplicatedStorage").Modules.Misc.FlowGameManager.FlowGame
end)
if _gs and _gm then genFlowModule = _gm end

if genFlowModule then
    local FlowGame = require(genFlowModule :: ModuleScript)
    local oldNew   = FlowGame.new
    FlowGame.new   = function(...)
        local puzzle = oldNew(...)
        if genFlowSolverEnabled then
            task.spawn(function()
                task.wait(0.3)
                if puzzle and puzzle.Solution then
                    genDrawSolution(puzzle)
                end
            end)
        end
        return puzzle
    end
end

AddConn(LocalPlayer.PlayerGui.ChildAdded:Connect(function(c: Instance)
    if c.Name == "PuzzleUI" then genRefreshPuzzleUI() end
end))
AddConn(LocalPlayer.PlayerGui.ChildRemoved:Connect(function()
    genPuzzleUI = nil
end))
genRefreshPuzzleUI()

SurvivorTab:CreateToggle({
    Name="Auto-Solve Generator Puzzles", CurrentValue=false, Flag="AutoGen",
    Callback=function(v: boolean)
        flags.autoGen        = v
        genFlowSolverEnabled = v
        if v and not genFlowModule then
            notify("Auto Gen", "FlowGame module not found! Inject during a round.", 5)
        else
            notify("Auto Gen", v and "Solver ON! Walk to a gen and start the puzzle." or "Disabled.", 4)
        end
    end,
})

SurvivorTab:CreateSlider({
    Name="Node Draw Speed", Range={0.01,0.50}, Increment=0.01, CurrentValue=0.04, Suffix="s", Flag="GenNodeSpeed",
    Callback=function(v: number) genFlowNodeDelay = v end,
})

SurvivorTab:CreateSlider({
    Name="Delay Between Color Lines", Range={0.00,1.00}, Increment=0.01, CurrentValue=0.60, Suffix="s", Flag="GenLineDelay",
    Callback=function(v: number) genFlowLineDelay = v end,
})

SurvivorTab:CreateButton({
    Name="Check Generator Module Status",
    Callback=function()
        if genFlowModule then notify("Generator", "FlowGame module FOUND — solver ready!", 4)
        else notify("Generator", "FlowGame module NOT found. Try injecting mid-round.", 4) end
    end,
})

SurvivorTab:CreateButton({
    Name="Teleport to Nearest Generator",
    Callback=function()
        safeCall(function()
            local hrp = getHRP(); if not hrp then return end
            local nearest: BasePart?  = nil
            local nearestDist: number = math.huge
            for _, obj in workspace:GetDescendants() do
                local n = obj.Name:lower()
                if not (n:find("generator") or n:find("gen")) or not obj:IsA("Model") then continue end
                local part = (obj :: Model).PrimaryPart or obj:FindFirstChildOfClass("BasePart") :: BasePart?
                if not part then continue end
                local d = (hrp.Position - part.Position).Magnitude
                if d < nearestDist then nearest = part; nearestDist = d end
            end
            if nearest then
                hrp.CFrame = CFrame.new(nearest.Position + Vector3.new(0,5,0))
                notify("Generator", "Teleported! 4 puzzles = -12sec!", 3)
            else
                notify("Generator", "No generator found.", 3)
            end
        end)
    end,
})

-- ============================================================
-- TAB 3 ► KILLER
-- ============================================================
local KillerTab = Window:CreateTab("Killer", 4483362458)

KillerTab:CreateSection("Kill Utilities")

KillerTab:CreateButton({
    Name="Teleport to Nearest Survivor",
    Callback=function()
        safeCall(function()
            local hrp = getHRP(); if not hrp then return end
            local nearest: BasePart? = nil
            local nearestDist: number = math.huge
            for _, p in Players:GetPlayers() do
                if p == LocalPlayer then continue end
                local c = p.Character
                local oHRP = c and c:FindFirstChild("HumanoidRootPart") :: BasePart?
                if not oHRP then continue end
                local d = (hrp.Position - oHRP.Position).Magnitude
                if d < nearestDist then nearest = oHRP; nearestDist = d end
            end
            if nearest then
                hrp.CFrame = CFrame.new(nearest.Position + Vector3.new(0,4,-3))
                notify("Kill +35s", "Teleported! Kill = +35sec on timer!", 3)
            else
                notify("Killer", "No survivors found.", 3)
            end
        end)
    end,
})

KillerTab:CreateButton({
    Name="Destroy Nearby Survivor Traps & Builds",
    Callback=function()
        safeCall(function()
            local hrp = getHRP(); if not hrp then return end
            local count = 0
            local kws = {"trap","sentry","dispenser","shadow","pizza","turret","bot","mine","barrier","plasma","tripwire","tripmine","wire","clone"}
            for _, obj in workspace:GetDescendants() do
                local n = obj.Name:lower()
                for _, kw in kws do
                    if not n:find(kw) then continue end
                    local part = (obj:IsA("BasePart") and obj :: BasePart)
                        or (obj:IsA("Model") and ((obj :: Model).PrimaryPart or obj:FindFirstChildOfClass("BasePart") :: BasePart?))
                    if part and (hrp.Position - (part :: BasePart).Position).Magnitude < 35 then
                        safeCall(function() obj:Destroy() end); count += 1
                    end
                    break
                end
            end
            notify("Cleared", `{count} trap(s) destroyed!`, 3)
        end)
    end,
})

KillerTab:CreateSection("Killer ESP")

local function applyKillerESPToChar(p: Player, c: Model)
    if not flags.killerESP then return end
    if p == LocalPlayer or not c or not c.Parent then return end
    local existing = c:FindFirstChild("KillerESP_Hl") :: Highlight?
    if existing and existing:IsA("Highlight") and existing.Parent then return end
    removeESP(c, "KillerESP_Hl")
    local hl = Instance.new("Highlight")
    hl.Name="KillerESP_Hl"; hl.FillColor=Color3.fromRGB(255,30,30)
    hl.OutlineColor=Color3.fromRGB(255,255,255); hl.FillTransparency=0.4
    hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent=c
end

local killerESPCharConns: { [Player]: Connection } = {}
local killerESPPlayerAddedConn: Connection? = nil

local function hookKillerESPChar(p: Player)
    if killerESPCharConns[p] then
        pcall(function() killerESPCharConns[p]:Disconnect() end)
        killerESPCharConns[p] = nil
    end
    if p.Character then applyKillerESPToChar(p, p.Character) end
    killerESPCharConns[p] = p.CharacterAdded:Connect(function(c: Model)
        task.wait(0.5)
        applyKillerESPToChar(p, c)
    end)
end

KillerTab:CreateToggle({
    Name="Survivor Aura Reveal (404 Error)", CurrentValue=false, Flag="KillerESP",
    Callback=function(v: boolean)
        flags.killerESP = v
        if not v then
            for _, p in Players:GetPlayers() do
                local c = p.Character
                if c then removeESP(c, "KillerESP_Hl") end
            end
            for p, conn in killerESPCharConns do
                pcall(function() conn:Disconnect() end)
            end
            killerESPCharConns = {}
            if killerESPPlayerAddedConn then
                pcall(function() killerESPPlayerAddedConn:Disconnect() end)
                killerESPPlayerAddedConn = nil
            end
            notify("Aura Reveal", "Disabled.", 3)
            return
        end
        for _, p in Players:GetPlayers() do
            hookKillerESPChar(p)
        end
        killerESPPlayerAddedConn = Players.PlayerAdded:Connect(function(p: Player)
            if not flags.killerESP then return end
            hookKillerESPChar(p)
        end)
        AddConn(killerESPPlayerAddedConn)
        notify("Aura Reveal", "All survivors visible!", 3)
    end,
})

-- Periodic rescan every 4 seconds
task.spawn(function()
    while true do
        task.wait(4)
        if not flags.killerESP then continue end
        pcall(function()
            for _, p in Players:GetPlayers() do
                if p == LocalPlayer then continue end
                local c = p.Character
                if not c then continue end
                local hl = c:FindFirstChild("KillerESP_Hl")
                if not hl or not hl.Parent then
                    applyKillerESPToChar(p, c)
                end
            end
        end)
    end
end)

-- ============================================================
-- TAB 4 ► STAMINA
-- ============================================================
local StaminaTab = Window:CreateTab("Stamina", 4483362458)

-- ▌SPRINT MODULE — used for both infinite stamina and speed integration
local SprintModule: any = nil
local function getSprintModule(): any
    if SprintModule then return SprintModule end
    safeCall(function()
        SprintModule = require(
            game.ReplicatedStorage.Systems.Character.Game.Sprinting :: ModuleScript
        )
    end)
    return SprintModule
end

-- ▌SPEED STATE and FE speed functions are defined in the Speed section below

-- Re-apply speed and stamina on every respawn
AddConn(LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if flags.infStamina then
        local m = getSprintModule()
        if m then m.StaminaLossDisabled = true end
    end
end))

-- ── SECTION 1: Infinite Stamina ──────────────────────────────
StaminaTab:CreateSection("Infinite Stamina")

StaminaTab:CreateToggle({
    Name="Infinite Stamina", CurrentValue=false, Flag="InfiniteStamina",
    Callback=function(v: boolean)
        flags.infStamina = v
        safeCall(function()
            local m = getSprintModule()
            if m then
                m.StaminaLossDisabled = v
                notify("Infinite Stamina",
                    v and "No stamina drain — runs forever!" or "Stamina restored.", 4)
            else
                notify("Infinite Stamina",
                    "Sprint module not found. Try injecting mid-round.", 4)
            end
        end)
    end,
})

StaminaTab:CreateLabel("Survivor: drains within 85 studs of Killer | Drain: 10/s | Regen: 20/s")
StaminaTab:CreateLabel("Killer: drains when running | Lockout at 0: 2 seconds")

-- ── SECTION 2: FE Speed Hack ─────────────────────────────────
StaminaTab:CreateSection("Speed (FE — Hitbox Follows)")

-- Separate walk and run speed state
local currentWalkSpeed: number = 12
local currentRunSpeed: number  = 26
local speedEnabled: boolean    = false

-- CHARACTER SPEED PRESETS — exact values per character
type SpeedPreset = { walk: number, run: number }
local SPEED_PRESETS: { [string]: SpeedPreset } = {
    ["Survivor (Default)"]  = { walk = 12,   run = 26    },
    ["1x1x1x1"]             = { walk = 8,    run = 27    },
    ["John Doe"]             = { walk = 9,    run = 27.25 },
    ["Slasher"]              = { walk = 9,    run = 28    },
    ["c00lkidd"]             = { walk = 8,    run = 28    },
    ["Guest 666"]            = { walk = 9,    run = 27    },
    ["Nosferatu"]            = { walk = 7.5,  run = 27.5  },
    ["Noli"]                 = { walk = 8,    run = 27    },
}

-- ▌SPEED HACK — Heartbeat enforcement
-- Forsaken's sprint module resets WalkSpeed every frame during movement.
-- A one-shot set loses the race. The fix is to win every frame by
-- re-writing WalkSpeed inside a Heartbeat loop for the full duration.
-- The sprint module fields are also overridden each tick so neither
-- path can restore the original value.

local speedHeartbeatConn: Connection? = nil

local function startSpeedLoop()
    if speedHeartbeatConn then return end  -- already running
    speedHeartbeatConn = RunService.Heartbeat:Connect(function()
        if not speedEnabled then return end
        pcall(function()
            local hum = getHumanoid()
            if hum then
                -- Only write if it has drifted — avoids unnecessary dirty flags
                if hum.WalkSpeed ~= currentWalkSpeed then
                    hum.WalkSpeed = currentWalkSpeed
                end
            end
            local m = getSprintModule()
            if m then
                if m.WalkSpeed   ~= nil and m.WalkSpeed   ~= currentWalkSpeed then m.WalkSpeed   = currentWalkSpeed end
                if m.RunSpeed    ~= nil and m.RunSpeed    ~= currentRunSpeed  then m.RunSpeed    = currentRunSpeed  end
                if m.SprintSpeed ~= nil and m.SprintSpeed ~= currentRunSpeed  then m.SprintSpeed = currentRunSpeed  end
                if m.BaseSpeed   ~= nil and m.BaseSpeed   ~= currentWalkSpeed then m.BaseSpeed   = currentWalkSpeed end
            end
        end)
    end)
    AddConn(speedHeartbeatConn)
end

local function stopSpeedLoop()
    if speedHeartbeatConn then
        speedHeartbeatConn:Disconnect()
        speedHeartbeatConn = nil
    end
end

-- One-shot apply still used for instant feedback on toggle/slider change
local function applySpeed(walk: number, run: number)
    currentWalkSpeed = walk
    currentRunSpeed  = run
    safeCall(function()
        local hum = getHumanoid()
        if hum then hum.WalkSpeed = walk end
        local m = getSprintModule()
        if m then
            if m.WalkSpeed   ~= nil then m.WalkSpeed   = walk end
            if m.RunSpeed    ~= nil then m.RunSpeed    = run  end
            if m.SprintSpeed ~= nil then m.SprintSpeed = run  end
            if m.BaseSpeed   ~= nil then m.BaseSpeed   = walk end
        end
    end)
end

local function resetSpeed()
    stopSpeedLoop()
    safeCall(function()
        local hum = getHumanoid()
        if hum then hum.WalkSpeed = 12 end
        local m = getSprintModule()
        if m then
            if m.WalkSpeed   ~= nil then m.WalkSpeed   = 12 end
            if m.RunSpeed    ~= nil then m.RunSpeed    = 26 end
            if m.SprintSpeed ~= nil then m.SprintSpeed = 26 end
            if m.BaseSpeed   ~= nil then m.BaseSpeed   = 12 end
        end
    end)
end

-- Re-apply speed on every respawn
AddConn(LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if speedEnabled then
        applySpeed(currentWalkSpeed, currentRunSpeed)
        startSpeedLoop()
    end
    if flags.infStamina then
        local m = getSprintModule()
        if m then m.StaminaLossDisabled = true end
    end
end))

StaminaTab:CreateToggle({
    Name="Enable Speed Hack", CurrentValue=false, Flag="SpeedHackEnabled",
    Callback=function(v: boolean)
        speedEnabled = v
        if v then
            applySpeed(currentWalkSpeed, currentRunSpeed)
            startSpeedLoop()
            notify("Speed", `Walk: {currentWalkSpeed} | Run: {currentRunSpeed} — enforced every frame`, 3)
        else
            resetSpeed()
            notify("Speed", "Speed reset to default.", 3)
        end
    end,
})

-- Character preset dropdown — snaps both sliders to exact known values
StaminaTab:CreateDropdown({
    Name="Character Speed Preset",
    Options={
        "Survivor (Default)",
        "1x1x1x1",
        "John Doe",
        "Slasher",
        "c00lkidd",
        "Guest 666",
        "Nosferatu",
        "Noli",
    },
    CurrentOption={"Survivor (Default)"},
    Flag="SpeedPreset",
    Callback=function(selected: { string })
        local preset = SPEED_PRESETS[selected[1]]
        if not preset then return end
        currentWalkSpeed = preset.walk
        currentRunSpeed  = preset.run
        if speedEnabled then applySpeed(currentWalkSpeed, currentRunSpeed) end
        notify("Speed Preset",
            `{selected[1]} — Walk: {preset.walk} | Run: {preset.run} studs/s`, 4)
    end,
})

-- Walk Speed slider — 0.25 increment, full manual control
StaminaTab:CreateSlider({
    Name="Walk Speed",
    Range={7, 30},
    Increment=0.25,
    CurrentValue=12,
    Suffix=" studs/s",
    Flag="WalkSpeedValue",
    Callback=function(v: number)
        currentWalkSpeed = v
        if speedEnabled then applySpeed(currentWalkSpeed, currentRunSpeed) end
    end,
})

-- Run Speed slider — 0.25 increment, full manual control
StaminaTab:CreateSlider({
    Name="Run / Sprint Speed",
    Range={20, 60},
    Increment=0.25,
    CurrentValue=26,
    Suffix=" studs/s",
    Flag="RunSpeedValue",
    Callback=function(v: number)
        currentRunSpeed = v
        if speedEnabled then applySpeed(currentWalkSpeed, currentRunSpeed) end
    end,
})

StaminaTab:CreateSection("Speed Reference")
StaminaTab:CreateLabel("Survivor        Walk: 12  |  Run: 26")
StaminaTab:CreateLabel("1x1x1x1         Walk: 8   |  Run: 27")
StaminaTab:CreateLabel("John Doe        Walk: 9   |  Run: 27.25")
StaminaTab:CreateLabel("Slasher         Walk: 9   |  Run: 28")
StaminaTab:CreateLabel("c00lkidd        Walk: 8   |  Run: 28")
StaminaTab:CreateLabel("Guest 666       Walk: 9   |  Run: 27")
StaminaTab:CreateLabel("Nosferatu       Walk: 7.5  | Run: 27.5")
StaminaTab:CreateLabel("Noli            Walk: 8    | Run: 27")

-- ============================================================
-- TAB 5 ► CHARACTERS
-- ============================================================
local CharTab = Window:CreateTab("Characters", 4483362458)

CharTab:CreateSection("Survivalist")

CharTab:CreateDropdown({
    Name="Survivalist Guide",
    Options={
        "Noob — Survivalist (Free)",
        "007n7 — Survivalist",
        "Veeronica — Survivalist",
        "Jane Doe — Survivalist (Unlockable)",
    },
    CurrentOption={"Noob — Survivalist (Free)"}, Flag="SurvivorGuide_Survivalist",
    Callback=function(selected: { string })
        local info: { [string]: string } = {
            ["Noob — Survivalist (Free)"]
                = "Walk: 12 | Run: 26. Slateskin Potion = now Level 3 status (buffed from L2). Only 20% speed reduction while drinking (down from 40%). Ghostburger also only 20% reduction. Cola stacking nerf removed. Best starter.",
            ["007n7 — Survivalist"]
                = "Walk: 12 | Run: 26. Deploy Clone to bait killer. GUI Teleport = emergency escape. Mix movements so killer cannot track which is real.",
            ["Veeronica — Survivalist"]
                = "Walk: 12 | Run: 26. VANDALISM restores stamina on contact. Only survivor with self-damage ability. Strong stamina advantage near timer end.",
            ["Jane Doe — Survivalist (Unlockable)"]
                = "Walk: 12 | Run: 26. Unlocked by completing Jane Doe's quests in the Basement. Passive: Silence — The Spectre blacks out her face from John Doe's vision so he can attack her. Support/Sentinel playstyle. Wife of John Doe. Added in Update 4.0.0.",
        }
        notify(selected[1], info[selected[1]] or "No info.", 7)
    end,
})

CharTab:CreateSection("Sentinel")

CharTab:CreateDropdown({
    Name="Sentinel Guide",
    Options={
        "Guest 1337 — Sentinel",
        "Chance — Sentinel",
        "Two Time — Sentinel",
        "Shedletsky — Sentinel",
    },
    CurrentOption={"Guest 1337 — Sentinel"}, Flag="SurvivorGuide_Sentinel",
    Callback=function(selected: { string })
        local info: { [string]: string } = {
            ["Guest 1337 — Sentinel"]
                = "Walk: 12 | Run: 26. 115 HP — highest base HP in the game. Body-block for teammates. Stun killer to protect gen repairs. Hardest to kill.",
            ["Chance — Sentinel"]
                = "Walk: 12 | Run: 26. Model updated in 4.0.0. Reroll HP at start (50–130 range). One Shot gun has RNG outcome. High risk high reward — can one-tap or miss entirely.",
            ["Two Time — Sentinel"]
                = "Walk: 12 | Run: 26. Model updated in 4.0.0. 80 HP first life → 40 HP second life → 110 HP on LMS. Use first life aggressively. Save charge for LMS stage.",
            ["Shedletsky — Sentinel"]
                = "Walk: 12 | Run: 26. Admin sword creates distance and stuns. Strong gen runner. Stun killer to protect teammates during repairs.",
        }
        notify(selected[1], info[selected[1]] or "No info.", 7)
    end,
})

CharTab:CreateSection("Support")

CharTab:CreateDropdown({
    Name="Support Guide",
    Options={
        "Taph — Support",
        "Elliot — Support",
        "Builderman — Support",
        "Dusekkar — Support",
    },
    CurrentOption={"Elliot — Support"}, Flag="SurvivorGuide_Support",
    Callback=function(selected: { string })
        local info: { [string]: string } = {
            ["Taph — Support"]
                = "Walk: 12 | Run: 26. Tripmine stacking status duration cut increased to 0.85s (from 0.5s). Tripwire now stays at Slowness L2 regardless of multiple Taphs alive + stacking cut also 0.85s. Stack traps near gens for maximum slowdown.",
            ["Elliot — Support"]
                = "Walk: 12 | Run: 26. Pizza Throw heals teammates from range. Passively sees crit-hit allies. Stay at mid-distance — never rush the killer.",
            ["Builderman — Support"]
                = "Walk: 12 | Run: 26. Sentry damages and slows killer. Dispenser heals team passively. Cannot build through walls — positioning is everything.",
            ["Dusekkar — Support"]
                = "Walk: 12 | Run: 26. Plasma Beam damages and slows the killer. Protection shield absorbs incoming damage for a teammate. Overheal buffed to 30 HP (up from 20). Run Plasma first to zone, then shield whoever is being chased.",
        }
        notify(selected[1], info[selected[1]] or "No info.", 7)
    end,
})

CharTab:CreateSection("Killer Guide")

CharTab:CreateDropdown({
    Name="Killer Character Guide",
    Options={
        "Slasher — B-Tier Rushdown (Free) Sprint:28","c00lkidd — S-Tier Rushdown Sprint:28",
        "John Doe — S-Tier Zoner","1x1x1x1 — A-Tier Zoner",
        "Guest 666 — C-Tier Ambusher","Nosferatu — B-Tier Ambusher","Noli — B-Tier Ambusher",
    },
    CurrentOption={"Slasher — B-Tier Rushdown (Free) Sprint:28"}, Flag="KillerGuide",
    Callback=function(selected: { string })
        local info: { [string]: string } = {
            ["Slasher — B-Tier Rushdown (Free) Sprint:28"] = "Walk: 9 | Run: 28. Slash=Bleeding, Behead=Helpless. Behead no longer self-slows if it kills. Guest 1337 can no longer block Gashing Wound grabs beyond the initial hit. Kill fast = +35sec each.",
            ["c00lkidd — S-Tier Rushdown Sprint:28"]       = "Walk: 8 | Run: 28. Corrupt Nature tag first. Pizza Bots zone gens. Walkspeed Override in corridors.",
            ["John Doe — S-Tier Zoner"]                    = "Walk: 9 | Run: 27.25. Unstoppable now reduces interrupted ability cooldown by 50% when triggered. Malevolence trail damages. Corrupt Energy spikes block loops. Digital Footprint = Slowness II. 404 Error reveals all auras.",
            ["1x1x1x1 — A-Tier Zoner"]                     = "Walk: 8 | Run: 27. Dual slash = Poison + Glitch. Mass Infection pierces groups. Entanglement roots. Rejuvenate the Rotten speed boost duration reduced to 8s (from 10s). Unstable Eye tracks all.",
            ["Guest 666 — C-Tier Ambusher"]                = "Walk: 9 | Run: 27. Manic Fixation out-of-chase boost reduced to 15% (from 20%). Blood Hunt initial cost increased to 200 blood (from 150). Possession redirects survivor movement. Hard countered by looping.",
            ["Nosferatu — B-Tier Ambusher"]                = "Walk: 7.5 | Run: 27.5. Walkspeed buffed to 7.5 (from 7.25). Hunter's Feast invisibility level increased to 5 (from 4) but now ends immediately on any ability use. Ascension = surprise drop-in. First NPC killer.",
            ["Noli — B-Tier Ambusher"]                     = "Walk: 8 | Run: 27. Walkspeed buffed to 8 (from 7.75). Void Rush = gap close. Hallucination = fake generators. Nova = ranged poke. Observant for repositioning.",
        }
        notify(selected[1], info[selected[1]] or "No info.", 8)
    end,
})

-- ============================================================
-- TAB 6 ► AUTO BLOCK  (V4.1.0 engine)
-- ============================================================

-- ▌REMOTE
local testRemote: RemoteEvent? = nil
pcall(function()
    testRemote = game:GetService("ReplicatedStorage")
        :WaitForChild("Modules", 10)
        :WaitForChild("Network", 10)
        :WaitForChild("RemoteEvent", 10) :: RemoteEvent
end)

local function makeBuffer(str: string): buffer | string
    local ok, result = pcall(function() return buffer.fromstring(str) end)
    return ok and result or str
end

local BUFFERS = {
    Block  = makeBuffer("\3\5\0\0\0Block"),
    Punch  = makeBuffer("\3\5\0\0\0Punch"),
    Charge = makeBuffer("\3\5\0\0\0Charge"),
    Clone  = makeBuffer("\3\5\0\0\0Clone"),
}

-- Cached remote with fallback scan
local _cachedRemote: RemoteEvent? = nil
local function getAbilityRemote(): RemoteEvent?
    if _cachedRemote and _cachedRemote.Parent then return _cachedRemote end
    pcall(function()
        local net = game:GetService("ReplicatedStorage"):FindFirstChild("Modules")
            and game:GetService("ReplicatedStorage").Modules:FindFirstChild("Network")
        if net then
            for _, c in net:GetChildren() do
                if c:IsA("RemoteEvent") then _cachedRemote = c :: RemoteEvent; return end
            end
        end
        _cachedRemote = testRemote
    end)
    return _cachedRemote
end

local function fireAbility(t: string)
    local rem = getAbilityRemote(); if not rem then return end
    local buf = BUFFERS[t] or BUFFERS.Block
    pcall(function() rem:FireServer("UseActorAbility", {[1] = buf}) end)
    pcall(function() rem:FireServer(t) end)
end

-- ▌SETTINGS STATE
local AB: { [string]: any } = {
    -- Sound Block
    autoBlockAudioOn   = false,
    detectionRange     = 18,
    blockdelay         = 0,
    facingCheckEnabled = false,
    doubleblocktech    = true,
    autoblocktype      = "Block",
    abMissChance       = 0,
    -- HDT
    hitboxDraggingTech = false,
    Dspeed             = 12,
    Ddelay             = 0,
    rotateDelay        = 0,
    hdtMissChance      = 0,
    hdtMode            = "180_TURN",
    -- RCT
    rctEnabled         = false,
    rctFlickDir        = "Right",
    rctFlickAngle      = 120,
    rctFlickDelay      = 0.08,
    rctFlickSpeed      = 0.06,
    rctAutoLedge       = false,
    rctMissChance      = 0,
    -- Aim Punch / Lock
    characterLockOn    = false,
    lockMaxDistance    = 30,
    predictionValue    = 4,
    aimWindow          = 0.7,
    -- Auto Punch
    autoPunchOn        = false,
}

-- ▌CONSTANTS
local STRICT_FACING_DOT: number = 0.70
local KILLER_NAMES: { string }  = {"c00lkidd","Jason","JohnDoe","1x1x1x1","Noli","Slasher","Sixer"}
local BAIT_KILLERS: { string }  = {"John Doe","Slasher","c00lkidd","Jason","1x1x1x1","Noli","Sixer","Nosferatu"}
local BLOCK_CD: number          = 0.1
local HDT_CD: number            = 0.5
local RCT_CD: number            = 10
local AIM_PUNCH_FRAME_GAP: number = 10

local PUNCH_ANIM_SET: { [string]: boolean } = {}
local BLOCK_ANIM_SET: { [string]: boolean }  = {}
do
    for _, v in {
        "87259391926321","140703210927645","136007065400978","129843313690921",
        "86709774283672","108807732150251","138040001965654","86096387000557",
    } do PUNCH_ANIM_SET[v] = true end
    for _, v in {
        "72722244508749","96959123077498","95802026624883","100926346851492","120748030255574",
    } do BLOCK_ANIM_SET[v] = true end
end

local TRIGGER_SOUNDS: { [string]: boolean } = {
    ["102228729296384"]=true,["140242176732868"]=true,["112809109188560"]=true,
    ["136323728355613"]=true,["115026634746636"]=true,["84116622032112"]=true,
    ["108907358619313"]=true,["127793641088496"]=true,["86174610237192"]=true,
    ["95079963655241"]=true,["101199185291628"]=true,["119942598489800"]=true,
    ["84307400688050"]=true,["113037804008732"]=true,["105200830849301"]=true,
    ["75330693422988"]=true,["82221759983649"]=true,["81702359653578"]=true,
    ["108610718831698"]=true,["112395455254818"]=true,["109431876587852"]=true,
    ["109348678063422"]=true,["85853080745515"]=true,["12222216"]=true,
    ["105840448036441"]=true,["114742322778642"]=true,["119583605486352"]=true,
    ["79980897195554"]=true,["71805956520207"]=true,["79391273191671"]=true,
    ["89004992452376"]=true,["101553872555606"]=true,["101698569375359"]=true,
    ["106300477136129"]=true,["116581754553533"]=true,["117231507259853"]=true,
    ["119089145505438"]=true,["121954639447247"]=true,["125213046326879"]=true,
    ["131406927389838"]=true,["117173212095661"]=true,["71834552297085"]=true,
    ["80516583309685"]=true,["76959687420003"]=true,["107444859834748"]=true,
    ["86833981571073"]=true,["110372418055226"]=true,["86494585504534"]=true,
    ["121369993837377"]=true,["132331977491979"]=true,["18782451032"]=true,
    ["80587845277702"]=true,["94317217837143"]=true,["136728245733659"]=true,
    ["104910828105172"]=true,["98111231282218"]=true,["71310583817000"]=true,
    ["124903763333174"]=true,["72425554233832"]=true,["131123355704017"]=true,
    ["128856426573270"]=true,["128195973631079"]=true,["128367348686124"]=true,
    ["105204810054381"]=true,["98675142200448"]=true,["106836941416453"]=true,
}

-- ▌SHARED HELPERS
local cachedAnimator: Animator? = nil

local function abGetNearestKiller(): Model?
    local myChar = LocalPlayer.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart") :: BasePart?
    if not myRoot then return nil end
    local kf: Folder? = nil
    pcall(function() kf = workspace.Players.Killers :: Folder end)
    if not kf then return nil end
    local best: Model?  = nil
    local bestD: number = math.huge
    for _, k in kf:GetChildren() do
        local hrp = k:FindFirstChild("HumanoidRootPart") :: BasePart?
        if not hrp then continue end
        local d = (hrp.Position - myRoot.Position).Magnitude
        if d < bestD then best = k :: Model; bestD = d end
    end
    return best
end

local function abRefreshAnimator()
    local char = LocalPlayer.Character
    if not char then cachedAnimator = nil; return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    cachedAnimator = hum and hum:FindFirstChildOfClass("Animator") :: Animator? or nil
end

local function rollMiss(chance: number): boolean
    if chance <= 0 then return false end
    if chance >= 100 then return true end
    return math.random(1, 100) <= chance
end

-- ▌FACING CHECK  (V4.1.0 — bait-aware velocity check)
local function isStrictlyFacing(myRoot: BasePart, targetRoot: BasePart, killerName: string?): boolean
    if not AB.facingCheckEnabled then return true end
    if not myRoot or not targetRoot then return false end
    local diff = myRoot.Position - targetRoot.Position
    if diff.Magnitude < 0.01 then return true end
    local dot = targetRoot.CFrame.LookVector:Dot(diff.Unit)
    local isBait = false
    if killerName then
        for _, n in BAIT_KILLERS do
            if killerName:find(n) then isBait = true; break end
        end
    end
    if isBait then
        local vel = Vector3.zero
        pcall(function() vel = targetRoot.AssemblyLinearVelocity end)
        if vel.Magnitude < 0.01 then pcall(function() vel = targetRoot.Velocity end) end
        local side = math.abs(vel:Dot(targetRoot.CFrame.RightVector))
        if side > 3 then return false end
        return dot > STRICT_FACING_DOT + 0.05
    end
    return dot > STRICT_FACING_DOT
end

-- ▌SOUND BLOCK  — Dual-mode: event hooks (immediate) + tick scan (backup)
-- Registers every sound in the Killers folder regardless of ID.
-- ID check happens at fire time so late-loading SoundIds are never missed.
-- Both sound.Played events AND tick-scan are active simultaneously.
local SoundBlock = {}
do
    local trackedSounds: { [Sound]: { Connection } } = {}
    local blockedUntil:  { [Sound]: number }         = {}

    -- Extracts numeric ID from rbxassetid:// or plain number strings
    local function extractId(sound: Sound): string?
        if not sound or not sound.SoundId then return nil end
        return tostring(sound.SoundId):match("%d+")
    end

    -- Resolves the BasePart a sound is associated with.
    -- Handles: sound → BasePart, sound → Attachment → BasePart,
    --          sound → Model (takes PrimaryPart or first BasePart),
    --          sound → any ancestor BasePart as last resort.
    local function getSoundPart(sound: Sound): BasePart?
        local p = sound.Parent
        if not p then return nil end
        if p:IsA("BasePart") then return p :: BasePart end
        if p:IsA("Attachment") then
            local pp = p.Parent
            if pp and pp:IsA("BasePart") then return pp :: BasePart end
        end
        if p:IsA("Model") then
            local m = p :: Model
            if m.PrimaryPart then return m.PrimaryPart end
            local bp = m:FindFirstChildWhichIsA("BasePart")
            if bp then return bp :: BasePart end
        end
        -- Last resort: walk up the ancestor chain for any BasePart
        local anc = p:FindFirstAncestorOfClass("BasePart")
        if anc then return anc :: BasePart end
        return nil
    end

    local function getCharFromPart(part: BasePart): Model?
        local m = part:FindFirstAncestorOfClass("Model")
        return (m and m:FindFirstChildOfClass("Humanoid")) and m :: Model or nil
    end

    -- Core fire function — called from both event hooks and tick-scan
    local function tryBlock(sound: Sound)
        if not AB.autoBlockAudioOn then return end

        local now = tick()

        -- Per-sound cooldown: exactly 200ms — tuned to M1 attack cadence in Forsaken.
        -- After one block fires from this sound, it cannot re-fire from the same
        -- sound instance for 200ms. This matches one full M1 swing interval so every
        -- hit in a fast combo is caught without double-firing on the same swing.
        if blockedUntil[sound] and now < blockedUntil[sound] then return end

        -- No global cooldown gate — two different sounds (or two killers) must each
        -- be able to trigger independently with zero suppression between them.

        -- ID check at fire time, not registration time
        -- This means late-loading SoundIds are always caught correctly
        local id = extractId(sound)
        if not id or not TRIGGER_SOUNDS[id] then return end

        local myChar = LocalPlayer.Character; if not myChar then return end
        local myRoot = myChar:FindFirstChild("HumanoidRootPart") :: BasePart?
        if not myRoot then return end

        local part = getSoundPart(sound)
        -- Fallback: if part not found, try to resolve from the sound's full ancestor chain
        if not part then
            local anc = sound:FindFirstAncestorWhichIsA("BasePart")
            if anc then part = anc :: BasePart end
        end
        if not part then return end

        local char = getCharFromPart(part)
        -- Fallback: check if the sound is anywhere inside a killer model directly
        if not char then
            local kf: Folder? = nil
            pcall(function() kf = workspace.Players.Killers :: Folder end)
            if kf then
                for _, k in kf:GetChildren() do
                    if sound:IsDescendantOf(k) then
                        char = k :: Model; break
                    end
                end
            end
        end
        if not char then return end

        local plr = Players:GetPlayerFromCharacter(char)
        if not plr or plr == LocalPlayer then return end

        local hrp = char:FindFirstChild("HumanoidRootPart") :: BasePart?
        if not hrp then return end
        if (hrp.Position - myRoot.Position).Magnitude > AB.detectionRange then return end
        if not isStrictlyFacing(myRoot, hrp, char.Name) then return end
        if rollMiss(AB.abMissChance) then return end

        -- Lock this specific sound for exactly 200ms (one M1 cycle)
        blockedUntil[sound] = now + 0.2

        local function doFire()
            if AB.autoblocktype == "Block" then
                fireAbility("Block")
                if AB.doubleblocktech then fireAbility("Punch") end
            elseif AB.autoblocktype == "Charge" then
                fireAbility("Charge")
            elseif AB.autoblocktype == "7n7 Clone" then
                fireAbility("Clone")
            end
        end
        if AB.blockdelay > 0 then task.delay(AB.blockdelay, doFire) else doFire() end
    end

    -- Tick-scan: backup pass in case a sound was already playing
    function SoundBlock.tick()
        if not AB.autoBlockAudioOn then return end
        for sound in trackedSounds do
            if not sound or not sound.Parent then
                -- Sound was destroyed — clean up
                if trackedSounds[sound] then
                    for _, c in trackedSounds[sound] do pcall(function() c:Disconnect() end) end
                end
                trackedSounds[sound] = nil
                blockedUntil[sound]  = nil
            elseif sound.IsPlaying then
                tryBlock(sound)
            end
        end
    end

    -- Register a sound with BOTH event hooks and tick-scan tracking.
    -- Registers ALL sounds regardless of ID — ID is checked at fire time.
    local function registerSound(sound: Sound)
        if not sound or not sound:IsA("Sound") then return end
        if trackedSounds[sound] then return end

        -- Event hooks: fire immediately when the sound starts playing.
        -- This is the primary trigger — much faster than tick-scan for short sounds.
        local c1 = sound.Played:Connect(function()
            tryBlock(sound)
        end)
        local c2 = sound:GetPropertyChangedSignal("IsPlaying"):Connect(function()
            if sound.IsPlaying then tryBlock(sound) end
        end)
        -- Also fire if the sound is already playing at registration time
        local c3 = sound.Destroying:Connect(function()
            if trackedSounds[sound] then
                for _, c in trackedSounds[sound] do pcall(function() c:Disconnect() end) end
            end
            trackedSounds[sound] = nil
            blockedUntil[sound]  = nil
        end)

        trackedSounds[sound] = {c1, c2, c3}

        -- Fire immediately if the sound is already mid-play
        if sound.IsPlaying then tryBlock(sound) end
    end

    -- Scans the Killers folder for every sound — no ID filtering at this stage
    function SoundBlock.setup()
        local kf: Folder? = nil
        pcall(function() kf = workspace.Players.Killers :: Folder end)
        if not kf then return end

        -- Register all existing sounds
        for _, d in kf:GetDescendants() do
            if d:IsA("Sound") then registerSound(d :: Sound) end
        end

        -- Register sounds added later mid-round
        kf.DescendantAdded:Connect(function(d: Instance)
            task.wait(0.02) -- tiny delay so SoundId is assigned before we hook
            if d:IsA("Sound") then registerSound(d :: Sound) end
        end)

        -- Re-setup if the Killers folder is ever rebuilt (round restart)
        kf.ChildAdded:Connect(function(child: Instance)
            task.wait(0.5)
            for _, d in (child :: Instance):GetDescendants() do
                if d:IsA("Sound") then registerSound(d :: Sound) end
            end
        end)
    end

    -- Periodic re-setup: re-scans the Killers folder every 8 seconds.
    -- Catches sounds that were added before setup() ran or after a map reload.
    task.spawn(function()
        while true do
            task.wait(8)
            if AB.autoBlockAudioOn then
                pcall(SoundBlock.setup)
            end
        end
    end)
end

-- ▌HDT — Hitbox Dragging Tech  (V4.1.0 — AnimationPlayed hook + 3 modes)
local HDT = {}
do
    local _debounce: boolean  = false
    local _lastTime: number   = 0
    local _hdtConn: Connection? = nil

    local function doPattern(hrp: BasePart)
        local mode = AB.hdtMode
        if mode == "180_TURN" then
            hrp.CFrame = CFrame.lookAt(hrp.Position, hrp.Position - hrp.CFrame.LookVector)
        elseif mode == "LEFT_SPIN" then
            for _ = 1, 5 do hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(36), 0); task.wait(0.02) end
        elseif mode == "RIGHT_SPIN" then
            for _ = 1, 5 do hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(-36), 0); task.wait(0.02) end
        end
    end

    local function startChargeAim(fallback: number?)
        fallback = fallback or 1.2
        local sw   = tick()
        local hum  = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") :: BasePart?
        if hum then hum.AutoRotate = false end
        while tick() - sw < fallback do
            pcall(function()
                local nk = abGetNearestKiller()
                if nk and root then
                    local tHRP = nk:FindFirstChild("HumanoidRootPart") :: BasePart?
                    if tHRP then
                        if AB.rotateDelay > 0 then task.wait(AB.rotateDelay) end
                        root.CFrame = CFrame.lookAt(root.Position, tHRP.Position)
                    end
                end
            end)
            task.wait()
        end
        if hum then hum.AutoRotate = true end
    end

    local function beginDrag(killerModel: Model)
        if _debounce then return end
        if not killerModel or not killerModel.Parent then return end
        local char = LocalPlayer.Character; if not char then return end
        local hrp  = char:FindFirstChild("HumanoidRootPart") :: BasePart?
        local hum  = char:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then return end
        local tHRP = killerModel:FindFirstChild("HumanoidRootPart") :: BasePart?
        if not tHRP then return end
        _debounce = true
        local oldW = hum.WalkSpeed; hum.WalkSpeed = 0
        pcall(doPattern, hrp)
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(1e5,0,1e5); bv.Velocity = Vector3.zero; bv.Parent = hrp
        local conn: Connection
        conn = RunService.Heartbeat:Connect(function()
            if not _debounce then
                conn:Disconnect()
                if bv and bv.Parent then bv:Destroy() end
                hum.WalkSpeed = oldW; return
            end
            if not (char and char.Parent) or not (killerModel and killerModel.Parent) then
                _debounce = false; return
            end
            local curTHRP = killerModel:FindFirstChild("HumanoidRootPart") :: BasePart?
            if not curTHRP then _debounce = false; return end
            local to = curTHRP.Position - hrp.Position
            local h2 = Vector3.new(to.X, 0, to.Z)
            bv.Velocity = h2.Magnitude > 0.01 and h2.Unit * AB.Dspeed or Vector3.zero
            if to.Magnitude <= 2.0 then _debounce = false end
        end)
        task.delay(0.4, function() _debounce = false end)
    end

    local function onBlockAnimPlayed(track: AnimationTrack)
        pcall(function()
            if not AB.hitboxDraggingTech or _debounce then return end
            local now = tick(); if now - _lastTime < HDT_CD then return end
            local id = tostring(track.Animation and track.Animation.AnimationId or ""):match("%d+")
            if not id or not BLOCK_ANIM_SET[id] then return end
            if rollMiss(AB.hdtMissChance) then return end
            _lastTime = now
            local nearest = abGetNearestKiller(); if not nearest then return end
            task.spawn(function()
                if AB.Ddelay > 0 then task.wait(AB.Ddelay) end
                beginDrag(nearest)
                startChargeAim(0.4)
            end)
        end)
    end

    function HDT.setup(anim: Animator)
        if _hdtConn then _hdtConn:Disconnect() end
        if not anim then return end
        _hdtConn = anim.AnimationPlayed:Connect(onBlockAnimPlayed)
    end
end

-- ▌RCT — Reverse Charge Tech  (V4.1.0 — flick + optional ledge finder)
local RCT = {}
do
    local _debounce: boolean   = false
    local _lastCharge: number  = 0

    local RCT_SCAN_DIRS: { Vector3 } = {
        Vector3.new(1,0,0), Vector3.new(-1,0,0),
        Vector3.new(0,0,1), Vector3.new(0,0,-1),
        Vector3.new(1,0,1).Unit, Vector3.new(-1,0,1).Unit,
        Vector3.new(1,0,-1).Unit, Vector3.new(-1,0,-1).Unit,
    }

    local function findLedgeAngle(killerHRP: BasePart): number?
        local bestDir: Vector3? = nil
        local bestDrop: number  = 4
        local origin = killerHRP.Position + Vector3.new(0,0.5,0)
        local rp = RaycastParams.new()
        rp.FilterType = Enum.RaycastFilterType.Exclude
        pcall(function() rp.FilterDescendantsInstances = {killerHRP.Parent} end)
        for _, dir in RCT_SCAN_DIRS do
            local result = workspace:Raycast(origin + dir*3, Vector3.new(0,-10,0), rp)
            local floorY = result and result.Position.Y or (origin.Y - 10)
            local drop   = origin.Y - floorY
            if drop > bestDrop then bestDrop = drop; bestDir = dir end
        end
        if not bestDir then return nil end
        return math.atan2(-bestDir.X, -bestDir.Z)
    end

    local function doFlick()
        if _debounce then return end
        if rollMiss(AB.rctMissChance) then return end
        _debounce = true
        task.spawn(function()
            pcall(function()
                task.wait(AB.rctFlickDelay)
                local char = LocalPlayer.Character; if not char then _debounce = false; return end
                local hrp  = char:FindFirstChild("HumanoidRootPart") :: BasePart?
                if not hrp then _debounce = false; return end
                local hum  = char:FindFirstChildOfClass("Humanoid")
                local base = math.atan2(-hrp.CFrame.LookVector.X, -hrp.CFrame.LookVector.Z)
                local target: number
                if AB.rctAutoLedge then
                    local km   = abGetNearestKiller()
                    local khrp = km and km:FindFirstChild("HumanoidRootPart") :: BasePart?
                    target = (khrp and findLedgeAngle(khrp)) or base
                else
                    local rad = math.rad(AB.rctFlickAngle)
                    if     AB.rctFlickDir == "Right" then target = base - rad
                    elseif AB.rctFlickDir == "Left"  then target = base + rad
                    elseif AB.rctFlickDir == "Back"  then target = base + math.pi
                    else                                   target = base - rad
                    end
                end
                local elapsed, dt = 0, 0.016
                if hum then hum.AutoRotate = false end
                while elapsed < AB.rctFlickSpeed do
                    pcall(function()
                        local t = math.min(elapsed / AB.rctFlickSpeed, 1)
                        hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0, base + (target-base)*t, 0)
                    end)
                    elapsed += dt; task.wait(dt)
                end
                pcall(function() hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0, target, 0) end)
                if hum then hum.AutoRotate = true end
            end)
            _debounce = false
        end)
    end

    function RCT.fire()
        local now = tick()
        if now - _lastCharge < RCT_CD then
            notify("RCT", `Cooldown: {math.ceil(RCT_CD - (now - _lastCharge))}s remaining`, 2)
            return
        end
        _lastCharge = now
        fireAbility("Charge")
        doFlick()
    end
end

-- ▌AIM PUNCH — velocity-predicted character lock  (V4.1.0)
local function startAimPunch()
    pcall(function()
        if not AB.characterLockOn then return end
        local myChar = LocalPlayer.Character; if not myChar then return end
        local myRoot = myChar:FindFirstChild("HumanoidRootPart") :: BasePart?; if not myRoot then return end
        local kf: Folder? = nil
        pcall(function() kf = workspace.Players.Killers :: Folder end)
        if not kf then return end
        local nearest: Model? = nil
        local nDist: number   = math.huge
        for _, killer in kf:GetChildren() do
            local hrp = killer:FindFirstChild("HumanoidRootPart") :: BasePart?
            if hrp then
                local d = (hrp.Position - myRoot.Position).Magnitude
                if d <= AB.lockMaxDistance and d < nDist then nDist = d; nearest = killer :: Model end
            end
        end
        if not nearest then return end
        local tHRP = nearest:FindFirstChild("HumanoidRootPart") :: BasePart?; if not tHRP then return end
        local hum  = myChar:FindFirstChildOfClass("Humanoid")
        if hum then hum.AutoRotate = false end
        task.spawn(function()
            local st = tick()
            while tick() - st < AB.aimWindow do
                pcall(function()
                    local c = LocalPlayer.Character
                    local r = c and c:FindFirstChild("HumanoidRootPart") :: BasePart?
                    if not r or not tHRP or not tHRP.Parent then return end
                    local vel = tHRP.Velocity or Vector3.zero
                    local pd  = vel.Magnitude > 0.5 and vel.Unit or tHRP.CFrame.LookVector
                    if pd ~= pd then pd = Vector3.zero end
                    r.CFrame = CFrame.lookAt(r.Position,
                        tHRP.Position + pd * AB.predictionValue + vel * 0.1)
                end)
                task.wait()
            end
            local c = LocalPlayer.Character
            if c then local h = c:FindFirstChildOfClass("Humanoid"); if h then h.AutoRotate = true end end
        end)
    end)
end

-- ▌HEARTBEAT LOOP
do
    local frame: number           = 0
    local lastAimPunchFrame: number = 0

    AddConn(RunService.Heartbeat:Connect(function()
        frame += 1

        -- Sound block tick (every frame)
        SoundBlock.tick()

        -- Aim Punch — triggers on killer punch animation
        if AB.characterLockOn and cachedAnimator
            and (frame - lastAimPunchFrame) >= AIM_PUNCH_FRAME_GAP then
            pcall(function()
                for _, track in cachedAnimator:GetPlayingAnimationTracks() do
                    local id = tostring(track.Animation and track.Animation.AnimationId or ""):match("%d+")
                    if id and PUNCH_ANIM_SET[id] then
                        lastAimPunchFrame = frame
                        task.spawn(startAimPunch)
                        break
                    end
                end
            end)
        end

        -- Auto Punch — fires Punch when killer ≤10 studs (every 2 frames)
        if AB.autoPunchOn and frame % 2 == 0 then
            pcall(function()
                local myChar = LocalPlayer.Character
                local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart") :: BasePart?
                if not myRoot then return end
                local kf: Folder? = nil
                pcall(function() kf = workspace.Players.Killers :: Folder end)
                if not kf then return end
                for _, name in KILLER_NAMES do
                    local killer = kf:FindFirstChild(name)
                    if not killer then continue end
                    local r = killer:FindFirstChild("HumanoidRootPart") :: BasePart?
                    if r and (r.Position - myRoot.Position).Magnitude <= 10 then
                        fireAbility("Punch"); break
                    end
                end
            end)
        end
    end))
end

-- ▌INIT
task.spawn(function()
    if not LocalPlayer.Character then LocalPlayer.CharacterAdded:Wait() end
    task.wait(1)
    abRefreshAnimator()
    if cachedAnimator then HDT.setup(cachedAnimator) end
    task.spawn(SoundBlock.setup)
end)

AddConn(LocalPlayer.CharacterAdded:Connect(function(char: Model)
    task.wait(0.5)
    abRefreshAnimator()
    if cachedAnimator then HDT.setup(cachedAnimator) end
    task.spawn(SoundBlock.setup)
    -- Re-hook HDT when animator is fully ready
    task.spawn(function()
        local hum  = char:WaitForChild("Humanoid", 5) :: Humanoid?
        if not hum then return end
        local anim = hum:WaitForChild("Animator", 5) :: Animator?
        if anim then cachedAnimator = anim; HDT.setup(anim) end
    end)
end))

-- ============================================================
-- AUTO BLOCK TAB UI
-- ============================================================
local AutoBlockTab = Window:CreateTab("Auto Block", 4483362458)

-- ── SECTION 1: Auto Block ───────────────────────────────────
AutoBlockTab:CreateSection("Auto Block")

AutoBlockTab:CreateToggle({
    Name="Auto Block (Audio)", CurrentValue=false, Flag="AB_AutoBlock",
    Callback=function(v: boolean)
        AB.autoBlockAudioOn = v
        if v then task.spawn(SoundBlock.setup) end
        notify("Auto Block", v and "Listening for killer punch sounds!" or "Disabled.", 3)
    end,
})

AutoBlockTab:CreateDropdown({
    Name="Block Type", Options={"Block","Charge","7n7 Clone"}, CurrentOption={"Block"}, Flag="AB_BlockType",
    Callback=function(v: { string }) AB.autoblocktype = v[1] end,
})

AutoBlockTab:CreateSlider({
    Name="Block Delay", Range={0,0.5}, Increment=0.01, CurrentValue=0, Suffix="s", Flag="AB_BlockDelay",
    Callback=function(v: number) AB.blockdelay = v end,
})

AutoBlockTab:CreateSlider({
    Name="Detection Range", Range={5,50}, Increment=1, CurrentValue=18, Suffix=" studs", Flag="AB_DetRange",
    Callback=function(v: number) AB.detectionRange = v end,
})

AutoBlockTab:CreateToggle({
    Name="Facing Check (Bait-Aware)", CurrentValue=false, Flag="AB_FacingCheck",
    Callback=function(v: boolean)
        AB.facingCheckEnabled = v
        notify("Facing Check", v and "ON — dot threshold 0.70, bait sidestep detection active" or "Disabled.", 3)
    end,
})

AutoBlockTab:CreateToggle({
    Name="Double Punch Tech", CurrentValue=true, Flag="AB_DoublePunch",
    Callback=function(v: boolean) AB.doubleblocktech = v end,
})

AutoBlockTab:CreateSlider({
    Name="Block Miss Chance", Range={0,100}, Increment=1, CurrentValue=0, Suffix="%", Flag="AB_MissChance",
    Callback=function(v: number) AB.abMissChance = v end,
})

AutoBlockTab:CreateLabel("Fires when killer punch sound is detected within range")
AutoBlockTab:CreateLabel("Facing Check blocks fakes: detects bait sidesteps via velocity")

-- ── SECTION 2: HDT — Hitbox Dragging Tech ───────────────────
AutoBlockTab:CreateSection("HDT — Hitbox Dragging Tech")

AutoBlockTab:CreateToggle({
    Name="Enable HDT", CurrentValue=false, Flag="AB_HDT",
    Callback=function(v: boolean)
        AB.hitboxDraggingTech = v
        notify("HDT", v and "Hitbox Dragging active!" or "Disabled.", 3)
    end,
})

AutoBlockTab:CreateDropdown({
    Name="HDT Mode", Options={"180_TURN","LEFT_SPIN","RIGHT_SPIN"}, CurrentOption={"180_TURN"}, Flag="AB_HDTMode",
    Callback=function(v: { string }) AB.hdtMode = v[1] end,
})

AutoBlockTab:CreateSlider({
    Name="Drag Speed", Range={1,30}, Increment=0.5, CurrentValue=12, Suffix=" studs/s", Flag="AB_HDTSpeed",
    Callback=function(v: number) AB.Dspeed = v end,
})

AutoBlockTab:CreateSlider({
    Name="Drag Delay", Range={0,0.5}, Increment=0.01, CurrentValue=0, Suffix="s", Flag="AB_HDTDelay",
    Callback=function(v: number) AB.Ddelay = v end,
})

AutoBlockTab:CreateSlider({
    Name="Rotate Delay", Range={0,0.5}, Increment=0.01, CurrentValue=0, Suffix="s", Flag="AB_RotateDelay",
    Callback=function(v: number) AB.rotateDelay = v end,
})

AutoBlockTab:CreateSlider({
    Name="HDT Miss Chance", Range={0,100}, Increment=1, CurrentValue=0, Suffix="%", Flag="AB_HDTMiss",
    Callback=function(v: number) AB.hdtMissChance = v end,
})

AutoBlockTab:CreateLabel("Hooks AnimationPlayed — triggers on your block animation")
AutoBlockTab:CreateLabel("180_TURN flips you instantly | SPIN modes rotate 5× over 0.1s")

-- ── SECTION 3: RCT — Reverse Charge Tech ────────────────────
AutoBlockTab:CreateSection("RCT — Reverse Charge Tech")

AutoBlockTab:CreateToggle({
    Name="Enable RCT", CurrentValue=false, Flag="AB_RCT",
    Callback=function(v: boolean)
        AB.rctEnabled = v
        notify("RCT", v and "RCT active — use Fire button to trigger!" or "Disabled.", 3)
    end,
})

AutoBlockTab:CreateButton({
    Name="⚡ Fire Charge + Flick",
    Callback=function()
        if not AB.rctEnabled then
            notify("RCT", "Enable RCT first!", 2); return
        end
        RCT.fire()
    end,
})

AutoBlockTab:CreateDropdown({
    Name="Flick Direction", Options={"Right","Left","Back","Auto"}, CurrentOption={"Right"}, Flag="AB_RCTDir",
    Callback=function(v: { string }) AB.rctFlickDir = v[1] end,
})

AutoBlockTab:CreateToggle({
    Name="Auto Ledge (find nearest drop)", CurrentValue=false, Flag="AB_RCTLedge",
    Callback=function(v: boolean)
        AB.rctAutoLedge = v
        notify("RCT Auto Ledge", v and "Raycasting for nearest ledge!" or "Using fixed flick direction.", 3)
    end,
})

AutoBlockTab:CreateSlider({
    Name="Flick Angle", Range={45,180}, Increment=5, CurrentValue=120, Suffix="°", Flag="AB_RCTAngle",
    Callback=function(v: number) AB.rctFlickAngle = v end,
})

AutoBlockTab:CreateSlider({
    Name="Flick Delay", Range={0,0.3}, Increment=0.01, CurrentValue=0.08, Suffix="s", Flag="AB_RCTFlickDelay",
    Callback=function(v: number) AB.rctFlickDelay = v end,
})

AutoBlockTab:CreateSlider({
    Name="Flick Speed", Range={0.02,0.2}, Increment=0.01, CurrentValue=0.06, Suffix="s", Flag="AB_RCTSpeed",
    Callback=function(v: number) AB.rctFlickSpeed = v end,
})

AutoBlockTab:CreateSlider({
    Name="RCT Miss Chance", Range={0,100}, Increment=1, CurrentValue=0, Suffix="%", Flag="AB_RCTMiss",
    Callback=function(v: number) AB.rctMissChance = v end,
})

AutoBlockTab:CreateLabel("Fires Charge + rotates body in flick direction simultaneously")
AutoBlockTab:CreateLabel("Auto Ledge raycasts 8 directions to find the nearest map edge")
AutoBlockTab:CreateLabel("10s cooldown between fires")

-- ── SECTION 4: Aim Punch / Character Lock ───────────────────
AutoBlockTab:CreateSection("Aim Punch — Character Lock")

AutoBlockTab:CreateToggle({
    Name="Character Lock (Aim Punch)", CurrentValue=false, Flag="AB_CharLock",
    Callback=function(v: boolean)
        AB.characterLockOn = v
        notify("Character Lock", v and "Aims at killer on their punch animation!" or "Disabled.", 3)
    end,
})

AutoBlockTab:CreateSlider({
    Name="Max Lock Distance", Range={5,100}, Increment=5, CurrentValue=30, Suffix=" studs", Flag="AB_LockDist",
    Callback=function(v: number) AB.lockMaxDistance = v end,
})

AutoBlockTab:CreateSlider({
    Name="Velocity Prediction", Range={0,15}, Increment=0.5, CurrentValue=4, Flag="AB_Prediction",
    Callback=function(v: number) AB.predictionValue = v end,
})

AutoBlockTab:CreateSlider({
    Name="Aim Window", Range={0.1,2}, Increment=0.1, CurrentValue=0.7, Suffix="s", Flag="AB_AimWindow",
    Callback=function(v: number) AB.aimWindow = v end,
})

AutoBlockTab:CreateLabel("Triggers when killer's punch animation is detected")
AutoBlockTab:CreateLabel("Leads moving killers using velocity × prediction value")

-- ── SECTION 5: Auto Punch ────────────────────────────────────
AutoBlockTab:CreateSection("Auto Punch")

AutoBlockTab:CreateToggle({
    Name="Auto Punch (killer ≤10 studs)", CurrentValue=false, Flag="AB_AutoPunch",
    Callback=function(v: boolean)
        AB.autoPunchOn = v
        notify("Auto Punch", v and "Auto Punch ON!" or "Disabled.", 3)
    end,
})

AutoBlockTab:CreateLabel("Fires Punch ability whenever a killer is within 10 studs")

-- ── SECTION 6: Info ──────────────────────────────────────────
AutoBlockTab:CreateSection("System Info")
AutoBlockTab:CreateLabel("Sound Block: 200ms per-sound cooldown — tuned for fast M1 combos")
AutoBlockTab:CreateLabel("No global gate — every sound triggers independently")
AutoBlockTab:CreateLabel("Facing dot threshold: 0.70 (strict)")
AutoBlockTab:CreateLabel("Bait killers (sidestep check): John Doe, c00lkidd, Slasher, Noli, 1x1x1x1, Nosferatu")
AutoBlockTab:CreateLabel("HDT hooks AnimationPlayed — no polling overhead")
AutoBlockTab:CreateLabel("RCT = Charge fire + body flick | Auto Ledge finds nearest map drop")

-- ============================================================
-- LMS MUSIC SYSTEM — ported from lovesaken V4.1.0
-- Downloads MP3s from sndup.net and caches them locally.
-- Auto-detects Last Man Standing by counting alive survivors.
-- ============================================================

local SoundService: SoundService = game:GetService("SoundService")

local LMS = {}
do
    local LMS_FOLDER: string = "XenonZ/LMS_Songs"
    local LMS_TRACKS: { [string]: string } = {
        ["Eternal Hope"]     = "https://www.sndup.net/hbbdc/d",
        ["Vanity"]           = "https://sndup.net/pbfc6/d",
        ["Hacklord"]         = "https://www.sndup.net/3ggm8/d",
        ["Compass"]          = "https://www.sndup.net/m897m/d",
        ["Scrapped Sixer"]   = "https://sndup.net/jwx39/d",
        ["ONE BOUNCE"]       = "https://www.sndup.net/hrjch/d",
        ["Meet Your Making"] = "https://www.sndup.net/w5kzs/d",
        -- Added in Update 4.0.0 — replace URLs once sndup links are sourced
        ["Faith's Answer"]   = "",
        ["You and I"]        = "",
    }

    local downloaded:  { [string]: string }  = {}
    local originalId:  string?               = nil
    local lmsThread:   thread?               = nil
    local lmsAutoPlay: boolean               = false
    local lmsSelected: string                = "Eternal Hope"

    -- Ensure cache folders exist
    pcall(function()
        if not isfolder("XenonZ") then makefolder("XenonZ") end
        if not isfolder(LMS_FOLDER)    then makefolder(LMS_FOLDER)    end
    end)

    -- Downloads a song and caches the custom asset path
    local function download(songName: string, callback: ((string?) -> ())?): string?
        local url = LMS_TRACKS[songName]
        if not url then if callback then callback(nil) end; return nil end
        local safe = songName:gsub("[^%w]", "_")
        local path = `{LMS_FOLDER}/{safe}.mp3`
        if not isfile(path) then
            local ok, data = pcall(function() return game:HttpGet(url) end)
            if not ok or not data or #data == 0 then
                if callback then callback(nil) end; return nil
            end
            pcall(function() writefile(path, data) end)
        end
        local asset: string? = nil
        local ok2 = pcall(function() asset = getcustomasset(path) end)
        if not ok2 or not asset then
            if callback then callback(nil) end; return nil
        end
        downloaded[songName] = asset :: string
        if callback then callback(asset) end
        return asset
    end

    -- Finds the LMS Sound object wherever the game stores it
    local function findSound(): Sound?
        local function check(s: Instance): boolean
            if not s or not s:IsA("Sound") then return false end
            local n = s.Name:lower()
            return n == "lastsurvivor" or n:find("last") ~= nil
                or n:find("lms") ~= nil or n:find("survivor") ~= nil
        end
        for _, loc in {
            workspace:FindFirstChild("Sounds"),
            workspace:FindFirstChild("Themes"),
            workspace:FindFirstChild("Music"),
            Lighting,
            SoundService,
        } do
            if loc then
                for _, s in (loc :: Instance):GetChildren() do
                    if check(s) then return s :: Sound end
                end
            end
        end
        for _, s in workspace:GetDescendants() do
            if check(s) then return s :: Sound end
        end
        for _, s in game:GetService("ReplicatedStorage"):GetDescendants() do
            if check(s) then return s :: Sound end
        end
        return nil
    end

    -- Detects whether LMS is currently active:
    -- Condition: exactly 1 survivor alive AND exactly 1 killer alive
    local function isActive(): boolean
        local ok, r = pcall(function(): boolean
            local pf = workspace:FindFirstChild("Players")
            if pf then
                local sf = (pf :: Folder):FindFirstChild("Survivors")
                local kf = (pf :: Folder):FindFirstChild("Killers")
                if sf and kf then
                    local aliveSurvivors = 0
                    for _, s in (sf :: Folder):GetChildren() do
                        local h = s:FindFirstChildOfClass("Humanoid")
                        if h and (h :: Humanoid).Health > 0 then
                            aliveSurvivors += 1
                        end
                    end
                    local aliveKillers = 0
                    for _, k in (kf :: Folder):GetChildren() do
                        local h = k:FindFirstChildOfClass("Humanoid")
                        if h and (h :: Humanoid).Health > 0 then
                            aliveKillers += 1
                        end
                    end
                    -- LMS = exactly 1 survivor AND 1 killer remaining
                    return aliveSurvivors == 1 and aliveKillers == 1
                end
            end
            -- Fallback: no folder found, check if the LMS sound is playing
            local sound = findSound()
            return sound ~= nil and (sound :: Sound).IsPlaying
        end)
        return ok and r or false
    end

    -- Applies the selected song to the LMS sound object
    local function applySong(songName: string): boolean
        local sound = findSound(); if not sound then return false end
        if not originalId then originalId = sound.SoundId end
        local asset = downloaded[songName] or download(songName)
        if not asset then return false end
        pcall(function()
            sound:Stop()
            sound.SoundId = asset :: string
            sound.Volume  = 0.55
            task.wait(0.05)
            sound:Play()
        end)
        return true
    end

    function LMS.reset()
        pcall(function()
            local sound = findSound()
            if sound and originalId then
                sound:Stop()
                sound.SoundId = originalId :: string
                task.wait(0.05)
                sound:Play()
            end
            originalId = nil
        end)
    end

    function LMS.start()
        if lmsThread then pcall(function() task.cancel(lmsThread) end) end
        lmsThread = task.spawn(function()
            -- Pre-download selected song in the background
            if not downloaded[lmsSelected] then
                task.spawn(function() download(lmsSelected) end)
            end
            local wasActive = false
            while lmsAutoPlay do
                local active = false
                pcall(function()
                    active = isActive()
                    if active and not wasActive then
                        wasActive = true
                        applySong(lmsSelected)
                    elseif active and wasActive then
                        -- Re-apply if the sound was reset by the game
                        local sound = findSound()
                        if sound then
                            local cached = downloaded[lmsSelected]
                            if cached and sound.SoundId ~= cached then
                                applySong(lmsSelected)
                            end
                        end
                    elseif not active and wasActive then
                        wasActive = false
                    end
                end)
                task.wait(active and 3 or 1)
            end
        end)
    end

    function LMS.stop()
        if lmsThread then pcall(function() task.cancel(lmsThread) end); lmsThread = nil end
        LMS.reset()
    end

    function LMS.playNow(): boolean return applySong(lmsSelected) end

    function LMS.setSelected(name: string)
        lmsSelected = name
        if not downloaded[name] then
            task.spawn(function() download(name) end)
        end
    end

    function LMS.setAutoPlay(v: boolean)
        lmsAutoPlay = v
        if v then LMS.start() else LMS.stop() end
    end

    function LMS.getAutoPlay(): boolean return lmsAutoPlay end
    function LMS.getSelected(): string  return lmsSelected  end

    LMS.tracks = LMS_TRACKS

    -- Re-start monitor on respawn (round restart can reset the song)
    AddConn(LocalPlayer.CharacterAdded:Connect(function()
        task.wait(3)
        if lmsAutoPlay then LMS.start() end
    end))
end

-- ============================================================
-- AIMBOT TAB — Scriptable Camera Lock + Character Lock
-- Method: CameraType.Scriptable on RenderStepped
--
-- How it works:
--   1. Takes full camera ownership via CameraType.Scriptable —
--      Roblox's default camera script stops running entirely,
--      so nothing fights the override.
--   2. Drives Camera.CFrame on every RenderStepped frame using
--      CFrame.lookAt(camPos → targetPos) with a Lerp for smooth
--      tracking. RenderStepped is the correct event because it
--      runs before the frame is rendered, giving zero visual lag.
--   3. Preserves the original camera distance so the third-person
--      perspective is maintained throughout the lock.
--   4. Rotates the character HRP to face the target each frame so
--      all abilities and blocks fire in the correct direction.
--   5. Restores CameraType.Custom and AutoRotate on unlock so
--      default Roblox controls resume instantly.
-- ============================================================

local Aimbot = {}
do
    -- ▌STATE
    local aimbotEnabled:    boolean      = false
    local camLockEnabled:   boolean      = true
    local charLockEnabled:  boolean      = true
    local currentTarget:    BasePart?    = nil
    local renderConn:       Connection?  = nil
    local originalCamType:  Enum.CameraType = Enum.CameraType.Custom
    local lerpAlpha:        number       = 0.20   -- camera smoothness (0=no move, 1=instant)
    local targetHeightOff:  number       = 1.5    -- studs above HRP to aim at (eye level)
    local maxLockDist:      number       = 80     -- studs — beyond this, lock releases
    local teamCheck:        boolean      = true   -- avoid locking onto yourself
    local fovCircleEnabled: boolean      = false  -- visual FOV indicator
    local fovRadius:        number       = 120    -- screen-space FOV radius in pixels
    -- Prediction: how many studs ahead of the target's velocity to aim.
    -- 0 = no prediction (aim at current position).
    -- 0.1–0.3 = realistic lead for close-range fast movement.
    -- Higher values overshoot slow targets — tune to match game latency.
    local predictionFactor: number       = 0.15
    -- Miss chance: 0% = always locks (never misses), 20% = skips lock 20% of frames.
    -- Adds a natural humanlike imperfection to the aimbot.
    local aimbotMissChance: number       = 0   -- 0–20

    -- ▌FOV CIRCLE
    local fovCircle: any = nil
    local function createFOVCircle()
        pcall(function()
            if fovCircle then fovCircle:Remove() end
            local Drawing = (getgenv() :: any).Drawing
            if not Drawing then return end
            fovCircle = Drawing.new("Circle")
            fovCircle.Radius    = fovRadius
            fovCircle.Position  = Vector2.new(
                workspace.CurrentCamera.ViewportSize.X / 2,
                workspace.CurrentCamera.ViewportSize.Y / 2)
            fovCircle.Thickness = 1
            fovCircle.Color     = Color3.fromRGB(255, 255, 255)
            fovCircle.Filled    = false
            fovCircle.Visible   = fovCircleEnabled
        end)
    end
    local function removeFOVCircle()
        pcall(function()
            if fovCircle then fovCircle:Remove(); fovCircle = nil end
        end)
    end

    -- ▌TARGET SCANNING
    -- Finds the closest enemy HRP to the screen centre within the FOV radius.
    -- Checks both Survivors and Killers folders so it works for either role.
    local function findBestTarget(): BasePart?
        local camera = workspace.CurrentCamera
        local myChar = LocalPlayer.Character
        local myHRP  = myChar and myChar:FindFirstChild("HumanoidRootPart") :: BasePart?
        if not camera or not myHRP then return nil end

        local vpSize   = camera.ViewportSize
        local centre   = Vector2.new(vpSize.X / 2, vpSize.Y / 2)
        local bestPart: BasePart? = nil
        local bestDist: number   = math.huge

        local function scanFolder(folder: Instance?)
            if not folder then return end
            for _, model in (folder :: Instance):GetChildren() do
                if not model:IsA("Model") then continue end
                -- Skip ourselves
                if model == myChar then continue end
                local hum = model:FindFirstChildOfClass("Humanoid")
                if not hum or hum.Health <= 0 then continue end
                local hrp = model:FindFirstChild("HumanoidRootPart") :: BasePart?
                if not hrp then continue end

                -- World distance gate
                local worldDist = (hrp.Position - myHRP.Position).Magnitude
                if worldDist > maxLockDist then continue end

                -- Project to screen
                local screenPos, onScreen = camera:WorldToViewportPoint(
                    hrp.Position + Vector3.new(0, targetHeightOff, 0))
                if not onScreen then continue end

                local screenDist = (Vector2.new(screenPos.X, screenPos.Y) - centre).Magnitude
                -- FOV check
                if screenDist > fovRadius then continue end

                if screenDist < bestDist then
                    bestDist = screenDist
                    bestPart = hrp
                end
            end
        end

        local pf = workspace:FindFirstChild("Players")
        if pf then
            scanFolder((pf :: Folder):FindFirstChild("Survivors"))
            scanFolder((pf :: Folder):FindFirstChild("Killers"))
        end

        return bestPart
    end

    -- ▌LOCK FUNCTIONS
    local function startLock()
        if renderConn then renderConn:Disconnect(); renderConn = nil end

        -- Take camera ownership
        local camera = workspace.CurrentCamera
        originalCamType    = camera.CameraType
        camera.CameraType  = Enum.CameraType.Scriptable

        renderConn = RunService.RenderStepped:Connect(function()
            if not aimbotEnabled then return end

            local camera = workspace.CurrentCamera
            local myChar = LocalPlayer.Character
            local myHRP  = myChar and myChar:FindFirstChild("HumanoidRootPart") :: BasePart?
            if not camera or not myHRP then return end

            -- Re-scan for best target each frame
            -- If we have a locked target, verify it is still valid
            if currentTarget then
                local hum = currentTarget.Parent and
                    (currentTarget.Parent :: Model):FindFirstChildOfClass("Humanoid")
                local dist = (currentTarget.Position - myHRP.Position).Magnitude
                if not hum or hum.Health <= 0 or dist > maxLockDist then
                    currentTarget = nil
                end
            end
            if not currentTarget then
                currentTarget = findBestTarget()
            end
            if not currentTarget then return end

            -- ── VELOCITY PREDICTION ──────────────────────────────────
            -- Read the target's current velocity from AssemblyLinearVelocity
            -- (the physics-accurate value), falling back to .Velocity if absent.
            -- Multiply by predictionFactor to compute how far ahead to lead.
            -- At predictionFactor = 0 this collapses to plain current position.
            local vel = Vector3.zero
            pcall(function()
                vel = currentTarget.AssemblyLinearVelocity
            end)
            if vel.Magnitude < 0.1 then
                pcall(function() vel = currentTarget.Velocity end)
            end
            -- Only use the horizontal component of velocity for the lead —
            -- vertical movement (jumping, falling) is too noisy to predict.
            local horizontalVel = Vector3.new(vel.X, 0, vel.Z)
            local predictedPos  = currentTarget.Position
                + horizontalVel * predictionFactor
            local aimPos = predictedPos + Vector3.new(0, targetHeightOff, 0)

            -- ── MISS CHANCE ──────────────────────────────────────────
            -- If miss chance > 0, roll a random number each frame.
            -- On a "miss" frame the lock is skipped entirely — camera
            -- and character stay where they are for that frame, simulating
            -- a natural imperfection. Capped at 20% maximum.
            if aimbotMissChance > 0 then
                if math.random(1, 100) <= math.clamp(aimbotMissChance, 0, 20) then
                    return  -- skip this frame
                end
            end
            if camLockEnabled then
                -- Maintain the current camera position, only rotate toward target
                local currentCamPos = camera.CFrame.Position
                local targetCamCF   = CFrame.lookAt(currentCamPos, aimPos)
                camera.CFrame       = camera.CFrame:Lerp(targetCamCF, lerpAlpha)
            end

            -- ── CHARACTER LOCK ───────────────────────────────────────
            if charLockEnabled then
                local hum = myChar and (myChar :: Model):FindFirstChildOfClass("Humanoid")
                if hum then
                    pcall(function() hum.AutoRotate = false end)
                end
                -- Rotate HRP to face target horizontally (keeps vertical axis clean)
                local flatAimPos = Vector3.new(aimPos.X, myHRP.Position.Y, aimPos.Z)
                myHRP.CFrame = CFrame.new(myHRP.Position,
                    myHRP.Position + (flatAimPos - myHRP.Position).Unit)
            end
        end)

        AddConn(renderConn)
    end

    local function stopLock()
        if renderConn then renderConn:Disconnect(); renderConn = nil end
        currentTarget = nil

        -- Restore camera
        pcall(function()
            local camera = workspace.CurrentCamera
            camera.CameraType = Enum.CameraType.Custom
        end)

        -- Restore auto-rotate
        pcall(function()
            local myChar = LocalPlayer.Character
            if not myChar then return end
            local hum = myChar:FindFirstChildOfClass("Humanoid")
            if hum then hum.AutoRotate = true end
        end)
    end

    -- Clean up on character removal / respawn
    AddConn(LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.5)
        if aimbotEnabled then
            -- Re-acquire lock after respawn
            stopLock()
            task.wait(0.5)
            startLock()
        end
    end))

    -- Expose to UI
    function Aimbot.setEnabled(v: boolean)
        aimbotEnabled = v
        if v then startLock() else stopLock() end
    end
    function Aimbot.setCamLock(v: boolean)   camLockEnabled  = v end
    function Aimbot.setCharLock(v: boolean)  charLockEnabled = v end
    function Aimbot.setLerp(v: number)       lerpAlpha       = v end
    function Aimbot.setFOV(v: number)
        fovRadius = v
        if fovCircle then fovCircle.Radius = v end
    end
    function Aimbot.setMaxDist(v: number)    maxLockDist     = v end
    function Aimbot.setHeightOff(v: number)  targetHeightOff = v end
    function Aimbot.setPrediction(v: number)  predictionFactor  = v end
    function Aimbot.setMissChance(v: number)  aimbotMissChance  = math.clamp(v, 0, 20) end
    function Aimbot.setFOVCircle(v: boolean)
        fovCircleEnabled = v
        if v then createFOVCircle()
        else     removeFOVCircle() end
    end
    function Aimbot.clearTarget() currentTarget = nil end
end

-- ============================================================
-- TAB 7 ► AIMBOT
-- ============================================================
local AimbotTab = Window:CreateTab("Aimbot", 4483362458)

-- ── SECTION 1: Main Toggle ───────────────────────────────────
AimbotTab:CreateSection("Aimbot")

AimbotTab:CreateToggle({
    Name="Enable Aimbot", CurrentValue=false, Flag="Aimbot_Enable",
    Callback=function(v: boolean)
        Aimbot.setEnabled(v)
        notify("Aimbot",
            v and "Lock active — scanning for nearest target in FOV." or "Disabled — camera restored.", 3)
    end,
})

AimbotTab:CreateToggle({
    Name="Camera Lock", CurrentValue=true, Flag="Aimbot_CamLock",
    Callback=function(v: boolean)
        Aimbot.setCamLock(v)
        notify("Aimbot", v and "Camera Lock ON." or "Camera Lock OFF.", 2)
    end,
})

AimbotTab:CreateToggle({
    Name="Character Lock (HRP faces target)", CurrentValue=true, Flag="Aimbot_CharLock",
    Callback=function(v: boolean)
        Aimbot.setCharLock(v)
        notify("Aimbot", v and "Character Lock ON." or "Character Lock OFF.", 2)
    end,
})

AimbotTab:CreateButton({
    Name="Clear Current Target",
    Callback=function()
        Aimbot.clearTarget()
        notify("Aimbot", "Target cleared — will re-acquire on next frame.", 2)
    end,
})

-- ── SECTION 2: Settings ──────────────────────────────────────
AimbotTab:CreateSection("Settings")

AimbotTab:CreateSlider({
    Name="Camera Smooth (Lerp)",
    Range={0.01, 1},
    Increment=0.01,
    CurrentValue=0.20,
    Flag="Aimbot_Lerp",
    Callback=function(v: number) Aimbot.setLerp(v) end,
})

AimbotTab:CreateSlider({
    Name="FOV Radius",
    Range={10, 500},
    Increment=5,
    CurrentValue=120,
    Suffix=" px",
    Flag="Aimbot_FOV",
    Callback=function(v: number) Aimbot.setFOV(v) end,
})

AimbotTab:CreateSlider({
    Name="Max Lock Distance",
    Range={10, 200},
    Increment=5,
    CurrentValue=80,
    Suffix=" studs",
    Flag="Aimbot_MaxDist",
    Callback=function(v: number) Aimbot.setMaxDist(v) end,
})

AimbotTab:CreateSlider({
    Name="Aim Height Offset",
    Range={0, 4},
    Increment=0.25,
    CurrentValue=1.5,
    Suffix=" studs",
    Flag="Aimbot_HeightOff",
    Callback=function(v: number) Aimbot.setHeightOff(v) end,
})

AimbotTab:CreateSlider({
    Name="Velocity Prediction",
    Range={0, 1},
    Increment=0.01,
    CurrentValue=0.15,
    Flag="Aimbot_Prediction",
    Callback=function(v: number) Aimbot.setPrediction(v) end,
})

AimbotTab:CreateSlider({
    Name="Miss Chance",
    Range={0, 20},
    Increment=1,
    CurrentValue=0,
    Suffix="%",
    Flag="Aimbot_MissChance",
    Callback=function(v: number)
        Aimbot.setMissChance(v)
    end,
})

-- ── SECTION 3: FOV Visualiser ────────────────────────────────
AimbotTab:CreateSection("FOV Visualiser")

AimbotTab:CreateToggle({
    Name="Show FOV Circle", CurrentValue=false, Flag="Aimbot_FOVCircle",
    Callback=function(v: boolean)
        Aimbot.setFOVCircle(v)
        notify("Aimbot FOV", v and "FOV circle visible." or "FOV circle hidden.", 2)
    end,
})

-- ── SECTION 4: Info ──────────────────────────────────────────
AimbotTab:CreateSection("Info")
AimbotTab:CreateLabel("Method: CameraType.Scriptable — no fighting with default camera")
AimbotTab:CreateLabel("Target: nearest player to screen centre within FOV radius")
AimbotTab:CreateLabel("Scans both Survivors and Killers folders")
AimbotTab:CreateLabel("Camera Smooth 0.01 = very smooth | 1.0 = instant snap")
AimbotTab:CreateLabel("Character Lock rotates HRP so abilities fire at the target")
AimbotTab:CreateLabel("Prediction: leads moving targets using horizontal velocity × factor")
AimbotTab:CreateLabel("Prediction 0 = aim at current pos | 0.15 = good for close range")
AimbotTab:CreateLabel("Miss Chance 0% = perfect lock | 20% = skips lock 1-in-5 frames")
local MusicTab = Window:CreateTab("Music", 4483362458)

MusicTab:CreateSection("Last Man Standing Music")

MusicTab:CreateToggle({
    Name="Auto-Play LMS Music", CurrentValue=false, Flag="LMS_AutoPlay",
    Callback=function(v: boolean)
        LMS.setAutoPlay(v)
        if v then
            notify("LMS Music", `Auto-play ON — will trigger when LMS starts!`, 4)
        else
            notify("LMS Music", "Disabled — original song restored.", 3)
        end
    end,
})

do
    local trackOptions: { string } = {}
    for name in LMS.tracks do table.insert(trackOptions, name) end
    table.sort(trackOptions)

    MusicTab:CreateDropdown({
        Name="Select Song",
        Options=trackOptions,
        CurrentOption={"Eternal Hope"},
        Flag="LMS_SongSelect",
        Callback=function(selected: { string })
            LMS.setSelected(selected[1])
            notify("LMS Music", `Selected: {selected[1]} — pre-downloading...`, 3)
        end,
    })
end

MusicTab:CreateButton({
    Name="▶ Play Now (WIP)",
    Callback=function()
        if LMS.playNow() then
            notify("LMS Music", `Now playing: {LMS.getSelected()}`, 3)
        else
            notify("LMS Music", "Sound not found — try during a round.", 3)
        end
    end,
})

MusicTab:CreateButton({
    Name="⏹ Reset to Original Song",
    Callback=function()
        LMS.reset()
        notify("LMS Music", "Original song restored.", 3)
    end,
})

MusicTab:CreateSection("Song List")
MusicTab:CreateLabel("Eternal Hope")
MusicTab:CreateLabel("Vanity")
MusicTab:CreateLabel("Hacklord")
MusicTab:CreateLabel("Compass")
MusicTab:CreateLabel("Scrapped Sixer")
MusicTab:CreateLabel("ONE BOUNCE")
MusicTab:CreateLabel("Meet Your Making")
MusicTab:CreateLabel("Faith's Answer  ⭐ New — 4.0.0")
MusicTab:CreateLabel("You and I  ⭐ New — 4.0.0")
MusicTab:CreateLabel("⚠ new 2 lms is not working wait until i get the id")
MusicTab:CreateLabel("Triggers when exactly 1 survivor and 1 killer remain")

-- ============================================================
-- TAB 8 ► MISC (Chat Logger)
-- ============================================================
local MiscTab = Window:CreateTab("Misc", 4483362458)

MiscTab:CreateSection("Chat Logger")

local chatLog: { string } = {}
local MAX_LOG: number     = 50
local chatActive: boolean = false
local chatConns: { Connection } = {}

local function addMessage(player: string, message: string)
    local entry = `[{os.date("%H:%M:%S")}] {player}: {message}`
    table.insert(chatLog, entry)
    if #chatLog > MAX_LOG then table.remove(chatLog, 1) end
    print(`[Forsaken Chat] {entry}`)
    if player ~= LocalPlayer.Name then notify(`💬 {player}`, message, 4) end
end

local function hookTextChatService()
    pcall(function()
        local TCS = game:GetService("TextChatService"); if not TCS then return end
        local function hookChannel(ch: Instance)
            if not ch:IsA("TextChannel") then return end
            table.insert(chatConns, (ch :: TextChannel).MessageReceived:Connect(function(msg: TextChatMessage)
                safeCall(function()
                    local s = msg.TextSource and msg.TextSource.Name or "Unknown"
                    if msg.Text ~= "" then addMessage(s, msg.Text) end
                end)
            end))
        end
        for _, ch in TCS:GetDescendants() do hookChannel(ch) end
        table.insert(chatConns, TCS.DescendantAdded:Connect(function(ch: Instance)
            task.wait(0.1); hookChannel(ch)
        end))
    end)
end

local function hookLegacyChat()
    safeCall(function()
        local function hp(p: Player)
            table.insert(chatConns, p.Chatted:Connect(function(msg: string)
                addMessage(p.Name, msg)
            end))
        end
        for _, p in Players:GetPlayers() do hp(p) end
        table.insert(chatConns, Players.PlayerAdded:Connect(hp))
    end)
end

local chatMetaInstalled: boolean = false  -- kept for compat, no longer used

MiscTab:CreateToggle({
    Name="Enable Chat Logger", CurrentValue=false, Flag="ChatLogger",
    Callback=function(v: boolean)
        chatActive = v
        if v then
            -- TextChatService hook covers modern chat (both sent and received)
            -- Legacy Chatted hook covers older chat and sent messages
            -- No metatable hook needed — avoids breaking game __namecall
            hookTextChatService()
            hookLegacyChat()
            notify("Chat Logger ON", "Chat hooked! Check F9 for log.", 5)
        else
            for _, c in chatConns do pcall(function() c:Disconnect() end) end
            chatConns = {}
            notify("Chat Logger", `Disabled. {#chatLog} messages stored.`, 3)
        end
    end,
})

MiscTab:CreateButton({
    Name="Print Full Chat Log (F9)",
    Callback=function()
        if #chatLog == 0 then notify("Chat Log", "No messages logged yet.", 3); return end
        print(`=== XenonZ CHAT LOG ({#chatLog} messages) ===`)
        for i, entry in chatLog do print(`{i}. {entry}`) end
        print("=== END OF LOG ===")
        notify("Chat Log", `{#chatLog} message(s) printed to F9.`, 4)
    end,
})

MiscTab:CreateButton({
    Name="Clear Chat Log",
    Callback=function()
        local c = #chatLog; chatLog = {}
        notify("Chat Log", `Cleared {c} message(s).`, 3)
    end,
})

MiscTab:CreateButton({
    Name="Show Last 5 Messages",
    Callback=function()
        if #chatLog == 0 then notify("Chat Log", "No messages yet.", 3); return end
        local s = math.max(1, #chatLog - 4)
        for i = s, #chatLog do
            task.delay((i - s) * 0.8, function() notify("Chat", chatLog[i], 4) end)
        end
    end,
})

MiscTab:CreateToggle({
    Name="Notify on Every Message", CurrentValue=true, Flag="ChatNotify",
    Callback=function(v: boolean)
        getgenv().ForsakenChatNotify = v
        notify("Chat Notify", v and "Notify ON." or "Silent mode — log only.", 3)
    end,
})

-- ============================================================
-- TAB 8 ► SETTINGS
-- ============================================================
local SettingsTab = Window:CreateTab("Settings", 4483362458)

SettingsTab:CreateSection("UI Controls")

SettingsTab:CreateButton({
    Name="Reset All Settings",
    Callback=function()
        safeCall(function()
            for k in flags do flags[k] = false end
            generatorESPEnabled = false
            for _, p in Players:GetPlayers() do
                local c = p.Character
                if not c then continue end
                for _, child in c:GetChildren() do
                    if child:IsA("Highlight") then child:Destroy() end
                end
            end
            stopGeneratorESP()
            for _, obj in workspace:GetDescendants() do
                for _, name in {"ItemESP_Hl","TripmineESP_Hl","TripwireESP_Hl","BuilderESP_Hl","PizzaESP_Hl","VandalismESP_Hl","FilesESP_Hl","FilesESP_BB"} do
                    local hl = obj:FindFirstChild(name)
                    if hl then hl:Destroy() end
                end
            end
            Lighting.Brightness    = origLighting.Brightness
            Lighting.ClockTime     = origLighting.ClockTime
            Lighting.FogEnd        = origLighting.FogEnd
            Lighting.GlobalShadows = origLighting.GlobalShadows
            Lighting.Ambient       = origLighting.Ambient
            notify("Reset", "All settings restored to default.", 3)
        end)
    end,
})

SettingsTab:CreateButton({
    Name="Destroy UI (Safe Exit)",
    Callback=function()
        safeCall(function() getgenv().XenonZDestroy(); Rayfield:Destroy() end)
    end,
})

SettingsTab:CreateSection("Round Timer (by Survivor Count)")
SettingsTab:CreateLabel("8 Survivors  →  4 min 00 sec")
SettingsTab:CreateLabel("6 or 5 Survivors  →  3 min 18 sec")
SettingsTab:CreateLabel("4 or fewer Survivors  →  3 min 00 sec")
SettingsTab:CreateLabel("Each Killer kill: +35 seconds added")
SettingsTab:CreateLabel("Each Puzzle completed: -3 seconds")
SettingsTab:CreateLabel("1 Generator = 4 Puzzles = -12 seconds")
SettingsTab:CreateLabel("All 5 Generators = 20 Puzzles = -60 sec")

SettingsTab:CreateSection("Speed & Stamina")
SettingsTab:CreateLabel("Survivor walk: 12 | sprint: 26 studs/s")
SettingsTab:CreateLabel("Slasher / c00lkidd sprint: 28 studs/s")
SettingsTab:CreateLabel("Stamina drain: 10/s | Regen: 20/s")
SettingsTab:CreateLabel("Stamina lockout at 0: 2 seconds")

SettingsTab:CreateSection("ESP Legend")
SettingsTab:CreateLabel("Blue = You (self) | Green = Survivor | Red = Killer")
SettingsTab:CreateLabel("Blue = Real Generator | Red = Fake Generator")
SettingsTab:CreateLabel("Purple = Medkit / BloxyCola | Orange = Tripmine")
SettingsTab:CreateLabel("Yellow = Tripwire | Orange = Sentry | Gold = Dispenser")
SettingsTab:CreateLabel("Hot Pink = Elliot Pizza Throw | Cyan = Veeronica VANDALISM zone")
SettingsTab:CreateLabel("Parchment/Gold = Jane Doe Quest Files / Basement Documents")
SettingsTab:CreateLabel("Engine: Gloop | UNC: 100% | Level 8")

-- ============================================================
-- CREDITS TAB
-- ============================================================
local CreditsTab = Window:CreateTab("Credits", 4483362458)

CreditsTab:CreateSection("XenonZ Credits")

CreditsTab:CreateLabel("XenonZ v1.0 — built for Forsaken (Roblox)")
CreditsTab:CreateLabel("Discord: https://discord.gg/ehHtxQuZr")
CreditsTab:CreateLabel("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")

CreditsTab:CreateSection("xsxluna_kiyokifrost")
CreditsTab:CreateLabel("best src eva 🩷")

CreditsTab:CreateSection("veux67")
CreditsTab:CreateLabel("for inf stamina")

CreditsTab:CreateSection("")
CreditsTab:CreateLabel("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
CreditsTab:CreateLabel("thank you to everyone who contributed ❤️")

-- ============================================================
-- LOAD
-- ============================================================
task.delay(1, function()
    local survivorCount = #Players:GetPlayers() - 1
    local timerStr = survivorCount >= 8 and "4:00" or survivorCount >= 5 and "3:18" or "3:00"
    notify("XenonZ v1.0 Loaded",
        `Timer: ~{timerStr} ({survivorCount} survivors). Survive = win. Kill all = win.`, 7)
end)

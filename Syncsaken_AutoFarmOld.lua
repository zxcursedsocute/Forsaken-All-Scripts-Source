local t1 = {
	"Fly with me in the sea",
	"Swim with me in the breeze",
	"Drive with me on the clouds",
	"Fly with me on the ground",
	"Joyous reds of a blue yesterday",
	"Follow me into my rabbit hole"
}

print(t1[math.random(#t1)])

repeat
	task.wait(1)
until game.Loaded

if getgenv().auto_autogen_loaded then
	print("fish")

	return
end

getgenv().auto_autogen_loaded = true
loadstring([[	function LPH_NO_VIRTUALIZE(f) return f end;
	function LRM_SEND_WEBHOOK(...) return end;
	function LRM_SANITIZE(t, ...) return t end;
	function LPH_JIT_MAX(f) return f end;
	function LPH_JIT(f) return f end;
	function LPH_CRASH() return end;
]])()

local identifyexecutor_ = identifyexecutor

if identifyexecutor_ then
	identifyexecutor_ = identifyexecutor():lower()
end

local gethwid_ = gethwid and gethwid() or game.Players.LocalPlayer.UserId

local function v4(p1, p2)
	if p1 and type(p1) == "string" then
		game.StarterGui:SetCore("DevConsoleVisible", true)

		for i = 1, 10 do
			warn("[Syncsaken on " .. tostring(identifyexecutor_ or "unknown") .. "] :" .. tostring(p2) .. ": Please send this in the suggestions/bugs channel: \n'" .. p1 .. "' @ " .. debug.traceback(3))
			task.wait()
		end
	end
end
local function v6(p3, p4)
	local s1 = "{\n"
	local v8 = p4 and p4 + 4
	local v9 = v8 or 4

	for k, v in pairs(p3) do
		local v12 = string.rep(" ", v9)

		string.rep(" ", v9)

		if type(k) == "number" then
			v12 ..= "[" .. k .. "] = "
		elseif type(k) == "string" then
			v12 ..= "[\"" .. k .. "\"] = "
		end

		local v13

		if type(v) == "table" then
			v13 = v6(v, v9) .. ",\n"
		elseif type(v) == "string" then
			v13 = "\"" .. v .. "\",\n"
		else
			v13 = tostring(v) .. ",\n"
		end

		s1 ..= v12 .. v13
	end

	if #s1 > 2 then
		s1 = string.sub(s1, 1, -3) .. "\n"
	end

	return s1 .. string.rep(" ", v9 - 4) .. "}"
end
local function v14()
end

local request_ = request or requests or http_request or http_requests or syn.request
local queueonteleport_ = queueonteleport or queue_on_teleport or executeonteleport or syn.queue_on_teleport
local setclipboard_ = setclipboard or toclipboard

if not request_ or not queueonteleport_ then
	v4("Your executor does not support Syncsaken genfarm.", 87)
end

local function v18(p5)
	local service = game:GetService(p5)

	return service and cloneref and cloneref(service)
end

local hui = gethui and gethui() or v18("CoreGui")
local StarterGui = v18("StarterGui")
local Players = v18("Players")
local RunService = v18("RunService")
local ReplicatedStorage = v18("ReplicatedStorage")
local HttpService = v18("HttpService")
local TeleportService = v18("TeleportService")
local GuiService = v18("GuiService")
local NetworkClient = v18("NetworkClient")
local VirtualUser = v18("VirtualUser")
local n1 = 0
local u31 = false
local v32 = false
local reason
local Ingame = workspace:WaitForChild("Map"):WaitForChild("Ingame")
local Systems = ReplicatedStorage:WaitForChild("Systems")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local RoundTimer = ReplicatedStorage:WaitForChild("RoundTimer")
local Players2 = workspace:WaitForChild("Players")
local Killers = Players2:WaitForChild("Killers")
local Survivors = Players2:WaitForChild("Survivors")
local Spectating = Players2:WaitForChild("Spectating")
local Network = Modules:WaitForChild("Network"):WaitForChild("Network")
local CharacterReplication = Systems:WaitForChild("Player"):WaitForChild("Game"):WaitForChild("CharacterReplication")
local RemoteEvent = Network:WaitForChild("RemoteEvent")
local v45 = false

if identifyexecutor_ ~= "xeno" and identifyexecutor_ ~= "solara" then
	v45 = true
	Network = require(Network)
	require(CharacterReplication)
end

local function v46()
	return Ingame:FindFirstChild("Map")
end

local t2 = {
	KEY = "",
	PUZZLES_BEFORE_REJOIN = 15,
	PLAYERS_BEFORE_START = 4,
	PLAYER_TIMER_CHECK = 2,
	MAXIMUM_TIMER_SECONDS = 120,
	MINIMUM_TIMER_SECONDS = 3,
	RECENT_SERVER_BLOCKLIST_LENGTH = 7,
	SKIP_LAST_PUZZLE = false,
	DISABLE_RENDERING = false,
	AUTO_HIDE_ABILITY = true,
	HIDE_USERNAME_ON_YOUR_SCREEN_ONLY = true,
	RUN_ONLY_WHEN_COOLKIDD = false,
	SWAP_ON_MS4 = true,
	WEBHOOK = "",
	flags = {
		startMoney = nil,
		currentMoney = nil,
		session = "",
		lastSessionRequest = 0,
		blacklisted_servers = {},
		enabled = false,
		start_time = os.time(),
		totalAmount = 0,
		first_execution = true
	}
}

if not autogenSettings then
	v14("No autogenSettings, defaulting")
	autogenSettings = t2
end

if type(autogenSettings) == "string" then
	v14("Found autogenSettings")

	if not xpcall(function()
		autogenSettings = HttpService:JSONDecode(autogenSettings)
	end, v4) then
		autogenSettings = t2
	end
end

if type(autogenSettings) == "table" then
	for k, v in pairs(autogenSettings) do
		if t2[k] and typeof(v) == typeof(t2[k]) then
			t2[k] = v
		end
	end

	autogenSettings = t2
end

v14(v6(autogenSettings))

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local connection = LocalPlayer.CharacterAdded:Connect(function(character)
	Character = character
end)

LocalPlayer.Idled:Connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

local s2 = "enig124ma"
local s3 = "gag124124a"

if autogenSettings.HIDE_USERNAME_ON_YOUR_SCREEN_ONLY then
	local t3 = {
		"cat",
		"wall",
		"obese",
		"pink",
		"bimbo",
		"bubble",
		"super",
		"couture",
		"bail",
		"song",
		"ride",
		"soul",
		"job",
		"employment",
		"party",
		"w1nd0w",
		"blow",
		"ivan",
		"spoon",
		"gamer",
		"kat",
		"maybell",
		"pop",
		"star",
		"night",
		"aeo",
		"neo",
		"around",
		"boom",
		"juicy",
		"cold",
		"hot",
		"duck"
	}

	local function v57()
		local v58 = #t3
		local v59 = t3[math.random(v58)]
		local v60 = t3[math.random(v58)]

		if v59 == v60 then
			return v57()
		end

		return v59 .. v60 .. "_" .. tostring(math.random(101))
	end
	local function v61(descendant)
		if (descendant:IsA("TextLabel") or descendant:IsA("TextBox") or descendant:IsA("TextButton")) and descendant.Text then
			if string.find(descendant.Text, LocalPlayer.Name) then
				descendant.Text = string.gsub(descendant.Text, LocalPlayer.Name, s3)
			elseif string.find(descendant.Text, s2) then
				descendant.Text = string.gsub(descendant.Text, s2, s3)
			end
		end
	end

	s2 = s3
	s3 = v57()

	for _, descendant in pairs(PlayerGui:GetDescendants()) do
		v61(descendant)
	end

	for _, descendant in pairs(hui:GetDescendants()) do
		v61(descendant)
	end

	PlayerGui.DescendantAdded:Connect(v61)
	hui.DescendantAdded:Connect(v61)
end

local PlayerData = LocalPlayer:WaitForChild("PlayerData")
local Survivors2 = PlayerData:WaitForChild("Purchased"):WaitForChild("Survivors")
local Survivor = PlayerData:WaitForChild("Equipped"):WaitForChild("Survivor")
local Money = LocalPlayer:WaitForChild("leaderstats"):WaitForChild("Money")

if not autogenSettings.flags.startMoney then
	autogenSettings.flags.startMoney = Money.Value
end

autogenSettings.flags.currentMoney = Money.Value

local connection2 = Money.Changed:Connect(function(p6)
	autogenSettings.flags.currentMoney = p6
end)

task.spawn(function()
	while task.wait(1) do
		if Character then
			if Character.Parent == Killers then
				if Character:FindFirstChild("Humanoid") then
					if autogenSettings.flags.enabled then
						Character:FindFirstChild("Humanoid").Health = 0
						task.wait(5)
					end
				end
			end
		end
	end
end)

local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "star_69"

local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner2 = Instance.new("UICorner")
local TextButton2 = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIDragDetector = Instance.new("UIDragDetector")
local UICorner3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner4 = Instance.new("UICorner")

ScreenGui.Parent = hui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Name = "Final"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(46, 9, 49)
Frame.BackgroundTransparency = 0.1
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.689541101, 0, 0.309233427, 0)
Frame.Size = UDim2.new(0.147678331, 0, 0.252613246, 0)
TextButton.Name = "Toggle"
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 16, 163)
TextButton.BackgroundTransparency = 0.2
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0692040175, 0, 0.0836690962, 0)
TextButton.Size = UDim2.new(0.858131528, 0, 0.829999983, 0)
TextButton.Font = Enum.Font.Code
TextButton.Text = tostring(math.random(2) == 1 and "Stream ayesha" or "Stream britney's pears")
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
UICorner.CornerRadius = UDim.new(0.150000006, 0)
UICorner.Parent = TextButton
UICorner2.CornerRadius = UDim.new(0.100000001, 0)
UICorner2.Parent = Frame
TextButton2.Name = "Close"
TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
TextButton2.BackgroundTransparency = 0.1
TextButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.BorderSizePixel = 0
TextButton2.Position = UDim2.new(0.412400156, 0, -0.286451131, 0)
TextButton2.Size = UDim2.new(0.246534258, 0, 0.198275849, 0)
TextButton2.Font = Enum.Font.Code
TextButton2.Text = "X"
TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.TextScaled = true
TextButton2.TextSize = 14
TextButton2.TextWrapped = true
UIAspectRatioConstraint.Parent = TextButton2
UICorner3.CornerRadius = UDim.new(1, 0)
UICorner3.Parent = TextButton2
TextLabel.Name = "CreditText"
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(46, 9, 49)
TextLabel.BackgroundTransparency = 0.4
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.689541101, 0, 0.57, 0)
TextLabel.Size = UDim2.new(0.15, 0, 0.05, 0)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "gg/qVtgJDcEf5 - made by who_else123"
TextLabel.TextColor3 = Color3.fromRGB(255, 16, 163)
TextLabel.TextScaled = true
TextLabel.TextSize = 12
TextLabel.TextWrapped = true
UICorner4.CornerRadius = UDim.new(0.100000001, 0)
UICorner4.Parent = TextLabel
UIDragDetector.Parent = Frame

local t4 = {}
local Value = Survivor.Value
local u84
local s4 = ""
local huge = math.huge
local t5 = {
	Tasks = {},
	originalFunctions = {},
	serverCFrame = CFrame.new()
}

if v45 then
	local function addTask(p7, p8, p9)
		p7.Tasks[p8] = p9
	end

	t5.AddTask = addTask
	t5.RemoveTask = function(p10, p11)
		p10.Tasks[p11] = nil
	end
	t5.ExecuteTasks = function(p12, p13)
		local v89 = false

		for _, task_ in pairs(p12.Tasks) do
			local _, result = xpcall(task_, function(p14)
				v4(p14, 405)
			end, p13)

			if result == "exit" then
				v89 = true
			end
		end

		return v89
	end

	for k, v in pairs(Network) do
		t5.originalFunctions[k] = v
	end

	for k in pairs(Network) do
		Network[k] = function(...)
			local t6 = { ... }

			if t5:ExecuteTasks(t6) then
				return
			end

			return t5.originalFunctions[k](unpack(t6))
		end
		v14("Hooked " .. tostring(k))
	end
end

local function v98(p15)
	local v99 = math.floor(p15 / 86400)
	local v100 = math.floor(p15 % 86400 / 3600)
	local v101 = math.floor(p15 % 3600 / 60)
	local v102 = p15 % 60

	if v99 > 0 then
		return string.format("%dd %dh %dm %ds", v99, v100, v101, v102)
	end

	if v100 > 0 then
		return string.format("%dh %dm %ds", v100, v101, v102)
	end

	if v101 > 0 then
		return string.format("%dm %ds", v101, v102)
	end

	return string.format("%ds", v102)
end
local function v103()
	return tonumber(RoundTimer:GetAttribute("TimeLeft")) or 0
end
local function v104(p16)
	StarterGui:SetCore("SendNotification", {
		Title = "auto-autogen",
		Text = p16,
		Icon = "rbxassetid://114310588828323",
		Duration = 5,
		Callback = function()
			xpcall(setclipboard_, "discord.gg/j8QP4uW8aj", v4)
		end
	})
end
local function v105()
	local v106 = request_({
		Url = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. LocalPlayer.UserId .. "&size=420x420&format=Png&isCircular=true",
		Method = "GET"
	})

	if not v106 or not v106.Success or v106.StatusCode ~= 200 then
		return ""
	end

	local data = HttpService:JSONDecode(v106.Body)
	local data2 = data and data.data and data.data[1]

	if data2 then
		return data2.imageUrl
	end

	return ""
end
local function v109()
	pcall(function()
		local t7 = {
			username = LocalPlayer.Name,
			userid = tostring(LocalPlayer.UserId),
			jobid = game.JobId
		}

		if autogenSettings.KEY then
			t7.key = autogenSettings.KEY
		else
			t7.key = "N/A"
		end

		t7.discordId = autogenSettings.flags.discord_id
		t7.avatarUrl = v105()
		request_({
			Url = "https://socialite-proxy.roblocks.workers.dev/",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = HttpService:JSONEncode(t7)
		})
	end)
end
local function v111(p17, p18)
	if autogenSettings.WEBHOOK then
		if autogenSettings.WEBHOOK ~= "" then
			local now = os.time()
			local t8 = {}

			table.insert(t8, {
				name = tostring(not p18 and "🟢 Status:" or "❌ Status:"),
				value = tostring(p17) or "All caught up.",
				inline = true
			})
			table.insert(t8, {
				name = "🏭 Generators Completed",
				value = tostring(autogenSettings.flags.totalAmount / 4),
				inline = true
			})
			table.insert(t8, {
				name = "💵 Total Money Earned",
				value = "$" .. tostring(autogenSettings.flags.totalAmount * 5),
				inline = true
			})
			table.insert(t8, {
				name = "✨ Total XP Earned",
				value = tostring(autogenSettings.flags.totalAmount * 15) .. " XP",
				inline = true
			})

			if Value then
				if u84 then
					table.insert(t8, {
						name = "🧍 Equipped Survivor",
						value = tostring(Value) or "Unknown",
						inline = true
					})
					table.insert(t8, {
						name = "⚙️ Equipped Survivor XP",
						value = tostring(u84) or "Unknown",
						inline = true
					})
				end
			end

			table.insert(t8, {
				name = "🕵️ New username",
				value = s3,
				inline = true
			})
			table.insert(t8, {
				name = "⏱️ Uptime",
				value = v98(now - autogenSettings.flags.start_time),
				inline = true
			})
			task.spawn(function()
				local ok, result = pcall(request_, {
					Url = autogenSettings.WEBHOOK,
					Method = "POST",
					Headers = {
						["Content-Type"] = "application/json"
					},
					Body = HttpService:JSONEncode({
						username = "auto-autogen (" .. tostring(v32 and "PREMIUM" or "FREE") .. ")",
						avatar_url = v105(),
						embeds = { {
							title = "📊 __Session Statistics Update__",
							description = "**Here is the latest progress report for the current auto-gen session.**",
							color = 16711935,
							fields = t8,
							footer = {
								text = "discord.gg/qVtgJDcEf5",
								icon_url = "https://s6.imgcdn.dev/Y2FlMo.png"
							},
							timestamp = DateTime.now():ToIsoDate()
						} }
					})
				})

				if not ok then
					v14("Webhook error: " .. tostring(result))
				elseif result and result.StatusCode >= 400 then
					v14("Discord rejected webhook! Code: " .. tostring(result.StatusCode) .. " | " .. tostring(result.Body))
				end
			end)

			return
		end
	end
end
local function v116(p19)
	if u31 then
		return
	end

	u31 = true
	autogenSettings.flags.totalAmount += n1

	if p19 then
		v111("🔄️ Rejoining: " .. tostring(p19) or "error")
	else
		v111("🔄️ Rejoining...")
	end

	v104("Attempting to rejoin...")

	local function v117(p20)
		if type(p20) ~= "table" then
			return 0
		end

		local v118 = tostring(p20.id)

		if table.find(autogenSettings.flags.blacklisted_servers, v118) then
			return -math.huge
		end

		local v119 = tonumber(p20.playing)
		local v120 = tonumber(p20.ping)

		if not v118 or not v119 or not v120 then
			return -math.huge
		end

		if v120 > 150 then
			return -math.huge
		end

		if v119 < autogenSettings.PLAYERS_BEFORE_START then
			return -math.huge
		end

		return math.log(v119 + 1) * 20 - v120 * 0.5 + (p20.randomiser or 0)
	end
	local function v121(p21, p22)
		return v117(p21) > v117(p22)
	end

	queueonteleport_("getgenv().autogenSettings='" .. HttpService:JSONEncode(autogenSettings) .. "'; loadstring(game:HttpGet('https://raw.githubusercontent.com/who-else123/my-scripts/refs/heads/main/Syncsaken/auto-autogen.lua'))()")

	local connection3

	while ScreenGui do
		local now = os.time()
		local u124 = false

		xpcall(function()
			local HttpService2 = game:GetService("HttpService")
			local v126 = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true"
			local v127
			local n2 = 0

			while true do
				task.wait(n2)
				n2 = math.min(n2 + 7.5, 15)

				local v129 = request_({
					Url = v126,
					Method = "GET"
				})

				if v129.StatusCode == 200 then
					local ok, result = pcall(function()
						return HttpService2:JSONDecode(v129.Body)
					end)

					if ok then
						v127 = result
					end
				end

				if not v127 then
					continue
				end

				break
			end

			if v127.data then
				local t9 = {}

				for _, v in pairs(v127.data) do
					if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and not table.find(autogenSettings.flags.blacklisted_servers, tostring(v.id)) then
						v.randomiser = math.random(2) == 2 and math.random() or -math.random()
						table.insert(t9, v)
					end
				end

				table.sort(t9, v121)

				if #t9 > 0 then
					v104("Found " .. #t9 .. " servers! Rejoining...")

					local id = t9[1].id
					local ping = t9[1].ping

					table.remove(t9, 1)
					writefile("miami.txt", "Picked " .. id .. " with " .. ping .. " ping")
					TeleportService:TeleportToPlaceInstance(game.PlaceId, id, LocalPlayer)
					connection3 = TeleportService.TeleportInitFailed:Connect(function()
						task.wait()
						GuiService:ClearError()

						if t9[1] then
							id = t9[1].id
							table.remove(t9, 1)
							writefile("miami.txt", "Picked " .. id .. "with " .. ping .. " ping")
							TeleportService:TeleportToPlaceInstance(game.PlaceId, id, LocalPlayer)
						else
							u124 = true
						end
					end)
				else
					u124 = true
				end
			end
		end, v4)

		while true do
			task.wait(1)

			if u124 then
				break
			elseif os.time() - now > 60 then
				break
			end
		end

		if connection3 then
			connection3:Disconnect()
			connection3 = nil
		end
	end
end
local function v137(p23, p24)
	if not p23 then
		return
	end

	if not p23:IsA("RemoteFunction") then
		if p23:IsA("RemoteEvent") then
			pcall(function()
				p23:FireServer(p24)
			end)
		end

		return
	end

	local u138 = false
	local u139
	local thread = task.spawn(function()
		local ok, result = pcall(function()
			return p23:InvokeServer(p24)
		end)

		u138 = ok
		u139 = result
	end)
	local n3 = 0

	while true do
		task.wait(0.1)
		n3 += 0.1

		if u138 then
			break
		elseif n3 >= 15 then
			break
		end
	end

	if not u138 then
		task.cancel(thread)

		return false
	end

	return u139
end
local function v144()
	return Character:IsDescendantOf(Spectating) or Character.Parent == workspace
end
local function v145()
	if Killers:GetChildren()[1] then
		return tostring(Killers:GetChildren()[1]) == "c00lkidd"
	end
end
local function v146(p25)
	local v147 = buffer.create(5 + #p25)

	buffer.writeu8(v147, 0, 3)
	buffer.writeu32(v147, 1, #p25)
	buffer.writestring(v147, 5, p25)

	return v147
end
local function v148(p26)
	RemoteEvent:FireServer("UseActorAbility", { v146(p26) })
end
local function v149(...)
	for _, v in ipairs({ ... }) do
		v148(v)
	end
end

if autogenSettings.DISABLE_RENDERING then
	v104("Disabling rendering...")
	pcall(function()
		RunService:Set3dRenderingEnabled(false)
	end)
end

local connection3 = NetworkClient.ChildRemoved:Connect(function()
	if not u31 then
		v116("Kicked!")
	end
end)
local t10 = {
	invisCharacterConnection = nil,
	currentLoaded = nil,
	animation = Instance.new("Animation")
}

t10.animation.Name = "Wаlking"
t10.animation.AnimationId = "rbxassetid://75804462760596"
t10.toggleInvisible = function(p27)
	if not Character then
		Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	end

	local Humanoid = Character:WaitForChild("Humanoid")
	local PrimaryPart = Character.PrimaryPart

	if not Humanoid or not PrimaryPart then
		return
	end

	if p27 then
		if not t10.invisCharacterConnection then
			t10.invisCharacterConnection = LocalPlayer.CharacterAdded:Connect(function(character)
				if t10.currentLoaded then
					t10.currentLoaded:Stop()
					t10.currentLoaded:Destroy()
					t10.currentLoaded = nil
				end

				repeat
					task.wait()
				until character.PrimaryPart

				t10.toggleInvisible(p27)
			end)
		end

		if v144() then
			return
		end

		if Character.Parent ~= Killers then
			PrimaryPart.Transparency = 0.8

			local Animator = Humanoid:FindFirstChildOfClass("Animator")

			if not Animator then
				warn("No a...")

				return
			end

			t10.currentLoaded = Animator:LoadAnimation(t10.animation)
			t10.currentLoaded.Priority = Enum.AnimationPriority.Action4
			t10.currentLoaded:Play()
			t10.currentLoaded:AdjustSpeed(0)
		end
	else
		PrimaryPart.Transparency = 1

		if t10.currentLoaded then
			t10.currentLoaded:Stop()
			t10.currentLoaded:Destroy()
			t10.currentLoaded = nil
		end

		if t10.invisCharacterConnection then
			t10.invisCharacterConnection:Disconnect()
			t10.invisCharacterConnection = nil
		end
	end
end

local t11 = {
	enabled = false,
	lastCF = CFrame.new(),
	toggle = function(p28, p29)
		if p29 then
			if p28.enabled then
				return
			end

			p28.enabled = p29

			if v45 then
				p28.lastCF = Character and Character:GetPivot() or CFrame.new(0, -1000, 0)
				t5:AddTask("BlockMovement", function(p30)
					if p30[2] == "UpdateCharacterPosition" and typeof(p30[4]) == "buffer" then
						return "exit"
					end
				end)
			else
				t10.toggleInvisible(true)
			end
		else
			if not p28.enabled then
				return
			end

			p28.enabled = p29

			if v45 then
				if Character then
					if p28.lastCF then
						Character:PivotTo(p28.lastCF)
					end
				end

				task.wait(0.2)
				t5:RemoveTask("BlockMovement")
			else
				t10.toggleInvisible(false)
			end
		end
	end
}
local t12

t12 = {
	currentGenerator = nil,
	currentGenerators = {},
	lastGenerator = nil,
	lastLastGenerator = nil,
	busy = false,
	autogen = false,
	getOthersRootPos = function()
		local t13 = {}
		local players = Players:GetPlayers()

		table.remove(players, table.find(players, LocalPlayer))

		for _, player in pairs(players) do
			local PrimaryPart = player.Character and player.Character.PrimaryPart

			if PrimaryPart then
				table.insert(t13, PrimaryPart.Position)
			end
		end

		return t13
	end,
	isAnyoneAt = function(p31, p32)
		local v164 = t12:getOthersRootPos()

		for _, v in ipairs(v164) do
			if vector.magnitude(v - p32) <= 1.5 then
				return true
			end
		end

		return false
	end,
	isGeneratorViable = function(p33, p34)
		local v167 = autogenSettings.SKIP_LAST_PUZZLE and 74 or 100
		local NumberValue = p34:FindFirstChildOfClass("NumberValue")

		if not NumberValue or NumberValue.Name ~= "Progress" or v167 <= NumberValue.Value then
			return false
		end

		local v169 = t12:getOthersRootPos()
		local n4 = 0
		local Position = p34.PrimaryPart and p34.PrimaryPart.Position or p34:GetPivot().Position

		for _, v in ipairs(v169) do
			if vector.magnitude(v - Position) <= 8 then
				n4 += 1
			end
		end

		if n4 >= 3 then
			return false
		end

		return true
	end,
	getAllGenerators = function()
		table.clear(t12.currentGenerators)

		if not Character then
			return t12.currentGenerators
		end

		local v174 = v46()

		if not v174 then
			return t12.currentGenerators
		end

		for _, child in pairs(v174:GetChildren()) do
			if child.Name == "Generator" and t12:isGeneratorViable(child) then
				table.insert(t12.currentGenerators, child)
			end
		end

		local Position = Character:GetPivot().Position

		table.sort(t12.currentGenerators, function(p35, p36)
			local v178 = p35 == t12.lastGenerator or p35 == t12.lastLastGenerator or p35 == t12.currentGenerator

			if v178 == (p36 == t12.lastGenerator or p36 == t12.lastLastGenerator or p36 == t12.currentGenerator) then
				return vector.magnitude(p35:GetPivot().Position - Position) < vector.magnitude(p36:GetPivot().Position - Position)
			end

			return not v178
		end)

		return t12.currentGenerators
	end
}

local function v179(p37)
	task.wait(math.random() / 100)

	if v144() then
		return
	end

	local currentMoney = autogenSettings.flags.currentMoney
	local PrimaryPart = Character and Character.PrimaryPart
	local CollisionHitbox = Character and Character:FindFirstChild("CollisionHitbox")

	if not PrimaryPart or not CollisionHitbox then
		return
	end

	if PrimaryPart.Anchored then
		repeat
			task.wait()
		until not PrimaryPart.Anchored
	end

	local Positions = p37:WaitForChild("Positions", 3)
	local Progress = p37:WaitForChild("Progress", 3)
	local Remotes = p37:WaitForChild("Remotes", 3)
	local RF = Remotes and Remotes:FindFirstChild("RF")
	local RE = Remotes and Remotes:FindFirstChild("RE")

	if not Progress or not Remotes or not RF or not RE or not Positions then
		return
	end

	local t14 = {
		Positions:FindFirstChild("Left").Position,
		Positions:FindFirstChild("Right").Position,
		Positions:FindFirstChild("Center").Position
	}
	local v192

	for _, v in ipairs(t14) do
		if not t12:isAnyoneAt(v) then
			v192 = v

			break
		end
	end

	if not v192 then
		return
	end

	local CanCollide = CollisionHitbox.CanCollide

	PrimaryPart.CanCollide = false
	CollisionHitbox.CanCollide = false
	PrimaryPart.CFrame = CFrame.new(v192 + vector.create(math.random() / 10, 0, math.random() / 10))
	task.wait(0.2)

	if Progress.Value >= 80 then
		return
	end

	if not v137(RF, "Enter") then
		return false
	end

	if p37 == t12.lastGenerator or p37 == t12.lastLastGenerator then
		task.wait(0.9)
	end

	task.wait(0.02)
	PrimaryPart.CanCollide = CanCollide
	CollisionHitbox.CanCollide = CanCollide
	v137(RE)
	task.wait(0.02)
	v137(RF, "Leave")
	task.wait(0.02)

	if autogenSettings.flags.currentMoney - currentMoney > 0 then
		n1 += 1
		v104(n1 .. "/" .. autogenSettings.PUZZLES_BEFORE_REJOIN .. " (" .. math.round(n1 / autogenSettings.PUZZLES_BEFORE_REJOIN * 100) .. "%) puzzles completed")
	end

	if autogenSettings.PUZZLES_BEFORE_REJOIN <= n1 then
		v116("Completed all generators!")
	end
end
local function v196()
	if autogenSettings.flags.enabled then
		if t12.busy or u31 then
			print("busy bee")

			return
		end

		t12.busy = true

		while autogenSettings.flags.enabled do
			if not Character then
				task.wait()

				continue
			end

			if not v144() and Character and Character.Parent ~= Killers then
				if t2.RUN_ONLY_WHEN_COOLKIDD and not v145() then
					if Character:FindFirstChildOfClass("Humanoid") then
						Character:FindFirstChildOfClass("Humanoid").Health = 0
					end

					return
				end

				if #t12:getAllGenerators() > 0 then
					t11:toggle(true)
					task.wait(0.2)

					while true do
						task.wait()
						xpcall(function()
							for _, v in ipairs(t12:getAllGenerators()) do
								if not Killers:GetChildren()[1] then
									break
								end

								if not autogenSettings.flags.enabled or v144() then
									t12.currentGenerator = nil
									t12.lastGenerator = nil
									t12.lastLastGenerator = nil

									break
								end

								if Character and Character.Parent == Killers then
									Character:FindFirstChildOfClass("Humanoid").Health = 0

									break
								end

								if t12:isGeneratorViable(v) then
									t12.lastLastGenerator = t12.lastGenerator
									t12.lastGenerator = t12.currentGenerator
									t12.currentGenerator = v

									if autogenSettings.AUTO_HIDE_ABILITY then
										v149("Ghostburger", "Clone", "Crouch")
									end

									v179(v)
								end
							end

							if tonumber(t12.delay) then
								task.wait(t12.delay)
							else
								task.wait()
							end
						end, v4)

						if autogenSettings.flags.enabled then
							if #t12:getAllGenerators() < 1 then
								break
							end
						else
							break
						end
					end

					t12.lastLastGenerator = nil
					t12.currentGenerator = nil
					t12.lastGenerator = nil
				end
			end

			t11:toggle(false)

			if autogenSettings.flags.enabled and Character and not v144() then
				if Character and Character.PrimaryPart and not v45 then
					local PrimaryPart = Character.PrimaryPart

					PrimaryPart.CFrame -= Vector3.new(0, 50, 0)
				end

				task.wait(math.random(4))
				Character.Humanoid.Health = 0
			end

			if autogenSettings.PUZZLES_BEFORE_REJOIN <= n1 then
				v116("Completed all generators!")
			end

			while true do
				task.wait()

				if not Character then
					continue
				end

				if t12:getAllGenerators()[1] and not v144() then
					break
				end
			end

			t12.busy = false
		end
	else
		if t12.currentGenerator then
			if t12.currentGenerator:FindFirstChild("Remotes") then
				if t12.currentGenerator.Remotes:FindFirstChild("RF") then
					v137(t12.currentGenerator.Remotes.RF, "leave")
				end
			end
		end

		t11:toggle(false)
		t12.currentGenerator = nil
		t12.currentGenerators = {}
		t12.lastGenerator = nil
		t12.lastLastGenerator = nil
	end
end

local v200 = buffer.create(256)
local v201 = buffer.create(256)
local n5 = 1925078388
local n6 = 2614888103

for i, v in ipairs({
	1116352408,
	1899447441,
	3049323471,
	3921009573,
	961987163,
	1508970993,
	2453635748,
	2870763221,
	3624381080,
	310598401,
	607225278,
	1426881987,
	n5,
	2162078206,
	n6,
	3248222580,
	3835390401,
	4022224774,
	264347078,
	604807628,
	770255983,
	1249150122,
	1555081692,
	1996064986,
	2554220882,
	2821834349,
	2952996808,
	3210313671,
	3336571891,
	3584528711,
	113926993,
	338241895,
	666307205,
	773529912,
	1294757372,
	1396182291,
	1695183700,
	1986661051,
	2177026350,
	2456956037,
	2730485921,
	2820302411,
	3259730800,
	3345764771,
	3516065817,
	3600352804,
	4094571909,
	275423344,
	430227734,
	506948616,
	659060556,
	883997877,
	958139571,
	1322822218,
	1537002063,
	1747873779,
	1955562222,
	2024104815,
	2227730452,
	2361852424,
	2428436474,
	2756734187,
	3204031479,
	3329325298
}) do
	buffer.writeu32(v201, (i - 1) * 4, v)
end

local function v206(p38)
	local v207 = buffer.len(p38)
	local v208 = -(v207 + 9) % 64
	local v209 = v207 + 1 + v208 + 8
	local v210 = buffer.create(v209)

	buffer.copy(v210, 0, p38)
	buffer.writeu8(v210, v207, 128)

	local v211 = v207 * 8

	for i = 7, 0, -1 do
		local v213 = v211 % 256

		buffer.writeu8(v210, i + v207 + 1 + v208, v213)
		v211 = (v211 - v213) / 256
	end

	return v210, v209
end
local function v214(p39, p40)
	local n7 = 1779033703
	local n8 = 3144134277
	local n9 = 1013904242
	local n10 = 2773480762
	local n11 = 1359893119
	local n12 = 2600822924
	local n13 = 528734635
	local n14 = 1541459225
	local v223 = v200
	local v224 = v201

	for i = 0, p40 - 1, 64 do
		for i2 = 0, 60, 4 do
			buffer.writeu32(v223, i2, bit32.byteswap(buffer.readu32(p39, i + i2)))
		end

		for i2 = 64, 252, 4 do
			local v228 = buffer.readu32(v223, i2 - 60)
			local v229 = bit32.bxor(bit32.rrotate(v228, 7), bit32.rrotate(v228, 18), bit32.rshift(v228, 3))
			local v230 = buffer.readu32(v223, i2 - 8)
			local v231 = bit32.bxor(bit32.rrotate(v230, 17), bit32.rrotate(v230, 19), bit32.rshift(v230, 10))
			local v232 = buffer.readu32(v223, i2 - 28)

			buffer.writeu32(v223, i2, buffer.readu32(v223, i2 - 64) + v229 + v232 + v231)
		end

		local v233 = n7
		local v234 = n8
		local v235 = n9
		local v236 = n10
		local v237 = n11
		local v238 = n12
		local v239 = n13
		local v240 = n14

		for i2 = 0, 252, 4 do
			local v242 = n14 + bit32.bxor(bit32.rrotate(n11, 6), bit32.rrotate(n11, 11), bit32.rrotate(n11, 25)) + bit32.bxor(bit32.band(n11, n12), bit32.band(bit32.bnot(n11), n13)) + buffer.readu32(v224, i2) + buffer.readu32(v223, i2)

			n14 = n13
			n13 = n12
			n12 = n11
			n11 = n10 + v242
			n10 = n9

			local v243 = bit32.bxor(bit32.rrotate(n7, 2), bit32.rrotate(n7, 13), bit32.rrotate(n7, 22))
			local v244 = bit32.bxor(bit32.band(n7, n8), bit32.band(n7, n9), bit32.band(n8, n9))

			n9 = n8
			n8 = n7
			n7 = v242 + v243 + v244
		end

		n7 = bit32.bor(n7 + v233, 0)
		n8 = bit32.bor(n8 + v234, 0)
		n9 = bit32.bor(n9 + v235, 0)
		n10 = bit32.bor(n10 + v236, 0)
		n11 = bit32.bor(n11 + v237, 0)
		n12 = bit32.bor(n12 + v238, 0)
		n13 = bit32.bor(n13 + v239, 0)
		n14 = bit32.bor(n14 + v240, 0)
	end

	return n7, n8, n9, n10, n11, n12, n13, n14
end
local function v245(p41)
	local v246 = buffer.fromstring(p41)
	local v247, v248 = v206(v246)
	local v249, v250, v251, v252, v253, v254, v255, v256 = v214(v247, v248)
	local v257 = buffer.create(32)

	buffer.writeu32(v257, 0, v249)
	buffer.writeu32(v257, 4, v250)
	buffer.writeu32(v257, 8, v251)
	buffer.writeu32(v257, 12, v252)
	buffer.writeu32(v257, 16, v253)
	buffer.writeu32(v257, 20, v254)
	buffer.writeu32(v257, 24, v255)
	buffer.writeu32(v257, 28, v256)

	return string.format("%08x%08x%08x%08x%08x%08x%08x%08x", v249, v250, v251, v252, v253, v254, v255, v256), v257
end

local loadedLastKey = ""
local loadedLastSession = ""
local loadedLastSessionRequest = 0

os.clock()

local t15 = {
	[212] = "Successful.",
	[400] = "Can you stop?",
	[401] = "Something went wrong! Try re-executing...",
	[402] = "Something went wrong! Try re-executing...",
	[403] = "Key expired...",
	[404] = "Key not found...",
	[405] = "Not your key! Please open a ticket and request a HWID reset...",
	[406] = "Session expired! Try again...",
	[429] = "Syncsaken is currently down for maintenence. Please wait until the next day!",
	[500] = "Internal server error..."
}

if autogenSettings.flags.session and autogenSettings.flags.session ~= "" then
	loadedLastSession = autogenSettings.flags.session
	n5 = "Loaded last session: " .. loadedLastSession
	v14(n5)
end

if autogenSettings.flags.lastSessionRequest then
	n5 = autogenSettings.flags.lastSessionRequest

	if tonumber(n5) then
		loadedLastSessionRequest = tonumber(autogenSettings.flags.lastSessionRequest) or 0
		n5 = "Loaded last session request: " .. loadedLastSessionRequest
		v14(n5)
	end
end

if autogenSettings.KEY then
	if tostring(autogenSettings.KEY) then
		loadedLastKey = tostring(autogenSettings.KEY)
		v14("Loaded last key: " .. loadedLastKey)
	end
end

local function v262()
	if math.random() ~= math.random() then
		local v263 = "" .. tostring(gcinfo()) .. math.random() * math.random() * 1.2492184012840912

		for i = 1, 100 do
			v263 ..= string.sub(tostring({ math.random() }), 8)
		end

		return v245(v263 .. math.random() * 0.1248214)
	end

	local function v265()
		local v266 = string.rep(" ", 8)

		local function v267(p42, p43)
			local n15 = 1
			local n16 = 0

			while p42 > 0 and p43 > 0 do
				local v270 = p42 % 2
				local v271 = p43 % 2

				if v270 ~= v271 then
					n16 += n15
				end

				p42 = (p42 - v270) / 2
				p43 = (p43 - v271) / 2
				n15 *= 2
			end

			if p42 < p43 then
				p42 = p43
			end

			while p42 > 0 do
				local v272 = p42 % 2

				if v272 > 0 then
					n16 += n15
				end

				p42 = (p42 - v272) / 2
				n15 *= 2
			end

			return n16
		end
		local function v273(p44, p45, p46)
			if p46 then
				local v274 = p44 / 2 ^ (p45 - 1) % 2 ^ (p46 - 1 - (p45 - 1) + 1)

				return v274 - v274 % 1
			end

			local v275 = 2 ^ (p45 - 1)

			return p44 % (v275 + v275) >= v275 and 1 or 0
		end
		local function v276()
			local v277, v278, v279, v280 = string.byte(v266, 1, 4)

			return v267(v280, 64) * 16777216 + v267(v279, 32) * 65536 + v267(v278, 16) * 256 + v267(v277, 8)
		end
		local function v281()
			local v282 = v276()
			local v283 = v276()
			local n17 = 1
			local v285 = v273(v283, 1, 20) * 4294967296 + v282
			local v286 = v273(v283, 21, 31)
			local v287 = -1 ^ v273(v283, 32)

			if v286 == 0 then
				if v285 == 0 then
					return v287 * 0
				end

				v286 = 1
				n17 = 0
			elseif v286 == 2047 then
				return v285 == 0 and v287 * 1 / 0 or v287 * 0 / 0
			end

			return v287 * 2 ^ (v286 - 1023) * (n17 + v285 / 4503599627370496)
		end
		local function v288()
			local n18 = 1
			local v290 = v276()
			local t16, v292, v293, v294, v295, v296, v297

			if n18 <= v290 then
				while true do
					t16 = {}

					for i = 0, 255 do
						v292 = v267
						t16[v267(v276(), v276())] = v292(v276(), v276())
						v293 = v267
						t16[v267(v276(), v276())] = v293(v276(), v276())
					end

					for i = 1, v276() do
						for i2 = 0, 255 do
							v294 = v281() and v276()
							v295 = t16[v281()] or v267(v281(), v281())
							t16[v294] = v295
							v296 = v276()
							v297 = v281() and v281()
							t16[v296] = v297
							t16[v273(v281(), v276())] = {
								v281(),
								v276()
							}
						end
					end
				end
			end

			return v267(v281(), v276())
		end

		while v288() do
			v288()
		end
	end

	v265()
	LPH_CRASH()
end
local function v301()
	if os.time() - loadedLastSessionRequest < 43200 and loadedLastSession and loadedLastSession ~= "" then
		return loadedLastSession
	end

	local v302 = request_({
		Url = "https://socialite-auth.roblocks.workers.dev/",
		Method = "GET",
		Headers = {
			["X-AyeshaErotica"] = "loves it!"
		}
	})

	if v302.StatusCode == 429 then
		task.wait(4)

		return v301()
	end

	local Body = v302.Body

	if typeof(Body) ~= "string" then
		return loadedLastSession
	end

	if #Body > 64 then
		return loadedLastSession
	end

	if not string.match(Body, "^[%da-fA-F]+$") then
		return loadedLastSession
	end

	loadedLastSession = Body
	loadedLastSessionRequest = os.time()
	autogenSettings.flags.session = loadedLastSession
	autogenSettings.flags.lastSessionRequest = loadedLastSessionRequest

	return Body
end
local function v304(p47)
	local v305 = math.floor(p47 / 86400)
	local v306 = math.floor(p47 % 86400 / 3600)
	local v307 = math.floor(p47 % 3600 / 60)
	local v308 = p47 % 60

	if v305 > 0 then
		return string.format("%dd %dh %dm %ds", v305, v306, v307, v308)
	end

	if v306 > 0 then
		return string.format("%dh %dm %ds", v306, v307, v308)
	end

	if v307 > 0 then
		return string.format("%dm %ds", v307, v308)
	end

	return string.format("%ds", v308)
end
local function v309(p48, p49, p50, p51)
	if p48 and p49 then
		if p50 and typeof(p48) == "string" and typeof(p49) == "string" and p48 ~= "" and p49 ~= "" then
			local v310 = p51 or 0
			local v311 = v262()

			v14("\nkey: " .. p48 .. "\nsession: " .. p49 .. "\nid: " .. p50)

			local v312 = request_({
				Url = "https://socialite-auth.roblocks.workers.dev/",
				Method = "POST",
				Headers = {
					["X-Syncsaken"] = "drop it drop it"
				},
				Body = HttpService:JSONEncode({
					auth = p48,
					session = p49,
					identifier = tostring(p50),
					nonce = v311
				})
			})

			if v312.StatusCode == 406 then
				loadedLastSessionRequest = 0

				if v310 >= 3 then
					return {
						valid = false,
						reason = t15[v312.StatusCode],
						status = v312.StatusCode
					}
				end

				task.wait(1)

				return v309(p48, v301(), p50, v310 + 1)
			end

			if v312.StatusCode == 429 then
				task.wait(4)

				if v310 >= 3 then
					return {
						valid = false,
						reason = t15[v312.StatusCode],
						status = v312.StatusCode
					}
				end

				task.wait(4)

				return v309(p48, p49, p50, v310 + 1)
			end

			if v312.StatusCode ~= 212 then
				return {
					valid = false,
					reason = tostring(t15[v312.StatusCode] or "Something went wrong... [" .. v312.StatusCode .. "]"),
					status = v312.StatusCode
				}
			end

			local data = HttpService:JSONDecode(v312.Body)

			if not data or not data.valid or not data.session then
				v14("\n\n[INVALID RESPONSE] valid: " .. tostring(data.valid) .. "\nsession: " .. tostring(data.session))

				return {
					valid = false,
					reason = "Idk",
					status = 400
				}
			end

			if v245("true-" .. p49 .. v311 .. "34c52300d5b526808f6daa2d4a9eb80f7152c2ecbfadd5bd37c42e9c9e5500e4") == data.session then
				return {
					valid = true,
					expires = tonumber(data.expires),
					userId = tostring(data.userId)
				}
			end

			local function v314()
				local v315 = string.rep(" ", 8)

				local function v316(p52, p53)
					local n19 = 1
					local n20 = 0

					while p52 > 0 do
						if not (p53 > 0) then
							break
						end

						local v319 = p52 % 2
						local v320 = p53 % 2

						if v319 ~= v320 then
							n20 += n19
						end

						p52 = (p52 - v319) / 2
						p53 = (p53 - v320) / 2
						n19 *= 2
					end

					if p52 < p53 then
						p52 = p53
					end

					while p52 > 0 do
						local v321 = p52 % 2

						if v321 > 0 then
							n20 += n19
						end

						p52 = (p52 - v321) / 2
						n19 *= 2
					end

					return n20
				end
				local function v322(p54, p55, p56)
					if not p56 then
						local v323 = 2 ^ (p55 - 1)

						return p54 % (v323 + v323) >= v323 and 1 or 0
					end

					local v324 = p54 / 2 ^ (p55 - 1) % 2 ^ (p56 - 1 - (p55 - 1) + 1)

					return v324 - v324 % 1
				end
				local function v325()
					local v326, v327, v328, v329 = string.byte(v315, 1, 4)

					return v316(v329, 64) * 16777216 + v316(v328, 32) * 65536 + v316(v327, 16) * 256 + v316(v326, 8)
				end
				local function v330()
					local v331 = v325()
					local v332 = v325()
					local n21 = 1
					local v334 = v322(v332, 1, 20) * 4294967296 + v331
					local v335 = v322(v332, 21, 31)
					local v336 = -1 ^ v322(v332, 32)

					if v335 == 0 then
						if v334 == 0 then
							return v336 * 0
						end

						v335 = 1
						n21 = 0
					elseif v335 == 2047 then
						return v334 == 0 and v336 * 1 / 0 or v336 * 0 / 0
					end

					return v336 * 2 ^ (v335 - 1023) * (n21 + v334 / 4503599627370496)
				end
				local function v337()
					local n22 = 1
					local v339 = v325()
					local t17, v341, v342, v343, v344, v345, v346

					if n22 <= v339 then
						while true do
							t17 = {}

							for i = 0, 255 do
								v341 = v316
								t17[v316(v325(), v325())] = v341(v325(), v325())
								v342 = v316
								t17[v316(v325(), v325())] = v342(v325(), v325())
							end

							for i = 1, v325() do
								for i2 = 0, 255 do
									v343 = v330() and v325()
									v344 = t17[v330()] or v316(v330(), v330())
									t17[v343] = v344
									v345 = v325()
									v346 = v330() and v330()
									t17[v345] = v346
									t17[v322(v330(), v325())] = {
										v330(),
										v325()
									}
								end
							end
						end
					end

					return v316(v330(), v325())
				end

				while v337() do
					v337()
				end
			end

			v314()
			LPH_CRASH()
		end
	end

	return {
		valid = false,
		reason = "Invalid!",
		status = 400
	}
end

if loadedLastKey ~= "" then
	local v350 = v309(loadedLastKey, v301(), gethwid_)

	if v350.valid then
		v104("Thank you for supporting Syncsaken <3")
		autogenSettings.flags.discord_id = v350.userId
		v32 = true
	else
		reason = v350.reason
	end
end

for _, child in pairs(Survivors2:GetChildren()) do
	t4[child.Name] = child.Value

	if child.Value < huge then
		s4 = child.Name
		huge = child.Value
	end
end

if autogenSettings.SWAP_ON_MS4 then
	xpcall(function()
		local function v353(p57)
			Value = p57

			local s5 = "EquipState"
			local t19 = {}
			local Survivors3 = ReplicatedStorage:WaitForChild("Assets", 5):WaitForChild("Survivors", 5)
			local v358 = Survivors3
			local WaitForChild = Survivors3.WaitForChild
			local v360 = p57 or "BritneySpears"

			do
				local values = table.pack(WaitForChild(v358, tostring(v360), 5), buffer.fromstring("\1\1"))

				table.move(values, 1, values.n, 1, t19)
			end

			local t18 = {
				s5,
				t19
			}

			RemoteEvent:FireServer(unpack(t18))
		end

		if huge >= 59400 then
			return
		end

		u84 = t4[Value]

		if not u84 then
			return
		end

		if u84 >= 59400 and Value ~= s4 then
			v104("Hit the XP limit: switched to " .. s4 .. " with XP of " .. huge)
			v353(s4)
		end
	end, v4)
end

TextButton2.Activated:Connect(function()
	ScreenGui:Destroy()
	ScreenGui = nil
	getgenv().auto_autogen_loaded = nil
	getgenv().autogenSettings = nil
	t11:toggle(false)
	autogenSettings.flags.enabled = false
	v196()
	connection:Disconnect()
	connection = nil
	connection3:Disconnect()
	connection3 = nil
	connection2:Disconnect()
	connection2 = nil
end)

if v32 then
	if autogenSettings.flags.first_execution then
		v109()
	else
		if autogenSettings.MAXIMUM_TIMER_SECONDS < v103() and autogenSettings.PLAYER_TIMER_CHECK < #Survivors:GetChildren() then
			v116("Timer exceeded maximum limit: " .. v98(v103()))
		end

		if v103() < autogenSettings.MINIMUM_TIMER_SECONDS then
			v116("There wasn't enough time to join a round...")
		end

		if autogenSettings.PLAYERS_BEFORE_START > #Players:GetChildren() then
			local n23 = 0

			TextButton.Text = "Waiting for players... (" .. #Players:GetPlayers() .. "/" .. autogenSettings.PLAYERS_BEFORE_START .. ")"

			local v363

			repeat
				task.wait(1)
				n23 += 1

				if n23 > 20 then
					v116("This city zuziephobic")
				end

				v363 = #Players:GetChildren()
				TextButton.Text = "Waiting for players... (" .. v363 .. "/" .. autogenSettings.PLAYERS_BEFORE_START .. ")"
			until autogenSettings.PLAYERS_BEFORE_START <= v363

			autogenSettings.flags.enabled = true
		end
	end

	if not u31 then
		v111(autogenSettings.flags.first_execution and "📜 Started!" or "🔄️ Rejoined!")
		autogenSettings.flags.first_execution = false
		RemoteEvent:FireServer({
			"UpdateSettings",
			{
				PlayerData:WaitForChild("Settings"):WaitForChild("Game"):WaitForChild("MaliceDisabled"),
				buffer.fromstring("\1\1")
			}
		})
		table.insert(autogenSettings.flags.blacklisted_servers, game.JobId)

		if autogenSettings.RECENT_SERVER_BLOCKLIST_LENGTH < #autogenSettings.flags.blacklisted_servers then
			table.remove(autogenSettings.flags.blacklisted_servers, 1)
		end

		if getrenv then
			getrenv().shared.Loaded = true
		else
			xpcall(function()
				error("Your executor doesn't support skipping the timer... This won't break the script it's just kinda inconvienient so u can ignore this")
			end, v4)
		end

		TextButton.Activated:Connect(function()
			autogenSettings.flags.enabled = not autogenSettings.flags.enabled

			if autogenSettings.flags.enabled then
				TextButton.Text = "Enabled"
			else
				TextButton.Text = "Disabled"
			end

			v196()
		end)
		TextButton.Text = "Loaded! Press to start farming."

		if autogenSettings.flags.enabled then
			TextButton.Text = "Enabled"
			task.defer(v196)
		end
	end
else
	TextButton.Text = tostring(reason or "Auto-autogen is currently in early access, for paid users only. See you on the 29th of April!")
	v111("Auto-autogen is currently in early access, for paid users only. See you on the 29th of April!", true)
end

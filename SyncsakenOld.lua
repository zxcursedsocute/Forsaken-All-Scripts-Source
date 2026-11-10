-- discord.gg/syncrypt

repeat
	task.wait(1)
until game.Loaded

loadstring([[	function LPH_NO_VIRTUALIZE(f) return f end;
	function LRM_SEND_WEBHOOK(...) return end;
	function LRM_SANITIZE(t, ...) return t end;
	function LPH_JIT_MAX(f) return f end;
	function LPH_JIT(f) return f end;
	function LPH_CRASH() return end;
]])()

local identifyexecutor_ = identifyexecutor and string.lower(identifyexecutor())
local gethwid_ = gethwid and gethwid() or game.Players.LocalPlayer.UserId
local expires
local t1 = {
	filesystem = true,
	hooking = true,
	requiring = true
}
local n1 = 0

local function v6()
	n1 += 1

	local v7 = n1

	if n1 >= 5000 then
		task.wait()
		n1 = 0
	else
		task.defer(function()
			if n1 <= v7 then
				n1 -= math.max(0, n1 - 1)
			end
		end)
	end
end
local function v8(p1)
	local v9 = math.floor(p1 / 86400)
	local v10 = math.floor(p1 % 86400 / 3600)
	local v11 = math.floor(p1 % 3600 / 60)
	local v12 = p1 % 60

	if v9 > 0 then
		return string.format("%dd %dh %dm %ds", v9, v10, v11, v12)
	end

	if v10 > 0 then
		return string.format("%dh %dm %ds", v10, v11, v12)
	end

	if v11 > 0 then
		return string.format("%dm %ds", v11, v12)
	end

	return string.format("%ds", v12)
end
local function v13(p2, p3)
	if p2 then
		if type(p2) == "string" then
			game.StarterGui:SetCore("DevConsoleVisible", true)

			for i = 1, 5 do
				warn("\n[Syncsaken on " .. tostring(identifyexecutor_ or "unknown") .. "] :" .. tostring(p3) .. ": Please send this in the suggestions/bugs channel: \n'" .. p2 .. "' @ " .. debug.traceback(3))
				v6()
			end
		end
	end
end
local function v15()
end

local u16 = false
local n2 = 0

xpcall(function()
	if not isfolder or not makefolder or not delfolder or not delfile or not isfile or not writefile or not getcustomasset then
		t1.filesystem = false
		u16 = true

		return
	end

	game.StarterGui:SetCore("SendNotification", {
		Title = "Syncsaken",
		Text = "Downloading...",
		Icon = "rbxassetid://114310588828323"
	})

	local HttpService = game:GetService("HttpService")

	if not isfolder("Syncsaken") then
		makefolder("Syncsaken")
	end

	local function v19(p4)
		return HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/who-else123/Syncsaken/contents" .. (p4 ~= "" and "/" .. p4 or ""), true))
	end
	local function v20(p5)
		local s1 = "Syncsaken"

		for match in p5:gmatch("([^/]+)/") do
			s1 ..= "/" .. match

			if not isfolder(s1) then
				makefolder(s1)
			end
		end
	end
	local function v23(p6, p7)
		local v24 = "Syncsaken" .. "/" .. p6

		v20(p6)

		if not isfile(v24) then
			writefile(v24, game:HttpGet(p7, true))
		end
	end
	local function v25(p8)
		local v26 = v19(p8)

		for _, v in ipairs(v26) do
			if v.type == "file" then
				v23(v.path, v.download_url)
			elseif v.type == "dir" then
				v25(v.path)
			end
		end
	end

	v25("")
	t1.filesystem = true
	u16 = true
end, v13)

while true do
	task.wait(1)
	n2 += 1

	if u16 then
		break
	elseif n2 >= 10 then
		break
	end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "Syncsaken",
	Text = "Completed! Enjoy Syncsaken :3",
	Icon = "rbxassetid://114310588828323"
})

if identifyexecutor_ == "xeno" or identifyexecutor_ == "solara" or identifyexecutor_ == "jjsploit" then
	t1.requiring = false
end

if not setreadonly or not getrawmetatable or not newcclosure then
	t1.hooking = false
end

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()

local function v30(p9, p10)
	lib:Notify({
		Title = "Syncsaken",
		Content = p9,
		Image = "cat",
		Duration = p10 or 2
	})
end
local function v31(p11)
	local service = game:GetService(p11)

	return service and cloneref and cloneref(service)
end

local CoreGui = v31("CoreGui")
local Players = v31("Players")
local ReplicatedStorage = v31("ReplicatedStorage")
local Debris = v31("Debris")
local RunService = v31("RunService")
local HttpService = v31("HttpService")
local TeleportService = v31("TeleportService")
local TextChatService = v31("TextChatService")
local UserInputService = v31("UserInputService")

v31("VirtualInputManager")

local Map = workspace:WaitForChild("Map")
local Players2 = workspace:WaitForChild("Players")
local Ragdolls = workspace:WaitForChild("Ragdolls")
local Assets = ReplicatedStorage:WaitForChild("Assets")
local Systems = ReplicatedStorage:WaitForChild("Systems")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Utilities = Modules:WaitForChild("Utilities")
local Util = t1.requiring and require(Utilities:WaitForChild("Util"))
local CharacterReplication = t1.requiring and require(Systems:WaitForChild("Player"):WaitForChild("Game"):WaitForChild("CharacterReplication"))
local Network = t1.requiring and require(Modules:WaitForChild("Network"):WaitForChild("Network"))
local RemoteEvent = Modules:WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")

Modules:WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteFunction")
Modules:WaitForChild("Network"):WaitForChild("Network"):WaitForChild("UnreliableRemoteEvent")

local Ingame = Map:WaitForChild("Ingame")
local Killers = Players2:WaitForChild("Killers")
local Survivors = Players2:WaitForChild("Survivors")
local Spectating = Players2:WaitForChild("Spectating")

local function v57()
	return Ingame:FindFirstChild("Map")
end

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local PlayerGui = LocalPlayer.PlayerGui
local TouchEnabled = not UserInputService.KeyboardEnabled and UserInputService.TouchEnabled

LocalPlayer.CharacterAdded:Connect(function(J)
	Character = J
end)

local now = os.clock()

if not getgenv or not loadstring then
	game.StarterGui:SetCore("SendNotification", {
		Title = "Syncsaken",
		Text = "Your executor does not support Syncsaken (missing " .. tostring(not getgenv and "getgenv" or "loadstring") .. ")"
	})
	v13("Unsupported executor (" .. identifyexecutor_ .. ")")
end

if not getgenv().log then
	task.defer(function()
		getgenv().log = true
		LRM_SEND_WEBHOOK("https://discord.com/api/webhooks/1374434749594079312/bkgxjCpUMAmdeF4s2a21lgY_WCiB2S_LdLYmC0U6laRYbwRLs084eGoS0FxcBSWEj2aE", {
			username = LRM_SANITIZE(LocalPlayer.Name, "[a-zA-Z0-9_]{3,20}") .. " (" .. LRM_SANITIZE(LocalPlayer.UserId, "[0-9]{1,10}") .. ")",
			embeds = { {
				title = "Syncsaken was executed!",
				description = "User execution details below:",
				color = 16777215,
				fields = {
					{
						name = "Key:",
						value = "%USER_KEY%",
						inline = true
					},
					{
						name = "Key-note:",
						value = "%USER_NOTE%",
						inline = false
					},
					{
						name = "Executor:",
						value = identifyexecutor_,
						inline = true
					},
					{
						name = "Discord ID:",
						value = "<@%DISCORD_ID%>",
						inline = true
					},
					{
						name = "JobID:",
						value = LRM_SANITIZE(game.JobId, "[a-zA-Z0-9-]{36}"),
						inline = true
					}
				}
			} }
		})
	end)
end

local function v63(p12)
	local v64 = buffer.create(5 + #p12)

	buffer.writeu8(v64, 0, 3)
	buffer.writeu32(v64, 1, #p12)
	buffer.writestring(v64, 5, p12)

	return v64
end
local function v65(p13)
	RemoteEvent:FireServer("UseActorAbility", { v63(p13) })
end
local function v66(p14, ...)
	if not p14 then
		return
	end

	if p14:IsA("RemoteFunction") then
		local ok, result = pcall(function(...)
			return p14:InvokeServer(...)
		end, ...)

		return ok or result
	end

	if not p14:IsA("RemoteEvent") then
		return
	end

	local ok, result = pcall(function(...)
		p14:FireServer(...)
	end, ...)

	return ok or result
end
local function v71()
	return Character:IsDescendantOf(Spectating) or Character.Parent == workspace
end

local t2

t2 = {
	thread = nil,
	currentGenerator = nil,
	currentGenerators = {},
	lastGenerator = nil,
	lastLastGenerator = nil,
	delay = 2,
	busy = false,
	resetAfterCompletion = false,
	autogen = false,
	autogenToggle = nil,
	getOthersRootPos = function()
		local t3 = {}
		local players = Players:GetPlayers()

		table.remove(players, table.find(players, LocalPlayer))

		for _, player in pairs(players) do
			local PrimaryPart = player.Character and player.Character.PrimaryPart

			if PrimaryPart then
				table.insert(t3, PrimaryPart.Position)
			end
		end

		return t3
	end,
	isAnyoneAt = function(p15, p16)
		local v78 = t2:getOthersRootPos()

		for _, v in ipairs(v78) do
			if vector.magnitude(v - p16) <= 1.5 then
				return true
			end
		end

		return false
	end,
	isGeneratorViable = function(p17, p18)
		local NumberValue = p18:FindFirstChildOfClass("NumberValue")

		if not NumberValue or NumberValue.Name ~= "Progress" or NumberValue.Value >= 100 then
			return false
		end

		local v82 = t2:getOthersRootPos()
		local n3 = 0
		local Position = p18.PrimaryPart and p18.PrimaryPart.Position or p18:GetPivot().Position

		for _, v in ipairs(v82) do
			if vector.magnitude(v - Position) <= 8 then
				n3 += 1
			end
		end

		if n3 >= 3 then
			return false
		end

		return true
	end,
	getAllGenerators = function()
		table.clear(t2.currentGenerators)

		if not Character then
			return t2.currentGenerators
		end

		local v87 = v57()

		if not v87 then
			return t2.currentGenerators
		end

		for _, child in pairs(v87:GetChildren()) do
			if child.Name == "Generator" and t2:isGeneratorViable(child) then
				table.insert(t2.currentGenerators, child)
			end
		end

		local Position = Character:GetPivot().Position

		table.sort(t2.currentGenerators, function(p19, p20)
			local v91 = p19 == t2.lastGenerator or p19 == t2.lastLastGenerator or p19 == t2.currentGenerator

			if v91 == (p20 == t2.lastGenerator or p20 == t2.lastLastGenerator or p20 == t2.currentGenerator) then
				return vector.magnitude(p19:GetPivot().Position - Position) < vector.magnitude(p20:GetPivot().Position - Position)
			end

			return not v91
		end)

		return t2.currentGenerators
	end
}

local function v92()
	if t2.currentGenerator then
		return
	end

	if t2.autogen then
		return
	end

	if t2.fixPuzzleCooldown then
		return
	end

	if not PlayerGui or not PlayerGui:FindFirstChild("PuzzleUI") then
		return
	end

	xpcall(function()
		if not v57() then
			return
		end

		if not Character then
			return
		end

		local v93
		local huge = math.huge

		for _, v in pairs(t2:getAllGenerators()) do
			local v97 = vector.magnitude(v:GetPivot().Position - Character:GetPivot().Position)

			if v97 < huge then
				v93 = v
				huge = v97
			end
		end

		if not v93 or huge > 8 then
			v30("You're not in a generator.", 2)

			return
		end

		t2.fixPuzzleCooldown = true
		v66(v93:WaitForChild("Remotes", 3).RE)
	end, v13)
	task.delay(1.5, function()
		t2.fixPuzzleCooldown = false
	end)
end
local function v98(p21)
	if v71() then
		v30("You're in the lobby. How did we get here?", 2)

		return
	end

	task.wait(math.random() / 100)

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

	local Positions = p21:WaitForChild("Positions", 3)
	local Progress = p21:WaitForChild("Progress", 3)
	local Remotes = p21:WaitForChild("Remotes", 3)
	local RF = Remotes and Remotes:FindFirstChild("RF")
	local RE = Remotes and Remotes:FindFirstChild("RE")

	if not Progress or not Remotes or not RF or not RE or not Positions then
		return
	end

	local t4 = {
		Positions:FindFirstChild("Left").Position,
		Positions:FindFirstChild("Right").Position,
		Positions:FindFirstChild("Center").Position
	}
	local v107

	for _, v in ipairs(t4) do
		if not t2:isAnyoneAt(v) then
			v107 = v

			break
		end
	end

	if not v107 then
		return
	end

	local CanCollide = CollisionHitbox.CanCollide

	PrimaryPart.CanCollide = false
	CollisionHitbox.CanCollide = false
	PrimaryPart.CFrame = CFrame.new(v107 + vector.create(math.random() / 10, 0, math.random() / 10))
	task.wait(0.2)

	if Progress.Value >= 80 then
		return
	end

	if not v66(RF, "Enter") then
		return false
	end

	if p21 == t2.lastGenerator or p21 == t2.lastLastGenerator then
		task.wait(0.9)
	end

	task.wait(0.02)
	PrimaryPart.CanCollide = CanCollide
	CollisionHitbox.CanCollide = CanCollide
	v66(RE)
	task.wait(0.02)
	v66(RF, "Leave")
	task.wait(0.02)
end
local function v111()
	task.wait()

	if t2.autogen then
		if t2.busy then
			print("busy bee")

			return
		end

		t2.busy = true

		while t2.autogen do
			if Character then
				if v71() or Character and Character.Parent == Killers then
					v30(v71() and "You're in the lobby. Waiting till next round..." or "You're a murderer :( Waiting till you're a survivor!", 3)
				elseif #t2:getAllGenerators() < 1 then
					v30("There are no more generators to complete. Waiting till next round...")
				else
					while true do
						task.wait()
						xpcall(function()
							for _, v in ipairs(t2:getAllGenerators()) do
								if not Killers:GetChildren()[1] then
									break
								end

								if not t2.autogen or v71() then
									t2.currentGenerator = nil
									t2.lastGenerator = nil
									t2.lastLastGenerator = nil

									break
								end

								if not Character or Character.Parent ~= Killers then
									if t2:isGeneratorViable(v) then
										v30("Doing a generator")
										t2.lastLastGenerator = t2.lastGenerator
										t2.lastGenerator = t2.currentGenerator
										t2.currentGenerator = v
										v98(v)
									end

									continue
								end

								Character:FindFirstChildOfClass("Humanoid").Health = 0

								break
							end

							if tonumber(t2.delay) then
								task.wait(t2.delay)
							end
						end, v13)

						if not t2.autogen then
							break
						elseif #t2:getAllGenerators() < 1 then
							break
						end
					end

					t2.lastLastGenerator = nil
					t2.currentGenerator = nil
					t2.lastGenerator = nil
				end

				t2.busy = false

				if t2:getAllGenerators()[1] then
					while true do
						task.wait()

						if not Character then
							continue
						end

						if Character.Parent ~= Killers and not v71() and t2:getAllGenerators()[1] then
							break
						end
					end
				else
					if t2.resetAfterCompletion and Character and not v71() then
						local PrimaryPart = Character.PrimaryPart

						PrimaryPart.CFrame -= vector.create(0, 100, 0)
						task.wait(0.1)
						Character.Humanoid.Health = 0
					end

					if t2.disableAfterCompletion and t2.autogenToggle then
						t2.autogenToggle:Set(false)

						break
					else
						while true do
							task.wait()

							if not Character then
								continue
							end

							if Character.Parent ~= Killers and not v71() and t2:getAllGenerators()[1] then
								break
							end
						end
					end
				end
			else
				task.wait()
			end
		end
	else
		if t2.currentGenerator then
			if t2.currentGenerator:FindFirstChild("Remotes") then
				if t2.currentGenerator.Remotes:FindFirstChild("RF") then
					v66(t2.currentGenerator.Remotes.RF, "leave")
				end
			end
		end

		t2.currentGenerator = nil
		t2.currentGenerators = {}
		t2.lastGenerator = nil
		t2.lastLastGenerator = nil
	end
end
local function v115(p22)
	p22.threads += 1

	while not p22.ended do
		task.wait()

		if p22.running and not p22.ended then
			task.wait(math.random() + tonumber(t2.puzzleLoopCooldown or 3))

			if p22.running and not p22.ended then
				v92()
			end
		end
	end

	p22.threads -= 1
end

local t5 = {
	enabled = false,
	invisCharacterConnection = nil,
	currentLoaded = nil,
	animation = Instance.new("Animation")
}

t5.animation.Name = "Wаlking"
t5.animation.AnimationId = "rbxassetid://75804462760596"
t5.ghostface = false
t5.toggleInvisible = function(p23)
	t5.enabled = p23

	if not Character then
		Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	end

	local Humanoid = Character:WaitForChild("Humanoid")
	local PrimaryPart = Character.PrimaryPart

	if not Humanoid or not PrimaryPart then
		return
	end

	if p23 then
		if not t5.invisCharacterConnection then
			t5.invisCharacterConnection = LocalPlayer.CharacterAdded:Connect(function(character)
				if t5.currentLoaded then
					t5.currentLoaded:Stop()
					t5.currentLoaded:Destroy()
					t5.currentLoaded = nil
				end

				repeat
					task.wait()
				until character.PrimaryPart

				t5.toggleInvisible(p23)
			end)
		end

		if v71() then
			v30("You're in the lobby. Waiting till a round starts...")

			return
		end

		if Character.Parent ~= Killers or Character.Parent == Killers and t5.ghostface then
			v30("Attention! Killers see your character underground with their tracking ability, and people with the \"Visible Hitboxes\" toggled on will see your hitbox.", 8)
			PrimaryPart.Transparency = 0.2

			local Animator = Humanoid:FindFirstChildOfClass("Animator")

			if not Animator then
				warn("No a...")

				return
			end

			t5.currentLoaded = Animator:LoadAnimation(t5.animation)
			t5.currentLoaded.Priority = Enum.AnimationPriority.Action4
			t5.currentLoaded:Play()
			t5.currentLoaded:AdjustSpeed(0)
		end
	else
		PrimaryPart.Transparency = 1

		if t5.currentLoaded then
			t5.currentLoaded:Stop()
			t5.currentLoaded:Destroy()
			t5.currentLoaded = nil
		end

		if t5.invisCharacterConnection then
			t5.invisCharacterConnection:Disconnect()
			t5.invisCharacterConnection = nil
		end
	end
end

local t6 = {
	sounds = {
		["rbxassetid://75467546215199"] = true,
		["rbxassetid://131123355704017"] = true,
		["rbxassetid://106368806396221"] = true,
		["rbxassetid://140242176732868"] = true,
		["rbxassetid://128367348686124"] = true,
		["rbxassetid://129697992204296"] = true,
		["rbxassetid://112395455254818"] = true,
		["rbxassetid://75330693422988"] = true,
		["rbxassetid://109348678063422"] = true,
		["rbxassetid://430285057"] = true,
		["rbxassetid://12222208"] = true,
		["rbxassetid://119583605486352"] = true,
		["rbxassetid://105204810054381"] = true,
		["rbxassetid://124903763333174"] = true,
		["rbxassetid://121954639447247"] = true,
		["rbxassetid://109431876587852"] = true,
		["rbxassetid://100452671741436"] = true,
		["rbxassetid://74842815979546"] = true,
		["rbxassetid://79391273191671"] = true,
		["rbxassetid://121369993837377"] = true,
		["rbxassetid://82221759983649"] = true,
		["rbxassetid://86174610237192"] = true,
		["rbxassetid://125427128221522"] = true,
		["rbxassetid://85853080745515"] = true,
		["rbxassetid://108610718831698"] = true,
		["rbxassetid://91556333696690"] = true,
		["rbxassetid://128195973631079"] = true,
		["rbxassetid://140412278320643"] = true,
		["rbxassetid://117173212095661"] = true,
		["rbxassetid://92356939985984"] = true,
		["rbxassetid://106647770195831"] = true,
		["rbxassetid://128856426573270"] = true,
		["rbxassetid://115026634746636"] = true,
		["rbxassetid://107345261604889"] = true,
		["rbxassetid://84557540779385"] = true,
		["rbxassetid://106836941416453"] = true,
		["rbxassetid://97538628232564"] = true,
		["rbxassetid://119089145505438"] = true,
		["rbxassetid://106300477136129"] = true,
		["rbxassetid://127557531826290"] = true,
		["rbxassetid://108901210586307"] = true,
		["rbxassetid://89004992452376"] = true,
		["rbxassetid://71834552297085"] = true,
		["rbxassetid://81702359653578"] = true,
		["rbxassetid://112809109188560"] = true,
		["rbxassetid://128028377470509"] = true,
		["rbxassetid://101553872555606"] = true,
		["rbxassetid://101698569375359"] = true,
		["rbxassetid://84307400688050"] = true,
		["rbxassetid://98675142200448"] = true,
		["rbxassetid://131406927389838"] = true,
		["rbxassetid://95079963655241"] = true,
		["rbxassetid://116581754553533"] = true,
		["rbxassetid://94317217837143"] = true,
		["rbxassetid://108651070773439"] = true,
		["rbxassetid://101199185291628"] = true,
		["rbxassetid://12222216"] = true,
		["rbxassetid://107444859834748"] = true,
		["rbxassetid://114742322778642"] = true,
		["rbxassetid://136323728355613"] = true,
		["rbxassetid://83336588073857"] = true,
		["rbxassetid://4953447383"] = true,
		["rbxassetid://79980897195554"] = true,
		["rbxassetid://80516583309685"] = true,
		["rbxassetid://105200830849301"] = true,
		["rbxassetid://119942598489800"] = true,
		["rbxassetid://108907358619313"] = true,
		["rbxassetid://77156677598720"] = true,
		["rbxassetid://125213046326879"] = true,
		["rbxassetid://92121159431865"] = true,
		["rbxassetid://71805956520207"] = true,
		["rbxassetid://117231507259853"] = true,
		["rbxassetid://105840448036441"] = true,
		["rbxassetid://98111231282218"] = true,
		["rbxassetid://96594507550917"] = true,
		["rbxassetid://139996647355899"] = true,
		["rbxassetid://102228729296384"] = true,
		["rbxassetid://75006340803049"] = true
	},
	blocks = {
		["rbxassetid://120748030255574"] = true,
		["rbxassetid://88557287105521"] = true,
		["rbxassetid://72182155407310"] = true,
		["rbxassetid://72722244508749"] = true,
		["rbxassetid://115706752305794"] = true,
		["rbxassetid://95802026624883"] = true,
		["rbxassetid://100926346851492"] = true,
		["rbxassetid://82036084568393"] = true,
		["rbxassetid://140671644163156"] = true,
		["rbxassetid://82605295530067"] = true,
		["rbxassetid://96959123077498"] = true,
		["rbxassetid://88287038085804"] = true
	},
	blockSuccess = {
		["rbxassetid://132211359858351"] = true,
		["rbxassetid://423041300"] = true,
		["rbxassetid://117216912143451"] = true,
		["rbxassetid://135209101640984"] = true,
		["rbxassetid://102808968188291"] = true,
		["rbxassetid://423041356"] = true,
		["rbxassetid://125854302746190"] = true,
		["rbxassetid://117828699507982"] = true,
		["rbxassetid://18568553101"] = true,
		["rbxassetid://132298811847315"] = true,
		["rbxassetid://123825742002486"] = true,
		["rbxassetid://116616310968045"] = true,
		["rbxassetid://423041325"] = true,
		["rbxassetid://91165993312513"] = true,
		["rbxassetid://82772022662025"] = true,
		["rbxassetid://81114852524420"] = true
	},
	Generator = {
		["rbxassetid://107756518054855"] = true,
		["rbxassetid://82691533602949"] = true
	},
	animations = {
		["rbxassetid://135884061951801"] = true,
		["rbxassetid://131642454238375"] = true,
		["rbxassetid://109486609489179"] = true,
		["rbxassetid://82113744478546"] = true,
		["rbxassetid://93284670378212"] = true,
		["rbxassetid://127722376204558"] = true,
		["rbxassetid://132221505301108"] = true,
		["rbxassetid://138390711856189"] = true,
		["rbxassetid://106776364623742"] = true,
		["rbxassetid://132243194360714"] = true,
		["rbxassetid://123345437821399"] = true,
		["rbxassetid://91477520856852"] = true,
		["rbxassetid://114126519127454"] = true,
		["rbxassetid://70948173568515"] = true,
		["rbxassetid://122940209716028"] = true,
		["rbxassetid://97024645987283"] = true,
		["rbxassetid://99135633258223"] = true,
		["rbxassetid://99824350842479"] = true,
		["rbxassetid://129717107332668"] = true,
		["rbxassetid://124724779362675"] = true,
		["rbxassetid://86204001129974"] = true,
		["rbxassetid://130958529065375"] = true,
		["rbxassetid://126727756047566"] = true,
		["rbxassetid://126171487400618"] = true,
		["rbxassetid://103966608894027"] = true,
		["rbxassetid://81803417290685"] = true,
		["rbxassetid://135283134632311"] = true,
		["rbxassetid://73780217577707"] = true,
		["rbxassetid://126681776859538"] = true,
		["rbxassetid://124705663396411"] = true,
		["rbxassetid://131219306779772"] = true,
		["rbxassetid://128414736976503"] = true,
		["rbxassetid://88451353906104"] = true,
		["rbxassetid://70371667919898"] = true,
		["rbxassetid://94634594529334"] = true,
		["rbxassetid://81299297965542"] = true,
		["rbxassetid://121043188582126"] = true,
		["rbxassetid://139613699193400"] = true,
		["rbxassetid://110702884830060"] = true,
		["rbxassetid://93316899246221"] = true,
		["rbxassetid://118298475669935"] = true,
		["rbxassetid://94958041603347"] = true,
		["rbxassetid://18885909645"] = true,
		["rbxassetid://105458270463374"] = true,
		["rbxassetid://81255669374177"] = true,
		["rbxassetid://77154853064447"] = true,
		["rbxassetid://129260077168659"] = true,
		["rbxassetid://116618003477002"] = true,
		["rbxassetid://101736016625776"] = true,
		["rbxassetid://83829782357897"] = true,
		["rbxassetid://114506382930939"] = true,
		["rbxassetid://121086746534252"] = true,
		["rbxassetid://133637207919863"] = true,
		["rbxassetid://98456918873918"] = true,
		["rbxassetid://100767584148154"] = true,
		["rbxassetid://88970503168421"] = true,
		["rbxassetid://109265284421152"] = true,
		["rbxassetid://80208162053146"] = true,
		["rbxassetid://126654961540956"] = true,
		["rbxassetid://137403501678727"] = true,
		["rbxassetid://120416070237663"] = true,
		["rbxassetid://125403313786645"] = true,
		["rbxassetid://139309647473555"] = true,
		["rbxassetid://118919403162061"] = true,
		["rbxassetid://106860049270347"] = true,
		["rbxassetid://109667959938617"] = true,
		["rbxassetid://98855072995209"] = true,
		["rbxassetid://114356208094580"] = true,
		["rbxassetid://74707328554358"] = true,
		["rbxassetid://135853087227453"] = true,
		["rbxassetid://110600532843914"] = true,
		["rbxassetid://131543461321709"] = true,
		["rbxassetid://126355327951215"] = true,
		["rbxassetid://139835501033932"] = true,
		["rbxassetid://120112897026015"] = true,
		["rbxassetid://107032335460679"] = true,
		["rbxassetid://137314737492715"] = true,
		["rbxassetid://18885939653"] = true,
		["rbxassetid://84069821282466"] = true,
		["rbxassetid://93069721274110"] = true,
		["rbxassetid://97167027849946"] = true,
		["rbxassetid://83446441317389"] = true,
		["rbxassetid://70483423693126"] = true,
		["rbxassetid://129976080405072"] = true,
		["rbxassetid://127846074966393"] = true,
		["rbxassetid://109172760478577"] = true,
		["rbxassetid://129002299536917"] = true,
		["rbxassetid://81639435858902"] = true,
		["rbxassetid://84449964607732"] = true,
		["rbxassetid://133336594357903"] = true,
		["rbxassetid://100358581940485"] = true,
		["rbxassetid://96805324783377"] = true,
		["rbxassetid://132054193746940"] = true,
		["rbxassetid://83340833895310"] = true,
		["rbxassetid://18885932392"] = true,
		["rbxassetid://112135252467978"] = true,
		["rbxassetid://118901677478609"] = true,
		["rbxassetid://130254228409927"] = true,
		["rbxassetid://125739772965796"] = true,
		["rbxassetid://133272285191941"] = true,
		["rbxassetid://98590570796574"] = true,
		["rbxassetid://89561536350250"] = true,
		["rbxassetid://138938529389204"] = true,
		["rbxassetid://123019923277556"] = true,
		["rbxassetid://99829427721752"] = true,
		["rbxassetid://126896426760253"] = true,
		["rbxassetid://106847695270773"] = true,
		["rbxassetid://87989533095285"] = true,
		["rbxassetid://109845134167647"] = true,
		["rbxassetid://122709416391891"] = true,
		["rbxassetid://90620531468240"] = true,
		["rbxassetid://113440898787986"] = true,
		["rbxassetid://124269076578545"] = true,
		["rbxassetid://110153465553223"] = true,
		["rbxassetid://140125695162370"] = true,
		["rbxassetid://137679730950847"] = true,
		["rbxassetid://126830014841198"] = true,
		["rbxassetid://121293883585738"] = true,
		["rbxassetid://76501992854604"] = true,
		["rbxassetid://82823860303750"] = true,
		["rbxassetid://81413767933929"] = true,
		["rbxassetid://121080480916189"] = true
	},
	Tools = {
		BloxyCola = {
			Using = {
				["rbxassetid://80985800957964"] = true,
				["rbxassetid://102123566838185"] = true
			},
			Equipped = {}
		},
		Medkit = {
			Equipped = {
				["rbxassetid://71859852303349"] = true
			},
			Using = {
				["rbxassetid://76937407515711"] = true
			}
		}
	}
}

local function v121(p24, p25)
	local s2 = "{\n"
	local v123 = p25 and p25 + 4 or 4

	for k, v in pairs(p24) do
		local v126 = string.rep(" ", v123)

		string.rep(" ", v123)

		if type(k) == "number" then
			v126 ..= "[" .. k .. "] = "
		elseif type(k) == "string" then
			v126 ..= "[\"" .. k .. "\"] = "
		end

		local v127

		if type(v) == "table" then
			v127 = v121(v, v123) .. ",\n"
		elseif type(v) == "string" then
			v127 = "\"" .. v .. "\",\n"
		else
			v127 = tostring(v) .. ",\n"
		end

		s2 ..= v126 .. v127
	end

	if #s2 > 2 then
		s2 = string.sub(s2, 1, -3) .. "\n"
	end

	return s2 .. string.rep(" ", v123 - 4) .. "}"
end

if t1.requiring then
	local function v128(p26, p27, p28, p29)
		if string.find(p29, "Stunned") or string.find(p29, "Execution") then
			return
		end

		for k, v in pairs(p27) do
			if k ~= "Walk" then
				if (string.find(p26, k) or string.find(p26, p29)) and not p28[v] then
					v15("[" .. tostring(p28 == t6.sounds and "Sounds" or "Animations") .. "] Found " .. tostring(k) .. " by " .. tostring(p29))

					if type(v) ~= "table" then
						if type(v) == "string" then
							p28[v] = true
						end
					elseif v.SoundId then
						p28[v.SoundId] = true
					else
						v128(p26, v, p28, k)
					end
				elseif type(v) == "table" then
					v128(p26, v, p28, k)
				end
			end
		end

		v6()
	end
	local function v131(p30, p31)
		if p30:FindFirstChild("Config") then
			local Config = require(p30.Config)

			if p31 then
				if Config.Sounds then
					v128("BlockSuccess", Config.Sounds, t6.blockSuccess, p30.Name)
				end

				if Config.Animations then
					v128("Block", Config.Animations, t6.blocks, p30.Name)
				end
			else
				if Config.Animations then
					v128("SwingBeheadComboAttackBiteSlashChompGashingWoundStartWalkspeedOverrideStartWalkspeedOverrideLoopWalkspeedOverrideLungeDemonicPursuitLungeDemonicPursuitLoopLoopDashInitStartDashInitLoopDashComboStartDashCombo", Config.Animations, t6.animations, p30.Name)
				end

				if Config.Sounds then
					v128("SwingBeheadComboAttackBiteSlashChompGashingWoundStartWalkspeedOverrideStartWalkspeedOverrideLoopWalkspeedOverrideLungeDemonicPursuitLungeDemonicPursuitLoopLoopDashInitStartDashInitLoopDashComboStartDashCombo", Config.Sounds, t6.sounds, p30.Name)
				end
			end
		end
	end

	for _, child in pairs(Assets.Killers:GetChildren()) do
		v131(child)
		v6()
	end

	for _, child in pairs(Assets.Skins.Killers:GetChildren()) do
		for _, child2 in pairs(child:GetChildren()) do
			v131(child2)
			v6()
		end

		v6()
	end

	v131(Assets.Survivors.Guest1337, true)

	for _, child in pairs(Assets.Skins.Survivors.Guest1337:GetChildren()) do
		v131(child, true)
	end

	v15(v121(t6))
else
	game.StarterGui:SetCore("SendNotification", {
		Title = "Syncsaken",
		Text = "Your executor (" .. identifyexecutor_ .. ") doesn't support animation loading, defaulting to hardcoded animations...",
		Icon = "rbxassetid://114310588828323"
	})
end

t6.isBlocking = function(p32)
	local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
	local Animator = Humanoid and Humanoid:FindFirstChild("Animator")

	if not Animator then
		return
	end

	local playingAnimationTracks = Animator:GetPlayingAnimationTracks()

	for i = 1, #playingAnimationTracks do
		local v145 = string.match(playingAnimationTracks[i].Animation.AnimationId, "%d+")

		if v145 and p32.blocks["rbxassetid://" .. v145] then
			return true
		end
	end

	return false
end
t6.blocked = function(p33)
	if not Character or not Character.PrimaryPart then
		return
	end

	local PrimaryPart = Character.PrimaryPart
	local now2 = os.clock()

	while true do
		if not (os.clock() - now2 < 1) then
			return
		end

		local children = PrimaryPart:GetChildren()

		for i = 1, #children do
			if children[i].ClassName == "Sound" and p33.blockSuccess[children[i].SoundId] then
				return true
			end
		end

		task.wait(0.05)
	end
end
t6.isPlayingAnimation = function(p34, p35, p36)
	local playingAnimationTracks = p35:GetPlayingAnimationTracks()

	for i = 1, #playingAnimationTracks do
		local TimePosition = playingAnimationTracks[i].TimePosition
		local v153 = string.match(playingAnimationTracks[i].Animation.AnimationId, "%d+")

		if v153 and p34.animations["rbxassetid://" .. v153] and TimePosition <= p36 then
			return true
		end
	end

	return false
end
t6.isPlayingSound = function(p37, p38, p39)
	for i = 1, #p38 do
		local v155 = p38[i]

		if v155.ClassName == "Sound" and p37.sounds[v155.SoundId] and v155.TimePosition <= p39 then
			return true
		end
	end

	return false
end
t6.blockAnimations = function(p40, p41)
	if not p41 or not Character then
		return
	end

	local Humanoid = Character:WaitForChild("Humanoid")
	local Animator = Humanoid and Humanoid:WaitForChild("Animator", 5)

	if not Animator then
		return
	end

	local playingAnimationTracks = Animator:GetPlayingAnimationTracks()

	for _, playingAnimationTrack in ipairs(playingAnimationTracks) do
		local Animation = playingAnimationTrack.Animation

		if Animation and p41[Animation and Animation.AnimationId] then
			playingAnimationTrack:Stop()
			playingAnimationTrack:Destroy()
		end
	end
end

local t7 = {
	connections = {},
	visuals = {
		killer = {},
		survivor = {},
		generator = {},
		item = {},
		minion = {},
		trap = {},
		spray = {},
		contract = {}
	},
	highlighter = Instance.new("Highlight")
}

t7.highlighter.Name = "__SESP"
t7.highlighter.FillTransparency = 0.7
t7.highlighter.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
t7.defaultColors = {
	killer = Color3.fromRGB(255, 0, 0),
	survivor = Color3.fromRGB(0, 255, 0),
	generator = Color3.fromRGB(0, 0, 255),
	item = Color3.fromRGB(255, 234, 0),
	minion = Color3.fromRGB(255, 122, 33),
	trap = Color3.fromRGB(225, 0, 255),
	spray = Color3.fromRGB(0, 255, 255),
	contract = Color3.fromRGB(255, 0, 123)
}
t7.colors = table.clone(t7.defaultColors)

local function createBillboardGui(p42, p43)
	if p43 == "killer" or p43 == "survivor" then
		p43 = "player"
	end

	if p43 == "footstep" then
		return
	end

	local BillboardGui = Instance.new("BillboardGui")
	local UIStroke = Instance.new("UIStroke")
	local TextLabel = Instance.new("TextLabel")

	BillboardGui.Name = "__SBB"
	BillboardGui.Archivable = false
	BillboardGui.Parent = p42
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.MaxDistance = 2000
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Size = UDim2.new(0, 133, 0, 15)
	BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
	TextLabel.Parent = BillboardGui
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.Code
	TextLabel.Text = p42.Name
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true
	UIStroke.Parent = TextLabel
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	UIStroke.Color = Color3.fromRGB(0, 0, 0)
	UIStroke.Thickness = 1.25
	t7.visuals = t7.visuals or {}
	table.insert(t7.visuals, BillboardGui)

	if p43 == "player" then
		BillboardGui.Parent = p42.PrimaryPart

		local Humanoid = p42:FindFirstChildOfClass("Humanoid")

		if Humanoid then
			TextLabel.Text = p42.Name .. " | " .. math.floor(Humanoid.Health) .. "HP"

			local connection

			connection = Humanoid.HealthChanged:Connect(function(health)
				if Humanoid then
					if not BillboardGui or not TextLabel then
						connection:Disconnect()

						return
					end

					TextLabel.Text = p42.Name .. " | " .. math.floor(health) .. "HP"
				else
					connection:Disconnect()
				end
			end)
		end

		local connection

		connection = BillboardGui.AncestryChanged:Connect(function(child, parent)
			if parent == workspace.Ragdolls then
				BillboardGui:Destroy()
				connection:Disconnect()
			end
		end)
	elseif p43 == "generator" then
		local NumberValue = p42:FindFirstChildOfClass("NumberValue")

		TextLabel.Text = p42.Name .. " | " .. math.floor(NumberValue.Value) .. "%"

		local connection

		connection = NumberValue.Changed:Connect(function(p44)
			if NumberValue and BillboardGui and TextLabel then
				TextLabel.Text = p42.Name .. " | " .. math.floor(p44) .. "%"
			else
				connection:Disconnect()
			end
		end)
	elseif p43 == "item" then
		TextLabel.Text = p42.Name
	else
		TextLabel.Text = p43
	end

	return BillboardGui
end
local function v172(p45, p46)
	if typeof(p46) ~= "string" or typeof(p45) ~= "Instance" then
		return
	end

	if p45:FindFirstChild("__SESP") then
		return
	end

	local clone = t7.highlighter:Clone()

	clone.Archivable = false
	clone.FillColor = t7.colors[p46]
	clone.Parent = p46 ~= "spray" and p45 or p45:FindFirstChildOfClass("BasePart")
	createBillboardGui(p45, p46)
end
local function v174(p47)
	if typeof(p47) ~= "string" then
		v13("removeESP: identifier must be a string")

		return
	end

	local v175 = ({
		killer = Killers,
		survivor = Survivors,
		generator = v57(),
		item = workspace
	})[p47]

	if not v175 then
		return
	end

	for _, descendant in pairs(v175:GetDescendants()) do
		if p47 == "item" then
			if not descendant:IsA("Tool") or descendant:IsDescendantOf(Players2) then
				continue
			end
		elseif descendant:IsA("Tool") then
			continue
		end

		if descendant:FindFirstChild("__SESP", true) then
			descendant:FindFirstChild("__SESP", true):Destroy()
		end

		if descendant:FindFirstChild("__SBB", true) then
			descendant:FindFirstChild("__SBB", true):Destroy()
		end
	end
end
local function v178(p48)
	local addedSignal = p48.container and p48.addedSignal

	addedSignal = addedSignal and p48.valid
	assert(addedSignal and p48.highlightType)

	local t8 = {
		Instances = {},
		Connections = {}
	}

	local function v181(p49)
		if not p48.valid(p49) then
			return
		end

		if not t8.Instances[p49] then
			t8.Instances[p49] = true
			v172(p49, p48.highlightType)
		end

		local connection

		if not p48.removalSignal then
			connection = p49.Destroying:Connect(function()
				t8.Instances[p49] = nil
				connection:Disconnect()
				connection = nil
			end)
		elseif not p48.removalCheck then
			connection = p49.Destroying:Connect(function()
				t8.Instances[p49] = nil
				connection:Disconnect()
				connection = nil
			end)
			t8.Connections[p49] = connection

			return
		elseif p48.removalSignal == "Changed" then
			connection = p49:FindFirstChildOfClass("NumberValue")[p48.removalSignal]:Connect(function(p50)
				if p48.removalCheck(p50, p49:FindFirstChildOfClass("NumberValue")) then
					local __SESP = p49:FindFirstChild("__SESP", true)

					if __SESP then
						__SESP:Destroy()
					end

					local __SBB = p49:FindFirstChild("__SBB", true)

					if __SBB then
						__SBB:Destroy()
					end

					t8.Instances[p49] = nil
					connection:Disconnect()
				end
			end)
		else
			connection = p49[p48.removalSignal]:Connect(function(...)
				if p48.removalCheck(...) then
					local __SESP = p49:FindFirstChild("__SESP", true)

					if __SESP then
						__SESP:Destroy()
					end

					local __SBB = p49:FindFirstChild("__SBB", true)

					if __SBB then
						__SBB:Destroy()
					end

					t8.Instances[p49] = nil
					connection:Disconnect()
				end
			end)
		end

		t8.Connections[p49] = connection
	end

	for _, descendant in pairs(p48.container:GetDescendants()) do
		v6()
		task.spawn(function()
			v181(descendant)
		end)
	end

	t8.Connections.Added = p48.container[p48.addedSignal]:Connect(function(p51)
		v6()
		task.spawn(function()
			v181(p51)
		end)
	end)
	t8.Cleanup = function(p52)
		if p52.Connections.Added then
			p52.Connections.Added:Disconnect()
			p52.Connections.Added = nil
		end

		for _, connection in pairs(p52.Connections) do
			if typeof(connection) == "RBXScriptConnection" and connection.Connected then
				connection:Disconnect()
			end
		end

		for k in pairs(p52.Instances) do
			local __SESP = k:FindFirstChild("__SESP", true)

			if __SESP then
				__SESP:Destroy()
			end

			local __SBB = k:FindFirstChild("__SBB", true)

			if __SBB then
				__SBB:Destroy()
			end

			p52.Instances[k] = nil
		end

		for _, descendant in pairs(Ragdolls:GetDescendants()) do
			v6()

			if descendant.Name == "__SESP" or descendant.Name == "__SBB" then
				descendant:Destroy()
			end
		end

		table.clear(p52.Connections)
		table.clear(p52.Instances)
	end

	return t8
end
local function v196(p53)
	if not t1.filesystem then
		return
	end

	local Sound = Instance.new("Sound", Character)

	if not pcall(function()
		Sound.SoundId = getcustomasset(p53)
	end) then
		return
	end

	Sound.PlaybackSpeed = math.random() + 0.6
	Sound:Play()
	Debris:AddItem(Sound, 5)
end

local t9 = {
	cooldown = false
}

local function v199(p54)
	if t9.cooldown then
		return
	end

	t9.cooldown = true

	local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
	local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
	local Animator = Humanoid and Humanoid:FindFirstChildOfClass("Animator")

	if not HumanoidRootPart or not Humanoid then
		t9.cooldown = false

		return
	end

	v196("Syncsaken/assets/audio/gravity_coil.ogg")

	local t10 = {}

	if Animator then
		for _, v in ipairs(Animator:GetPlayingAnimationTracks()) do
			t10[#t10 + 1] = {
				track = v,
				time = v.TimePosition
			}
			v:Stop(0)
		end
	end

	Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

	local CFrame_ = HumanoidRootPart.CFrame
	local LookVector = p54 == "front" and CFrame_.LookVector or -CFrame_.LookVector
	local vector3 = Vector3.new(0, 1, 0)

	task.spawn(function()
		local now2 = os.clock()

		for i = 1, 120 do
			local v211 = i / 120
			local v212 = CFrame_.Position + LookVector * (35 * v211) + vector3 * (4 * (v211 - v211 ^ 2) * 10)
			local v213 = CFrame_.Rotation * CFrame.Angles(math.rad(-i * 3), 0, 0)

			HumanoidRootPart.CFrame = CFrame.new(v212) * v213

			local v214 = 0.0037500000000000003 * i - (os.clock() - now2)

			if v214 > 0 then
				task.wait(v214)
			end
		end

		HumanoidRootPart.CFrame = CFrame.new(CFrame_.Position + LookVector * 35) * CFrame_.Rotation
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
		Humanoid:ChangeState(Enum.HumanoidStateType.Running)

		if Animator then
			for _, v in ipairs(t10) do
				local track = v.track

				track:Play()
				track.TimePosition = v.time

				if track.Animation.AnimationId == "rbxassetid://75804462760596" then
					track:AdjustSpeed(0)
				end
			end
		end

		task.wait(0.25)
		t9.cooldown = false
	end)
end

local t11

t11 = {
	aimPrediction = 1,
	aimEasing = 0.8,
	lookAngle = 0.5,
	aimCooldown = false,
	GetBehindCFrame = function(p55, p56, p57)
		return (CFrame.lookAt((p56 * CFrame.new(0, 0, p57)).Position, p56.Position))
	end,
	GetDistanceFrom = function(p58, p59)
		if Character then
			if Character.PrimaryPart then
				return (Character.PrimaryPart.Position - p59.Position).Magnitude
			end
		end

		return math.huge
	end,
	GetDirectionFrom = function(p60, p61, p62)
		if Character and Character.PrimaryPart then
			return ((p62 and p61.Position or Character.PrimaryPart.Position) - (p62 and Character.PrimaryPart.Position or p61.Position)).Unit
		end

		return -1
	end,
	PredictNextPosition = function(p63, p64)
		local AssemblyLinearVelocity = p64.AssemblyLinearVelocity
		local Position = p64.Position

		p63:GetDistanceFrom(p64)

		return Position + AssemblyLinearVelocity * t11.aimPrediction
	end,
	PartLookingAtUser = function(p65, p66, p67)
		if not Character or not Character.PrimaryPart then
			return false
		end

		local directionFrom = p65:GetDirectionFrom(p66, p67)

		return (p67 and Character.PrimaryPart.CFrame.LookVector or p66.CFrame.LookVector):Dot(directionFrom) >= p65.lookAngle
	end,
	Aimbot = function(p68, p69, p70)
		if not Character or not Character.PrimaryPart then
			return
		end

		if not p69 or not p70 then
			return
		end

		if p68.aimCooldown then
			return
		end

		p68.aimCooldown = true

		local now2 = os.clock()
		local PrimaryPart = Character.PrimaryPart
		local aimEasing = p68.aimEasing
		local connection

		connection = RunService.PostSimulation:Connect(function()
			if os.clock() - now2 >= p70 or not p69 or not p69.Parent then
				p68.aimCooldown = false
				connection:Disconnect()
			end

			local J = p68:PredictNextPosition(p69)
			local B = vector.create(J.X, PrimaryPart.Position.Y, J.Z)
			local J = CFrame.lookAt(PrimaryPart.Position, B)

			if PrimaryPart.Position == B then
				return
			end

			PrimaryPart.CFrame = PrimaryPart.CFrame:Lerp(J, aimEasing)
		end)
	end
}

local t12 = {
	Tasks = {},
	originalFunctions = {}
}

if t1.requiring then
	t12.AddTask = function(p71, p72, p73)
		p71.Tasks[p72] = p73
	end
	t12.RemoveTask = function(p74, p75)
		p74.Tasks[p75] = nil
	end
	t12.ExecuteTasks = function(p76, p77)
		local v230 = false

		for _, task_ in pairs(p76.Tasks) do
			local _, result = xpcall(task_, function(p78)
				task.spawn(v13, p78, 1803)
			end, p77)

			if result == "exit" then
				v230 = true
			end
		end

		return v230
	end

	for k, v in pairs(Network) do
		t12.originalFunctions[k] = v
	end

	for k in pairs(Network) do
		Network[k] = function(...)
			local t13 = { ... }

			if t12:ExecuteTasks(t13) then
				return
			end

			return t12.originalFunctions[k](table.unpack(t13))
		end
		v15("Hooked " .. tostring(k))
	end
end

local t14 = {
	Tasks = {}
}

if t1.hooking then
	t14.AddTask = function(p79, p80, p81)
		t14.Tasks[p80] = p81
	end
	t14.RemoveTask = function(p82, p83)
		t14.Tasks[p83] = nil
	end
	t14.ExecuteTasks = function(...)
		for _, task_ in pairs(t14.Tasks) do
			local _, result = xpcall(task_, function(p84)
				task.spawn(v13, p84, 1858)
			end, select(2, ...))

			if result == "exit" then
				return true
			end
		end
	end

	local v244 = getrawmetatable(game)
	local __namecall = v244.__namecall

	setreadonly(v244, false)
	v244.__namecall = newcclosure(function(J, ...)
		if t14:ExecuteTasks(J, ...) then
			return
		end

		return __namecall(J, ...)
	end)
	setreadonly(v244, true)
end

local v246 = lib:CreateWindow({
	Name = "gg/qVtgJDcEf5",
	Icon = 114310588828323,
	LoadingTitle = "Welcome, " .. LocalPlayer.Name,
	LoadingSubtitle = "by who_else123",
	Theme = "Default",
	DisableRayfieldPrompts = true,
	DisableBuildWarnings = false,
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Syncsaken",
		FileName = "Config"
	},
	Discord = {
		Enabled = true,
		Invite = "qVtgJDcEf5",
		RememberJoins = true
	}
})
local Premium = v246:CreateTab("Premium", "hand-heart")
local Prediction = v246:CreateTab("Prediction", "cog")
local Generators = v246:CreateTab("Generators", "monitor-check")
local Player = v246:CreateTab("Player", "user")
local Blatant = v246:CreateTab("Blatant", "book-plus")
local Visual = v246:CreateTab("Visual", "radar")
local Aimbot = v246:CreateTab("Aimbot", "square-mouse-pointer")
local Other = v246:CreateTab("Other", "candy-cane")
local Credits = v246:CreateTab("Credits")
local v256 = Premium:CreateLabel("Enter your key in the Other tab to unlock these features!")

Premium:CreateDivider()

local function v257()
	v256:Set("Unlocked! Thank you for supporting Syncsaken's development <3")

	local t15 = {
		"never lol",
		"1 billion years",
		"1 trillion years",
		"when veeronica gets buffed"
	}
	local yourKeyExpiresIn = expires and v8(expires - os.time()) or t15[math.random(#t15)]
	local v260 = Premium:CreateSection("Your key expires in: " .. yourKeyExpiresIn)

	if expires then
		task.defer(function()
			RunService.Heartbeat:Connect(function()
				yourKeyExpiresIn = expires and v8(expires - os.time()) or t15[math.random(#t15)]
				v260:Set("Your key expires in: " .. yourKeyExpiresIn)
			end)
		end)
	end

	if t1.filesystem then
		local t16 = {
			connection = nil,
			songOfChoice = nil,
			processing = false,
			oldSoundObject = nil,
			oldSoundId = nil,
			timePosition = nil,
			path = "Syncsaken/custom_lms/",
			name = "LastSurvivor",
			allowedExtensions = {
				mp3 = true,
				ogg = true,
				wav = true
			}
		}

		if isfolder("Syncsaken") then
			if isfolder("Syncsaken/custom_lms/") then
				t16.path = "Syncsaken/custom_lms/"
			elseif isfolder("Syncsaken\\custom_lms\\") then
				t16.path = "Syncsaken\\custom_lms\\"
			end
		end

		t16.refresh = function()
			if not isfolder(t16.path) then
				makefolder(t16.path)
			end

			local t17 = {}

			for _, v in ipairs(listfiles(t16.path)) do
				local v265 = tostring(v)

				string.len(v265)

				local match = v265:match("[^/\\]+$")
				local match2 = v265:match("%.([^%.]+)$")

				if t16.allowedExtensions[string.lower(match2)] then
					t17[#t17 + 1] = match
				end
			end

			return table.unpack(t17)
		end
		t16.swap = function(p85, p86)
			print(t16.path .. p86)

			local ok, soundId = pcall(getcustomasset, t16.path .. p86)

			if not ok then
				v13(soundId, 2012)

				return
			end

			t16.timePosition = p85.TimePosition

			if not t16.oldSoundId then
				t16.oldSoundId = p85.SoundId
				t16.lastSoundObject = p85
			elseif p85 ~= t16.lastSoundObject then
				t16.oldSoundId = p85.SoundId
				t16.lastSoundObject = p85
				p85.SoundId = soundId
				p85:Stop()
				p85:Play()
				p85.TimePosition = t16.timePosition

				return true
			end

			p85.SoundId = soundId
			p85:Stop()
			p85:Play()
			p85.TimePosition = t16.timePosition

			return true
		end
		Premium:CreateLabel("Put any LMS themes in " .. t16.path)
		t16.dropdown = Premium:CreateDropdown({
			Name = "Custom LMS",
			Options = {
				"Default",
				t16.refresh()
			},
			CurrentOption = { "Default" },
			MultipleOptions = false,
			Flag = "CustomLMSDropdown",
			Callback = function(p87)
				while t16.processing do
					task.wait()
				end

				t16.processing = true
				t16.songOfChoice = p87[1]

				if t16.songOfChoice ~= "Default" then
					local v270 = workspace.Themes:FindFirstChild(t16.name)

					if v270 then
						t16.swap(v270, t16.songOfChoice)
					end

					if not t16.connection then
						t16.connection = workspace.Themes.ChildAdded:Connect(function(J)
							if not t16.connection then
								return
							end

							if J.Name == t16.name then
								repeat
									task.wait()
								until J.SoundId ~= "" or not J.Parent

								t16.swap(J, t16.songOfChoice)
							end
						end)
					end

					t16.processing = false

					return
				end

				if t16.connection then
					t16.connection:Disconnect()
					t16.connection = nil
				end

				local v271 = workspace.Themes:FindFirstChild(t16.name)

				if v271 and t16.oldSoundId then
					t16.timePosition = v271.TimePosition
					v271.SoundId = t16.oldSoundId
					v271:Stop()
					v271:Play()
					v271.TimePosition = t16.timePosition
					t16.oldSoundId = nil
				end

				t16.processing = false
			end
		})
		Premium:CreateButton({
			Name = "Refresh",
			Callback = function()
				t16.dropdown:Refresh({
					"Default",
					t16.refresh()
				})
			end
		})
	else
		Premium:CreateLabel("Your exploit does not support a workspace folder.")
	end

	local t18 = {}

	Premium:CreateDivider()
	Premium:CreateToggle({
		Name = "Block generator animation",
		Callback = function(p88)
			if p88 then
				t18.GenAnimation = RunService.Heartbeat:Connect(function()
					t6:blockAnimations(t6.Generator)
				end)
			elseif t18.GenAnimation then
				t18.GenAnimation:Disconnect()
				t18.GenAnimation = nil
			end
		end
	})

	if t1.requiring then
		Premium:CreateSection("Moves your position down on the server")
		Premium:CreateToggle({
			Name = "Better invisibility",
			Callback = function(p89)
				if p89 then
					t12:AddTask("SpoofMovement", function(p90)
						if v71() then
							t12.spoofedMovement = false
						end

						if p90[2] == "UpdateCharacterPosition" and typeof(p90[4]) == "buffer" then
							if t12.spoofedMovement then
								return "exit"
							end

							t12.spoofedMovement = true

							local ok, result, result2 = pcall(function()
								return CharacterReplication.Deserialize(p90[4])
							end)

							if ok and result then
								p90[4] = CharacterReplication.Serialize(result + Vector3.new(0, -100, 0), result2)
							end
						end
					end)
				else
					t12:RemoveTask("SpoofMovement")
					t12.spoofedMovement = nil
				end
			end
		})

		local pivot

		Premium:CreateSection("Enable this with auto-generator to be undetectable")
		Premium:CreateToggle({
			Name = "Freeze your position for other people",
			Callback = function(p91)
				if p91 then
					repeat
						task.wait()
					until Character

					pivot = Character:GetPivot()
					t12:AddTask("BlockMovement", function(p92)
						if p92[2] == "UpdateCharacterPosition" and typeof(p92[4]) == "buffer" then
							return "exit"
						end
					end)
				else
					if Character and Character.Parent and Character.PrimaryPart then
						if Character.Parent ~= Spectating then
							Character:PivotTo(pivot)
						end

						Character.PrimaryPart.Anchored = true
						task.wait(1)
						Character.PrimaryPart.Anchored = false
					end

					t12:RemoveTask("BlockMovement")

					while true do
						task.wait()

						if not Character then
							continue
						end

						if Character.PrimaryPart then
							break
						end
					end
				end
			end
		})
	end

	Premium:CreateDivider()
end

Generators:CreateLabel("Best used with invisibility")
t2.autogenToggle = Generators:CreateToggle({
	Name = "Complete all generators (exit out of generator first)",
	CurrentValue = false,
	Callback = function(p93)
		t2.autogen = p93
		v111()
	end
})
Generators:CreateSlider({
	Name = "Wait after completing a set of generators",
	CurrentValue = 0,
	Range = {
		0,
		5
	},
	Increment = 0.1,
	Suffix = "seconds",
	Flag = "GeneratorSetDelay",
	Callback = function(p94)
		t2.delay = p94
	end
})
Generators:CreateToggle({
	Name = "Turn off after completion?",
	Flag = "GeneratorDisableOnCompletion",
	Callback = function(p95)
		t2.disableAfterCompletion = p95
	end
})
Generators:CreateToggle({
	Name = "Reset character after completion?",
	Flag = "GeneratorResetOnCompletion",
	Callback = function(p96)
		t2.resetAfterCompletion = p96
	end
})
Generators:CreateDivider()
Generators:CreateButton({
	Name = "Complete current puzzle (be in generator)",
	Callback = function()
		v92()
	end
})
Generators:CreateKeybind({
	Name = "Keybind",
	CurrentKeybind = "T",
	HoldToInteract = false,
	Flag = "GeneratorCompletePuzzleKeybind",
	Callback = function()
		v92()
	end
})
Generators:CreateDivider()

local t19 = {
	running = false,
	ended = false,
	threads = 0
}

local function v278(child)
	if child.Name == "PuzzleUI" then
		t19.running = true
	end
end
local function v279(child)
	if child.Name == "PuzzleUI" then
		t19.running = false
	end
end

if PlayerGui:FindFirstChild("PuzzleUI") then
	t19.running = true
end

PlayerGui.ChildAdded:Connect(v278)
PlayerGui.ChildRemoved:Connect(v279)
Generators:CreateToggle({
	Name = "Loop complete current puzzle",
	Flag = "GeneratorLoopCompletePuzzle",
	Callback = function(p97)
		if p97 then
			repeat
				task.wait()
			until t19.threads == 0

			t19.ended = false
			task.defer(v115, t19)
		else
			t19.ended = true
		end
	end
})
Generators:CreateSlider({
	Name = "Wait after doing a puzzle",
	CurrentValue = 4,
	Range = {
		2,
		10
	},
	Increment = 0.1,
	Suffix = "seconds",
	Flag = "GeneratorLoopCompletePuzzleDelay",
	Callback = function(p98)
		t2.puzzleLoopCooldown = p98
	end
})
Player:CreateLabel("The black part where your character should be helps guide your movement. Other players cannot see it.")
Player:CreateToggle({
	Name = "Invisibility (free version)",
	Callback = function(p99)
		task.wait()
		t5.toggleInvisible(p99)
	end
})
Player:CreateToggle({
	Name = "Be invisible when killer",
	Flag = "KillerInvisFlag",
	Callback = function(p100)
		t5.ghostface = p100
	end
})
Player:CreateDivider()
Player:CreateToggle({
	Name = "Hide footsteps sound",
	Callback = function(p101)
		if p101 then
			t12:AddTask("BlockFootsteps", function(p102)
				for _, v in pairs(p102) do
					if v == "FootSP" then
						return "exit"
					end
				end
			end)
		else
			t12:RemoveTask("BlockFootsteps")
		end
	end
})

local connection
local connection2

Player:CreateToggle({
	Name = "No slowness effect",
	Flag = "NoSlowness",
	Callback = function(p103)
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		if p103 then
			local function v284(p104)
				if not p104 then
					return
				end

				for _, descendant in pairs(p104:GetDescendants()) do
					if descendant.Name == "SlowedStatus" then
						descendant:Destroy()
					end
				end

				if connection then
					connection:Disconnect()
				end

				connection = p104.DescendantAdded:Connect(function(descendant)
					if descendant.Name == "SlowedStatus" then
						descendant:Destroy()
					end
				end)
			end

			local Character2 = LocalPlayer.Character

			if Character2 then
				v284(Character2)
			end

			connection2 = LocalPlayer.CharacterAdded:Connect(function(character)
				v284(character)
			end)
		end
	end
})

local NSDC = getgenv().NSDC

Player:CreateToggle({
	Name = "Disable stamina drain (Doesn't work on every executor)",
	Flag = "NoStaminaDrain",
	Callback = function(p105)
		if not t1.requiring then
			v30("Your executor (" .. identifyexecutor_ .. ") does not support infinite stamina.", 2)

			return
		end

		local Sprinting = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)

		if not p105 then
			if getgenv().NSDC then
				getgenv().NSDC:Disconnect()
				getgenv().NSDC = nil
			end

			Sprinting.StaminaLossDisabled = false
		elseif not getgenv().NSDC then
			getgenv().NSDC = RunService.Heartbeat:Connect(function()
				Sprinting.StaminaLossDisabled = function()
				end
			end)
		end
	end
})

if t1.requiring then
	if Assets.Survivors:FindFirstChild("Veeronica") then
		local Behavior = require(Assets.Survivors.Veeronica.Behavior)
		local Callback = Behavior.Abilities.Sk8.Callback

		local function callback(p106)
			return Callback(p106, "SKATE")
		end

		Player:CreateToggle({
			Name = "Veeronica Sk8 ev3rywh3re (Run before round)",
			Flag = "Sk8VeerFlag",
			Callback = function(p107)
				if p107 then
					Behavior.Abilities.Sk8.Callback = callback
				else
					Behavior.Abilities.Sk8.Callback = Callback
				end
			end
		})
	end
end

if Assets.Survivors:FindFirstChild("Veeronica") then
	local u293 = false
	local connection3
	local SprintingButton = PlayerGui:WaitForChild("MainUI"):WaitForChild("SprintingButton")
	local Behavior = Assets.Survivors.Veeronica.Behavior

	local function v297()
		if not u293 then
			return
		end

		task.wait()

		if TouchEnabled then
			for _, v in ipairs(getconnections(SprintingButton.MouseButton1Down)) do
				pcall(function()
					v:Fire()
				end)
				pcall(function()
					local v300 = string.len("Ցa")
					local v301 = bit32.countlz(v300)
					local v302 = 5191 + bit32.countrz(v301) + -5191

					if v.Function then
						v:Function()
					end
				end)
			end
		else
			keypress(32)
			task.wait(0.1)
			keyrelease(32)
		end
	end
	local function v303(p108)
		if not u293 then
			return
		end

		connection3 = p108:GetPropertyChangedSignal("Adornee"):Connect(function()
			if p108.Adornee == Character then
				v297()
			end
		end)
	end

	Behavior.ChildAdded:Connect(function(child)
		if child:IsA("Highlight") then
			v303(child)
		end
	end)
	Behavior.ChildRemoved:Connect(function(child)
		if child:IsA("Highlight") and connection3 then
			connection3:Disconnect()
			connection3 = nil
		end
	end)
	Player:CreateToggle({
		Name = "Veeronica auto-trick",
		Flag = "VeeronicaAutoTrick",
		Callback = function(p109)
			u293 = p109

			if not u293 and connection3 then
				connection3:Disconnect()
				connection3 = nil
			end

			if u293 and not connection3 then
				for _, child in pairs(Behavior:GetChildren()) do
					if child:IsA("Highlight") then
						v303(child)
					end
				end
			end
		end
	})
end

Player:CreateToggle({
	Name = "No wall collision (Noli)",
	Flag = "NoliNoWallCollision",
	Callback = function(p110)
		if p110 then
			t14:AddTask("NoliNoWallCollision", function(p111, ...)
				if checkcaller() then
					return p111, ...
				end

				local t20 = { ... }
				local v307 = getnamecallmethod()

				if p111 == RemoteEvent and v307 == "FireServer" and string.find(t20[1], LocalPlayer.Name .. "VoidRushCollision") then
					return "exit"
				end
			end)
		else
			t14:RemoveTask("NoliNoWallCollision")
		end
	end
})

local u308 = false
local connection3

Player:CreateToggle({
	Name = "Auto ghostburger when LMS",
	Flag = "GhostburgerLMSFlag",
	Callback = function(p112)
		if not p112 then
			if connection3 then
				connection3:Disconnect()
				connection3 = nil
			end
		elseif not connection3 then
			connection3 = RunService.Heartbeat:Connect(function()
				if u308 then
					return
				end

				if not Character then
					return
				end

				if Character.Parent ~= Survivors then
					return
				end

				if #Survivors:GetChildren() > 1 then
					return
				end

				u308 = true
				task.delay(15, function()
					u308 = false
				end)
				v65("Ghostburger")
			end)
		end
	end
})
Player:CreateDivider()
Player:CreateLabel("Autoblock", "shield-half")

local t21 = {}

for _, child in pairs(Killers:GetChildren()) do
	t21[#t21 + 1] = child
end

Killers.ChildAdded:Connect(function(child)
	t21[#t21 + 1] = child
end)
Killers.ChildRemoved:Connect(function(child)
	local v313 = table.find(t21, child)

	if v313 then
		table.remove(t21, v313)
	end
end)

local u314 = false
local u315 = false
local u316 = false
local n4 = 4
local n5 = 0.1
local n6 = 0.1
local n7 = 0.6

Player:CreateToggle({
	Name = "Auto-block",
	Flag = "AutoBlockFlag",
	Callback = function(p113)
		u314 = p113
	end
})
Player:CreateToggle({
	Name = "Punch killer if blocked",
	Flag = "AutoPunchFlag",
	Callback = function(p114)
		u316 = p114
	end
})
Player:CreateSlider({
	Name = "Time between block and punch",
	Flag = "PunchBlockDelayFag",
	Range = {
		0,
		1
	},
	Increment = 0.1,
	Suffix = "seconds",
	CurrentValue = 0.1,
	Callback = function(p115)
		n6 = p115
	end
})
Player:CreateSlider({
	Name = "Max distance from killer",
	Flag = "AutoBlockPrediction",
	Range = {
		1,
		16
	},
	Increment = 0.1,
	Suffix = "studs",
	CurrentValue = 14,
	Callback = function(p116)
		n4 = p116
	end
})
Player:CreateSlider({
	Name = "Ignore animation/sound after it has played for this long",
	Flag = "AutoBlockDecay",
	Suffix = "seconds",
	Range = {
		0.1,
		3
	},
	Increment = 0.01,
	CurrentValue = 0.65,
	Callback = function(p117)
		n7 = p117
	end
})
Player:CreateSlider({
	Name = "Cooldown",
	Flag = "AutoBlockCooldown",
	Suffix = "seconds",
	Range = {
		0,
		30
	},
	Increment = 0.1,
	CurrentValue = 1,
	Callback = function(p118)
		n5 = p118
	end
})
RunService.Heartbeat:Connect(function()
	if not u314 or not Character or Character.Name ~= "Guest1337" then
		return
	end

	if u315 then
		return
	end

	u315 = true

	local J = false

	xpcall(function()
		for v = 1, #t21 do
			local t = t21[v]

			if not t or t == Character then
				continue
			end

			local Z = t:FindFirstChild("HumanoidRootPart")
			local v = t:FindFirstChildOfClass("Humanoid")
			local n = v and v:FindFirstChildOfClass("Animator")

			if not Z or not v or not n then
				continue
			end

			if not Character or not Character.Parent or not Z or not v or not n then
				continue
			end

			local v = t11:PredictNextPosition(Z)
			local M = (Character.PrimaryPart.Position - v).Magnitude

			if M > n4 then
				continue
			end

			if not t11:PartLookingAtUser(Z, false) then
				continue
			end

			local D = false

			if t6:isPlayingSound(t:GetDescendants(), n7) then
				D = true
			end

			if not D and t6:isPlayingAnimation(n, n7) then
				D = true
			end

			if D then
				v65("Block")

				if u316 then
					if t6:blocked() then
						if Z and not (Z:FindFirstChild("InvincibleFX") or Z:FindFirstChild("StunProtection")) then
							task.delay(n6, function()
								v65("Punch")
								t11:Aimbot(Z, 1)
							end)
						end
					end
				end

				if t6:isBlocking() then
					task.delay(n5, function()
						u315 = false
					end)
					J = true
				end

				break
			end
		end
	end, v13)

	if not J then
		u315 = false
	end
end)
Player:CreateDivider()

local s3 = "enig124ma"
local s4 = "gag124124a"
local connection4
local connection5
local PlayerGui2 = LocalPlayer.PlayerGui
local t22 = {
	"cat",
	"wall",
	"super",
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

local function v336()
	local v337 = #t22
	local v338 = t22[math.random(v337)]
	local v339 = t22[math.random(v337)]

	if v338 == v339 then
		return v336()
	end

	return v338 .. v339 .. "_" .. tostring(math.random(101))
end
local function v340(descendant)
	if (descendant:IsA("TextLabel") or descendant:IsA("TextBox") or descendant:IsA("TextButton")) and descendant.Text then
		if string.find(descendant.Text, LocalPlayer.Name) then
			descendant.Text = string.gsub(descendant.Text, LocalPlayer.Name, s4)
		elseif string.find(descendant.Text, s3) then
			descendant.Text = string.gsub(descendant.Text, s3, s4)
		end
	end
end
local function v341(p119)
	if p119 then
		if p119 ~= "" and p119 ~= " " then
			if not PlayerGui2 then
				return
			end

			if connection4 or connection5 then
				connection4:Disconnect()
				connection4 = nil
				connection5:Disconnect()
				connection5 = nil
			end

			s3 = s4
			s4 = p119

			for _, descendant in pairs(PlayerGui2:GetDescendants()) do
				v6()
				v340(descendant)
			end

			for _, descendant in pairs(CoreGui:GetDescendants()) do
				v6()
				v340(descendant)
			end

			connection5 = PlayerGui2.DescendantAdded:Connect(v340)
			connection4 = CoreGui.DescendantAdded:Connect(v340)

			return
		end
	end
end

local v346

Player:CreateButton({
	Name = "Randomise name (your screen only)",
	Callback = function()
		v346:Set(v336())
	end
})
Player:CreateDivider()

local t23 = {
	"britneypears",
	"syncsakenuser99",
	"therealayeshaerotica",
	"clankerhater45",
	"iceteadrop",
	"lopticats",
	"STOP HACKINGGGGGGGGGGGGJGJJGJGJ",
	"STOP HATINGGGGGGKJSDJFAKSJFGJ",
	"your username here",
	"augh"
}
local u348 = t23[math.random(#t23)]

v346 = Player:CreateInput({
	Name = "Custom username",
	CurrentValue = u348,
	PlaceholderText = "type text pls",
	RemoveTextAfterFocusLost = false,
	Callback = function(p120)
		u348 = p120
	end
})
Player:CreateButton({
	Name = "Switch",
	Callback = function()
		v341(u348)
	end
})
Player:CreateDivider()

local function v349()
	if Character then
		if Character:FindFirstChildOfClass("Humanoid") and Character.Parent ~= Killers then
			local BloxyCola = Character:FindFirstChild("BloxyCola") or LocalPlayer.Backpack:FindFirstChild("BloxyCola")
			local Medkit = Character:FindFirstChild("Medkit") or LocalPlayer.Backpack:FindFirstChild("Medkit")
			local pivot = Character:GetPivot()

			for _, descendant in pairs(workspace:GetDescendants()) do
				if descendant:IsA("Tool") and not (descendant:IsDescendantOf(Players2) or descendant:IsDescendantOf(Players)) then
					if descendant.Name == "BloxyCola" or descendant.Name == "Medkit" then
						if descendant.Name == "BloxyCola" then
							if BloxyCola then
								continue
							end
						end

						if descendant.Name == "Medkit" then
							if Medkit then
								continue
							end
						end

						local ProximityPrompt = descendant:FindFirstChild("ItemRoot").ProximityPrompt

						if not v71() then
							Character:PivotTo(descendant:FindFirstChild("ItemRoot").CFrame)
							task.wait(0.25)
						end

						if not descendant:IsDescendantOf(Players2) or not descendant:IsDescendantOf(Players) then
							fireproximityprompt(ProximityPrompt)
						end

						lib:Notify({
							Title = "Syncsaken",
							Content = "Grabbed " .. descendant.Name,
							Image = "cat",
							Duration = 2
						})
					end

					task.wait()
				end
			end

			Character:PivotTo(pivot)

			return
		end
	end
end

local u356 = false

Player:CreateButton({
	Name = "Grab all tools (Blatant)",
	Callback = function()
		task.wait()
		v349()
	end
})
Player:CreateKeybind({
	Name = "Keybind",
	CurrentKeybind = "B",
	HoldToInteract = false,
	Flag = "GrabAllToolsKeybind",
	Callback = function()
		if not u356 then
			return
		end

		task.wait()
		v349()
	end
})
Player:CreateToggle({
	Name = "Enable keybind",
	Flag = "GrabAllToolsKeybindFlag",
	Callback = function(p121)
		u356 = p121
	end
})
Player:CreateDivider()
Player:CreateButton({
	Name = "Serverhop with Syncsaken",
	Callback = function()
		if not request or not queueonteleport then
			local v357 = lib
			local Notify = lib.Notify
			local t24 = {
				Title = "Syncsaken"
			}
			local content = "Your executor (" .. identifyexecutor_ .. ") does not support serverhopping \n\nRequest: " .. (request and "✅")

			if not content then
				content = "❌" .. "\nqueueonteleport: " .. (queueonteleport and "✅")
			end

			t24.Content = content or "❌"
			t24.Image = "cat"
			Notify(v357, t24)

			return
		end

		lib:Notify({
			Title = "Syncsaken",
			Content = "Teleporting...",
			Image = "cat",
			Duration = 10
		})

		local id
		local huge = math.huge
		local v363 = -math.huge
		local data = HttpService:JSONDecode(request({
			Url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true"
		}).Body)

		if data then
			if data.errors and #data.errors > 0 and tonumber(data.errors[1].code) == 0 then
				lib:Notify({
					Title = "Syncsaken",
					Content = "Rate limit: Wait until this notification disappears before trying again.",
					Image = "cat",
					Duration = 20
				})

				return
			end

			if not data.data then
				lib:Notify({
					Title = "Syncsaken",
					Content = "Something unexpected happened. Please try again after waiting.",
					Image = "cat",
					Duration = 2
				})
			end

			for _, v in pairs(data.data) do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and tonumber(v.ping) then
					if v.playing > 1 and v.id ~= game.JobId and v.ping <= huge and v363 < v.playing then
						id = v.id
						huge = v.ping
						v363 = v.playing
					end
				end
			end
		end

		if not id then
			lib:Notify({
				Title = "Syncsaken",
				Content = "Couldn't find a server.",
				Image = "cat"
			})

			return
		end

		queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/who-else123/my-scripts/refs/heads/main/Syncsaken/main.lua'))()")
		TeleportService:TeleportToPlaceInstance(18687417158, id, LocalPlayer)
	end
})
Prediction:CreateSection("Only use this if you have terrible ping")
Prediction:CreateSlider({
	Name = "Look-ahead prediction",
	Range = {
		0,
		5
	},
	Increment = 0.1,
	Suffix = "x",
	Flag = "AimbotPrediction",
	CurrentValue = 0.3,
	Callback = function(p122)
		t11.aimPrediction = p122
	end
})
Prediction:CreateSlider({
	Name = "Easing",
	Range = {
		0.01,
		1
	},
	Increment = 0.01,
	Suffix = "x",
	Flag = "AimbotEasing",
	CurrentValue = 0.95,
	Callback = function(p123)
		t11.aimEasing = p123
	end
})
Prediction:CreateSection("0 degrees is directly looking at something, 90 degrees is looking perpendicular to something (it's on your left/right)")
Prediction:CreateSlider({
	Name = "Minimum angle for looking at something",
	Range = {
		0,
		90
	},
	Increment = 1,
	Suffix = "°",
	CurrentValue = 45,
	Flag = "LookAtAngleBee",
	Callback = function(p124)
		if p124 == 90 then
			t11.lookAngle = 0
		else
			t11.lookAngle = math.cos(math.rad(p124))
		end
	end
})

local n8 = 1

RunService.Heartbeat:Connect(function(J)
	local D = Character and Character:FindFirstChildOfClass("Humanoid")

	if not D then
		return
	end

	if n8 <= 1 then
		return
	end

	if vector.magnitude(D.MoveDirection) > 0 then
		Character:TranslateBy(D.MoveDirection * n8 * J)
	end
end)
Blatant:CreateSlider({
	Name = "Speed",
	Range = {
		1,
		100
	},
	Increment = 0.1,
	Suffix = "x",
	CurrentValue = 1,
	Callback = function(p125)
		n8 = p125
	end
})
Blatant:CreateDivider()
Blatant:CreateKeybind({
	Name = "Backflip",
	CurrentKeybind = "N",
	HoldToInteract = false,
	Flag = "BackflipKeybind",
	Callback = function()
		v199("back")
	end
})
Blatant:CreateKeybind({
	Name = "Frontflip",
	CurrentKeybind = "M",
	HoldToInteract = false,
	Flag = "FrontflipKeybind",
	Callback = function()
		v199("front")
	end
})
Blatant:CreateDivider()
Blatant:CreateButton({
	Name = "Animation loader",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/who-else123/syncsaken/refs/heads/main/scripts/animation-loader.lua"))()
	end
})

local connection6

Visual:CreateToggle({
	Name = "Force enable chat",
	Flag = "ChatEnabledFlag",
	Callback = function(p126)
		if not p126 then
			if connection6 then
				connection6:Disconnect()
				connection6 = nil
			end

			task.wait()

			if Character and Character.Parent ~= Spectating then
				TextChatService.ChatWindowConfiguration.Enabled = false
			end
		elseif not connection6 then
			connection6 = RunService.Heartbeat:Connect(function()
				TextChatService.ChatWindowConfiguration.Enabled = true
			end)
		end
	end
})
Visual:CreateDivider()

local FieldOfView = LocalPlayer.PlayerData.Settings.Game.FieldOfView

Visual:CreateSlider({
	Name = "FOV",
	CurrentValue = 90,
	Flag = "FOVSlider",
	Increment = 1,
	Range = {
		20,
		120
	},
	Callback = function(p127)
		FieldOfView.Value = p127
	end
})
Visual:CreateDivider()
Visual:CreateLabel("ESP:", "eye")

local v371 = Visual:CreateColorPicker({
	Name = "Survivor",
	Flag = "SurvivorESPColor",
	Color = t7.colors.survivor,
	Callback = function(p128)
		t7.colors.survivor = p128

		if t7.connections.survivor then
			for k in t7.connections.survivor.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.survivor
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Survivors",
	Flag = "SurvivorESP",
	Callback = function(p129)
		if not p129 then
			if t7.connections.survivor then
				t7.connections.survivor:Cleanup()
				t7.connections.survivor = nil
				v174("survivor")
			end
		elseif not t7.connections.survivor then
			t7.connections.survivor = v178({
				container = Survivors,
				addedSignal = "DescendantAdded",
				removalSignal = "AncestryChanged",
				removalCheck = function(p130, p131)
					return p130:IsDescendantOf(Ragdolls) or p131 ~= Survivors
				end,
				valid = function(p132)
					task.wait(3.5)

					local v373 = false
					local playerFromCharacter = Players:GetPlayerFromCharacter(p132)

					if playerFromCharacter then
						v373 = true
					end

					return p132 and p132:IsA("Model") and p132:WaitForChild("Humanoid", 5) and v373 and playerFromCharacter.UserId ~= LocalPlayer.UserId
				end,
				highlightType = "survivor"
			})
		end
	end
})
Visual:CreateDivider()

local v375 = Visual:CreateColorPicker({
	Name = "Killer",
	Flag = "KillerESPColor",
	Color = t7.colors.killer,
	Callback = function(p133)
		t7.colors.killer = p133

		if t7.connections.killer then
			for k in t7.connections.killer.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.killer
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Killers",
	Flag = "KillerESP",
	Callback = function(p134)
		if not p134 then
			if t7.connections.killer then
				t7.connections.killer:Cleanup()
				t7.connections.killer = nil
				v174("killer")
			end
		elseif not t7.connections.killer then
			t7.connections.killer = v178({
				container = Killers,
				addedSignal = "DescendantAdded",
				removalSignal = "AncestryChanged",
				removalCheck = function(p135, p136)
					return p135:IsDescendantOf(Ragdolls) or p136 ~= Survivors
				end,
				valid = function(p137)
					task.wait(3.5)

					local v377 = false
					local playerFromCharacter = Players:GetPlayerFromCharacter(p137)

					if playerFromCharacter then
						v377 = true
					end

					return p137 and p137:IsA("Model") and p137:WaitForChild("Humanoid", 5) and v377 and playerFromCharacter.UserId ~= LocalPlayer.UserId
				end,
				highlightType = "killer"
			})
		end
	end
})
Visual:CreateDivider()

local v379 = Visual:CreateColorPicker({
	Name = "Generator",
	Flag = "GeneratorESPColor",
	Color = t7.colors.generator,
	Callback = function(p138)
		t7.colors.generator = p138

		if t7.connections.generator then
			for k in t7.connections.generator.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.generator
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Generators",
	Flag = "GeneratorESP",
	Callback = function(p139)
		if not p139 then
			if t7.connections.generator then
				t7.connections.generator:Cleanup()
				t7.connections.generator = nil
			end

			v174("generator")
		elseif not t7.connections.generator then
			t7.connections.generator = v178({
				container = Ingame,
				addedSignal = "DescendantAdded",
				valid = function(p140)
					return p140:IsA("Model") and p140.Name == "Generator" and p140:FindFirstChildOfClass("NumberValue") and p140.Progress.Value < 100
				end,
				highlightType = "generator",
				removalSignal = "Changed",
				removalCheck = function(p141)
					return p141 >= 100
				end
			})
		end
	end
})
Visual:CreateDivider()

local v381 = Visual:CreateColorPicker({
	Name = "Spray",
	Flag = "SprayESPColor",
	Color = t7.colors.spray,
	Callback = function(p142)
		t7.colors.spray = p142

		if t7.connections.spray then
			for k in t7.connections.spray.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.spray
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Spray",
	Flag = "SprayESP",
	Callback = function(p143)
		if not p143 then
			if t7.connections.spray then
				t7.connections.spray:Cleanup()
				t7.connections.spray = nil
				v174("spray")
			end
		elseif not t7.connections.spray then
			t7.connections.spray = v178({
				container = Ingame,
				addedSignal = "ChildAdded",
				valid = function(p144)
					return p144 and p144:IsA("Model") and string.find(p144.Name, "Spray")
				end,
				highlightType = "spray"
			})
		end
	end
})
Visual:CreateDivider()

local v383 = Visual:CreateColorPicker({
	Name = "Minion",
	Flag = "MinionESPColor",
	Color = t7.colors.minion,
	Callback = function(p145)
		t7.colors.minion = p145

		if t7.connections.minion then
			for k in t7.connections.minion.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.minion
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Minions",
	Flag = "MinionESP",
	Callback = function(p146)
		if not p146 then
			if t7.connections.minion then
				t7.connections.minion:Cleanup()
				t7.connections.minion = nil
				v174("minion")
			end
		elseif not t7.connections.minion then
			t7.connections.minion = v178({
				container = workspace,
				addedSignal = "DescendantAdded",
				valid = function(p147)
					return p147 and p147:IsA("Model") and p147.Name == "PizzaDeliveryRig" or p147.Name == "1x1x1x1Zombie"
				end,
				highlightType = "minion"
			})
		end
	end
})
Visual:CreateDivider()

local v385 = Visual:CreateColorPicker({
	Name = "Traps",
	Flag = "TrapESPColor",
	Color = t7.colors.trap,
	Callback = function(p148)
		t7.colors.trap = p148

		if t7.connections.trap then
			for k in t7.connections.trap.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.trap
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Traps",
	Flag = "AmberliciousESP",
	Callback = function(p149)
		if not p149 then
			if t7.connections.trap then
				t7.connections.trap:Cleanup()
				t7.connections.trap = nil
				v174("trap")
			end
		elseif not t7.connections.trap then
			local function v387(p150)
				return p150 and p150:IsA("Model") and not p150:IsDescendantOf(Survivors) and p150.Name == "SubspaceTripmine" or string.find(p150.Name, "TaphTripwire")
			end

			t7.connections.trap = v178({
				container = workspace,
				addedSignal = "DescendantAdded",
				valid = v387,
				highlightType = "trap"
			})
		end
	end
})
Visual:CreateDivider()
Visual:CreateColorPicker({
	Name = "Items",
	Flag = "ItemESPColor",
	Color = t7.colors.item,
	Callback = function(p151)
		t7.colors.item = p151

		if t7.connections.item then
			for k in t7.connections.item.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.item
				end
			end
		end
	end
})
Visual:CreateToggle({
	Name = "Items",
	Flag = "ItemESP",
	Callback = function(p152)
		if not p152 then
			if t7.connections.item then
				t7.connections.item:Cleanup()
				t7.connections.item = nil
				v174("item")
			end
		elseif not t7.connections.item then
			t7.connections.item = v178({
				container = workspace,
				addedSignal = "DescendantAdded",
				valid = function(p153)
					return p153 and p153:IsA("Tool") and (p153.Name == "BloxyCola" or p153.Name == "Medkit") and not p153:IsDescendantOf(Players2)
				end,
				highlightType = "item"
			})
		end
	end
})
Visual:CreateDivider()

local v389 = Visual:CreateColorPicker({
	Name = "Jane Doe Quest",
	Flag = "JaneQuestESP",
	Color = t7.colors.contract,
	Callback = function(p154)
		t7.colors.contract = p154

		if t7.connections.contract then
			for k in t7.connections.contract.Instances, nil, nil do
				if k:FindFirstChild("__SESP") then
					k.__SESP.FillColor = t7.colors.contract
				end
			end
		end
	end
})

Visual:CreateToggle({
	Name = "Jane Doe Quest",
	Flag = "JaneQuestESPColor",
	Callback = function(p155)
		if not p155 then
			if t7.connections.contract then
				t7.connections.contract:Cleanup()
				t7.connections.contract = nil
				v174("contract")
			end
		elseif not t7.connections.contract then
			t7.connections.contract = v178({
				container = workspace,
				addedSignal = "ChildAdded",
				valid = function(p156)
					return p156 and p156:IsA("MeshPart") and p156.Name == "Model" and (p156.MeshId == "rbxassetid://116433898437270" or p156.MeshId == "rbxassetid://81503280733693")
				end,
				highlightType = "contract"
			})
		end
	end
})

local u391 = false

local function v392()
	return Character and string.find(Character.Name, "TwoTime") or false
end
local function v393(p157)
	return vector.magnitude(Character.HumanoidRootPart.Position - p157.Position)
end
local function v394(p158)
	local LookVector = p158.CFrame.LookVector
	local LookVector2 = Character.HumanoidRootPart.CFrame.LookVector
	local v397 = vector.normalize(p158.Position - Character.HumanoidRootPart.Position)
	local v398 = LookVector2:Dot(LookVector)
	local v399 = LookVector2:Dot(v397)

	if v398 < 0.5 then
		return false
	end

	if v399 < 0.7 then
		return false
	end

	return true
end

getgenv().thereisnowhatifiampregnant = RunService.Heartbeat:Connect(function()
	if not u391 then
		return
	end

	if not v392() then
		return
	end

	if not Killers:GetChildren()[1] then
		return
	end

	local v400 = Killers:GetChildren()[1]
	local HumanoidRootPart = v400 and v400:FindFirstChild("HumanoidRootPart")

	if not HumanoidRootPart or HumanoidRootPart.Anchored then
		return
	end

	if v393(HumanoidRootPart) > 6 then
		return
	end

	if v394(HumanoidRootPart) then
		v65("Dagger")

		return
	end
end)
Aimbot:CreateDivider()
Aimbot:CreateLabel("Two Time", "star")
Aimbot:CreateToggle({
	Name = "Auto backstab",
	Flag = "TwoTimeAutoBackstabFlag",
	Callback = function(p159)
		u391 = p159
	end
})
Aimbot:CreateDivider()
Aimbot:CreateLabel("Chance", "hand-coins")

if t1.requiring then
	local function v402()
		local v403 = workspace.Players.Killers:GetChildren()[1]

		return v403 and v403.PrimaryPart
	end

	Aimbot:CreateToggle({
		Name = "Chance",
		Flag = "ChanceAimbotFlag",
		Callback = function(p160)
			if p160 then
				t12:AddTask("ChanceAimbotFlag", function(p161)
					if p161[2] == "UseActorAbility" and p161[4] == "Shoot" then
						local v404 = v402()

						if not v404 then
							return
						end

						task.spawn(function()
							t11:Aimbot(v404, 1.5)
						end)
					end
				end)
			else
				t12:RemoveTask("ChanceAimbotFlag")
			end
		end
	})
else
	Aimbot:CreateLabel("Your executor (" .. identifyexecutor_ .. ") doesn't support requiring, which is necessary for chance aimbot")
end

Aimbot:CreateDivider()
Aimbot:CreateLabel("Dusekkar", "wand-sparkles")

if t1.hooking then
	local GetPlayerMousePosition = require(ReplicatedStorage:WaitForChild("Systems"):WaitForChild("Player"):WaitForChild("Miscellaneous"):WaitForChild("GetPlayerMousePosition"))
	local Config = require(game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Survivors"):WaitForChild("Dusekkar"):WaitForChild("Config"))
	local GetMousePos = GetPlayerMousePosition.GetMousePos

	local function v408(...)
		if Character and Character.Parent == Survivors and Character.Name == "Dusekkar" and Killers and #Killers:GetChildren() > 0 and Character then
			local v409 = Killers:GetChildren()[1]
			local PrimaryPart = v409 and v409.PrimaryPart

			if PrimaryPart then
				return t11:PredictNextPosition(PrimaryPart)
			end
		end

		return GetMousePos(...)
	end

	local IsOnScreen = Util.IsOnScreen

	local function v412()
		if Character and Character.Parent == Survivors then
			if Character.Name == "Dusekkar" then
				return true
			end
		end
	end

	local SpawnProtectionEffectMaxDistance = Config.SpawnProtectionEffectMaxDistance

	Aimbot:CreateToggle({
		Name = "Silent aim",
		Flag = "DusekkarAimbotFlag",
		Callback = function(p162)
			GetPlayerMousePosition.GetMousePos = p162 and v408 or GetMousePos
		end
	})

	if setreadonly then
		Aimbot:CreateToggle({
			Name = "Wallbang",
			Flag = "DusekkarWallbang",
			Callback = function(p163)
				setreadonly(Util, false)
				Util.IsOnScreen = p163 and v412 or IsOnScreen
				setreadonly(Util, true)
			end
		})
	end

	Aimbot:CreateToggle({
		Name = "Infinite distance",
		Flag = "DusekkarInfiniteDistance",
		Callback = function(p164)
			Config.SpawnProtectionEffectMaxDistance = p164 and math.huge or SpawnProtectionEffectMaxDistance
		end
	})
else
	Aimbot:CreateLabel("Your executor does not support hooking.")
end

Aimbot:CreateDivider()
Aimbot:CreateLabel("Shedletsky", "sword")

if t1.requiring then
	local u414 = false

	local function v415()
		if u414 or not Character or not Character.PrimaryPart then
			return
		end

		u414 = true

		local ok, result = pcall(function()
			local v418 = Killers:GetChildren()[1]

			if not v418 then
				u414 = false

				return
			end

			local HumanoidRootPart = v418:FindFirstChild("HumanoidRootPart")

			if not v418:FindFirstChildOfClass("Humanoid"):FindFirstChild("Animator") then
				u414 = false

				return
			end

			local HumanoidRootPart2 = Character:FindFirstChild("HumanoidRootPart")
			local CFrame_ = HumanoidRootPart2.CFrame
			local now2 = os.clock()

			t11:Aimbot(HumanoidRootPart, 0.7)
			task.wait(0.125)

			while os.clock() - now2 < 0.7 and HumanoidRootPart and HumanoidRootPart2 do
				task.wait()
				HumanoidRootPart2.CFrame = CFrame.new(t11:PredictNextPosition(HumanoidRootPart), HumanoidRootPart.Position * vector.create(1.001, 1.001, 1.001))
			end

			HumanoidRootPart2.CFrame = CFrame_
		end)

		if not ok then
			v13(result, 4222)
		end

		u414 = false
	end

	Aimbot:CreateToggle({
		Name = "TP slash",
		Flag = "TPSlashFlag",
		Callback = function(p165)
			if p165 then
				t12:AddTask("TPSlash", function(p166)
					if u414 then
						return
					end

					if Character then
						if Character.Parent ~= Killers and p166[2] == "UseActorAbility" and p166[4] == "Slash" then
							task.spawn(v415)
						end
					end
				end)
			else
				t12:RemoveTask("TPSlash")
			end
		end
	})
else
	Aimbot:CreateLabel("Your executor (" .. identifyexecutor_ .. ") does not support requiring.")
end

Aimbot:CreateDivider()
Aimbot:CreateLabel("1x1x1x1", "shield-alert")

if t1.requiring then
	local function v423(p167)
		return 1 / (t11:GetDistanceFrom(p167) + 0.01) * (t11:PartLookingAtUser(p167, true) and 3 or 1)
	end
	local function v424()
		local v425 = -math.huge
		local v426

		for _, child in pairs(Survivors:GetChildren()) do
			if child and child ~= Character and child.PrimaryPart then
				local v429 = v423(child.PrimaryPart)

				if v425 < v429 then
					v425 = v429
					v426 = child
				end
			end
		end

		return v426.PrimaryPart
	end

	Aimbot:CreateToggle({
		Name = "Entanglement & Mass Infection aimbot",
		Flag = "1x1x1x1Aimbot",
		Callback = function(p168)
			if p168 then
				t12:AddTask("1x1x1x1Aimbot", function(p169)
					if Character.Parent ~= Killers then
						return
					end

					if p169[2] ~= "UseActorAbility" then
						return
					end

					local v430 = p169[4]

					if v430 == "Entanglement" or v430 == "MassInfection" then
						task.spawn(function()
							local v431 = v424()

							if v430 == "MassInfection" then
								t11:Aimbot(v431, 3)
							elseif v430 == "Entanglement" then
								t11:Aimbot(v431, 0.8)
							end
						end)

						return
					end
				end)
			else
				t12:RemoveTask("1x1x1x1Aimbot")
			end
		end
	})
else
	Aimbot:CreateLabel("Your executor doesn't support requiring.")
end

local v432 = buffer.create(256)
local v433 = buffer.create(256)
local n9 = 2162078206
local n10 = 2614888103

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
	1925078388,
	n9,
	n10,
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
	buffer.writeu32(v433, (i - 1) * 4, v)
end

local function v438(p170)
	local v439 = buffer.len(p170)
	local v440 = -(v439 + 9) % 64
	local v441 = v439 + 1 + v440 + 8
	local v442 = buffer.create(v441)

	buffer.copy(v442, 0, p170)
	buffer.writeu8(v442, v439, 128)

	local v443 = v439 * 8

	for i = 7, 0, -1 do
		local v445 = v443 % 256

		buffer.writeu8(v442, i + v439 + 1 + v440, v445)
		v443 = (v443 - v445) / 256
	end

	return v442, v441
end
local function v446(p171, p172)
	local n11 = 1779033703
	local n12 = 3144134277
	local n13 = 1013904242
	local n14 = 2773480762
	local n15 = 1359893119
	local n16 = 2600822924
	local n17 = 528734635
	local n18 = 1541459225
	local v455 = v432
	local v456 = v433

	for i = 0, p172 - 1, 64 do
		for i2 = 0, 60, 4 do
			buffer.writeu32(v455, i2, bit32.byteswap(buffer.readu32(p171, i + i2)))
		end

		for i2 = 64, 252, 4 do
			local v460 = buffer.readu32(v455, i2 - 60)
			local v461 = bit32.bxor(bit32.rrotate(v460, 7), bit32.rrotate(v460, 18), bit32.rshift(v460, 3))
			local v462 = buffer.readu32(v455, i2 - 8)
			local v463 = bit32.bxor(bit32.rrotate(v462, 17), bit32.rrotate(v462, 19), bit32.rshift(v462, 10))
			local v464 = buffer.readu32(v455, i2 - 28)

			buffer.writeu32(v455, i2, buffer.readu32(v455, i2 - 64) + v461 + v464 + v463)
		end

		local v465 = n11
		local v466 = n12
		local v467 = n13
		local v468 = n14
		local v469 = n15
		local v470 = n16
		local v471 = n17
		local v472 = n18

		for i2 = 0, 252, 4 do
			local v474 = n18 + bit32.bxor(bit32.rrotate(n15, 6), bit32.rrotate(n15, 11), bit32.rrotate(n15, 25)) + bit32.bxor(bit32.band(n15, n16), bit32.band(bit32.bnot(n15), n17)) + buffer.readu32(v456, i2) + buffer.readu32(v455, i2)

			n18 = n17
			n17 = n16
			n16 = n15
			n15 = n14 + v474
			n14 = n13

			local v475 = bit32.bxor(bit32.rrotate(n11, 2), bit32.rrotate(n11, 13), bit32.rrotate(n11, 22))
			local v476 = bit32.bxor(bit32.band(n11, n12), bit32.band(n11, n13), bit32.band(n12, n13))

			n13 = n12
			n12 = n11
			n11 = v474 + v475 + v476
		end

		n11 = bit32.bor(n11 + v465, 0)
		n12 = bit32.bor(n12 + v466, 0)
		n13 = bit32.bor(n13 + v467, 0)
		n14 = bit32.bor(n14 + v468, 0)
		n15 = bit32.bor(n15 + v469, 0)
		n16 = bit32.bor(n16 + v470, 0)
		n17 = bit32.bor(n17 + v471, 0)
		n18 = bit32.bor(n18 + v472, 0)
	end

	return n11, n12, n13, n14, n15, n16, n17, n18
end
local function v477(p173)
	local v478 = buffer.fromstring(p173)
	local v479, v480 = v438(v478)
	local v481, v482, v483, v484, v485, v486, v487, v488 = v446(v479, v480)
	local v489 = buffer.create(32)

	buffer.writeu32(v489, 0, v481)
	buffer.writeu32(v489, 4, v482)
	buffer.writeu32(v489, 8, v483)
	buffer.writeu32(v489, 12, v484)
	buffer.writeu32(v489, 16, v485)
	buffer.writeu32(v489, 20, v486)
	buffer.writeu32(v489, 24, v487)
	buffer.writeu32(v489, 28, v488)

	return string.format("%08x%08x%08x%08x%08x%08x%08x%08x", v481, v482, v483, v484, v485, v486, v487, v488), v489
end

local loadedLastKey = ""
local u491 = false
local loadedLastSession = ""
local loadedLastSessionRequest = 0
local now2 = os.clock()
local t25 = {
	[212] = "Successful.",
	[400] = "Invalid input...",
	[401] = "Something went wrong! Try re-executing...",
	[402] = "Something went wrong! Try re-executing...",
	[403] = "Key expired...",
	[404] = "Key not found...",
	[405] = "Not your key! Please open a ticket and request a HWID reset...",
	[406] = "Session expired! Try again...",
	[429] = "You're being rate limited. Please wait 10 seconds before trying again!",
	[500] = "Internal server error..."
}

if t1.filesystem then
	if isfile("sskn_ln.log") then
		loadedLastSession = readfile("sskn_ln.log")
		v15("Loaded last session: " .. loadedLastSession)
	end

	if isfile("sskn_lr.log") then
		loadedLastSessionRequest = tonumber(readfile("sskn_lr.log")) or 0
		v15("Loaded last session request: " .. loadedLastSessionRequest)
	end

	if isfile("sskn_k.log") then
		loadedLastKey = readfile("sskn_k.log")
		v15("Loaded last key: " .. loadedLastKey)
	end
end

local function v496()
	if math.random() ~= math.random() then
		local v497 = "" .. tostring(gcinfo()) .. math.random() * math.random() * 1.2492184012840912

		for i = 1, 100 do
			v497 ..= string.sub(tostring({ math.random() }), 8)
		end

		return v477(v497 .. math.random() * 0.1248214)
	end

	local function v499()
		local v500 = string.rep(" ", 8)

		local function v501(p174, p175)
			local n19 = 1
			local n20 = 0

			while p174 > 0 and p175 > 0 do
				local v504 = p174 % 2
				local v505 = p175 % 2

				if v504 ~= v505 then
					n20 += n19
				end

				p174 = (p174 - v504) / 2
				p175 = (p175 - v505) / 2
				n19 *= 2
			end

			if p174 < p175 then
				p174 = p175
			end

			while p174 > 0 do
				local v506 = p174 % 2

				if v506 > 0 then
					n20 += n19
				end

				p174 = (p174 - v506) / 2
				n19 *= 2
			end

			return n20
		end
		local function v507(p176, p177, p178)
			if p178 then
				local v508 = p176 / 2 ^ (p177 - 1) % 2 ^ (p178 - 1 - (p177 - 1) + 1)

				return v508 - v508 % 1
			end

			local v509 = 2 ^ (p177 - 1)

			return p176 % (v509 + v509) >= v509 and 1 or 0
		end
		local function v510()
			local v511, v512, v513, v514 = string.byte(v500, 1, 4)

			return v501(v514, 64) * 16777216 + v501(v513, 32) * 65536 + v501(v512, 16) * 256 + v501(v511, 8)
		end
		local function v515()
			local v516 = v510()
			local v517 = v510()
			local n21 = 1
			local v519 = v507(v517, 1, 20) * 4294967296 + v516
			local v520 = v507(v517, 21, 31)
			local v521 = -1 ^ v507(v517, 32)

			if v520 == 0 then
				if v519 == 0 then
					return v521 * 0
				end

				v520 = 1
				n21 = 0
			elseif v520 == 2047 then
				return v519 == 0 and v521 * 1 / 0 or v521 * 0 / 0
			end

			return v521 * 2 ^ (v520 - 1023) * (n21 + v519 / 4503599627370496)
		end
		local function v522()
			local n22 = 1
			local v524 = v510()
			local t26, v526, v527, v528, v529, v530, v531

			if n22 <= v524 then
				while true do
					t26 = {}

					for i = 0, 255 do
						v526 = v501
						t26[v501(v510(), v510())] = v526(v510(), v510())
						v527 = v501
						t26[v501(v510(), v510())] = v527(v510(), v510())
					end

					for i = 1, v510() do
						for i2 = 0, 255 do
							v528 = v515() and v510()
							v529 = t26[v515()] or v501(v515(), v515())
							t26[v528] = v529
							v530 = v510()
							v531 = v515()
							v531 = v531 and v515()
							t26[v530] = v531
							t26[v507(v515(), v510())] = {
								v515(),
								v510()
							}
						end
					end
				end
			end

			return v501(v515(), v510())
		end

		while v522() do
			v522()
		end
	end

	v499()
	LPH_CRASH()
end
local function v535(p179)
	if os.time() - loadedLastSessionRequest < 43200 and loadedLastSession and loadedLastSession ~= "" then
		return loadedLastSession
	end

	local v536 = p179 or 0
	local v537 = request({
		Url = "https://socialite-auth.roblocks.workers.dev/",
		Method = "GET",
		Headers = {
			["X-AyeshaErotica"] = "loves it!"
		}
	})

	if v537.StatusCode == 429 then
		if v536 >= 3 then
			return loadedLastSession
		end

		task.wait(4)

		return v535(v536 + 1)
	end

	local Body = v537.Body

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
	writefile("sskn_ln.log", tostring(loadedLastSession))
	writefile("sskn_lr.log", tostring(loadedLastSessionRequest))

	return Body
end
local function v539(p180, p181, p182, p183)
	if not p180 or not p181 or not p182 or typeof(p180) ~= "string" or typeof(p181) ~= "string" or p180 == "" or p181 == "" then
		return {
			valid = false,
			reason = "Invalid!",
			status = 400
		}
	end

	local v540 = p183 or 0
	local v541 = v496()

	v15("\nkey: " .. p180 .. "\nsession: " .. p181 .. "\nid: " .. p182)

	local v542 = request({
		Url = "https://socialite-auth.roblocks.workers.dev/",
		Method = "POST",
		Headers = {
			["X-Syncsaken"] = "drop it drop it"
		},
		Body = HttpService:JSONEncode({
			auth = p180,
			session = p181,
			identifier = tostring(p182),
			nonce = v541
		})
	})

	if v542.StatusCode == 406 then
		loadedLastSessionRequest = 0

		if v540 >= 3 then
			return {
				valid = false,
				reason = t25[v542.StatusCode],
				status = v542.StatusCode
			}
		end

		task.wait(1)

		return v539(p180, v535(), p182, v540 + 1)
	end

	if v542.StatusCode == 429 then
		task.wait(4)

		if v540 >= 3 then
			return {
				valid = false,
				reason = t25[v542.StatusCode],
				status = v542.StatusCode
			}
		end

		task.wait(4)

		return v539(p180, p181, p182, v540 + 1)
	end

	if v542.StatusCode == 212 then
		local data = HttpService:JSONDecode(v542.Body)

		if not data or not data.valid or not data.session or v477("true-" .. p181 .. v541 .. "34c52300d5b526808f6daa2d4a9eb80f7152c2ecbfadd5bd37c42e9c9e5500e4") ~= data.session then
			return {
				valid = false,
				reason = "Idk",
				status = 400
			}
		end

		if t1.filesystem then
			writefile("sskn_k.log", p180)
		end

		return {
			valid = true,
			expires = tonumber(data.expires)
		}
	end

	return {
		valid = false,
		reason = tostring(t25[v542.StatusCode] or "Something went wrong... [" .. v542.StatusCode .. "]"),
		status = v542.StatusCode
	}
end

if loadedLastKey ~= "" then
	local v544 = v539(loadedLastKey, v535(), gethwid_)

	if v544.valid then
		v30("Thank you for supporting Syncsaken <3", 5)
		expires = v544.expires or expires
		v257()
		u491 = true
	else
		v30("[" .. v544.status .. "] " .. v544.reason, 5)
	end
end

Other:CreateLabel("Unlock premium features")
Other:CreateInput({
	Name = "Enter your key:",
	CurrentValue = "",
	RemoveTextAfterFocusLost = false,
	PlaceholderText = "my sha256 encrypted string hello???",
	Callback = function(p184)
		local v545 = tostring(p184)

		if v545 and #v545 < 255 then
			loadedLastKey = v545
			print(v545)
		end
	end
})
Other:CreateButton({
	Name = "Verify",
	Callback = function()
		if os.clock() - now2 < 1 then
			return
		end

		if u491 then
			v30("Already verified!")

			return
		end

		now2 = os.clock()

		local v546 = v539(loadedLastKey, v535(), gethwid_)

		if v546.valid then
			v30("Thank you for supporting Syncsaken <3", 5)

			if v546.expires then
				expires = v546.expires
			end

			v257()
			u491 = true
		else
			v30("[" .. v546.status .. "] " .. v546.reason, 5)
		end
	end
})

local connection7
local u548 = false

local function v549(p185)
	if not p185 then
		if connection7 then
			connection7:Disconnect()
			connection7 = nil
		end

		if Character then
			if Character:FindFirstChild("CollisionHitbox") then
				Character:FindFirstChild("CollisionHitbox").CanCollide = true
			end

			if Character:FindFirstChild("HumanoidRootPart") then
				Character.HumanoidRootPart.CanCollide = true
			end

			if Character:FindFirstChild("Head") then
				Character.Head.CanCollide = true
			end
		end
	elseif not connection7 then
		connection7 = RunService.Heartbeat:Connect(function()
			if Character then
				if Character:FindFirstChild("CollisionHitbox") then
					Character:FindFirstChild("CollisionHitbox").CanCollide = false
				end

				if Character:FindFirstChild("HumanoidRootPart") then
					Character.HumanoidRootPart.CanCollide = false
				end

				if Character:FindFirstChild("Head") then
					Character.Head.CanCollide = false
				end
			end
		end)
	end
end

Other:CreateDivider()

local v550 = Other:CreateToggle({
	Name = "Noclip",
	Flag = "NoclipFlag",
	Callback = function(p186)
		u548 = p186
		v549(p186)
	end
})

Other:CreateKeybind({
	Name = "Keybind",
	Flag = "NoclipKeybind",
	HoldToInteract = false,
	CurrentKeybind = "LeftBracket",
	Callback = function()
		v550:Set(not u548)
	end
})

if t1.requiring then
	Other:CreateDivider()
	Other:CreateDropdown({
		Name = "Spoof device",
		Options = {
			"PC",
			"Mobile",
			"Console"
		},
		CurrentOption = {},
		MultipleOptions = false,
		Flag = "SpoofDevice",
		Callback = function(p187)
			Network:FireServerConnection("SetDevice", "REMOTE_EVENT", p187[1])
		end
	})
end

Other:CreateDivider()
Other:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end
})
Other:CreateDivider()
Other:CreateDropdown({
	Name = "Themes",
	Options = {
		"Default",
		"AmberGlow",
		"Amethyst",
		"Bloom",
		"DarkBlue",
		"Green",
		"Light",
		"Ocean",
		"Serenity"
	},
	CurrentOption = { "Default" },
	MultipleOptions = false,
	Flag = "Theme",
	Callback = function(p188)
		v246.ModifyTheme(p188[1])
	end
})
Credits:CreateLabel("Syncsaken wouldn't exist without:")
Credits:CreateDivider()
Credits:CreateParagraph({
	Title = "@remiafterdark (elysian owner)",
	Content = [[she helped write:
• infinite stamina
• grabbing all items
• chance aimbot

she also inspired:
• this script
• randomise name]]
})
Credits:CreateParagraph({
	Title = "@ivanetta (fartsaken owner)",
	Content = [[he helped write:
• dusekkar silent aim
• 1x1x1x1 popups
• frontflip & backflip

and inspired:
• this script]]
})
Credits:CreateParagraph({
	Title = "@jzexok",
	Content = "they wrote:\n• the fov slider"
})
Credits:CreateDivider()
task.wait()
lib:LoadConfiguration()
task.wait()
t7.colors.survivor = v371.Color or t7.colors.survivor
t7.colors.killer = v375.Color or t7.colors.killer
t7.colors.generator = v379.Color or t7.colors.generator
t7.colors.trap = v385.Color or t7.colors.trap
t7.colors.minion = v383.Color or t7.colors.minion
t7.colors.item = v389.Color or t7.colors.item
t7.colors.spray = v381.Color or t7.colors.spray

if t1.requiring then
	Util:CreateWarning("Syncsaken", string.format("Loaded Syncsaken in %.2fs\nJoin the Discord server for updates!", os.clock() - now))
end

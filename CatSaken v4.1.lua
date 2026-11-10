if getthreadidentity() < 8 then
    -- 100% OF CREDITS TO https://scriptblox.com/u/NaikoExploits! Forsaken plus is used as our redirect because it is an open source, safe alternative script that has support for Xeno and Solara. To be absolutely clear, I am not affiliated with this script and I did not make it. Again all credits go to the original developer: NaikoExploits
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = identifyexecutor();
        Text = "Redirecting to forsaken plus by NaikoExploits because your executor is trash.";
        Duration = 15;
    })

    return loadstring(game:HttpGet("https://naikoscripts.pages.dev/ForsakenPlus"))()
end

if gethui():FindFirstChild('CatLoadGui2') then
    return warn('the script is loading, be patient..')
end



local ok = Instance.new("ScreenGui")





ok.Name = "CatLoadGui2"
ok.ResetOnSpawn = false

ok.IgnoreGuiInset = true;
ok.Parent = gethui()




local femboy = Instance.new("TextLabel")

femboy.BackgroundTransparency = 1


femboy.AnchorPoint = Vector2.new(0.5, 0)
femboy.Position = UDim2.new(0.5, 0, 0, 0)

femboy.Size = UDim2.new(1, 0, 0, 20)

femboy.AutomaticSize = Enum.AutomaticSize.X
femboy.Font = Enum.Font.Gotham
femboy.TextColor3 = Color3.new(1, 1, 1)
femboy.TextStrokeColor3 = Color3.new(0, 0, 0)

femboy.TextStrokeTransparency = 0
femboy.TextScaled = true;
femboy.Visible = true

femboy.Parent = ok;
femboy.Text = 'Catsaken is loading. Be patient as this can freeze your screen for up to 10 seconds.\nIF YOURE ON DELTA AND IT CRASHES USE ARCEUS X'
game:GetService("RunService").RenderStepped:Wait()
game:GetService("RunService").RenderStepped:Wait()



local n1 = 426030314
local n2 = 369996309
local n3 = 72756577
local n4 = 827602387
local n5 = 142307361
local n6 = 285545878

GetService = function(p1)
	return cloneref(game:GetService(p1))
end

if gethui():FindFirstChild("CatLoadGui") then
	return warn("the script is loading, be patient my guy ..")
end

if not workspace:GetAttribute("ClientLoaded") then
	warn("Catsaken is waiting for Forsaken to load")
	GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Catsaken",
		Text = "Waiting for Forsaken to load",
		Duration = 10,
		Button1 = "ok"
	})

	repeat
		task.wait()
	until workspace:GetAttribute("ClientLoaded")

	print("Forsaken loaded ..")
end

local obj = setmetatable({}, {
	__index = function(p2, p3)
		return getgenv()[p3]
	end,
	__newindex = function(p4, p5, p6)
		getgenv()[p5] = p6

		if 567719432 == n6 then
			n5 = 267720304
			n6 = 335288856
			n1 = 664181776
			n2 += 1260
			n3 += 312
			n4 = 175606035
			deepcopy = nil
			labelshit = nil
		end
	end
})
local n7
local n8
local n9

__SCRIPT = function()
	n7 = 21675190

	local n10 = 355398448

	n8 = 589688394
	n9 = 202622311

	local now = tick()

	deepcopy = function(p7)
		if type(p7) ~= "table" then
			return p7
		end

		local t1 = {}

		for k, v in pairs(p7) do
			t1[deepcopy(k)] = deepcopy(v)
		end

		return setmetatable(t1, getmetatable(p7))
	end

	if isfile("catsakenconfigs.json") and not isfile("catsakenconfigfix.txt") then
		local v16 = deepcopy(GetService("HttpService"):JSONDecode(readfile("catsakenconfigs.json")))

		for _, v in pairs(v16) do
			if v ~= "[]" then
				for _, v2 in pairs(v) do
					if v2.CurrentOption then
						local currentOption = {}

						for k, v3 in pairs(v2.CurrentOption) do
							if v3 == true then
								currentOption[#currentOption + 1] = k
							end
						end

						v2.CurrentOption = currentOption
					end
				end
			end
		end

		writefile("catsakenconfigs.json", GetService("HttpService"):JSONEncode(v16))
	end

	writefile("catsakenconfigfix.txt", "")

	if isfile("catsakenconfigs.json") and not isfile("catsakenconfigfix2.txt") then
		writefile("catsakenconfigs.json", readfile("catsakenconfigs.json"):gsub("\"currentcfgname\":{\"CurrentOption\"", "\"currentcfgname\":{\"CurrentValue\""):gsub("\"currentcfgname\":{\"CurrentValue\":%[\"\"%]", "\"currentcfgname\":{\"CurrentValue\":\"\""))
	end

	writefile("catsakenconfigfix2.txt", "")
	fixcolorpickers = function(p8)
		for _, v in pairs(p8) do
			if typeof(v) == "table" and v.Color then
				v.Color = formatclr(v.Color)
			end
		end

		return p8
	end
	_G.LUNAR_BACKGROUND = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg"
	_G.LUNAR_TITLE = nil
	_G.SINGLE_COLUMNS = false
	_G.TAB_WIDTH = nil
	_G.UNLOCK_TP_ALL = true
	_G.UNLOCK_AC_DISABLER = false
	_G.UNLOCK_AZURE_FEATUREZ = true
	_G.ESP_HPBAR_MIN_MAGNITUDE = 100

	local v26 = "Catsaken [Beta]" .. (ShouldUseOldUI and "[V4.1]" or "")
	local boolCatsakenOldui = isfile("BOOL_CATSAKEN_OLDUI")

	if obj.catsakenexecuted then
		obj.Rayfield:Notify({
			Title = "Catsaken",
			Content = "Already loaded, Reloading script...",
			Duration = 5
		})

		return obj.CATSAKEN_UNLOAD(), __SCRIPT()
	end

	obj.catsakenexecuted = true

	local t2 = {}
	local v29 = newcclosure(function(p9, p10)
		if not p9 then
			return warn("hookfunction: missing function argument")
		end

		xpcall(function()
			print("[hooks] Replacing", debug.info(p9, "s") .. "/" .. tostring(debug.info(p9, "n")))
		end, function()
			print("[hooks] print failed (hookfunction)")
		end)
		t2[p9] = p10

		return hookfunction(p9, p10)
	end)
	local v30 = newcclosure(function(p11)
		local n11 = 153734199
		local n12
		local n13

		xpcall(function()
			n12 = 968385278

			if n9 == n12 then
				n5 = 899260300
				n11 = 391449692
				n12 = 120938943
				n1 -= 1622
				n10 += 367
				n6 += 1732
				n7 = 108769787
				n9 -= 832
				Block = nil
			else
				print("[hooks] Restoring", debug.info(p11, "s") .. "/" .. tostring(debug.info(p11, "n")))
			end
		end, function()
			n13 = 28210943
			print("[hooks] print failed (restorefunction)")

			if n13 == n11 then
				n2 += 156
				n10 -= 889
				n3 = 326575845
				n1 += 1872
				n4 = 1073399182
				n13 += 924
				n7 += 1113
				n11 = 586504881
				GrabMedkit = nil
			end
		end)
		t2[p11] = nil

		return restorefunction(p11)
	end)
	local u34 = false
	local n14 = 0.3

	GetService("LogService")

	local ContentProvider = GetService("ContentProvider")
	local Lighting = GetService("Lighting")
	local RunService = GetService("RunService")
	local HttpService = GetService("HttpService")
	local Players = GetService("Players")
	local ReplicatedStorage = GetService("ReplicatedStorage")
	local Stats = GetService("Stats")
	local TweenService = GetService("TweenService")
	local VirtualInputManager = GetService("VirtualInputManager")
	local GuiService = GetService("GuiService")
	local UserInputService = GetService("UserInputService")
	local PathfindingService = GetService("PathfindingService")
	local ContextActionService = GetService("ContextActionService")
	local TextChatService = GetService("TextChatService")
	local ProximityPromptService = GetService("ProximityPromptService")
	local LocalPlayer = Players.LocalPlayer
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local Assets = ReplicatedStorage.Assets
	local Modules = ReplicatedStorage.Modules
	local Player = ReplicatedStorage.Systems.Player
	local Character_ = ReplicatedStorage.Systems.Character
	local Network = Modules.Network.Network
	local Killers = Assets.Skins.Killers
	local Killers2 = Assets.Killers
	local Survivors = Assets.Skins.Survivors
	local Survivors2 = Assets.Survivors
	local Sprinting = require(Character_.Game.Sprinting)
	local DirectionalSpeed = require(Character_.QualityOfLife.DirectionalSpeed)
	local SmoothShiftLock = require(Player.Game.SmoothShiftLock)
	local CharacterReplication = require(Player.Game.CharacterReplication)
	local GetMousePos = require(Player.Miscellaneous.GetPlayerMousePosition).GetMousePos
	local SidebarHandler = require(Player.UI.SidebarHandler)
	local controls = require(LocalPlayer.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
	local FlowInput = require(Player.Game.Minigames.FlowClientMinigame.FlowInput)
	local ConnectInput = require(Player.Game.Minigames.ConnectClientMinigame.ConnectInput)
	local require_ = require
	local GearClientMinigame = Player.Game.Minigames.GearClientMinigame
	local exitTo
	local LockClientMinigame, FlowBoard, ConnectBoard, LockBoard, Device, PlayerList, Icon, Util, TableUtils, Ragdolls, Actors, Config, Behavior, Config2, Config3, Config4, Config5, Config6, Config7, Config8, Config9, Config10, cl_ConstructQTE, Config11, Behavior2, t3, v100, StatusEffects, Slowness, Subspaced, Blindness, Glitched, Slateskin, Nausea, Stunned, Exhausted, TemporaryUI, PlayerInfo, PlayerListHolder, CurrentCamera, Players2, Survivors3, Killers3, Spectating, RealDevice, wait, pos, pos2, v122, s1, s2, v125, v126, v127, u128, module, v130, v131, v132, v133, t4, lib, t5, Frame

	while true do
		require_ = require_(GearClientMinigame.GearInput)
		GearClientMinigame = require(Player.Game.Minigames.GearClientMinigame)
		LockClientMinigame = require(Player.Game.Minigames.LockClientMinigame)
		require(Player.Game.Minigames.GearClientMinigame)
		FlowBoard = require(Modules.Minigames.FlowBoard)
		ConnectBoard = require(Modules.Minigames.ConnectBoard)
		LockBoard = require(Modules.Minigames.LockBoard)
		Device = require(Modules.Utilities.Device)
		PlayerList = require(Modules.Utilities.PlayerList)
		Icon = require(Modules.Utilities.Icon)
		Util = require(Modules.Utilities.Util)
		TableUtils = require(Modules.Utilities.TableUtils)
		Ragdolls = require(Modules.Rendering.Ragdolls)
		Actors = require(Modules.Gameplay.Actors)

		local Sounds = require(Modules.Rendering.Sounds)

		Config = require(Survivors2.Veeronica.Config)
		Behavior = require(Survivors2.Dusekkar.Behavior)
		Config2 = require(Survivors2.Guest1337.Config)
		Config3 = require(Survivors2.Shedletsky.Config)
		Config4 = require(Survivors2.JaneDoe.Config)
		Config5 = require(Survivors2.Taph.Config)
		Config6 = require(Killers2.Noli.Config)
		Config7 = require(Killers2.Nosferatu.Config)
		Config8 = require(Killers2.Sixer.Config)
		Config9 = require(Killers2.c00lkidd.Config)
		Config10 = require(Killers2.Azure.Config)
		cl_ConstructQTE = require(Killers2.Azure.Config.cl_WorkaroundModules.cl_ConstructQTE)
		Config11 = require(Killers2.JohnDoe.Config)
		Behavior2 = Survivors2.Veeronica.Behavior
		t3 = {
			require(Assets.Items.BloxyCola.Config).Icon,
			require(Assets.Items.Medkit.Config).Icon
		}
		v100 = table.clone(debug.getupvalue(PlayerList.ShowPlayerStats, 4))
		StatusEffects = Modules.Schematics.StatusEffects
		Slowness = require(StatusEffects.Slowness)
		Subspaced = require(StatusEffects.SurvivorExclusive.Subspaced)
		Blindness = require(StatusEffects.Blindness)
		Glitched = require(StatusEffects.KillerExclusive.Glitched)
		Slateskin = require(StatusEffects.Slateskin)
		Nausea = require(StatusEffects.Nausea)
		Stunned = require(StatusEffects.Stunned)
		Exhausted = require(StatusEffects.Exhausted)
		require(StatusEffects.KillerExclusive.Hallucination)
		TemporaryUI = LocalPlayer.PlayerGui.TemporaryUI
		PlayerInfo = TemporaryUI:FindFirstChild("PlayerInfo")
		PlayerListHolder = PlayerGui.MainUI:WaitForChild("PlayerListHolder")
		CurrentCamera = workspace.CurrentCamera
		Players2 = workspace.Players
		Survivors3 = Players2.Survivors
		Killers3 = Players2.Killers
		Spectating = Players2.Spectating
		RealDevice = _G.RealDevice or LocalPlayer:GetAttribute("Device")
		wait = task.wait
		pos = identifyexecutor():lower():find("velocity")
		pos2 = identifyexecutor():lower():find("potassium")

		local warn_ = warn
		local print_ = print
		local CoreGui = GetService("CoreGui")

		v122 = UserInputService.TouchEnabled == true and UserInputService.KeyboardEnabled == false
		s1 = "rbxassetid://116433898437270"
		s2 = "rbxassetid://81503280733693"

		local u142 = PlayerGui
		local s3 = "RoundTimer"
		local v144 = PlayerGui.WaitForChild(u142, s3)

		u142 = v144
		s3 = "Main"
		v125 = v144.WaitForChild(u142, s3)
		Config11.CorruptEnergyWindup = 2
		u142 = nil
		s3 = nil
		v126 = function(...)
			u142 = 92895727
			s3 = 642555616

			if n4 == 827602387 then
				return warn_("[Catsaken]", ...)
			end

			n10 = 851393403
			n1 -= 2044
			n2 = 209527274
			u142 -= 1919
			n8 = 710436409
			n6 = 840237668
			n5 -= 174
			s3 -= 530
			n4 -= 1645
			n3 = 912697753
			n7 = 103563414
			IsRoundLoaded = nil
		end
		v127 = function(...)
			return print_("[Catsaken]", ...)
		end
		u128 = false

		local _G_ = Network

		module = require(_G_)
		_G_ = _G
		_G_.RealDevice = RealDevice
		_G_ = obj.CATSAKEN_SBS

		if _G_ then
			SidebarHandler = obj.CATSAKEN_SBS
		end

		_G_ = nil

		local InputBegan = UserInputService.InputBegan
		local u147 = InputBegan

		InputBegan = InputBegan.Connect

		local function u148(p12, p13)
			_G_ = 201639098

			if p13 then
				return
			end

			if p12.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
				if UserInputService:IsKeyDown(Enum.KeyCode.KeypadMultiply) then
					GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer, GetService("TeleportService"):GetLocalPlayerTeleportData())
				else
					return
				end
			end
		end

		InputBegan(u147, u148)
		InputBegan = nil
		u147 = nil
		u148 = function(p14, p15)
			InputBegan = 237287929
			u147 = 543933249

			local overlapParams = OverlapParams.new()

			overlapParams.FilterType = Enum.RaycastFilterType.Include
			overlapParams.FilterDescendantsInstances = { p15 }

			for _, v in workspace:GetPartsInPart(p14, overlapParams) do
				if v == p15 then
					return true
				end

				v126("something is very wrong here")
			end

			if n4 ~= 827603168 then
				return false
			end

			n7 -= 181
			n5 += 1531
			u147 = 478565049
			n4 += 1849
			InputBegan = 563371993
			n8 = 740531447
			n6 += 1817
			n3 = 19581298
			n2 -= 465
			n1 -= 367
			n10 -= 1732
			IsFacing = nil
		end
		arePartsTouching = u148
		u148 = function(p16, p17)
			p17:FindFirstChild("QueryHitbox")

			local raycastParams = RaycastParams.new()

			raycastParams.FilterType = Enum.RaycastFilterType.Exclude
			raycastParams.FilterDescendantsInstances = {
				workspace.Players,
				p17
			}
			raycastParams.CollisionGroup = p17.PrimaryPart.CollisionGroup

			local hit = workspace:Raycast(p16.QueryHitbox.Position, p17.QueryHitbox.Position - p16.QueryHitbox.Position, raycastParams)

			if hit and hit.Instance then
				if n7 < n1 then
					return false
				end

				n7 += 579
				n3 = 982646404
				n6 = 975860418
				n5 = 906577370
				n9 = 78812434
				n1 += 106
				n10 = 342287650
				n2 -= 12
				n8 -= 109
				CreateTab = nil
			end

			return true
		end
		LineOfSight = u148
		u148 = function(p18)
			if n7 < n10 then
				return table.concat({ p18:ToHSV() }, "/")
			end

			n5 = 914624913
			n7 -= 1101
			n8 += 1838
			n3 -= 1949
			n2 = 1031466947
			n4 -= 1563
			n10 = 312955184
			n6 -= 1519
			n1 -= 324
			CATSAKEN_panic = nil
		end
		formatclr = u148
		u148 = function(...)
			if u34 or u128 then
				return
			end

			local v154 = getthreadidentity()

			setthreadidentity(2)
			Sounds:Play(...)
			setthreadidentity(v154)

			if n2 ~= 369996576 then
				return
			end

			n7 -= 1528
			n8 = 784974263
			n2 = 172387741
			n1 = 611258632
			n10 = 433563551
			n9 += 1405
			n3 -= 1913
			n5 = 701639433
			n6 -= 1093
		end
		PlaySound = u148
		u148 = function(p19, p20)
			local n15 = 1042952715
			local now2 = tick()
			local u157

			task.spawn(function()
				local ok, result = pcall(function()
					if n1 ~= n7 then
						return http.request({
							Url = p19,
							Method = "GET",
							Headers = {
								["content-type"] = "application/json"
							}
						}).Body
					end

					n10 += 1445
					n15 = 897893721
					n7 += 831
					n1 += 933
					Turn360Static = nil
					AutoGenerator = nil
				end)

				if not ok or type(result) ~= "string" then
					local ok2, result2 = pcall(request, {
						Url = p19,
						Method = "GET"
					})

					if ok2 and type(result2) == "table" and type(result2.Body) == "string" and #result2.Body > 0 then
						result = result2.Body
						ok = true
					end
				end

				if ok and type(result) == "string" then
					u157 = result
				elseif n15 == 1042954003 then
					n15 += 533
					n2 = 902549857
					n7 -= 652
					n5 = 871336041
					n1 += 303
					n10 += 1247
					CreateRangeCircle = nil
					GrabTool = nil
					CHANGELOADSTATE = nil
					get_translated_tab = nil
				else
					GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Catsaken",
						Text = "errored when requesting! script may break, try reload\nTHIS IS NOT THE SCRIPTS FAULT",
						Duration = 15
					})
				end
			end)

			while not (tick() - now2 >= 10) do
				if n10 == 355398961 then
					n5 = 175977349
					n8 = 902892559
					n1 -= 877
					n15 = 1069898860
					n10 = 525328420
					n7 -= 475
					n6 += 2041
					n9 = 971079026
					n4 -= 790
					n2 -= 290
				else
					wait()
				end

				if u157 or unloaded then
					return u157
				end
			end

			local v162 = p20 and safehttpget(p19, p20) or nil

			return v162
		end
		safehttpget = u148
		u148 = function(p21)
			local s4 = ""
			local parts = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"):split("")
			local n16 = 1
			local v166 = p21 or 16

			for i = n16, v166 do
				s4 ..= parts[math.random(1, #parts)]
			end

			return s4
		end
		randomstring = u148
		u148 = nil

		local function v168()
			u148 = 736317465
			Unload()
		end

		v130 = function(p22)
			pcall(QUITLOADING)
			GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Error",
				Text = tostring(p22) .. "\ntry reloading the script",
				Duration = 10,
				Button1 = "ok"
			})
		end

		local u169 = false
		local ErrorMessageChanged = GuiService.ErrorMessageChanged
		local v171 = ErrorMessageChanged

		ErrorMessageChanged = ErrorMessageChanged.Connect
		ErrorMessageChanged(v171, function()
			if u34 then
				return
			end

			if u169 then
				return
			end

			local Text = CoreGui:WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay"):WaitForChild("ErrorPrompt"):WaitForChild("MessageArea"):WaitForChild("ErrorFrame"):WaitForChild("ErrorMessage").Text

			if Text:lower():find("you have been kicked by this experience") then
				u169 = true
				http.request({
					Method = "POST",
					Url = "https://tamper.chieokure.workers.dev/",
					Headers = {
						["content-type"] = "application/json"
					},
					Body = HttpService:JSONEncode({
						content = "Kick: " .. Text .. "\nDevice: " .. (v122 and "Mobile" or "PC") .. "\nExecutor: " .. identifyexecutor()
					})
				})

				if Text:find("ForsakenCheatKiller") then
					v168(msg)
				end
			end
		end)
		ErrorMessageChanged = nil

		local function v173()
			ErrorMessageChanged = 395897270

			local t6 = {
				Brightness = 1,
				ClockTime = 14,
				FogEnd = 100000,
				GlobalShadows = false,
				OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			}
			local u175 = false
			local t7 = {}
			local t8 = {}
			local t9 = {}

			local function v179(p23)
				local v180
				local v181

				while true do
					v181 = p23

					if t8[v181] then
						return
					end

					t8[v181] = true

					if n5 == 142307361 then
						break
					end

					n5 = 339510867
					n1 = 1021832285
					ErrorMessageChanged -= 414
					n9 -= 442
					n3 = 559738671
					n8 += 1748
					v180[125] = 98
				end

				pcall(function()
					v181.Parent = nil
				end)
			end

			local t10 = {
				Enable = function()
					if u175 then
						return
					end

					u175 = true

					local v183, v184, Connect, v186

					for k, v in pairs(t6) do
						t7[k] = Lighting[k]
						Lighting[k] = v

						do
							local insert = table.insert

							v183 = t9

							local signal = Lighting:GetPropertyChangedSignal(k)

							v184 = signal
							Connect = signal.Connect
							v186 = function()
								local v191 = Lighting[k]

								if v191 ~= v then
									t7[k] = v191
									Lighting[k] = v
								end
							end
							insert(v183, Connect(v184, v186))

							continue
						end
					end

					for _, child in ipairs(Lighting:GetChildren()) do
						if child:IsA("Atmosphere") then
							v179(child)
						end
					end

					table.insert(t9, Lighting.ChildAdded:Connect(function(child)
						if child:IsA("Atmosphere") then
							v179(child)
						end
					end))
				end,
				Disable = function()
					if not u175 then
						return
					end

					u175 = false

					for _, v in ipairs(t9) do
						v:Disconnect()
					end

					table.clear(t9)

					for k, v in pairs(t7) do
						Lighting[k] = v
					end

					table.clear(t7)

					local Random_, v199

					for k in pairs(t8) do
						if n1 == 426030314 then
							pcall(function()
								k.Parent = Lighting
							end)
						else
							n4 += 196
							n8 -= 1826
							n1 += 864
							ErrorMessageChanged = 590989296
							n9 = 579022631
							n3 += 1183
							EntanglementActive = nil
							v199 = v199(table.unpack({ nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, Random_, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }, 1, 248))
							Random_ = Random
							OverrideIsDangerous = nil
						end
					end

					table.clear(t8)
				end
			}

			t10.Toggle = function()
				if u175 then
					t10.Disable()
				else
					t10.Enable()
				end

				return u175
			end
			t10.IsEnabled = function()
				return u175
			end

			return t10
		end

		v131 = v173()

		if not isfolder("Catsaken") then
			v126("creating catsaken folder")
			makefolder("Catsaken")
		end

		local safehttpget_, s5

		if not isfile("Catsaken/catsaken_bg.png") then
			safehttpget_ = safehttpget
			s5 = "https://github.com/aibabylaugh/catsaken/raw/main/catsaken2.png"
			writefile("Catsaken/catsaken_bg.png", safehttpget_(s5))
		end

		if not isfile("Catsaken/catsaken_transparent.png") then
			safehttpget_ = safehttpget
			s5 = "https://github.com/aibabylaugh/catsaken/raw/main/catsaken1.png"
			writefile("Catsaken/catsaken_transparent.png", safehttpget_(s5))
		end

		if not isfile("Catsaken/catsaken_mesh.png") then
			safehttpget_ = safehttpget
			s5 = "https://github.com/aibabylaugh/catsaken/raw/main/catsaken3.webp"
			writefile("Catsaken/catsaken_mesh.png", safehttpget_(s5))
		end

		safehttpget_ = "banner.png"

		local s6

		if not isfile(safehttpget_) then
			safehttpget_ = "banner.png"
			s5 = safehttpget
			s6 = "https://github.com/lunar-repo/pic/raw/main/banner.png"
			writefile(safehttpget_, s5(s6))
		end

		safehttpget_ = "catsakentemploadconfig.txt"
		v132 = isfile(safehttpget_)

		if v132 then
			safehttpget_ = "catsakentemploadconfig.txt"
			v132 = readfile(safehttpget_)
		end

		if not v132 then
			safehttpget_ = "catsakenautoload.txt"
			v132 = isfile(safehttpget_)

			if v132 then
				safehttpget_ = "catsakenautoload.txt"
				v132 = readfile(safehttpget_)
			end
		end

		v132 = v132 or "catsaken-default-" .. LocalPlayer.Name .. ".json"
		safehttpget_ = {}
		s5 = nil
		s6 = nil

		local function v204()
			s5 = 581720030
			s6 = 406417581

			if isfile("Catsaken/LucideIcons_V1.lua") then
				return true, loadfile("Catsaken/LucideIcons_V1.lua")()
			end

			local lua = safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken-real-script-not-assets/refs/heads/main/lucide.lua", true)

			if not lua then
				u34 = true

				return false, v130("External module(3) failed to load")
			end

			writefile("Catsaken/LucideIcons_V1.lua", lua)

			return true, (loadstring(lua)())
		end

		local v206, v207 = v204()

		if not v206 then
			break
		end

		v133 = function(p24)
			if typeof(p24) == "number" then
				p24 = "rbxassetid://" .. p24
			end

			if tostring(p24):find("rbxasset") then
				return {
					id = p24,
					imageRectSize = Vector2.new(0, 0),
					imageRectOffset = Vector2.new(0, 0)
				}
			end

			local v208 = v207["48px"][string.match(string.lower(p24), "^%s*(.*)%s*$")]

			if not v208 then
				return
			end

			local v209 = v208[2]
			local v210 = v208[3]

			return {
				id = "rbxassetid://" .. v208[1],
				imageRectSize = Vector2.new(v209[1], v209[2]),
				imageRectOffset = Vector2.new(v210[1], v210[2])
			}
		end
		t4 = {}

		local v211 = not boolCatsakenOldui and (function()
			if isfile("catsakenconfigs.json") then
				v127("catsakenconfigs.json exists, loading " .. v132)
				safehttpget_ = HttpService:JSONDecode(readfile("catsakenconfigs.json"))[v132] or {}
			else
				v126("Creating a default config (" .. v132 .. ")")
				writefile("catsakenconfigs.json", HttpService:JSONEncode({ [v132] = {} }))
			end

			local t = { AccentColorChanged = Instance.new("BindableEvent") }
			local p = Color3.fromRGB(255, 190, 80)
			local S = {}
			local x = {}

			do
				local g, C, f = p:ToHSV()

				for P, i in pairs({ alt = Color3.fromRGB(255, 173, 80), hover = Color3.fromRGB(255, 150, 30), mid = Color3.fromRGB(245, 159, 39), dark = Color3.fromRGB(140, 85, 15), dark2 = Color3.fromRGB(160, 100, 15), deep = Color3.fromRGB(110, 65, 5), light = Color3.fromRGB(255, 200, 110) }) do
					local O, q, X = i:ToHSV()

					S[P] = { O - g, q / C, X / f }
				end
			end

			local g = {}

			local function C(f)
				local P = f and g[f]

				if P then
					return P
				end

				local P = f and S[f]

				if not P then
					return p
				end

				local f, i, O = p:ToHSV()

				return Color3.fromHSV((f + P[1]) % 1, math.clamp(i * P[2], 0, 1), math.clamp(O * P[3], 0, 1))
			end
			local function f(P)
				P()
				x[#x + 1] = P
			end
			local function P(i, O, q)
				f(function()
					i[O] = C(q)
				end)
			end
			local function i()
				for O, O in ipairs(x) do
					pcall(O)
				end
			end
			local function x(O)
				return string.format("rgb(%d, %d, %d)", math.floor(O.R * 255 + 0.5), math.floor(O.G * 255 + 0.5), math.floor(O.B * 255 + 0.5))
			end

			t4[#t4 + 1] = t.AccentColorChanged.Event:Connect(function(O)
				if typeof(O) ~= "Color3" then
					return
				end

				p = O
				i()
			end)
			t.AccentVariantChanged = Instance.new("BindableEvent")
			t.AccentShadeNames = { "alt", "hover", "mid", "dark", "dark2", "deep", "light" }
			t4[#t4 + 1] = t.AccentVariantChanged.Event:Connect(function(O, q)
				if not S[O] then
					return
				end

				g[O] = typeof(q) == "Color3" and q or nil
				i()
			end)

			function t:GetAccent(S)
				return C(S)
			end

			if RunService:IsStudio() then
				LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("debugUi"):Destroy()
			end

			local function S(O)
				local q = Instance.new("Frame")

				q.Size = UDim2.new(1, 0, 0, 80)
				q.Position = UDim2.new(0, 0, 1, -80.0)
				q.BackgroundColor3 = Color3.new(0, 0, 0)
				q.BackgroundTransparency = 0
				q.ZIndex = O.ZIndex + 1
				q.Parent = O.Parent

				local X = Instance.new("UICorner")

				X.Parent = q
				X.CornerRadius = UDim.new(0, 5)

				local X = Instance.new("UIGradient")

				X.Rotation = 90
				X.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0.6) })
				X.Parent = q

				local function X()
					local T = (O.CanvasPosition.Y + O.AbsoluteWindowSize.Y + 10) >= O.AbsoluteCanvasSize.Y - 1

					TweenService:Create(q, TweenInfo.new(0.1, Enum.EasingStyle.Quad), { BackgroundTransparency = T and 1 or 0 }):Play()
				end

				t4[#t4 + 1] = O:GetPropertyChangedSignal("CanvasPosition"):Connect(X)

				return q
			end
			local function O(q, X, T)
				local o = Instance.new("Frame")

				o.Name = "Ripple"
				o.AnchorPoint = Vector2.new(0.5, 0.5)
				o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				o.BackgroundTransparency = 0.6
				o.BorderSizePixel = 0
				o.Position = UDim2.fromOffset(X, T)
				o.Size = UDim2.fromOffset(0, 0)
				o.ZIndex = q.ZIndex + 1
				o.ClipsDescendants = false

				local X = Instance.new("UICorner")

				X.CornerRadius = UDim.new(1, 0)
				X.Parent = o
				o.Parent = q

				local X = q.AbsoluteSize
				local q = math.sqrt(X.X ^ 2 + X.Y ^ 2) * 0.2
				local X = GetService("TweenService")
				local T = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				local l = X:Create(o, T, { Size = UDim2.fromOffset(q, q), BackgroundTransparency = 1 })

				l:Play()
				t4[#t4 + 1] = l.Completed:Connect(function()
					o:Destroy()
				end)
			end
			local function q(X)
				X.ScrollBarThickness = 0

				local T = Instance.new("TextButton")

				T.Name = "CustomScrollTrack"
				T.Parent = X.Parent
				T.AnchorPoint = Vector2.new(1, 0)
				T.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				T.BackgroundTransparency = 0.450
				T.BorderSizePixel = 0
				T.ZIndex = X.ZIndex + 1
				T.Text = ""

				local o = Instance.new("Frame")

				o.Name = "Bar"
				o.Parent = T
				o.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				o.BackgroundTransparency = 0.2
				o.BorderSizePixel = 0
				o.Size = UDim2.new(1, 0, 1, 0)
				o.Position = UDim2.new(0, 0, 0, 0)

				local function l()
					T.Position = UDim2.new(1, -2.0, 0, 0)
					T.Size = UDim2.new(0, 16, 1, 0)
				end

				l()

				local G = false
				local w = 0
				local y = 0

				local function b()
					local U = X.AbsoluteCanvasSize.Y
					local h = X.AbsoluteWindowSize.Y

					if U <= h + 1 then
						T.Visible = false

						return
					end

					T.Visible = true

					local a = T.AbsoluteSize.Y
					local J = math.clamp(h / U, 0.05, 1)
					local r = math.max(a * J, 20)
					local J = U - h
					local U = J > 0 and (X.CanvasPosition.Y / J) or 0
					local h = a - r

					o.Size = UDim2.new(1, 0, 0, r)
					o.Position = UDim2.new(0, 0, 0, h * U)
				end

				t4[#t4 + 1] = X:GetPropertyChangedSignal("CanvasPosition"):Connect(b)
				t4[#t4 + 1] = X:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(b)
				t4[#t4 + 1] = X:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(b)
				t4[#t4 + 1] = T:GetPropertyChangedSignal("AbsoluteSize"):Connect(b)
				t4[#t4 + 1] = X:GetPropertyChangedSignal("AbsolutePosition"):Connect(l)
				t4[#t4 + 1] = X:GetPropertyChangedSignal("AbsoluteSize"):Connect(l)

				local function l(U)
					local h = T.AbsolutePosition.Y
					local a = T.AbsoluteSize.Y
					local J = o.AbsoluteSize.Y
					local r = X.AbsoluteCanvasSize.Y
					local H = X.AbsoluteWindowSize.Y
					local I = math.max(r - H, 0)
					local r = math.max(a - J, 1)
					local a = math.clamp(U - h - (J / 2), 0, r)
					local U = a / r

					X.CanvasPosition = Vector2.new(X.CanvasPosition.X, I * U)
				end

				t4[#t4 + 1] = UserInputService.InputChanged:Connect(function(U)
					if G and (U.UserInputType == Enum.UserInputType.MouseMovement or U.UserInputType == Enum.UserInputType.Touch) then
						local h = X.AbsoluteCanvasSize.Y
						local a = X.AbsoluteWindowSize.Y
						local J = math.max(h - a, 0)
						local h = T.AbsoluteSize.Y
						local a = o.AbsoluteSize.Y
						local r = math.max(h - a, 1)
						local h = U.Position.Y - w
						local U = (h / r) * J

						X.CanvasPosition = Vector2.new(X.CanvasPosition.X, math.clamp(y + U, 0, J))
					end
				end)
				t4[#t4 + 1] = UserInputService.InputEnded:Connect(function(U)
					if U.UserInputType == Enum.UserInputType.MouseButton1 or U.UserInputType == Enum.UserInputType.Touch then
						G = false
					end
				end)
				t4[#t4 + 1] = T.InputBegan:Connect(function(U)
					if U.UserInputType ~= Enum.UserInputType.MouseButton1 and U.UserInputType ~= Enum.UserInputType.Touch then
						return
					end

					local h = o.AbsolutePosition.Y
					local a = o.AbsoluteSize.Y
					local o = U.Position.Y >= h and U.Position.Y <= h + a

					if o then
						G = true
						w = U.Position.Y
						y = X.CanvasPosition.Y
					else
						l(U.Position.Y)
					end
				end)
				b()

				return T
			end

			local X = (function()
				local T, o, l = GetService("RunService"), GetService("UserInputService"), GetService("ContextActionService")

				if not T:IsClient() then
					error("SmoothScroll can only be used on the client")
				end

				local G = RunService:IsStudio() and LocalPlayer:WaitForChild("PlayerGui") or CoreGui
				local u = LocalPlayer:GetMouse()
				local w, y = ipairs, pairs

				wait()

				local b, _ = u.ViewSizeY / 27, 0.78
				local U = {}
				local h
				local a = false

				if not o.TouchEnabled then
					h = Instance.new("ScreenGui")
					h.Name = "SmoothScroll"
					h.Parent = G
					t4[#t4 + 1] = T.Heartbeat:Connect(function()
						for T, J in y(U) do
							if J.Velocity > 0.05 or J.Velocity < -0.05 then
								J.Velocity = J.Velocity * J.Frict

								if J.Axis == "X" then
									T.CanvasPosition = Vector2.new(T.CanvasPosition.X + J.Velocity, T.CanvasPosition.Y)

									if math.abs(J.LastPos - T.CanvasPosition.X) == 0 then
										J.Velocity = 0
									end

									J.LastPos = T.CanvasPosition.X
								else
									T.CanvasPosition = Vector2.new(T.CanvasPosition.X, T.CanvasPosition.Y + J.Velocity)

									if math.abs(J.LastPos - T.CanvasPosition.Y) == 0 then
										J.Velocity = 0
									end

									J.LastPos = T.CanvasPosition.Y
								end
							end
						end
					end)
					t4[#t4 + 1] = o.PointerAction:Connect(function(T, T, J, J)
						if not a then
							local J = G:GetGuiObjectsAtPosition(u.X, u.Y)

							for r, r in w(J) do
								local J = U[r]

								if J and J.Visibility.Visible == true then
									J.Velocity = J.Velocity - (J.Sens * T.Y * (J.Inverted and -1.0 or 1))

									break
								end
							end
						end
					end)
					l:BindActionAtPriority("SmoothScroll", function(T, T, T)
						if a then
							return Enum.ContextActionResult.Pass
						end

						local l = false
						local J = G:GetGuiObjectsAtPosition(u.X, u.Y)

						for G, G in w(J) do
							local J = U[G]

							if J and J.Visibility.Visible == true then
								J.Velocity = J.Velocity - (J.Sens * T.Position.Z * (J.Inverted and -1.0 or 1))
								l = true

								break
							end
						end

						return l and Enum.ContextActionResult.Sink or Enum.ContextActionResult.Pass
					end, false, 8000, Enum.UserInputType.MouseWheel)
				end

				local T = {}

				T.__index = T

				function T.new(l)
					assert(typeof(l) == "Instance" and l:IsA("GuiObject"), "Argument #1 expected GuiObject")

					local G = Instance.new("BindableEvent")
					local J = setmetatable({ GuiObject = l, Visible = nil, Changed = G.Event, _path = {}, _conn = {}, _root = nil, _visibleChanged = G }, T)

					local function r()
						local H = (J._root and J._root.Enabled or false)

						if (H) then
							local I = J._path

							for v, v in w(I) do
								if (not v.Visible) then
									H = false

									break
								end
							end
						end

						if (H ~= J.Visible) then
							J.Visible = H
							G:Fire(H)
						end
					end
					local function G()
						for H, H in w(J._conn) do
							H:Disconnect()
						end

						local H = {}
						local I = {}
						local v = nil
						local V = l

						while (V and (V:IsA("GuiObject") or V:IsA("Folder"))) do
							if V:IsA("GuiObject") then
								I[#I + 1] = V:GetPropertyChangedSignal("Visible"):Connect(r)
								t4[#t4 + 1] = I[#I]
								H[#H + 1] = V
							end

							V = V.Parent
						end

						if (V and V:IsA("LayerCollector")) then
							I[#I + 1] = V:GetPropertyChangedSignal("Enabled"):Connect(r)
							t4[#t4 + 1] = I[#I]
							v = V
						end

						J._path = H
						J._conn = I
						J._root = v
						r()
					end

					J._ancestry = l.AncestryChanged:Connect(function(l, l)
						G()
					end)
					t4[#t4 + 1] = J._ancestry
					G()

					return J
				end
				function T:Destroy()
					self._visibleChanged:Fire(false)
					self._visibleChanged:Destroy()
					self._ancestry:Disconnect()

					for l, l in w(self._conn) do
						l:Disconnect()
					end
				end

				local function l(G, J)
					J = J or "Y"

					if not (G and typeof(G) == "Instance" and G.ClassName == "ScrollingFrame") then
						v126("Invalid frame to create custom bar")

						return
					end

					local r = Instance.new("TextButton")

					r.Name = G.Name .. "_Scroller_" .. J
					r.Text = ""
					r.BackgroundTransparency = 1
					r.Visible = U[G].Visibility.Visible

					local H, I, v = G.AbsoluteSize, G.AbsolutePosition, G.ScrollBarThickness
					local V

					t4[#t4 + 1] = r.MouseButton1Down:Connect(function()
						if not a and not V then
							a = true

							local K = Vector2.new(u.X, u.Y)

							V = o.InputChanged:Connect(function(u)
								if u.UserInputType == Enum.UserInputType.MouseMovement then
									local c = Vector2.new(u.Position.X, u.Position.Y)
									local u = c - K
									local L = (J == "Y" and u.Y or u.X) / (J == "Y" and G.AbsoluteWindowSize.Y or G.AbsoluteWindowSize.X)
									local u = G:FindFirstAncestorWhichIsA("GuiBase2d")
									local F = Vector2.new((G.CanvasSize.X.Scale * u.AbsoluteSize.X) + G.CanvasSize.X.Offset, (G.CanvasSize.Y.Scale * u.AbsoluteSize.Y) + G.CanvasSize.Y.Offset)

									G.CanvasPosition = Vector2.new(G.CanvasPosition.X + (J == "X" and F.X * L or 0), G.CanvasPosition.Y + (J == "Y" and F.Y * L or 0))
									K = c
								end
							end)
						end
					end)

					local u = o.InputEnded:Connect(function(K)
						if K.UserInputType == Enum.UserInputType.MouseButton1 and V then
							a = false
							V:Disconnect()
							V = nil
						end
					end)

					t4[#t4 + 1] = u
					t4[#t4 + 1] = U[G].Visibility.Changed:Connect(function(K)
						r.Visible = K

						if not K and V then
							a = false
							V:Disconnect()
							V = nil
						end
					end)

					if J == "X" then
						r.Size = UDim2.new(0, H.X, 0, v)
						r.Position = UDim2.new(0, I.X, 0, I.Y + H.Y - v)
					else
						r.Size = UDim2.new(0, v, 0, H.Y)
						r.Position = UDim2.new(0, G.VerticalScrollBarPosition == Enum.VerticalScrollBarPosition.Right and I.X + H.X - v or I.X, 0, I.Y)
					end

					local a

					a = G.Changed:Connect(function(K)
						if U[G] then
							if G:FindFirstAncestorWhichIsA("GuiBase2d") then
								if K == "AbsoluteSize" or K == "AbsolutePosition" or K == "AbsolutePosition" or K == "CanvasSize" or K == "ScrollBarThickness" then
									H, I, v = G.AbsoluteSize, G.AbsolutePosition, G.ScrollBarThickness

									if J == "X" then
										r.Size = UDim2.new(0, H.X, 0, v)
										r.Position = UDim2.new(0, I.X, 0, I.Y + H.Y - v)
									else
										r.Size = UDim2.new(0, v, 0, H.Y)
										r.Position = UDim2.new(0, G.VerticalScrollBarPosition == Enum.VerticalScrollBarPosition.Right and I.X + H.X - v or I.X, 0, I.Y)
									end
								end
							end
						else
							r:Destroy()
							a:Disconnect()
							u:Disconnect()

							if V then
								V:Disconnect()
								V = nil
							end
						end
					end)
					t4[#t4 + 1] = a
					r.Parent = h
				end

				local u = {}

				function u.Enable(G, h, a, J, r)
					if o.MouseEnabled and not o.TouchEnabled then
						if not (G and typeof(G) == "Instance" and G.ClassName == "ScrollingFrame") then
							v126("Invalid frame to smooth")

							return
						end

						if not U[G] then
							G.ScrollingEnabled = false

							local o, H = {}, {}

							for I, I in w(G:GetDescendants()) do
								if I:IsA("GuiObject") then
									o[I] = I.Active
									I.Active = false
									H[#H + 1] = I:GetPropertyChangedSignal("Active"):Connect(function()
										I.Active = false
									end)
									t4[#t4 + 1] = H[#H]
								end
							end

							local I = G

							while (I and (I:IsA("GuiObject") or I:IsA("Folder"))) do
								if I:IsA("GuiObject") then
									o[I] = I.Active
									I.Active = false
									H[#H + 1] = I:GetPropertyChangedSignal("Active"):Connect(function()
										I.Active = false
									end)
									t4[#t4 + 1] = H[#H]
								end

								I = I.Parent
							end

							H[#H + 1] = G.DescendantAdded:Connect(function(I)
								if I:IsA("GuiObject") then
									U[G].Actives[I] = I.Active
									I.Active = false
									U[G].Connections[#U[G].Connections + 1] = I:GetPropertyChangedSignal("Active"):Connect(function()
										I.Active = false
									end)
								end
							end)
							t4[#t4 + 1] = H[#H]

							if r and (r == "X" or r == "Y") then
							else
								r = "Y"

								if (G.CanvasSize.Y.Offset > 0 or G.CanvasSize.Y.Scale > 0) then
									r = "Y"
								elseif (G.CanvasSize.X.Offset > 0 or G.CanvasSize.X.Scale > 0) then
									r = "X"
								end
							end

							U[G] = { Connections = H, Actives = o, Velocity = 0, LastPos = 0, Visibility = T.new(G), Inverted = J, Axis = r, Frict = math.clamp(type(a) == "number" and a or 0.78, 0.2, 0.99), Sens = math.clamp(type(h) == "number" and h or b, 0.01, 99999999999999999) }
							l(G, "X")
							l(G, "Y")
						else
							U[G].Sens = math.clamp(type(h) == "number" and h or b, 0.01, 99999999999999999)
							U[G].Frict = math.clamp(type(a) == "number" and a or 0.78, 0.2, 0.99)
							U[G].Inverted = J
						end
					end
				end
				function u.Disable(T)
					if U[T] then
						T.ScrollingEnabled = true

						for o, o in w(U[T].Connections) do
							o:Disconnect()
						end

						U[T].Visibility:Destroy()

						for o, l in y(U[T].Actives) do
							o.Active = l
						end

						U[T] = nil
					end
				end

				return u
			end)()

			local function u(T, o)
				local l = Instance.new("UIDragDetector")

				l.Parent = o
				l.ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomOffset

				local o, G

				l.DragContinue:Connect(function(w)
					if not o then
						o, G = w, T.Position

						return
					end

					local y = w - o

					TweenService:Create(T, TweenInfo.new(0.05), { Position = UDim2.new(G.X.Scale, G.X.Offset + y.X, G.Y.Scale, G.Y.Offset + y.Y) }):Play()
				end)
				l.DragEnd:Connect(function()
					o = nil
				end)
			end

			function t:CreateWindow(T)
				local o = T.Translations

				if not boolCatsakenOldui and not o then
					v126("no translations!")
				end

				local j = {}
				local o = _G.LUNAR_BACKGROUND or getcustomasset("banner.png")

				local function l()
				end

				if isfolder("lunarbackgrounds") then
					delfolder("lunarbackgrounds")
				end

				makefolder("lunarbackgrounds")

				function _G.UpdGuiBackground()
					o = _G.LUNAR_BACKGROUND

					if o then
						local G = "lunarbackgrounds/" .. randomstring(10)

						if (o:find("https://") or o:find("http://")) and not o:match("http?.://roblox%.com") then
							local w = safehttpget(o)

							if w and type(w) == "string" then
								writefile(G, w)
								o = getcustomasset(G) or getcustomasset("banner.png")
							end
						end
					else
						o = getcustomasset("banner.png")
					end

					l()
				end

				_G.UpdGuiBackground()

				local G = T.Name
				local w = T.Icon

				if typeof(w) == "number" then
					w = "rbxassetid://" .. w
				end

				local y = Instance.new("ScreenGui")
				local b = Instance.new("Frame")
				local U = Instance.new("ImageLabel")
				local h = Instance.new("UICorner")
				local a = Instance.new("Frame")
				local J = Instance.new("UICorner")
				local r = Instance.new("ImageLabel")
				local H = Instance.new("TextLabel")
				local I = Instance.new("Frame")
				local v = Instance.new("UICorner")
				local V = Instance.new("ImageLabel")
				local K = Instance.new("TextBox")
				local c = Instance.new("UICorner")
				local L = Instance.new("Frame")
				local F = Instance.new("ScrollingFrame")
				local B = Instance.new("UIListLayout")

				u(b, a)

				local u = Instance.new("UIShadow")

				u.Parent = b
				u.BlurRadius = UDim.new(0, 10)
				y.Name = GetService("HttpService"):GenerateGUID()
				y.Parent = not RunService:IsStudio() and gethui() or LocalPlayer.PlayerGui
				y.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				y.ResetOnSpawn = false
				y.Enabled = false
				y.OnTopOfCoreBlur = true
				y.DisplayOrder = 2.147483647E9
				_G.globaluilibrary = y
				t4[#t4 + 1] = UserInputService.InputBegan:Connect(function(D, u)
					if u34 then
						return
					end

					if u then
						return
					end

					if D.KeyCode == Enum.KeyCode.F4 then
						if obj.MobileToggle and obj.MobileToggle.isSelected then
							obj.MobileToggle:deselect()
						elseif obj.MobileToggle then
							obj.MobileToggle:select()
						end
					end
				end)

				local D = Instance.new("Frame")
				local u = Instance.new("UICorner")
				local e = Instance.new("UIStroke")
				local s = Instance.new("UIPadding")
				local _v = Instance.new("TextLabel")
				local tv = Instance.new("UIScale")

				D.Name = "Tooltip"
				D.Parent = y
				D.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				D.BackgroundTransparency = 0.05
				D.BorderSizePixel = 0
				D.Size = UDim2.fromOffset(220, 0)
				D.AutomaticSize = Enum.AutomaticSize.Y
				D.Visible = false
				D.ZIndex = 1000
				u.CornerRadius = UDim.new(0, 7)
				u.Parent = D
				e.Color = Color3.fromRGB(65, 65, 65)
				e.Thickness = 1
				e.Transparency = 0.15
				e.Parent = D
				s.PaddingLeft = UDim.new(0, 10)
				s.PaddingRight = UDim.new(0, 10)
				s.PaddingTop = UDim.new(0, 7)
				s.PaddingBottom = UDim.new(0, 7)
				s.Parent = D
				_v.Parent = D
				_v.BackgroundTransparency = 1
				_v.BorderSizePixel = 0
				_v.Size = UDim2.new(1, 0, 0, 0)
				_v.AutomaticSize = Enum.AutomaticSize.Y
				_v.Font = Enum.Font.Gotham
				_v.TextColor3 = Color3.fromRGB(220, 220, 220)
				_v.TextSize = 12
				_v.TextWrapped = true
				_v.TextXAlignment = Enum.TextXAlignment.Left
				_v.TextYAlignment = Enum.TextYAlignment.Top
				_v.RichText = true
				_v.ZIndex = 1001
				tv.Scale = 1
				tv.Parent = D

				local u = nil
				local s = nil
				local Qv = false
				local kv = 0
				local Wv = nil

				local function mv()
					if Wv then
						return Wv.Position
					end

					return UserInputService:GetMouseLocation()
				end
				local function pv()
					if not Qv then
						return
					end

					local dv = workspace.CurrentCamera

					if not dv then
						return
					end

					local jv = dv.ViewportSize
					local dv = mv()
					local mv = D.AbsoluteSize
					local nv = dv.X + 14
					local Mv = dv.Y - mv.Y - 14

					if nv + mv.X > jv.X - 6 then
						nv = dv.X - mv.X - 14
					end

					if Mv < 6 then
						Mv = dv.Y + 14
					end

					nv = math.clamp(nv, 6, math.max(6, jv.X - mv.X - 6))
					Mv = math.clamp(Mv, 6, math.max(6, jv.Y - mv.Y - 6))
					D.Position = UDim2.fromOffset(nv, Mv)
				end
				local function mv(dv, jv)
					if not jv or jv == "" then
						return
					end

					kv += 1

					local nv = kv

					u = dv
					s = jv
					Qv = true
					_v.Text = jv
					D.Visible = true
					tv.Scale = 0.96
					D.BackgroundTransparency = 0.05
					e.Transparency = 0.15
					task.defer(function()
						if nv ~= kv or not Qv then
							return
						end

						pv()
						TweenService:Create(tv, TweenInfo.new(0.12, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Scale = 1 }):Play()
					end)
				end
				local function e()
					kv += 1
					u = nil
					s = nil
					Qv = false
					Wv = nil
					D.Visible = false
				end
				local function D(s, _v)
					if not s or not _v then
						return
					end

					local tv = _v.ToolTip

					if not tv or tv == "" then
						return
					end

					s.Active = true
					t4[#t4 + 1] = s.MouseEnter:Connect(function()
						if v122 then
							return
						end

						mv(s, tv)
					end)
					t4[#t4 + 1] = s.MouseLeave:Connect(function()
						if v122 then
							return
						end

						if u == s then
							e()
						end
					end)
					t4[#t4 + 1] = s.InputBegan:Connect(function(_v)
						if _v.UserInputType ~= Enum.UserInputType.Touch then
							return
						end

						Wv = _v
						kv += 1

						local dv = kv

						task.delay(0.28, function()
							if dv ~= kv then
								return
							end

							if Wv ~= _v then
								return
							end

							mv(s, tv)
						end)
					end)
					t4[#t4 + 1] = s.InputChanged:Connect(function(_v)
						if _v.UserInputType == Enum.UserInputType.Touch then
							Wv = _v

							if u == s then
								pv()
							end
						end
					end)
					t4[#t4 + 1] = s.InputEnded:Connect(function(u)
						if u.UserInputType == Enum.UserInputType.Touch then
							if Wv == u then
								e()
							end
						end
					end)
				end

				t4[#t4 + 1] = UserInputService.InputChanged:Connect(function(u)
					if u.UserInputType == Enum.UserInputType.MouseMovement then
						if Qv then
							pv()
						end
					elseif u.UserInputType == Enum.UserInputType.Touch then
						if Qv then
							Wv = u
							pv()
						end
					end
				end)
				y.IgnoreGuiInset = true
				b.Parent = y
				b.AnchorPoint = Vector2.new(0.5, 0.5)
				b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				b.BorderColor3 = Color3.fromRGB(0, 0, 0)
				b.BorderSizePixel = 0
				b.Position = UDim2.new(0.5, 0, 0.5, 0)
				b.Size = (v122 or _G.SINGLE_COLUMNS) and UDim2.new(0, 570, 0, (v122 or _G.SINGLE_COLUMNS) and y.AbsoluteSize.Y / 1.4) or UDim2.new(0, 890, 0, 460)
				pcall(function()
					local u, y = readfile("CatsakenMenuSize.txt"):match("(%d+),(%d+)")

					b.Size = UDim2.fromOffset(math.max(420, tonumber(u)), math.max(260, tonumber(y)))
				end)
				h.TopLeftRadius = UDim.new(0, 5)
				h.TopRightRadius = UDim.new(0, 5)
				h.BottomRightRadius = UDim.new(0, 5)
				h.BottomLeftRadius = UDim.new(0, 5)
				h.Parent = b

				local u = Instance.new("UIStroke")

				P(u, "Color")
				u.Transparency = 0.75
				u.Thickness = 1
				u.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				u.Parent = b
				a.Parent = b
				a.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
				a.BackgroundTransparency = 0.650
				a.BorderColor3 = Color3.fromRGB(0, 0, 0)
				a.BorderSizePixel = 0
				a.Size = UDim2.new(1, 0, 0, 50)
				J.TopLeftRadius = UDim.new(0, 5)
				J.TopRightRadius = UDim.new(0, 5)
				J.BottomRightRadius = UDim.new(0, 0)
				J.BottomLeftRadius = UDim.new(0, 0)
				J.Parent = a
				r.Parent = a
				r.AnchorPoint = Vector2.new(0, 0.5)
				r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				r.BackgroundTransparency = 1.000
				r.BorderColor3 = Color3.fromRGB(0, 0, 0)
				r.BorderSizePixel = 0
				r.Position = UDim2.new(0, 3, 0.5, 0)
				r.Size = UDim2.new(0, 36, 0, 36)
				r.Image = w
				H.Parent = a
				H.AnchorPoint = Vector2.new(0, 0.5)
				H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				H.BackgroundTransparency = 1.000
				H.BorderColor3 = Color3.fromRGB(0, 0, 0)
				H.BorderSizePixel = 0
				H.Position = UDim2.new(0, 50, 0.5, 0)
				H.Size = UDim2.new(0, 200, 0, 20)
				H.FontFace = Font.fromName("Arial", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
				H.Text = G
				H.TextColor3 = Color3.fromRGB(255, 255, 255)
				H.TextSize = 14.000
				H.TextXAlignment = Enum.TextXAlignment.Left
				H.RichText = true

				local u = H:Clone()

				u.Parent = a
				u.AnchorPoint = Vector2.new(1, 0.5)
				u.Position = UDim2.new(1, -17.0, 0.5, 0)
				u.Text = T.Version or "V0.0"
				u.TextColor3 = Color3.fromRGB(144, 144, 144)
				u.Size = UDim2.new(0, 34, 0, 14)
				u.TextXAlignment = Enum.TextXAlignment.Right

				local w = Instance.new("UIGradient")

				f(function()
					w.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, C()), ColorSequenceKeypoint.new(1, C("alt")) })
				end)
				w.Parent = H

				function _G.UpdGuiTitle()
					H.Text = type(_G.LUNAR_TITLE) == "string" and _G.LUNAR_TITLE or G
				end

				local _, _ = 28, 139
				local G = Color3.fromRGB(150, 150, 150)
				local w = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				local y = TweenInfo.new(0.15)
				local h, J = false, false

				RunService.RenderStepped:Wait()
				I.Name = "search"
				I.Parent = a
				I.AnchorPoint = Vector2.new(1, 0.5)
				P(I, "BackgroundColor3", "dark")
				I.BackgroundTransparency = 1
				I.BorderColor3 = Color3.fromRGB(0, 0, 0)
				I.BorderSizePixel = 0
				I.ClipsDescendants = true
				I.Position = UDim2.new(1, -(22 + u.TextBounds.X + 56.0), 0.5, 0)
				I.Size = UDim2.new(0, 28, 1, -24.0)
				v.CornerRadius = UDim.new(0, 5)
				v.Parent = I

				local r = v133("search")

				V.Parent = I
				V.AnchorPoint = Vector2.new(1, 0.5)
				V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				V.BackgroundTransparency = 1.000
				V.BorderColor3 = Color3.fromRGB(0, 0, 0)
				V.BorderSizePixel = 0
				V.Position = UDim2.new(1, -6.0, 0.5, 0)
				V.Size = UDim2.new(0, 16, 0, 16)
				V.Image = r.id
				V.ImageRectOffset = r.imageRectOffset
				V.ImageRectSize = r.imageRectSize
				V.ImageColor3 = G
				K.Parent = I
				K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				K.BackgroundTransparency = 1.000
				K.BorderColor3 = Color3.fromRGB(0, 0, 0)
				K.BorderSizePixel = 0
				K.ClipsDescendants = true
				K.Position = UDim2.new(0, 4, 0, 0)
				K.Size = UDim2.new(1, -34.0, 1, 0)
				K.Font = Enum.Font.GothamMedium
				K.PlaceholderText = "Search"
				K.Text = ""
				K.TextColor3 = Color3.fromRGB(255, 255, 255)
				K.TextSize = 14.000
				K.TextXAlignment = Enum.TextXAlignment.Left
				K.Visible = false

				local r = Instance.new("TextButton")

				r.Name = "hit"
				r.Parent = I
				r.BackgroundTransparency = 1
				r.BorderSizePixel = 0
				r.Size = UDim2.new(1, 0, 1, 0)
				r.Text = ""
				r.AutoButtonColor = false
				r.ZIndex = 5

				local function H()
					TweenService:Create(V, y, { ImageColor3 = (h or J) and C("hover") or G }):Play()
				end

				f(H)

				local function v(V)
					h = V
					J = false
					r.Visible = not V
					K.Visible = V
					TweenService:Create(I, w, { Size = UDim2.new(0, V and 139 or 28, 1, -24.0), BackgroundTransparency = V and 0.65 or 1 }):Play()
					H()

					if V then
						K:CaptureFocus()
					end
				end

				t4[#t4 + 1] = r.MouseEnter:Connect(function()
					J = true
					H()
				end)
				t4[#t4 + 1] = r.MouseLeave:Connect(function()
					J = false
					H()
				end)
				t4[#t4 + 1] = r.MouseButton1Click:Connect(function()
					PlaySound("select")
					v(true)
				end)
				t4[#t4 + 1] = K.FocusLost:Connect(function()
					if h and K.Text == "" then
						v(false)
					end
				end)

				local w = Instance.new("Frame")

				w.Name = "settings"
				w.Parent = a
				w.AnchorPoint = Vector2.new(1, 0.5)
				w.BackgroundTransparency = 1
				w.BorderSizePixel = 0
				w.ClipsDescendants = true
				w.Position = UDim2.new(1, -(22 + u.TextBounds.X), 0.5, 0)
				w.Size = UDim2.new(0, 28, 1, -24.0)

				local h = Instance.new("UICorner")

				h.CornerRadius = UDim.new(0, 5)
				h.Parent = w

				local h = v133("settings")
				local J = Instance.new("ImageLabel")

				J.Parent = w
				J.AnchorPoint = Vector2.new(1, 0.5)
				J.BackgroundTransparency = 1
				J.BorderSizePixel = 0
				J.Position = UDim2.new(1, -6.0, 0.5, 0)
				J.Size = UDim2.new(0, 16, 0, 16)
				J.Image = h.id
				J.ImageRectOffset = h.imageRectOffset
				J.ImageRectSize = h.imageRectSize
				J.ImageColor3 = G

				local h = Instance.new("TextButton")

				h.Name = "hit"
				h.Parent = w
				h.BackgroundTransparency = 1
				h.BorderSizePixel = 0
				h.Size = UDim2.new(1, 0, 1, 0)
				h.Text = ""
				h.AutoButtonColor = false
				h.ZIndex = 5

				local function w(r)
					TweenService:Create(J, y, { ImageColor3 = r }):Play()
				end

				t4[#t4 + 1] = h.MouseEnter:Connect(function()
					w(C("hover"))
				end)
				t4[#t4 + 1] = h.MouseLeave:Connect(function()
					w(G)
				end)
				t4[#t4 + 1] = h.MouseButton1Click:Connect(function()
					if not t._SettingsTabIndex then
						v126("yo theres no settings tab wtf")
					end

					PlaySound("select")
					j:SelectTab(t._SettingsTabIndex)
				end)

				local w = Instance.new("Frame")

				w.Name = "theme"
				w.Parent = a
				w.AnchorPoint = Vector2.new(1, 0.5)
				w.BackgroundTransparency = 1
				w.BorderSizePixel = 0
				w.ClipsDescendants = true
				w.Position = UDim2.new(1, -(22 + u.TextBounds.X + 28), 0.5, 0)
				w.Size = UDim2.new(0, 28, 1, -24.0)

				local u = Instance.new("UICorner")

				u.CornerRadius = UDim.new(0, 5)
				u.Parent = w

				local u = v133("paintbrush")
				local h = Instance.new("ImageLabel")

				h.Parent = w
				h.AnchorPoint = Vector2.new(1, 0.5)
				h.BackgroundTransparency = 1
				h.BorderSizePixel = 0
				h.Position = UDim2.new(1, -6.0, 0.5, 0)
				h.Size = UDim2.new(0, 16, 0, 16)
				h.Image = u.id
				h.ImageRectOffset = u.imageRectOffset
				h.ImageRectSize = u.imageRectSize
				h.ImageColor3 = G

				local u = Instance.new("TextButton")

				u.Name = "hit"
				u.Parent = w
				u.BackgroundTransparency = 1
				u.BorderSizePixel = 0
				u.Size = UDim2.new(1, 0, 1, 0)
				u.Text = ""
				u.AutoButtonColor = false
				u.ZIndex = 5

				local function w(a)
					TweenService:Create(h, y, { ImageColor3 = a }):Play()
				end

				t4[#t4 + 1] = u.MouseEnter:Connect(function()
					w(C("hover"))
				end)
				t4[#t4 + 1] = u.MouseLeave:Connect(function()
					w(G)
				end)
				t4[#t4 + 1] = u.MouseButton1Click:Connect(function()
					if not t._ThemeTabIndex then
						return v126("no theme tab, call Window:CreateThemeTab()")
					end

					PlaySound("select")
					j:SelectTab(t._ThemeTabIndex)
				end)
				U.Name = "backgroundimagelabel"
				U.Parent = b
				U.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				U.BackgroundTransparency = 1.00
				U.BorderColor3 = Color3.fromRGB(0, 0, 0)
				U.BorderSizePixel = 0
				U.Size = UDim2.new(1, 0, 1, 0)
				U.ZIndex = 0
				U.Image = o
				U.ImageColor3 = Color3.fromRGB(116, 116, 116)
				U.ScaleType = Enum.ScaleType.Crop
				l = function()
					U.Image = o or getcustomasset("banner.png")
				end
				c.CornerRadius = UDim.new(0, 5)
				c.Parent = U
				L.Parent = b
				L.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				L.BackgroundTransparency = 0.650
				L.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L.BorderSizePixel = 0
				L.Position = UDim2.new(0, 1, 0, 50)
				L.Size = UDim2.new(0, T.TabWidth or 160, 1, -50.0)
				F.Parent = L
				F.Active = true
				F.AnchorPoint = Vector2.new(0, 0.5)
				F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				F.BackgroundTransparency = 1.000
				F.BorderColor3 = Color3.fromRGB(0, 0, 0)
				F.BorderSizePixel = 0
				F.Position = UDim2.new(0, 0, 0.5, 0)
				F.Size = UDim2.new(1, 0, 1, -6.0)
				F.ScrollBarThickness = 2
				P(F, "ScrollBarImageColor3", "mid")
				F.ScrollBarImageTransparency = 0.4
				F.CanvasSize = UDim2.new(0, 0, 0, 0)
				F.AutomaticCanvasSize = Enum.AutomaticSize.Y
				F.ScrollingDirection = Enum.ScrollingDirection.Y
				F.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
				F.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
				F.ClipsDescendants = true
				S(F)
				X.Enable(F, 2, 0.9)
				B.Parent = F
				B.SortOrder = Enum.SortOrder.LayoutOrder
				B.Padding = UDim.new(0, 4)

				local u = Instance.new("Frame")

				u.Name = "PageHolder"
				u.Parent = b
				u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				u.BackgroundTransparency = 1.000
				u.BorderColor3 = Color3.fromRGB(0, 0, 0)
				u.BorderSizePixel = 0
				u.Position = UDim2.new(0, 161, 0, 50)
				u.Size = UDim2.new(1, -159.0, 1, -60.0)
				u.ClipsDescendants = true

				local o = Instance.new("TextButton")

				o.AnchorPoint, o.Position, o.Size = Vector2.zero, UDim2.new(1, 0, 1, 0), UDim2.fromOffset(22, 22)
				o.BackgroundTransparency, o.Text, o.ZIndex, o.Parent = 1, "", 50, b

				local l, G, w

				local function y(U)
					return U.UserInputType == Enum.UserInputType.MouseButton1 or U.UserInputType == Enum.UserInputType.Touch
				end
				local function U()
					if not l then
						return
					end

					l = nil

					local h = b.AbsoluteSize

					pcall(writefile, "CatsakenMenuSize.txt", math.floor(h.X) .. "," .. math.floor(h.Y))
				end

				t4[#t4 + 1] = o.InputBegan:Connect(function(o)
					if y(o) then
						l, G, w = b.AbsoluteSize, o.Position, b.Position

						local h

						h = o.Changed:Connect(function()
							if o.UserInputState == Enum.UserInputState.End then
								U()
								h:Disconnect()
							end
						end)
					end
				end)
				t4[#t4 + 1] = UserInputService.InputChanged:Connect(function(o)
					if l and (o.UserInputType == Enum.UserInputType.MouseMovement or o.UserInputType == Enum.UserInputType.Touch) then
						if o.UserInputType == Enum.UserInputType.MouseMovement and not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
							return U()
						end

						local h = Vector2.new(o.Position.X - G.X, o.Position.Y - G.Y)
						local o, G = math.max(420, l.X + h.X), math.max(260, l.Y + h.Y)

						b.Size = UDim2.fromOffset(o, G)
						b.Position = UDim2.new(w.X.Scale, w.X.Offset + (o - l.X) / 2, w.Y.Scale, w.Y.Offset + (G - l.Y) / 2)
					end
				end)
				t4[#t4 + 1] = UserInputService.InputEnded:Connect(function(o)
					if y(o) then
						U()
					end
				end)

				local o, _ = T.TabWidth or 160, 48
				local T = false
				local l = {}
				local G = TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

				local function w(y, U, h)
					if h then
						for h, a in pairs(U) do
							y[h] = a
						end
					else
						TweenService:Create(y, G, U):Play()
					end
				end

				B.HorizontalAlignment = Enum.HorizontalAlignment.Center

				local G = Instance.new("Frame")

				G.Name = "MenuButton"
				G.Parent = F
				G.LayoutOrder = -2.0
				P(G, "BackgroundColor3", "deep")
				G.BackgroundTransparency = 1
				G.BorderSizePixel = 0
				G.ClipsDescendants = true

				local y = v133("menu")
				local U = Instance.new("ImageLabel")

				U.Parent = G
				U.AnchorPoint = Vector2.new(0, 0.5)
				U.BackgroundTransparency = 1
				U.BorderSizePixel = 0
				U.Size = UDim2.fromOffset(16, 16)
				U.Image = y.id
				U.ImageRectOffset = y.imageRectOffset
				U.ImageRectSize = y.imageRectSize
				P(U, "ImageColor3")
				U.ScaleType = Enum.ScaleType.Fit

				local y = Instance.new("TextLabel")

				y.Parent = G
				y.AnchorPoint = Vector2.new(0, 0.5)
				y.BackgroundTransparency = 1
				y.BorderSizePixel = 0
				y.Position = UDim2.new(0, 30, 0.5, 0)
				y.Size = UDim2.new(0, 200, 0, 20)
				y.Font = Enum.Font.GothamMedium
				y.Text = "Collapse"
				P(y, "TextColor3")
				y.TextSize = 13
				y.TextXAlignment = Enum.TextXAlignment.Left
				y.TextTransparency = 1

				local h = Instance.new("TextButton")

				h.Parent = G
				h.Text = ""
				h.ZIndex = 2
				h.BackgroundTransparency = 1
				h.BorderSizePixel = 0
				h.Size = UDim2.fromScale(1, 1)
				t4[#t4 + 1] = h.MouseEnter:Connect(function()
					TweenService:Create(G, TweenInfo.new(0.1), { BackgroundTransparency = 0.8 }):Play()
				end)
				t4[#t4 + 1] = h.MouseLeave:Connect(function()
					TweenService:Create(G, TweenInfo.new(0.1), { BackgroundTransparency = 1 }):Play()
				end)
				table.insert(l, function(a, J)
					w(G, { Size = a and UDim2.new(1, -4.0, 0, 35) or UDim2.fromOffset(35, 35) }, J)
					w(U, { Position = UDim2.new(0, a and 7 or 10, 0.5, 0) }, J)
					w(y, { TextTransparency = a and 0 or 1 }, J)
				end)

				local G = Instance.new("Frame")

				G.Name = "MenuDivider"
				G.Parent = F
				G.LayoutOrder = -1.0
				G.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				G.BackgroundTransparency = 0.5
				G.BorderSizePixel = 0
				table.insert(l, function(y, U)
					w(G, { Size = y and UDim2.new(1, -12.0, 0, 1) or UDim2.fromOffset(28, 1) }, U)
				end)

				local function G(y, U)
					T = y

					local a = y and o or 48

					w(L, { Size = UDim2.new(0, a, 1, -50.0) }, U)
					w(u, { Position = UDim2.new(0, a + 1, 0, 50), Size = UDim2.new(1, -(a - 1), 1, -60.0) }, U)

					for o, o in ipairs(l) do
						o(y, U)
					end
				end

				t4[#t4 + 1] = h.MouseButton1Click:Connect(function()
					G(not T)
				end)
				G(true, true)

				local o = {}

				local function G(y, U)
					local h = y:lower()
					local y = 0

					if h == U then
						return 100
					end

					local a = {}

					for J in U:gmatch("%S+") do
						table.insert(a, J)
					end

					if #a > 1 then
						for J, J in ipairs(a) do
							if not h:find(J, 1, true) then
								return 0
							end

							y = y + 1
						end

						if h:find(U, 1, true) then
							y = y + 3
						end

						if h == U then
							return 100
						end

						y = y - (#h / 20)

						return y
					end

					local a = h:find(U, 1, true)

					if not a then
						return 0
					end

					y = y + 1

					if a == 1 then
						y = y + 4
					end

					for a in h:gmatch("%S+") do
						if a:sub(1, #U) == U then
							y = y + 3

							break
						end

						if a == U then
							y = y + 5

							break
						end
					end

					y = y - (#h / 20)

					return y
				end
				local function y(U)
					U = U:lower()

					local h = 0
					local a = nil

					for J, r in pairs(o) do
						if J == t._SettingsTabIndex or J == t._ThemeTabIndex then
							continue
						end

						local H = 0

						for I, I in pairs(r.Features) do
							H = H + G(I, U)
						end

						r.Frame.Visible = H > 0

						if H > h then
							h = H
							a = J
						end
					end

					if a then
						j:SelectTab(a)
					end
				end

				t4[#t4 + 1] = K:GetPropertyChangedSignal("Text"):Connect(function()
					local G = K.Text

					if G ~= "" then
						y(G)
					else
						for G, y in pairs(o) do
							if G == t._SettingsTabIndex or G == t._ThemeTabIndex then
								continue
							end

							y.Frame.Visible = true
						end
					end
				end)

				function j:CreateTab(G, y)
					local U = G

					if G == "#!SETTINGS" then
						G = "Settings"
					elseif G == "#!THEME" then
						G = "Theme"
					end

					local h = Instance.new("Frame")
					local a = Instance.new("Frame")
					local J = Instance.new("TextLabel")
					local r = Instance.new("ImageLabel")
					local H = v133(y)
					local y = Instance.new("Frame")
					local I = Instance.new("Frame")
					local v = Instance.new("TextLabel")
					local V = Instance.new("ScrollingFrame")
					local K = Instance.new("ScrollingFrame")
					local c = Instance.new("UIListLayout")
					local L = Instance.new("UIListLayout")
					local B = V

					y.Name = "Page"
					setthreadidentity(8)

					local e = obj.CatsakenTabStorage or Instance.new("ScreenGui")

					obj.CatsakenTabStorage = e
					y.Parent = nil
					y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					y.BackgroundTransparency = 1.000
					y.BorderColor3 = Color3.fromRGB(0, 0, 0)
					y.BorderSizePixel = 0
					y.Position = UDim2.new(0, 0, 0, -30.0)
					y.Size = UDim2.new(1, 0, 1, 0)
					y.Visible = false
					I.Parent = y
					I.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					I.BackgroundTransparency = 0.750
					I.BorderColor3 = Color3.fromRGB(0, 0, 0)
					I.BorderSizePixel = 0
					I.Size = UDim2.new(1, -1.0, 0, 28)
					I.Position = UDim2.fromOffset(-1.0, 0)
					v.Parent = I
					v.AnchorPoint = Vector2.new(0, 0.5)
					v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					v.BackgroundTransparency = 1.000
					v.BorderColor3 = Color3.fromRGB(0, 0, 0)
					v.BorderSizePixel = 0
					v.Position = UDim2.new(0, 8, 0.5, 0)
					v.Size = UDim2.new(1, 0, 1, 0)
					v.Font = Enum.Font.GothamMedium
					v.Text = G .. " <font color=\"rgb(144,144,144)\"> | </font>0 elements"
					P(v, "TextColor3")
					v.TextSize = 12.000
					v.RichText = true
					v.TextXAlignment = Enum.TextXAlignment.Left

					for N, N in ipairs({ V, K }) do
						N.Parent = y
						N.Active = true
						N.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						N.BackgroundTransparency = 1.000
						N.BorderColor3 = Color3.fromRGB(0, 0, 0)
						N.BorderSizePixel = 0
						N.ScrollBarThickness = 0
						N.CanvasSize = UDim2.new(0, 0, 0, 0)
						N.AutomaticCanvasSize = Enum.AutomaticSize.Y
						N.ScrollingDirection = Enum.ScrollingDirection.Y
						N.ClipsDescendants = true

						if v122 then
						end

						X.Enable(N, 4, 0.9)
					end

					V.Position = UDim2.new(0, 0, 0, 28)

					local N = Instance.new("UIPadding")

					N.PaddingLeft = UDim.new(0, 6)
					N.Parent = V

					local N = Instance.new("UIPadding")

					N.PaddingLeft = UDim.new(0, 1)
					N.Parent = K

					if v122 or _G.SINGLE_COLUMNS then
						V.Size = UDim2.new(1, 0, 1, -28.0)
						K.Visible = false
					else
						V.Size = UDim2.new(0.5, -4.0, 1, -28.0)
						K.Position = UDim2.new(0.5, 4, 0, 28)
						K.Size = UDim2.new(0.5, -4.0, 1, -28.0)
					end

					for N, N in ipairs({ { c, V }, { L, K } }) do
						local X, I = N[1], N[2]

						X.Parent = I
						X.SortOrder = Enum.SortOrder.LayoutOrder

						if v122 or _G.SINGLE_COLUMNS then
							X.HorizontalAlignment = Enum.HorizontalAlignment.Left
						end

						X.Padding = UDim.new(0, 3)
					end

					h.Name = "TabButton"
					h.Parent = F
					P(h, "BackgroundColor3", "deep")
					h.BackgroundTransparency = 1.000
					h.BorderColor3 = Color3.fromRGB(0, 0, 0)
					h.BorderSizePixel = 0
					h.Size = UDim2.new(1, -4.0, 0, 35)
					a.Parent = h
					P(a, "BackgroundColor3")
					a.BorderColor3 = Color3.fromRGB(0, 0, 0)
					a.BorderSizePixel = 0
					a.AnchorPoint = Vector2.new(0, 0)
					a.Position = UDim2.new(0, 0, 0, 0)
					a.Size = UDim2.new(0, 1, 0, 0)
					J.Parent = h
					J.AnchorPoint = Vector2.new(0, 0.5)
					J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					J.BackgroundTransparency = 1.000
					J.BorderColor3 = Color3.fromRGB(0, 0, 0)
					J.BorderSizePixel = 0
					J.Position = UDim2.new(0, 30, 0.5, 0)
					J.Size = UDim2.new(0, 200, 0, 20)
					J.Font = Enum.Font.GothamMedium
					J.Text = G
					J.TextColor3 = Color3.fromRGB(161, 161, 161)
					J.TextSize = 12.000
					J.TextXAlignment = Enum.TextXAlignment.Left
					r.Parent = h
					r.AnchorPoint = Vector2.new(0, 0.5)
					r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					r.BackgroundTransparency = 1.000
					r.BorderColor3 = Color3.fromRGB(0, 0, 0)
					r.BorderSizePixel = 0
					r.Position = UDim2.new(0, 7, 0.5, 0)
					r.Size = UDim2.new(0, 16, 0, 16)
					r.Image = H.id
					r.ImageColor3 = Color3.fromRGB(161, 161, 161)
					r.ImageRectOffset = H.imageRectOffset
					r.ImageRectSize = H.imageRectSize
					r.ScaleType = Enum.ScaleType.Fit
					h.ClipsDescendants = true

					local function N(X, H)
						w(h, { Size = X and UDim2.new(1, -4.0, 0, 35) or UDim2.new(0, 36, 0, 35) }, H)
						w(r, { Position = UDim2.new(0, X and 7 or 10, 0.5, 0) }, H)
						w(J, { TextTransparency = X and 0 or 1 }, H)
					end

					table.insert(l, N)
					N(T, true)

					local N = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
					local X = nil

					local function T(l)
						a.AnchorPoint = Vector2.new(0, l)
						a.Position = UDim2.new(0, a.Position.X.Offset, l, a.Position.Y.Offset)
					end

					local l

					local function w(H, I)
						if l then
							l = l:Cancel()
						end

						y.Position = UDim2.new(0, 0, 0, -10.0)
						y.Visible = false
						y.Parent = e
						TweenService:Create(h, N, { BackgroundTransparency = 1 }):Play()
						TweenService:Create(J, N, { TextColor3 = Color3.fromRGB(161, 161, 161) }):Play()
						TweenService:Create(r, N, { ImageColor3 = Color3.fromRGB(161, 161, 161) }):Play()
						T(H and 1 or 0)

						if X then
							X:Cancel()
						end

						X = TweenService:Create(a, N, { Size = UDim2.new(0, 1, 0, 0) })

						if I then
							t4[#t4 + 1] = X.Completed:Connect(I)
						end

						X:Play()
					end
					local function H(I)
						y.Parent = u
						RunService.RenderStepped:Wait()
						y.Visible = true
						l = TweenService:Create(y, TweenInfo.new(0.2), { Position = UDim2.fromOffset(0, 0) })
						l:Play()
						TweenService:Create(h, N, { BackgroundTransparency = 0.65 }):Play()
						TweenService:Create(J, N, { TextColor3 = C() }):Play()
						TweenService:Create(r, N, { ImageColor3 = C() }):Play()
						T(I and 0 or 1)

						if X then
							X:Cancel()
						end

						a.Size = UDim2.new(0, 1, 0, 0)
						X = TweenService:Create(a, N, { Size = UDim2.new(0, 1, 1, 0) })
						X:Play()
					end

					local u = { IsSelected = false, Frame = h, Deselect = function()
						w(true)
					end, Select = function()
						H(true)
					end, DeselectDirectional = w, SelectDirectional = H, Index = #o + 1, Features = {}, NumSections = 0, AutoIndex = 0, NumElements = 0 }

					o[#o + 1] = u
					f(function()
						if u.IsSelected then
							J.TextColor3 = C()
							r.ImageColor3 = C()
						end
					end)

					if U == "#!SETTINGS" then
						v127("settings tab created")
						h.Visible = false
						t._SettingsTabIndex = #o
					elseif U == "#!THEME" then
						h.Visible = false
						t._ThemeTabIndex = #o
					end

					local z = Instance.new("TextButton")

					z.Parent = h
					z.Text = ""
					z.ZIndex = 2
					z.BackgroundTransparency = 1
					z.BorderSizePixel = 0
					z.Size = UDim2.fromScale(1, 1)

					local function X()
						if u.IsSelected then
							return
						end

						PlaySound("select")

						local T = true
						local l = nil

						for w, w in pairs(o) do
							if w.IsSelected then
								T = u.Index > w.Index
								l = w

								break
							end
						end

						for w, w in pairs(o) do
							w.IsSelected = false
						end

						u.IsSelected = true

						if l then
							l.DeselectDirectional(T, function()
								if u.IsSelected then
									H(T)
								end
							end)
						else
							H(T)
						end
					end

					t4[#t4 + 1] = z.MouseEnter:Connect(function()
						u.IsHover = true

						if not u.IsSelected then
							TweenService:Create(h, N, { BackgroundTransparency = 0.8 }):Play()
						end
					end)
					t4[#t4 + 1] = z.MouseLeave:Connect(function()
						u.IsHover = false

						if not u.IsSelected then
							TweenService:Create(h, N, { BackgroundTransparency = 1 }):Play()
						end
					end)
					t4[#t4 + 1] = z.MouseButton1Down:Connect(function()
						if not u.IsSelected then
							TweenService:Create(h, N, { BackgroundTransparency = 0.7 }):Play()
						end
					end)
					t4[#t4 + 1] = z.MouseButton1Up:Connect(function()
						if not u.IsSelected then
							if u.IsHover then
								TweenService:Create(h, N, { BackgroundTransparency = 0.8 }):Play()
							else
								TweenService:Create(h, N, { BackgroundTransparency = 1 }):Play()
							end
						end
					end)
					t4[#t4 + 1] = z.MouseButton1Click:Connect(X)

					local N = {}
					local z = Instance.new("Folder")

					z.Name = "HiddenElements"
					u.CurrentSection = nil
					u.CurrentSectionIndex = u.CurrentSectionIndex or 0
					u.SectionGroups = u.SectionGroups or {}
					u.Columns = u.Columns or { Left = { ScrollingFrame = V, Count = 0, LastSection = nil }, Right = { ScrollingFrame = K, Count = 0, LastSection = nil } }

					local function X(T, l)
						u.NumElements = u.NumElements + (l and 0 or 1)
						v.Text = G .. (" <font color=\"rgb(144,144,144)\"> | </font>%d elements"):format(u.NumElements)

						if T.Name ~= "Frame" then
							local l = Instance.new("UIStroke")

							l.Color = Color3.fromRGB(255, 255, 255)
							l.Transparency = 0.93
							l.Thickness = 1
							l.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							l.Parent = T
						end

						local l = u.CurrentSection

						if l then
							local G = u.SectionGroups[l]

							T.LayoutOrder = u.CurrentSectionIndex * 1000 + #G + 1
							table.insert(G, T)
						else
							T.LayoutOrder = u.CurrentSectionIndex * 1000
						end
					end

					if v122 then
						q(V)
					end

					function N:CreateSection(q, T)
						u.NumSections = u.NumSections + 1

						local l

						if v122 or _G.SINGLE_COLUMNS then
							l = "Left"
						elseif T then
							l = T
						else
							u.AutoIndex = u.AutoIndex + 1
							l = (u.AutoIndex % 2 == 1) and "Left" or "Right"
						end

						local T = u.Columns[l]

						if T.Count > 0 and T.LastSection then
							local l = u.SectionGroups[T.LastSection]
							local G = Instance.new("Frame")

							G.Parent = T.ScrollingFrame
							G.BackgroundTransparency = 1
							G.Size = UDim2.new(0, 0, 0, 10)
							G.LayoutOrder = T.LastSection.LayoutOrder + #l + 1
							table.insert(l, G)
						end

						B = T.ScrollingFrame

						local l = Instance.new("Frame")
						local G = Instance.new("TextButton")

						l.Name = "Section"
						l.Parent = B
						l.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						l.BackgroundTransparency = 1.000
						l.BorderColor3 = Color3.fromRGB(0, 0, 0)
						l.BorderSizePixel = 0
						l.Size = UDim2.new(1, 0, 0, 28)
						G.Parent = l
						G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						G.BackgroundTransparency = 1.000
						G.BorderColor3 = Color3.fromRGB(0, 0, 0)
						G.BorderSizePixel = 0
						G.Position = UDim2.new(0, 30, 0, 0)
						G.Size = UDim2.new(1, -40.0, 1, 0)
						G.Font = Enum.Font.GothamMedium
						G.Text = q
						G.TextColor3 = Color3.fromRGB(199, 199, 199)
						G.TextSize = 12.000
						G.TextXAlignment = Enum.TextXAlignment.Left
						G.ZIndex = 2

						local q = G:Clone()

						q.ZIndex = 1
						q.TextColor3 = Color3.fromRGB(0, 0, 0)
						q.Position = G.Position + UDim2.fromOffset(1, 1)
						q.Parent = G.Parent
						q.Active = false

						local w = Instance.new("ImageLabel")

						w.Name = "Chevron"
						w.Parent = l
						w.BackgroundTransparency = 1
						w.AnchorPoint = Vector2.new(0, 0.5)
						w.Position = UDim2.new(0, 10, 0.5, 0)
						w.Size = UDim2.fromOffset(14, 14)
						w.ImageColor3 = Color3.fromRGB(199, 199, 199)
						w.ZIndex = 2

						local y = v133("chevron-down")

						w.Image = y.id
						w.ImageRectSize = y.imageRectSize
						w.ImageRectOffset = y.imageRectOffset
						u.CurrentSectionIndex = u.CurrentSectionIndex + 1
						l.LayoutOrder = u.CurrentSectionIndex * 1000
						u.CurrentSection = l
						u.SectionGroups[l] = {}
						T.Count = T.Count + 1
						T.LastSection = l

						local y = false
						local U = false
						local h = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
						local a = T.ScrollingFrame:FindFirstChildOfClass("UIListLayout")

						t4[#t4 + 1] = G.MouseButton1Click:Connect(function()
							if U then
								return
							end

							U = true
							PlaySound("click")
							y = not y
							TweenService:Create(w, h, { Rotation = y and -90.0 or 0 }):Play()

							local w = u.SectionGroups[l]
							local l = #w
							local a = 0.2 + (l > 0 and (l - 1) * 0.06 or 0)

							if y then
								local y = {}
								local J = {}
								local r = {}
								local H = {}

								for I = 1, l do
									local v = w[I]

									y[v] = v.Size
									H[v] = v.AutomaticSize

									if v.AutomaticSize ~= Enum.AutomaticSize.None then
										v.AutomaticSize = Enum.AutomaticSize.None
									end

									J[v] = v.ClipsDescendants
									r[v] = v.Position
									v.ClipsDescendants = true
								end

								for I = l, 1, -1.0 do
									local v = w[I]
									local V = (l - I) * 0.06
									local K = y[v].Y.Offset

									task.delay(V, function()
										TweenService:Create(v, h, { Size = UDim2.new(v.Size.X.Scale, v.Size.X.Offset, 0, 0) }):Play()

										for v = I + 1, l do
											local I = w[v]
											local v = I.Position

											TweenService:Create(I, h, { Position = UDim2.new(v.X.Scale, v.X.Offset, v.Y.Scale, v.Y.Offset - K) }):Play()
										end
									end)
								end

								task.delay(a, function()
									for I = 1, l do
										local v = w[I]

										v.Parent = z
										v.Position = r[v]
										v:SetAttribute("__restoreX", y[v].X.Scale)
										v:SetAttribute("__restoreXO", y[v].X.Offset)
										v:SetAttribute("__restoreY", y[v].Y.Scale)
										v:SetAttribute("__restoreYO", y[v].Y.Offset)
										v:SetAttribute("__clips", J[v])
										v:SetAttribute("__autosize", H[v].Name)
									end

									U = false
								end)
							else
								for z = 1, l do
									local y = w[z]
									local z = y:GetAttribute("__restoreX") or 0
									local J = y:GetAttribute("__restoreXO") or 0

									y.Size = UDim2.new(z, J, 0, 0)
									y.Parent = T.ScrollingFrame
								end

								wait()

								local z = {}

								for T = 1, l do
									z[w[T]] = w[T].Position
								end

								for T = 1, l do
									local y = w[T]

									y.Position = z[y]
								end

								for z = 1, l do
									local T = w[z]
									local y = T:GetAttribute("__restoreX") or 0
									local J = T:GetAttribute("__restoreXO") or 0
									local r = T:GetAttribute("__restoreY") or 0
									local H = T:GetAttribute("__restoreYO") or 0
									local I = H
									local v = (z - 1) * 0.06

									task.delay(v, function()
										TweenService:Create(T, h, { Size = UDim2.new(y, J, r, H) }):Play()

										for T = z + 1, l do
											local z = w[T]
											local T = z.Position

											TweenService:Create(z, h, { Position = UDim2.new(T.X.Scale, T.X.Offset, T.Y.Scale, T.Y.Offset + I) }):Play()
										end
									end)
								end

								task.delay(a, function()
									for z = 1, l do
										local T = w[z]
										local z = T:GetAttribute("__clips")

										T.ClipsDescendants = (z == nil) and false or z

										local z = T:GetAttribute("__autosize")

										if z then
											T.AutomaticSize = Enum.AutomaticSize[z]
										end
									end

									U = false
								end)
							end
						end)

						return { Set = function(z, z)
							G.Text = z
							q.Text = z
						end }
					end
					function N:CreateLabel(z)
						local q = Instance.new("Frame")
						local T = Instance.new("TextLabel")
						local l = Instance.new("UICorner")
						local G = Instance.new("UIPadding")

						q.Name = "Toggle"
						q.Parent = B
						X(q)
						q.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						q.BackgroundTransparency = 0.450
						q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						q.BorderSizePixel = 0
						q.AutomaticSize = Enum.AutomaticSize.Y
						q.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 28)
						G.Parent = q
						G.PaddingTop = UDim.new(0, 6)
						G.PaddingBottom = UDim.new(0, 6)
						T.Parent = q
						T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						T.BackgroundTransparency = 1.000
						T.BorderColor3 = Color3.fromRGB(0, 0, 0)
						T.BorderSizePixel = 0
						T.Position = UDim2.new(0, 10, 0, 0)
						T.Size = UDim2.new(1, -20.0, 0, 0)
						T.AutomaticSize = Enum.AutomaticSize.Y
						T.TextWrapped = true
						T.Font = Enum.Font.GothamMedium
						T.Text = z
						T.TextColor3 = Color3.fromRGB(145, 145, 145)
						T.TextSize = 12.000
						T.TextXAlignment = Enum.TextXAlignment.Left
						T.RichText = true
						l.CornerRadius = UDim.new(0, 5)
						l.Parent = q

						return { Set = function(z, z)
							T.Text = z
						end }
					end
					function N:CreateParagraph(z)
						return N:CreateLabel(z.Content)
					end
					function N:CreateToggle(z)
						local q = z.Flag
						local T = z.CurrentValue
						local l = z.Name
						local G = z.Callback or function()
						end
						local w = z.TextMode

						j.Flags[q] = { CurrentValue = T, __ISTOGGLE = true }
						table.insert(u.Features, l)

						local y = Instance.new("Frame")
						local U = Instance.new("TextButton")
						local h = Instance.new("UICorner")
						local a, J, r, H, I

						y.Name = "Toggle"
						y.Parent = B
						X(y)
						y.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						y.BackgroundTransparency = 0.450
						y.BorderColor3 = Color3.fromRGB(0, 0, 0)
						y.BorderSizePixel = 0
						y.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 28)
						U.Parent = y
						U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						U.BackgroundTransparency = 1.000
						U.BorderColor3 = Color3.fromRGB(0, 0, 0)
						U.BorderSizePixel = 0
						U.Position = UDim2.new(0, 10, 0, 0)
						U.Size = UDim2.new(0.5, 0, 0, 28)
						U.Font = Enum.Font.GothamMedium
						U.Text = l
						U.TextColor3 = Color3.fromRGB(199, 199, 199)
						U.TextSize = 12.000
						U.TextXAlignment = Enum.TextXAlignment.Left
						U.RichText = true
						D(U, z)
						h.CornerRadius = UDim.new(0, 5)
						h.Parent = y

						local U = Instance.new("TextButton")

						U.Text = ""
						U.ZIndex = 2
						U.BackgroundTransparency = 1
						U.BorderSizePixel = 0

						local h

						if w then
							I = Instance.new("TextLabel")
							I.Name = "StateLabel"
							I.Parent = y
							I.AnchorPoint = Vector2.new(1, 0.5)
							I.BackgroundTransparency = 1
							I.Position = UDim2.new(1, -10.0, 0.5, 0)
							I.Size = UDim2.new(0, 40, 0, 20)
							I.Font = Enum.Font.GothamMedium
							I.TextSize = 13
							I.TextXAlignment = Enum.TextXAlignment.Right
							U.Parent = I
							U.Size = UDim2.fromScale(1, 1)
							h = function()
								if T then
									I.Text = "ON"
									I.TextColor3 = Color3.fromRGB(85, 170, 85)
								else
									I.Text = "OFF"
									I.TextColor3 = Color3.fromRGB(170, 60, 60)
								end

								I.TextSize = 18
								TweenService:Create(I, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { TextSize = 13 }):Play()
							end
						else
							a = Instance.new("Frame")
							J = Instance.new("UICorner")
							r = Instance.new("Frame")
							H = Instance.new("UICorner")
							a.Name = "Switch"
							a.Parent = y
							a.AnchorPoint = Vector2.new(1, 0)
							a.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
							a.BackgroundTransparency = 0.700
							a.BorderColor3 = Color3.fromRGB(0, 0, 0)
							a.BorderSizePixel = 0
							a.Position = UDim2.new(1, -4.0, 0, 4)
							a.Size = UDim2.new(0, 48, 0, 20)
							J.CornerRadius = UDim.new(1, 0)
							J.Parent = a
							r.Name = "ball"
							r.Parent = a
							r.AnchorPoint = Vector2.new(0, 0.5)
							r.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
							r.BorderColor3 = Color3.fromRGB(0, 0, 0)
							r.BorderSizePixel = 0
							r.Position = UDim2.new(0, 2, 0.5, 0)
							r.Size = UDim2.new(0, 16, 0, 16)
							H.CornerRadius = UDim.new(1, 0)
							H.Parent = r
							U.Parent = a
							U.Size = UDim2.fromScale(1, 1)

							local y = TweenInfo.new(0.3, Enum.EasingStyle.Sine)

							h = function()
								task.spawn(function()
									setthreadidentity(8)

									if T then
										TweenService:Create(a, y, { BackgroundColor3 = C("dark") }):Play()
										TweenService:Create(r, y, { BackgroundColor3 = Color3.fromRGB(255, 255, 255) }):Play()
										TweenService:Create(r, y, { Position = UDim2.new(0, 30, 0.5, 0) }):Play()
									else
										TweenService:Create(a, y, { BackgroundColor3 = Color3.fromRGB(67, 67, 67) }):Play()
										TweenService:Create(r, y, { BackgroundColor3 = Color3.fromRGB(62, 62, 62) }):Play()
										TweenService:Create(r, y, { Position = UDim2.new(0, 2, 0.5, 0) }):Play()
									end
								end)
							end
							f(function()
								if T then
									a.BackgroundColor3 = C("dark")
								end
							end)
							t4[#t4 + 1] = U.InputBegan:Connect(function(y)
								if y.UserInputType == Enum.UserInputType.MouseButton1 or y.UserInputType == Enum.UserInputType.Touch then
									TweenService:Create(r, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Size = UDim2.new(0, 16, 0, 10) }):Play()
								end
							end)
							t4[#t4 + 1] = U.InputEnded:Connect(function(y)
								if y.UserInputType == Enum.UserInputType.MouseButton1 or y.UserInputType == Enum.UserInputType.Touch then
									TweenService:Create(r, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Size = UDim2.new(0, 16, 0, 16) }):Play()
								end
							end)
						end

						local y = j.Flags[q]

						function y:Set(a, J)
							T = a
							j.Flags[q].CurrentValue = T
							h()

							if not J then
								PlaySound("switch")
							end

							task.spawn(function()
								t:SafeCallback(G, l, "toggle", T, J)
							end)
						end

						local l

						if T then
							l = (T ~= nil and T ~= false) and true or nil
						end

						if safehttpget_[q] and safehttpget_[q].CurrentValue ~= nil and not z.NoSave then
							l = safehttpget_[q].CurrentValue
						end

						if l ~= nil then
							y:Set(l, true)
						end

						t4[#t4 + 1] = U.MouseButton1Click:Connect(function()
							y:Set(not T)
						end)

						if not T and w then
							h()
						end

						return y
					end
					function N:CreateButton(z)
						local q = z.Name
						local T = z.Callback or function()
						end

						table.insert(u.Features, q)

						local l = Instance.new("Frame")
						local G = Instance.new("TextLabel")
						local w = Instance.new("UICorner")
						local y = Instance.new("ImageLabel")
						local U = Instance.new("ImageLabel")

						l.Name = "Button"
						l.Parent = B
						X(l)
						l.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						l.BackgroundTransparency = 0.450
						l.BorderColor3 = Color3.fromRGB(0, 0, 0)
						l.BorderSizePixel = 0
						l.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						l.ClipsDescendants = true
						G.Parent = l
						G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						G.BackgroundTransparency = 1.000
						G.BorderColor3 = Color3.fromRGB(0, 0, 0)
						G.BorderSizePixel = 0
						G.Position = UDim2.new(0, 10, 0, 0)
						G.Size = UDim2.new(0.5, 0, 0, 32)
						G.Font = Enum.Font.GothamMedium
						G.Text = q
						G.TextColor3 = Color3.fromRGB(199, 199, 199)
						G.TextSize = 12.000
						G.TextXAlignment = Enum.TextXAlignment.Left
						D(U, z)

						if z.ToolTip then
							local G = v133("info")

							U.Parent = l
							U.AnchorPoint = Vector2.new(1, 0)
							U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							U.BackgroundTransparency = 1.000
							U.BorderColor3 = Color3.fromRGB(0, 0, 0)
							U.BorderSizePixel = 0
							U.Position = UDim2.new(1, -30.0, 0, 6)
							U.Size = UDim2.new(0, 20, 0, 20)
							U.Image = G.id
							U.ImageRectOffset = G.imageRectOffset
							U.ImageRectSize = G.imageRectSize
						end

						w.CornerRadius = UDim.new(0, 5)
						w.Parent = l

						local G = v133("mouse-pointer-2")

						y.Parent = l
						y.AnchorPoint = Vector2.new(1, 0)
						y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						y.BackgroundTransparency = 1.000
						y.BorderColor3 = Color3.fromRGB(0, 0, 0)
						y.BorderSizePixel = 0
						y.Position = UDim2.new(1, -4.0, 0, 6)
						y.Size = UDim2.new(0, 20, 0, 20)
						y.Image = G.id
						y.ImageRectOffset = G.imageRectOffset
						y.ImageRectSize = G.imageRectSize

						local E = Instance.new("TextButton")

						E.Parent = l
						E.Text = ""
						E.BackgroundTransparency = 1
						E.Size = UDim2.new(1, -(z.ToolTip and 57 or 31), 1, 0)
						t4[#t4 + 1] = E.MouseButton1Click:Connect(function()
							task.spawn(function()
								t:SafeCallback(T, q, "button")
							end)
						end)
						t4[#t4 + 1] = E.MouseButton1Down:Connect(function()
						end)
						t4[#t4 + 1] = E.MouseButton1Up:Connect(function()
						end)
						t4[#t4 + 1] = E.InputBegan:Connect(function(z)
							if z.UserInputType == Enum.UserInputType.Touch or z.UserInputType == Enum.UserInputType.MouseButton1 then
								local E = l.AbsolutePosition
								local q = z.Position.X - E.X
								local T = z.Position.Y - E.Y

								O(l, q, T)
							end
						end)
					end
					function N:CreateSlider(z)
						local E = z.Name
						local q = z.Range
						local T = q[1]
						local l = q[2]
						local q = z.CurrentValue
						local G = z.Flag

						j.Flags[G] = { CurrentValue = q }

						local w = z.Callback or function()
						end
						local y = z.Suffix or ""
						local U = z.Increment
						local h = z.FormatType

						table.insert(u.Features, E)

						local a = Instance.new("Frame")
						local J = Instance.new("TextLabel")
						local r = Instance.new("TextBox")
						local H = Instance.new("UICorner")
						local I = Instance.new("Frame")
						local v = Instance.new("UICorner")
						local V = Instance.new("Frame")
						local K = Instance.new("UICorner")
						local c = Instance.new("Frame")
						local L = Instance.new("UICorner")

						a.Name = "Slider"
						a.Parent = B
						X(a)
						a.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						a.BackgroundTransparency = 0.450
						a.BorderColor3 = Color3.fromRGB(0, 0, 0)
						a.BorderSizePixel = 0
						a.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						J.Name = "SliderName"
						J.Parent = a
						J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						J.BackgroundTransparency = 1.000
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(0, 10, 0, 0)
						J.Size = UDim2.new(0.5, -40.0, 0, 32)
						J.Font = Enum.Font.GothamMedium
						J.Text = E
						J.TextColor3 = Color3.fromRGB(199, 199, 199)
						J.TextSize = 12.000
						J.TextXAlignment = Enum.TextXAlignment.Left
						J.RichText = true
						D(J, z)
						r.Name = "ValueBox"
						r.Parent = a
						r.BackgroundTransparency = 1
						r.BorderSizePixel = 0
						r.AutomaticSize = Enum.AutomaticSize.X
						r.Size = UDim2.new(0, 24, 0, 32)
						r.Font = Enum.Font.GothamMedium
						r.TextSize = 12.000
						r.TextColor3 = Color3.fromRGB(255, 255, 255)
						r.TextXAlignment = Enum.TextXAlignment.Left
						r.ClearTextOnFocus = false
						r.RichText = true
						r.Text = ""
						H.CornerRadius = UDim.new(0, 5)
						H.Parent = a
						I.Name = "Bar"
						I.Parent = a
						I.AnchorPoint = Vector2.new(1, 0)
						I.BackgroundColor3 = Color3.fromRGB(109, 109, 129)
						I.BackgroundTransparency = 0.500
						I.BorderColor3 = Color3.fromRGB(0, 0, 0)
						I.BorderSizePixel = 0
						I.Position = UDim2.new(1, -16.0, 0, 13)
						I.Size = UDim2.new(0, 120, 0, 6)
						v.CornerRadius = UDim.new(1, 0)
						v.Parent = I
						V.Name = "Ball"
						V.Parent = I
						V.AnchorPoint = Vector2.new(0.5, 0.5)
						V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						V.BorderColor3 = Color3.fromRGB(0, 0, 0)
						V.BorderSizePixel = 0
						V.Position = UDim2.new(0.5, 0, 0.5, 0)
						V.Size = UDim2.new(0, 16, 0, 16)
						V.ZIndex = 2
						K.CornerRadius = UDim.new(1, 0)
						K.Parent = V
						c.Name = "Fill"
						c.Parent = I
						P(c, "BackgroundColor3", "mid")
						c.BorderColor3 = Color3.fromRGB(0, 0, 0)
						c.BorderSizePixel = 0
						c.Size = UDim2.new(0.5, 0, 1, 0)
						L.CornerRadius = UDim.new(1, 0)
						L.Parent = c

						local a = Instance.new("UIDragDetector")

						a.Parent = I
						a.ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomOffset
						a:Clone().Parent = V

						local a = UDim2.new(0, 120, 0, 6)
						local H = UDim2.new(0, 120, 0, 9)
						local v = UDim2.new(0, 16, 0, 16)
						local K = UDim2.new(0, 20, 0, 20)
						local L = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
						local F = T < 0

						local function e()
							r.Position = UDim2.new(0, 10 + J.TextBounds.X + 4, 0, 0)
						end

						e()
						t4[#t4 + 1] = J:GetPropertyChangedSignal("TextBounds"):Connect(e)

						local function J(e)
							return (e - T) / (l - T)
						end
						local function e(s)
							local _v = s * (l - T) + T
							local s = math.round(_v / U) * U
							local _v = math.max(0, math.ceil(-math.log10(U)))

							return tonumber(string.format("%." .. _v .. "f", math.clamp(s, T, l)))
						end
						local function U(s)
							return "<font color=\"" .. x(C("mid")) .. "\">" .. (h == "time" and truncatetime(s) or s) .. "<font color=\"rgb(141, 141, 141)\">" .. y .. "</font></font>"
						end
						local function x()
							r.RichText = true
							r.Text = U(j.Flags[G].CurrentValue)
						end
						local function y(U, h)
							if not r:IsFocused() then
								x()
							end

							local s = UDim2.new(U, 0, 1, 0)
							local _v = UDim2.new(U, 0, 0.5, 0)

							if h then
								TweenService:Create(c, L, { Size = s }):Play()
								TweenService:Create(V, L, { Position = _v }):Play()
							else
								c.Size = s
								V.Position = _v
							end
						end

						if safehttpget_[G] then
							q = safehttpget_[G].CurrentValue
							j.Flags[G] = { CurrentValue = q }
							task.spawn(function()
								t:SafeCallback(w, E, "slider", q)
							end)
						end

						y(J(q), false)

						local q = false

						local function U(h, c)
							if c then
								h = math.clamp(h, T, l)
							else
								h = e(J(math.clamp(h, T, l)))
							end

							if h ~= j.Flags[G].CurrentValue then
								j.Flags[G].CurrentValue = h
								y(J(h), true)
								PlaySound("tick", { Volume = 0.1 })
								t:SafeCallback(w, E, "slider", h)
							end
						end
						local function E(T)
							local l = I.AbsolutePosition.X
							local w = I.AbsoluteSize.X
							local y = math.clamp((T - l) / w, 0, 1)

							U(e(y))
						end

						t4[#t4 + 1] = r.Focused:Connect(function()
							r.RichText = false
							r.Text = tostring(j.Flags[G].CurrentValue)
						end)
						t4[#t4 + 1] = r:GetPropertyChangedSignal("Text"):Connect(function()
							if not r:IsFocused() or r.RichText then
								return
							end

							local T = r.Text
							local l = F and T:sub(1, 1) == "-"

							T = T:gsub("[^%d%.]", "")

							do
								local G = T:find(".", 1, true)

								if G then
									T = T:sub(1, G) .. T:sub(G + 1):gsub("%.", "")
								end
							end

							if l then
								T = "-" .. T
							end

							if T ~= r.Text then
								r.Text = T
							end
						end)
						t4[#t4 + 1] = r.FocusLost:Connect(function()
							local T = tonumber(r.Text)

							if T then
								U(T, not z.StrictIncrement)
							end

							x()
						end)

						local z = false
						local T = false

						t4[#t4 + 1] = I.MouseEnter:Connect(function()
							z = true
							TweenService:Create(I, L, { Size = H }):Play()
							TweenService:Create(V, L, { Size = K }):Play()
						end)
						t4[#t4 + 1] = I.MouseLeave:Connect(function()
							z = false

							if not T and not q then
								TweenService:Create(I, L, { Size = a }):Play()
								TweenService:Create(V, L, { Size = v }):Play()
							end
						end)
						t4[#t4 + 1] = V.MouseEnter:Connect(function()
							T = true
							TweenService:Create(I, L, { Size = H }):Play()
							TweenService:Create(V, L, { Size = K }):Play()
						end)
						t4[#t4 + 1] = V.MouseLeave:Connect(function()
							T = false

							if not z and not q then
								TweenService:Create(I, L, { Size = a }):Play()
								TweenService:Create(V, L, { Size = v }):Play()
							end
						end)
						t4[#t4 + 1] = V.InputBegan:Connect(function(l)
							if l.UserInputType == Enum.UserInputType.MouseButton1 or l.UserInputType == Enum.UserInputType.Touch then
								q = true
								E(l.Position.X)
							end
						end)
						t4[#t4 + 1] = I.InputBegan:Connect(function(l)
							if l.UserInputType == Enum.UserInputType.MouseButton1 or l.UserInputType == Enum.UserInputType.Touch then
								q = true
								E(l.Position.X)
							end
						end)
						t4[#t4 + 1] = UserInputService.InputChanged:Connect(function(l)
							if q and (l.UserInputType == Enum.UserInputType.MouseMovement or l.UserInputType == Enum.UserInputType.Touch) then
								E(l.Position.X)
							end
						end)
						t4[#t4 + 1] = UserInputService.InputEnded:Connect(function(E)
							if q and (E.UserInputType == Enum.UserInputType.MouseButton1 or E.UserInputType == Enum.UserInputType.Touch) then
								q = false

								if E.UserInputType == Enum.UserInputType.Touch or (not z and not T) then
									TweenService:Create(I, L, { Size = a }):Play()
									TweenService:Create(V, L, { Size = v }):Play()
								end
							end
						end)
						f(function()
							if not r:IsFocused() then
								x()
							end
						end)
					end
					function N:CreateDropdown(z)
						local E = z.Name
						local x = z.Flag
						local q = deepcopy(z.CurrentOption)
						local T = deepcopy(z.Options)
						local l = z.MultipleOptions
						local G = z.Searchable == true
						local w = G and 28 or 0
						local y = z.Callback or function()
						end

						table.insert(u.Features, E)

						local U = Instance.new("Frame")
						local h = Instance.new("TextLabel")
						local a = Instance.new("UICorner")
						local J = Instance.new("ImageLabel")
						local r = Instance.new("ScrollingFrame")
						local H = Instance.new("UIListLayout")

						U.Name = "Dropdown"
						U.Parent = B
						X(U)
						U.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						U.BackgroundTransparency = 0.450
						U.BorderColor3 = Color3.fromRGB(0, 0, 0)
						U.BorderSizePixel = 0
						U.ClipsDescendants = true
						U.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						U.ClipsDescendants = true
						h.Name = "SliderName"
						h.Parent = U
						h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						h.BackgroundTransparency = 1.000
						h.BorderColor3 = Color3.fromRGB(0, 0, 0)
						h.BorderSizePixel = 0
						h.Position = UDim2.new(0, 10, 0, 0)
						h.Size = UDim2.new(0.5, 0, 0, 32)
						h.Font = Enum.Font.GothamMedium
						h.TextColor3 = Color3.fromRGB(199, 199, 199)
						h.TextSize = 12.000
						h.TextXAlignment = Enum.TextXAlignment.Left
						h.RichText = true
						D(h, z)
						a.CornerRadius = UDim.new(0, 5)
						a.Parent = U
						J.Parent = U
						J.AnchorPoint = Vector2.new(1, 0)
						J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						J.BackgroundTransparency = 1.000
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(1, -4.0, 0, 6)
						J.Size = UDim2.new(0, 20, 0, 20)
						J.Image = "rbxassetid://130996747355335"
						r.Parent = U
						r.Active = true
						r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						r.BackgroundTransparency = 1.000
						r.BorderColor3 = Color3.fromRGB(0, 0, 0)
						r.BorderSizePixel = 0
						r.Position = UDim2.new(0, 10, 0, 32 + w)
						r.Size = UDim2.new(1, -20.0, 1, -(42 + w))
						r.ScrollBarThickness = 8
						r.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
						r.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
						r.AutomaticCanvasSize = Enum.AutomaticSize.Y
						r.CanvasSize = UDim2.new(0, 0, 0, 0)
						r.Visible = false
						H.Parent = r
						H.SortOrder = Enum.SortOrder.LayoutOrder
						H.Padding = UDim.new(0, 4)
						H.HorizontalAlignment = Enum.HorizontalAlignment.Left

						local function z(a)
							local J = {}

							for I, v in pairs(a) do
								if v == true then
									table.insert(J, I)
								end
							end

							return J
						end
						local function a(a)
							local J = {}

							for I, I in pairs(a) do
								J[I] = true
							end

							return J
						end
						local function a(J, I)
							if type(J) ~= type(I) then
								return false
							end

							if type(J) ~= "table" then
								return J == I
							end

							for v, V in pairs(J) do
								if not a(V, I[v]) then
									return false
								end
							end

							for v in pairs(I) do
								if J[v] == nil then
									return false
								end
							end

							return true
						end

						if (safehttpget_[x] or {}).CurrentOption and not a(safehttpget_[x].CurrentOption, T) then
							q = safehttpget_[x].CurrentOption
							task.spawn(function()
								t:SafeCallback(y, E, "dropdown", q, true)
							end)
						end

						local a = {}

						for J, J in pairs(T) do
							a[J] = false
						end

						for J, J in pairs(q) do
							a[J] = true
						end

						j.Flags[x] = { CurrentOption = z(a) }

						local q = Instance.new("TextButton")

						q.Parent = U
						q.Text = ""
						q.ZIndex = 2
						q.BackgroundTransparency = 1
						q.BorderSizePixel = 0
						q.Size = UDim2.new(1, 0, 0, 32)

						local J

						if #T > 3 then
							J = S(r)
							J.Visible = false
						end

						local S, I, v

						local function V()
							if not I then
								return
							end

							local K = {}

							for c in I.Text:lower():gmatch("%S+") do
								K[#K + 1] = c
							end

							for c, c in pairs(r:GetChildren()) do
								if c.Name == "Option" then
									local L = c.OName.Text:lower()
									local F = true

									for e, e in ipairs(K) do
										if not L:find(e, 1, true) then
											F = false

											break
										end
									end

									c.Visible = F
								end
							end

							r.CanvasPosition = Vector2.new(0, 0)
						end

						if G then
							S = Instance.new("Frame")
							S.Name = "SearchFrame"
							S.Parent = U
							S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							S.BackgroundTransparency = 0.5
							S.BorderSizePixel = 0
							S.Position = UDim2.new(0, 10, 0, 36)
							S.Size = UDim2.new(1, -20.0, 0, 22)
							S.ZIndex = 2
							S.Visible = false

							local G = Instance.new("UICorner")

							G.CornerRadius = UDim.new(0, 5)
							G.Parent = S
							v = Instance.new("UIStroke")
							v.Color = Color3.fromRGB(70, 70, 70)
							v.Thickness = 1
							v.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							v.Parent = S
							I = Instance.new("TextBox")
							I.Name = "SearchBox"
							I.Parent = S
							I.BackgroundTransparency = 1
							I.BorderSizePixel = 0
							I.Position = UDim2.new(0, 8, 0, 0)
							I.Size = UDim2.new(1, -16.0, 1, 0)
							I.ZIndex = 3
							I.ClearTextOnFocus = false
							I.Font = Enum.Font.GothamMedium
							I.PlaceholderText = "Search..."
							I.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
							I.Text = ""
							I.TextColor3 = Color3.fromRGB(199, 199, 199)
							I.TextSize = 12.000
							I.TextXAlignment = Enum.TextXAlignment.Left
							t4[#t4 + 1] = I:GetPropertyChangedSignal("Text"):Connect(V)
							t4[#t4 + 1] = I.Focused:Connect(function()
								TweenService:Create(v, TweenInfo.new(0.15), { Color = C("mid") }):Play()
							end)
							t4[#t4 + 1] = I.FocusLost:Connect(function()
								TweenService:Create(v, TweenInfo.new(0.15), { Color = Color3.fromRGB(70, 70, 70) }):Play()
							end)
							f(function()
								if I:IsFocused() then
									v.Color = C("mid")
								end
							end)
						end

						local G = false

						t4[#t4 + 1] = q.MouseButton1Click:Connect(function(q)
							G = not G
							PlaySound("click")

							if J then
								J.Visible = G
							end

							r.Visible = G

							if S then
								S.Visible = G
							end

							if G then
								local S = math.clamp(38 + (#T * (28 + H.Padding.Offset)), 0, 38 + (3 * (28 + H.Padding.Offset))) + w

								TweenService:Create(U, TweenInfo.new(0.3), { Size = UDim2.new(U.Size.X.Scale, U.Size.X.Offset, U.Size.Y.Scale, S) }):Play()
							else
								if I then
									I:ReleaseFocus()
									I.Text = ""
								end

								r.CanvasPosition = Vector2.new(0, 0)
								TweenService:Create(U, TweenInfo.new(0.3), { Size = UDim2.new(U.Size.X.Scale, U.Size.X.Offset, U.Size.Y.Scale, 32) }):Play()
							end
						end)

						local S = { __DropdownOptions = {} }

						local function q(G)
							local w = {}

							for U, J in pairs(G) do
								if J == true then
									table.insert(w, tostring(U))
								end
							end

							return #w == 1 and w[1] or ((#w == 0 and "no" or #w) .. " options")
						end

						function S:SetTitle(G)
							E = G
							h.Text = E .. " <font color=\"rgb(100, 100, 100)\">" .. q(a) .. "</font>"
						end

						S:SetTitle(E)

						local function q(G)
							T = G

							for w, w in pairs(r:GetChildren()) do
								if w.Name == "Option" then
									w:Destroy()
								end
							end

							for w, w in pairs(G) do
								local G = Instance.new("Frame")
								local U = Instance.new("UICorner")
								local h = Instance.new("TextLabel")
								local J = Instance.new("TextLabel")

								G.Name = "Option"
								G.Parent = r
								G.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
								G.BackgroundTransparency = 0.800
								G.BorderColor3 = Color3.fromRGB(0, 0, 0)
								G.BorderSizePixel = 0
								G.Size = UDim2.new(1, 0, 0, 28)
								G.ClipsDescendants = true
								U.CornerRadius = UDim.new(0, 5)
								U.Parent = G
								h.Name = "OName"
								h.Parent = G
								h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								h.BackgroundTransparency = 1.000
								h.BorderColor3 = Color3.fromRGB(0, 0, 0)
								h.BorderSizePixel = 0
								h.Position = UDim2.new(0, 10, 0, 0)
								h.Size = UDim2.new(1, -20.0, 1, 0)
								h.ZIndex = 2
								h.Font = Enum.Font.GothamMedium
								h.Text = tostring(w)
								h.TextColor3 = Color3.fromRGB(199, 199, 199)
								h.TextSize = 12.000
								h.TextXAlignment = Enum.TextXAlignment.Left
								J.Name = "ONameShadow"
								J.Parent = G
								J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								J.BackgroundTransparency = 1.000
								J.BorderColor3 = Color3.fromRGB(0, 0, 0)
								J.BorderSizePixel = 0
								J.Position = UDim2.new(0, 11, 0, 1)
								J.Size = UDim2.new(1, -20.0, 1, 0)
								J.Font = Enum.Font.GothamMedium
								J.Text = tostring(w)
								J.TextColor3 = Color3.fromRGB(0, 0, 0)
								J.TextSize = 12.000
								J.TextXAlignment = Enum.TextXAlignment.Left

								local U = Instance.new("TextButton")

								U.Parent = G
								U.Text = ""
								U.ZIndex = 2
								U.BackgroundTransparency = 1
								U.BorderSizePixel = 0
								U.Size = UDim2.fromScale(1, 1)
								table.insert(S.__DropdownOptions, { Title = setmetatable({}, { __newindex = function(H, H, I)
									if H == "Text" then
										h.Text = I
										J.Text = I
									end
								end }) })

								local J = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

								t4[#t4 + 1] = U.MouseButton1Click:Connect(function()
									if a[w] == true and not l then
										return
									end

									a[w] = not a[w]

									if not l then
										for l, H in pairs(a) do
											if l ~= w then
												a[l] = false
											end
										end

										for l, l in pairs(r:GetChildren()) do
											if l.Name == "Option" then
												TweenService:Create(l, J, { BackgroundColor3 = Color3.fromRGB(100, 100, 100) }):Play()
												TweenService:Create(l.OName, J, { TextColor3 = Color3.fromRGB(199, 199, 199) }):Play()
											end
										end
									end

									if a[w] then
										TweenService:Create(G, J, { BackgroundColor3 = C("mid") }):Play()
										TweenService:Create(h, J, { TextColor3 = C("mid") }):Play()
									else
										TweenService:Create(G, J, { BackgroundColor3 = Color3.fromRGB(100, 100, 100) }):Play()
										TweenService:Create(h, J, { TextColor3 = Color3.fromRGB(199, 199, 199) }):Play()
									end

									S:SetTitle(E)
									j.Flags[x] = { CurrentOption = z(a) }
									task.spawn(function()
										t:SafeCallback(y, E, "dropdown", z(a))
									end)
								end)
								t4[#t4 + 1] = U.InputBegan:Connect(function(z)
									if z.UserInputType == Enum.UserInputType.MouseButton1 or z.UserInputType == Enum.UserInputType.Touch then
										local E = G.AbsolutePosition
										local x = z.Position.X - E.X
										local l = z.Position.Y - E.Y

										O(G, x, l)
									end
								end)
								f(function()
									if a[w] then
										G.BackgroundColor3 = C("mid")
										h.TextColor3 = C("mid")
									end
								end)
							end

							V()
						end

						q(T)

						function S:Refresh(z)
							q(z)
						end

						return S
					end
					function N:CreateKeybind(z)
						local E = z.CurrentKeybind
						local S = z.Name
						local x = z.Flag
						local f = z.Callback or function()
						end

						table.insert(u.Features, S)

						if x then
							local O = safehttpget_[x]

							if O and O.CurrentValue ~= nil and not z.NoSave then
								local q = O.CurrentValue

								if q == "" then
									E = nil
								elseif Enum.KeyCode:FromName(q) then
									E = q
								end
							end

							j.Flags[x] = { CurrentValue = E or "" }
						end

						local O = Instance.new("Frame")
						local q = Instance.new("TextLabel")
						local T = Instance.new("UICorner")
						local l = Instance.new("Frame")
						local G = Instance.new("UICorner")
						local w = Instance.new("TextButton")
						local y = Instance.new("ImageLabel")

						O.Name = "Keybind"
						O.Parent = B
						X(O)
						O.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						O.BackgroundTransparency = 0.450
						O.BorderColor3 = Color3.fromRGB(0, 0, 0)
						O.BorderSizePixel = 0
						O.ClipsDescendants = true
						O.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						q.Name = "KeybindName"
						q.Parent = O
						q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						q.BackgroundTransparency = 1.000
						q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						q.BorderSizePixel = 0
						q.Position = UDim2.new(0, 10, 0, 0)
						q.Size = UDim2.new(0.5, 0, 0, 32)
						q.Font = Enum.Font.GothamMedium
						q.Text = S
						q.TextColor3 = Color3.fromRGB(199, 199, 199)
						q.TextSize = 12.000
						q.TextXAlignment = Enum.TextXAlignment.Left
						D(q, z)
						T.CornerRadius = UDim.new(0, 5)
						T.Parent = O
						l.Parent = O
						l.AnchorPoint = Vector2.new(1, 0)
						l.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
						l.BackgroundTransparency = 0.700
						l.BorderColor3 = Color3.fromRGB(0, 0, 0)
						l.BorderSizePixel = 0
						l.Position = UDim2.new(1, -4.0, 0, 4)
						l.Size = UDim2.new(0, 30, 0, 20)
						l.ClipsDescendants = true
						G.CornerRadius = UDim.new(0, 5)
						G.Parent = l
						w.Parent = l
						w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						w.BackgroundTransparency = 1.000
						w.BorderColor3 = Color3.fromRGB(0, 0, 0)
						w.BorderSizePixel = 0
						w.Size = UDim2.new(1, 0, 1, 0)
						w.Font = Enum.Font.GothamMedium
						w.Text = E or ""
						w.TextColor3 = Color3.fromRGB(255, 255, 255)
						w.TextSize = 14.000
						w.ClipsDescendants = true
						y.Parent = l
						y.AnchorPoint = Vector2.new(0.5, 0)
						y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						y.BackgroundTransparency = 1.000
						y.BorderColor3 = Color3.fromRGB(0, 0, 0)
						y.BorderSizePixel = 0
						y.Position = UDim2.new(0.5, 0, 0, 2)
						y.Size = UDim2.new(0, 16, 0, 16)
						y.Image = "rbxassetid://121142147574111"
						y.Visible = false

						if E == nil then
							y.Visible = true
						end

						local z = { KeyCode = E, Callback = f, Pressable = true }

						table.insert(j.Keybinds, z)

						local function E()
							if x then
								j.Flags[x] = { CurrentValue = z.KeyCode or "" }
							end
						end

						local S = false
						local x = false
						local f = nil
						local O = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
						local q = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

						local function T()
							if f then
								task.cancel(f)
							end

							TweenService:Create(l, O, { BackgroundColor3 = C("dark2"), BackgroundTransparency = 0.3 }):Play()
							TweenService:Create(w, O, { TextColor3 = C("mid") }):Play()
							f = task.spawn(function()
								while x do
									TweenService:Create(l, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { BackgroundTransparency = 0.1 }):Play()
									wait(0.5)
									TweenService:Create(l, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { BackgroundTransparency = 0.4 }):Play()
									wait(0.5)
								end
							end)
						end
						local function G(U)
							if f then
								task.cancel(f)
								f = nil
							end

							TweenService:Create(l, O, { BackgroundColor3 = Color3.fromRGB(60, 180, 80), BackgroundTransparency = 0.2 }):Play()
							TweenService:Create(w, O, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
							wait()

							local U = math.max(30, w.TextBounds.X + 16)
							local h = UDim2.new(0, U + 8, 0, 24)
							local a = UDim2.new(0, U, 0, 20)

							TweenService:Create(l, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = h }):Play()
							task.delay(0.1, function()
								TweenService:Create(l, q, { Size = a }):Play()
							end)
							task.delay(0.4, function()
								TweenService:Create(l, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(53, 53, 53), BackgroundTransparency = 0.700 }):Play()
							end)
						end
						local function q()
							if f then
								task.cancel(f)
								f = nil
							end

							TweenService:Create(l, O, { BackgroundColor3 = Color3.fromRGB(53, 53, 53), BackgroundTransparency = 0.700 }):Play()
							TweenService:Create(w, O, { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
						end

						t4[#t4 + 1] = w.MouseButton1Click:Connect(function()
							if S then
								return
							end

							S = true
							z.Pressable = false
							y.Visible = false
							w.Text = "..."
							x = true
							T()
							wait(0.1)
							S = false
						end)
						t4[#t4 + 1] = UserInputService.InputBegan:Connect(function(S, f)
							RunService.Heartbeat:Wait()

							if u34 then
								return
							end

							if f then
								return
							end

							if x and S.KeyCode.Name ~= "Unknown" then
								local f = z.KeyCode

								z.KeyCode = S.KeyCode.Name
								x = false

								if f == z.KeyCode then
									z.KeyCode = nil
									y.Visible = true
									w.Text = ""
									q()
									E()
									z.Pressable = true

									return
								end

								w.Text = z.KeyCode
								E()
								G(z.KeyCode)
							end

							z.Pressable = true
						end)

						local function z()
							local E = math.max(30, w.TextBounds.X + 16)

							TweenService:Create(l, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, E, 0, 20) }):Play()
						end

						t4[#t4 + 1] = RunService.RenderStepped:Connect(z)
					end
					function N:CreateInput(z)
						local E = z.Name
						local S = z.Flag
						local x = z.RemoveTextAfterFocusLost
						local x = z.CurrentValue
						local f = z.PlaceholderText
						local O = z.Callback or function()
						end

						table.insert(u.Features, E)
						j.Flags[S] = { CurrentValue = x }

						local q = Instance.new("Frame")
						local T = Instance.new("TextLabel")
						local l = Instance.new("UICorner")
						local G = Instance.new("Frame")
						local w = Instance.new("UICorner")
						local y = Instance.new("TextLabel")
						local U = Instance.new("ImageLabel")
						local h = Instance.new("TextBox")

						q.Name = "Input"
						q.Parent = B
						X(q)
						q.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						q.BackgroundTransparency = 0.450
						q.BorderColor3 = Color3.fromRGB(0, 0, 0)
						q.BorderSizePixel = 0
						q.ClipsDescendants = true
						q.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						T.Name = "KeybindName"
						T.Parent = q
						T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						T.BackgroundTransparency = 1.000
						T.BorderColor3 = Color3.fromRGB(0, 0, 0)
						T.BorderSizePixel = 0
						T.Position = UDim2.new(0, 10, 0, 0)
						T.Size = UDim2.new(0.5, 0, 0, 32)
						T.Font = Enum.Font.GothamMedium
						T.Text = E
						T.TextColor3 = Color3.fromRGB(199, 199, 199)
						T.TextSize = 12.000
						T.TextXAlignment = Enum.TextXAlignment.Left
						D(T, z)
						l.CornerRadius = UDim.new(0, 5)
						l.Parent = q
						G.Parent = q
						G.AnchorPoint = Vector2.new(1, 0)
						G.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
						G.BackgroundTransparency = 0.700
						G.BorderColor3 = Color3.fromRGB(0, 0, 0)
						G.BorderSizePixel = 0
						G.ClipsDescendants = true
						G.Position = UDim2.new(1, -4.0, 0, 4)
						G.Size = UDim2.new(0, 0, 0, 20)
						w.CornerRadius = UDim.new(0, 5)
						w.Parent = G
						y.Parent = G
						y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						y.BackgroundTransparency = 1.000
						y.BorderColor3 = Color3.fromRGB(0, 0, 0)
						y.BorderSizePixel = 0
						y.Size = UDim2.new(1, 0, 1, 0)
						y.Font = Enum.Font.GothamMedium
						y.Text = ""
						y.TextColor3 = Color3.fromRGB(255, 255, 255)
						y.TextSize = 14.000
						U.Parent = G
						U.AnchorPoint = Vector2.new(1, 0)
						U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						U.BackgroundTransparency = 1.000
						U.BorderColor3 = Color3.fromRGB(0, 0, 0)
						U.BorderSizePixel = 0
						U.Position = UDim2.new(1, -8.0, 0, 2)
						U.Size = UDim2.new(0, 16, 0, 16)
						U.Image = "rbxassetid://76137750753739"
						P(U, "ImageColor3", "light")
						h.Parent = G
						h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						h.BackgroundTransparency = 1.000
						h.BorderColor3 = Color3.fromRGB(0, 0, 0)
						h.BorderSizePixel = 0
						h.ClipsDescendants = true
						h.Position = UDim2.new(0, 7, 0, 0)
						h.Size = UDim2.new(1, -40.0, 1, 0)
						h.Font = Enum.Font.GothamMedium
						h.PlaceholderColor3 = Color3.fromRGB(127, 127, 127)
						h.PlaceholderText = f or "Input Text"
						h.Text = x or ""
						P(h, "TextColor3", "light")
						h.TextSize = 12.000
						h.TextXAlignment = Enum.TextXAlignment.Left
						h.ClearTextOnFocus = z.ClearTextOnFocus
						t4[#t4 + 1] = h.FocusLost:Connect(function()
							local x = h.Text

							j.Flags[S] = { CurrentValue = x }

							if z.RemoveTextAfterFocusLost then
								h.Text = ""
							end

							task.spawn(function()
								t:SafeCallback(O, E, "input", x)
							end)
						end)

						if safehttpget_[S] and not z.DontSave then
							j.Flags[S] = safehttpget_[S]
							h.Text = tostring(safehttpget_[S].CurrentValue)
							task.spawn(function()
								t:SafeCallback(O, E, "input", h.Text, true)
							end)
						end

						t4[#t4 + 1] = RunService.RenderStepped:Connect(function()
							local m = math.max(30, h.TextBounds.X + 50)

							TweenService:Create(G, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, math.clamp(m, 0, 160), 0, 20) }):Play()
						end)

						return { Set = function(m, m)
							h.Text = tostring(m or "")
							j.Flags[S] = { CurrentValue = h.Text }
						end }
					end
					function N:CreateColorPicker(m)
						local z = m.Name
						local E = m.Color
						local S = m.Flag
						local x = m.Callback or function()
						end

						local function f(P)
							local O, q, T = unpack(P:split("/"))

							return Color3.fromHSV(tonumber(O), tonumber(q), tonumber(T))
						end

						if safehttpget_[S] and safehttpget_[S].Color and not m.DontSave then
							E = f(safehttpget_[S].Color)
						end

						j.Flags[S] = { Color = E }
						table.insert(u.Features, z)

						local u = Instance.new("Frame")
						local f = Instance.new("TextLabel")
						local P = Instance.new("UICorner")
						local O = Instance.new("Frame")
						local q = Instance.new("UICorner")
						local T = Instance.new("Frame")
						local l = Instance.new("UICorner")
						local G = Instance.new("Frame")
						local w = Instance.new("UIGradient")
						local y = Instance.new("UICorner")
						local U = Instance.new("Frame")
						local h = Instance.new("UICorner")
						local a = Instance.new("UIGradient")
						local J = Instance.new("Frame")
						local r = Instance.new("UICorner")
						local H = Instance.new("UIGradient")
						local I = Instance.new("Frame")
						local v = Instance.new("UICorner")
						local V = Instance.new("TextBox")
						local K = Instance.new("TextLabel")
						local c = Instance.new("Frame")
						local L = Instance.new("UICorner")
						local F = Instance.new("TextBox")
						local e = Instance.new("TextLabel")
						local s = Instance.new("Frame")
						local _v = Instance.new("UICorner")
						local tv = Instance.new("TextBox")
						local Qv = Instance.new("TextLabel")

						u.Name = "Colorpicker"
						u.Parent = B
						X(u)
						u.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						u.BackgroundTransparency = 0.450
						u.BorderColor3 = Color3.fromRGB(0, 0, 0)
						u.BorderSizePixel = 0
						u.ClipsDescendants = true
						u.Size = UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, 32)
						f.Name = "SliderName"
						f.Parent = u
						f.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						f.BackgroundTransparency = 1.000
						f.BorderColor3 = Color3.fromRGB(0, 0, 0)
						f.BorderSizePixel = 0
						f.Position = UDim2.new(0, 10, 0, 0)
						f.Size = UDim2.new(0.5, 0, 0, 32)
						f.Font = Enum.Font.GothamMedium
						f.Text = z
						f.TextColor3 = Color3.fromRGB(199, 199, 199)
						f.TextSize = 12.000
						f.TextXAlignment = Enum.TextXAlignment.Left
						D(f, m)
						P.CornerRadius = UDim.new(0, 5)
						P.Parent = u
						O.Name = "ColorIndicatorBackground"
						O.Parent = u
						O.AnchorPoint = Vector2.new(1, 0.5)
						O.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						O.BackgroundTransparency = 0.300
						O.BorderColor3 = Color3.fromRGB(0, 0, 0)
						O.BorderSizePixel = 0
						O.Position = UDim2.new(1, -4.0, 0, 16)
						O.Size = UDim2.new(0, 50, 0, 20)
						q.CornerRadius = UDim.new(0, 5)
						q.Parent = O
						T.Name = "ColorIndicator"
						T.Parent = u
						T.AnchorPoint = Vector2.new(1, 0.5)
						T.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
						T.BorderColor3 = Color3.fromRGB(0, 0, 0)
						T.BorderSizePixel = 0
						T.Position = UDim2.new(1, -6.0, 0, 16)
						T.Size = UDim2.new(0, 46, 0, 16)
						l.CornerRadius = UDim.new(0, 4)
						l.Parent = T
						G.Name = "ColorSlider"
						G.Parent = u
						G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						G.BorderColor3 = Color3.fromRGB(27, 42, 53)
						G.ClipsDescendants = true
						G.Position = UDim2.new(0, 10, 0, 120)
						G.Size = UDim2.new(0, 173, 0, 12)
						w.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)), ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)), ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)), ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)), ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)), ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0)) })
						w.Parent = G
						y.CornerRadius = UDim.new(0, 6)
						y.Parent = G
						U.Name = "Base"
						U.Parent = u
						U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						U.BorderColor3 = Color3.fromRGB(0, 0, 0)
						U.BorderSizePixel = 0
						U.Position = UDim2.new(0, 10, 0, 33)
						U.Size = UDim2.new(0, 173, 0, 80)
						h.CornerRadius = UDim.new(0, 6)
						h.Parent = U

						local D = Instance.new("Frame")
						local f = Instance.new("UICorner")

						D.Name = "HueThumb"
						D.Parent = G
						D.AnchorPoint = Vector2.new(0.5, 0.5)
						D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						D.BorderSizePixel = 0
						D.Size = UDim2.new(0, 6, 0, 6)
						D.ZIndex = 10
						D.ClipsDescendants = false
						f.CornerRadius = UDim.new(1, 0)
						f.Parent = D

						local f = Instance.new("UIStroke")

						f.Color = Color3.fromRGB(0, 0, 0)
						f.Thickness = 1
						f.Parent = D

						local f = Instance.new("Frame")
						local P = Instance.new("UICorner")

						f.Name = "ColorThumb"
						f.Parent = J
						f.AnchorPoint = Vector2.new(0.5, 0.5)
						f.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						f.BorderColor3 = Color3.fromRGB(0, 0, 0)
						f.BorderSizePixel = 0
						f.Size = UDim2.fromOffset(6, 6)
						f.ZIndex = 10
						f.ClipsDescendants = false
						P.CornerRadius = UDim.new(1, 0)
						P.Parent = f

						local P = Instance.new("UIStroke")

						P.Color = Color3.fromRGB(0, 0, 0)
						P.Thickness = 1
						P.Parent = f

						local function P(q)
							local l = G.AbsolutePosition.X
							local w = G.AbsoluteSize.X
							local y = math.clamp((q - l) / w, 0, 1)

							return y
						end
						local function q(l, w)
							local y = J.AbsolutePosition.X
							local h = J.AbsoluteSize.X
							local kv = math.clamp((l - y) / h, 0, 1)
							local l = J.AbsolutePosition.Y
							local y = J.AbsoluteSize.Y
							local h = math.clamp((w - l) / y, 0, 1)

							return kv, h
						end

						local l
						local w, y, h = E:ToHSV()

						f.Position = UDim2.fromScale(1 - h, 1 - y)
						y = 1
						h = 1
						a.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(w, y, h)) })
						a.Rotation = 270
						a.Parent = U
						l = w
						D.Position = UDim2.fromScale(w, 0.5)

						local E
						local w
						local y

						local function h(kv, Wv, mv, pv, dv)
							if not (mv and pv) then
								mv, pv = q(kv, Wv)
							end

							TweenService:Create(f, TweenInfo.new(0.1), { Position = UDim2.fromScale(mv, pv) }):Play()

							local q = Color3.fromHSV(l, 1 - pv, 1 - mv)

							O.BackgroundColor3 = q
							T.BackgroundColor3 = q

							local O = tostring(q)

							tv.Text = string.format("%s, %s, %s", math.floor(tonumber(O:split(", ")[1]) * 360), math.floor(tonumber(O:split(", ")[2]) * 255), math.floor(tonumber(O:split(", ")[3]) * 255))

							local O, T, kv = math.floor((q.R * 255) + 0.5), math.floor((q.G * 255) + 0.5), math.floor((q.B * 255) + 0.5)

							F.Text = string.format("%s, %s, %s", O, T, kv)
							V.Text = string.format("#%02x%02x%02x", O, T, kv)
							E = V.Text
							w = F.Text
							y = tv.Text
							j.Flags[S] = { Color = q }

							if not dv then
								task.spawn(function()
									t:SafeCallback(x, z, "colorpicker", q)
								end)
							end
						end

						local O = false
						local q = false
						local T
						local y

						t4[#t4 + 1] = G.InputBegan:Connect(function(kv)
							if kv.UserInputType == Enum.UserInputType.MouseButton1 or kv.UserInputType == Enum.UserInputType.Touch then
								O = true
								T = kv

								while O and wait() do
									local kv = P(T.Position.X)

									l = kv
									TweenService:Create(D, TweenInfo.new(0.1), { Position = UDim2.fromScale(kv, 0.5) }):Play()

									local P = Color3.fromHSV(kv, 1, 1)

									a.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, P) })
									h(nil, nil, f.Position.X.Scale, f.Position.Y.Scale)
								end
							end
						end)
						t4[#t4 + 1] = G.InputChanged:Connect(function(P)
							if P.UserInputType == Enum.UserInputType.MouseMovement or P.UserInputType == Enum.UserInputType.Touch then
								T = P
							end
						end)
						t4[#t4 + 1] = G.InputEnded:Connect(function(P)
							if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
								O = false
							end
						end)
						h(nil, nil, f.Position.X.Scale, f.Position.Y.Scale, true)

						if safehttpget_[S] and safehttpget_[S].Color and not m.DontSave then
							local m = j.Flags[S].Color

							task.spawn(function()
								t:SafeCallback(x, z, "colorpicker", m)
							end)
						end

						t4[#t4 + 1] = J.InputBegan:Connect(function(m)
							if m.UserInputType == Enum.UserInputType.MouseButton1 or m.UserInputType == Enum.UserInputType.Touch then
								q = true
								y = m

								while q and wait() do
									h(y.Position.X, y.Position.Y)
								end
							end
						end)
						t4[#t4 + 1] = J.InputChanged:Connect(function(m)
							if m.UserInputType == Enum.UserInputType.MouseMovement or m.UserInputType == Enum.UserInputType.Touch then
								y = m
							end
						end)
						t4[#t4 + 1] = J.InputEnded:Connect(function(m)
							if m.UserInputType == Enum.UserInputType.MouseButton1 or m.UserInputType == Enum.UserInputType.Touch then
								q = false
							end
						end)
						J.Name = "Overlay"
						J.Parent = u
						J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						J.BorderColor3 = Color3.fromRGB(0, 0, 0)
						J.BorderSizePixel = 0
						J.Position = UDim2.new(0, 10, 0, 33)
						J.Size = UDim2.new(0, 173, 0, 80)
						r.CornerRadius = UDim.new(0, 6)
						r.Parent = J
						H.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0)) })
						H.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00) })
						H.Parent = J
						I.Name = "HexValue"
						I.Parent = u
						I.AnchorPoint = Vector2.new(1, 1)
						I.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						I.BackgroundTransparency = 0.500
						I.BorderColor3 = Color3.fromRGB(0, 0, 0)
						I.BorderSizePixel = 0
						I.Position = UDim2.new(1, -10.0, 0, 130)
						I.Size = UDim2.new(0, 100, 0, 26)
						v.Parent = I
						V.Name = "HexValueText"
						V.Parent = I
						V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						V.BackgroundTransparency = 1.000
						V.BorderColor3 = Color3.fromRGB(0, 0, 0)
						V.BorderSizePixel = 0
						V.Size = UDim2.new(1, 0, 1, 0)
						V.Font = Enum.Font.GothamMedium
						V.TextColor3 = Color3.fromRGB(255, 255, 255)
						V.TextSize = 14.000
						V.ClearTextOnFocus = false
						t4[#t4 + 1] = V.FocusLost:Connect(function()
							local m = V.Text

							if m:sub(1, 1) == "#" then
								m = m:sub(2)
							end

							if not m:match("%x+%x+%x+") then
								V.Text = E

								return
							end

							local n = m:sub(1, 2)
							local z = m:sub(3, 4)
							local Z = m:sub(5, 6)
							local m, E, S = tonumber(n, 16), tonumber(z, 16), tonumber(Z, 16)
							local n, z, Z = Color3.fromRGB(m, E, S):ToHSV()

							l = n
							TweenService:Create(D, TweenInfo.new(0.1), { Position = UDim2.fromScale(n, 0.5) }):Play()
							a.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(n, 1, 1)) })
							h(nil, nil, 1 - Z, 1 - z)
						end)
						K.Name = "FormatIndication"
						K.Parent = I
						K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						K.BackgroundTransparency = 1.000
						K.BorderColor3 = Color3.fromRGB(0, 0, 0)
						K.BorderSizePixel = 0
						K.Position = UDim2.new(-1.0, -7.0, 0, 0)
						K.Size = UDim2.new(1, 0, 1, 0)
						K.Font = Enum.Font.GothamMedium
						K.Text = "HEX"
						K.TextColor3 = Color3.fromRGB(141, 141, 141)
						K.TextSize = 14.000
						K.TextWrapped = true
						K.TextXAlignment = Enum.TextXAlignment.Right
						c.Name = "RgbValue"
						c.Parent = u
						c.AnchorPoint = Vector2.new(1, 1)
						c.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						c.BackgroundTransparency = 0.500
						c.BorderColor3 = Color3.fromRGB(0, 0, 0)
						c.BorderSizePixel = 0
						c.Position = UDim2.new(1, -10.0, 0, 100)
						c.Size = UDim2.new(0, 100, 0, 26)
						L.Parent = c
						F.Name = "RgbValueText"
						F.Parent = c
						F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						F.BackgroundTransparency = 1.000
						F.BorderColor3 = Color3.fromRGB(0, 0, 0)
						F.BorderSizePixel = 0
						F.Size = UDim2.new(1, 0, 1, 0)
						F.Font = Enum.Font.GothamMedium
						F.TextColor3 = Color3.fromRGB(255, 255, 255)
						F.TextSize = 14.000
						F.ClearTextOnFocus = false
						t4[#t4 + 1] = F.FocusLost:Connect(function()
							local m = F.Text

							m = m:gsub(" ", "")

							if not m:match("%d+,%d+,%d+") then
								F.Text = w

								return
							end

							local n = m:split(",")[1]
							local z = m:split(",")[2]
							local Z = m:split(",")[3]
							local m, E, S = tonumber(n), tonumber(z), tonumber(Z)

							if not (m and E and S) then
								F.Text = w

								return
							end

							if (m < 0 or m > 255) or (E < 0 or E > 255) or (S < 0 or S > 255) then
								F.Text = w

								return
							end

							local n, z, Z = Color3.fromRGB(m, E, S):ToHSV()

							l = n
							TweenService:Create(D, TweenInfo.new(0.1), { Position = UDim2.fromScale(n, 0.5) }):Play()
							a.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(n, 1, 1)) })
							h(nil, nil, 1 - Z, 1 - z)
						end)
						e.Name = "FormatIndication"
						e.Parent = c
						e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						e.BackgroundTransparency = 1.000
						e.BorderColor3 = Color3.fromRGB(0, 0, 0)
						e.BorderSizePixel = 0
						e.Position = UDim2.new(-1.0, -7.0, 0, 0)
						e.Size = UDim2.new(1, 0, 1, 0)
						e.Font = Enum.Font.GothamMedium
						e.Text = "RGB"
						e.TextColor3 = Color3.fromRGB(141, 141, 141)
						e.TextSize = 14.000
						e.TextWrapped = true
						e.TextXAlignment = Enum.TextXAlignment.Right
						s.Name = "HsvValue"
						s.Parent = u
						s.AnchorPoint = Vector2.new(1, 1)
						s.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						s.BackgroundTransparency = 0.500
						s.BorderColor3 = Color3.fromRGB(0, 0, 0)
						s.BorderSizePixel = 0
						s.Position = UDim2.new(1, -10.0, 0, 70)
						s.Size = UDim2.new(0, 100, 0, 26)
						_v.Parent = s
						tv.Name = "HsvValueText"
						tv.Parent = s
						tv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						tv.BackgroundTransparency = 1.000
						tv.BorderColor3 = Color3.fromRGB(0, 0, 0)
						tv.BorderSizePixel = 0
						tv.Size = UDim2.new(1, 0, 1, 0)
						tv.Font = Enum.Font.GothamMedium
						tv.TextColor3 = Color3.fromRGB(255, 255, 255)
						tv.TextSize = 14.000
						t4[#t4 + 1] = tv.FocusLost:Connect(function()
							local m = tv.Text

							m = m:gsub(" ", "")

							if not m:match("%d+,%d+,%d+") then
								tv.Text = w

								return
							end

							local n = m:split(",")[1]
							local z = m:split(",")[2]
							local Z = m:split(",")[3]
							local m, E, S = tonumber(n), tonumber(z), tonumber(Z)

							if not (m and E and S) then
								tv.Text = w

								return
							end

							if (m < 0 or m > 360) or (E < 0 or E > 255) or (S < 0 or S > 255) then
								tv.Text = w

								return
							end

							m, E, S = m / 360, E / 255, S / 255
							m, E, S = Color3.fromHSV(m, E, S):ToHSV()
							l = m
							TweenService:Create(D, TweenInfo.new(0.1), { Position = UDim2.fromScale(m, 0.5) }):Play()
							a.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(m, 1, 1)) })
							h(nil, nil, 1 - S, 1 - E)
						end)
						Qv.Name = "FormatIndication"
						Qv.Parent = s
						Qv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Qv.BackgroundTransparency = 1.000
						Qv.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Qv.BorderSizePixel = 0
						Qv.Position = UDim2.new(-1.0, -7.0, 0, 0)
						Qv.Size = UDim2.new(1, 0, 1, 0)
						Qv.Font = Enum.Font.GothamMedium
						Qv.Text = "HSV"
						Qv.TextColor3 = Color3.fromRGB(141, 141, 141)
						Qv.TextSize = 14.000
						Qv.TextWrapped = true
						Qv.TextXAlignment = Enum.TextXAlignment.Right

						local m = Instance.new("TextButton")

						m.Parent = u
						m.Text = ""
						m.ZIndex = 2
						m.BackgroundTransparency = 1
						m.BorderSizePixel = 0
						m.Size = UDim2.new(1, 0, 0, 32)

						local n = false
						local z = 0
						local Z

						local function E(S)
							return UDim2.new(1, -((v122 or _G.SINGLE_COLUMNS) and 29 or 10), 0, S)
						end
						local function W(S)
							I.Visible = S
							c.Visible = S
							s.Visible = S
							G.Visible = S
							J.Visible = S
							U.Visible = S
						end

						local S = { { Items = { U, J }, Delay = 0, Offset = Vector2.new(0, 14) }, { Items = { G }, Delay = 0.06, Offset = Vector2.new(0, 14) }, { Items = { s }, Delay = 0.10, Offset = Vector2.new(24, 0) }, { Items = { c }, Delay = 0.15, Offset = Vector2.new(24, 0) }, { Items = { I }, Delay = 0.20, Offset = Vector2.new(24, 0) } }

						local function x(f)
							local P = {}

							local function O(q)
								if q:IsA("GuiObject") then
									table.insert(P, { q, "BackgroundTransparency", q.BackgroundTransparency })

									if q:IsA("TextLabel") or q:IsA("TextBox") then
										table.insert(P, { q, "TextTransparency", q.TextTransparency })
									end
								elseif q:IsA("UIStroke") then
									table.insert(P, { q, "Transparency", q.Transparency })
								end
							end

							O(f)

							for q, q in ipairs(f:GetDescendants()) do
								O(q)
							end

							return P
						end

						for f, f in ipairs(S) do
							f.Data = {}

							for P, P in ipairs(f.Items) do
								local O = P.Position

								f.Data[P] = { Rest = O, Hidden = UDim2.new(O.X.Scale, O.X.Offset + f.Offset.X, O.Y.Scale, O.Y.Offset + f.Offset.Y), Fade = x(P) }
							end
						end

						local function x(f)
							for P, P in ipairs(S) do
								for O, q in pairs(P.Data) do
									O.Position = f and q.Rest or q.Hidden

									for P, P in ipairs(q.Fade) do
										P[1][P[2]] = f and P[3] or 1
									end
								end
							end
						end
						local function f(P)
							z += 1

							local O = z

							if Z then
								Z:Cancel()
							end

							if P then
								W(true)
							end

							Z = TweenService:Create(u, TweenInfo.new(P and 0.45 or 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = E(P and 140 or 32) })
							Z:Play()

							local Z = P and 0.4 or 0.18
							local q = TweenInfo.new(Z, P and Enum.EasingStyle.Quint or Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

							for Z, Z in ipairs(S) do
								task.delay(P and Z.Delay or 0, function()
									if O ~= z then
										return
									end

									for S, T in pairs(Z.Data) do
										TweenService:Create(S, q, { Position = P and T.Rest or T.Hidden }):Play()

										for Z, Z in ipairs(T.Fade) do
											TweenService:Create(Z[1], q, { [Z[2]] = P and Z[3] or 1 }):Play()
										end
									end
								end)
							end

							if not P then
								task.delay(0.3, function()
									if O == z and not n then
										W(false)
									end
								end)
							end
						end

						t4[#t4 + 1] = m.MouseButton1Click:Connect(function()
							n = not n
							PlaySound("click")
							f(n)
						end)
						u.Size = E(32)
						x(false)
						W(false)

						return { Set = function(W, W)
							local m, d, n = W:ToHSV()

							l = m
							D.Position = UDim2.fromScale(m, 0.5)
							a.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(m, 1, 1)) })
							h(nil, nil, 1 - n, 1 - d, true)
						end }
					end
					function N:CreateDivider()
						local W = Instance.new("Frame")

						W.Parent = B
						X(W, true)
						W.BackgroundTransparency = 1
						W.Size = UDim2.new(1, 0, 0, 18)
						W.ClipsDescendants = true

						local m = Instance.new("Frame")

						m.Parent = W
						m.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
						m.Size = UDim2.new(1, -4.0, 0, 1)
						m.Position = UDim2.new(0.5, -2.0, 0.5, 0)
						m.AnchorPoint = Vector2.new(0.5, 0.5)
						m.BorderSizePixel = 0
						m.BackgroundTransparency = 0.5
					end

					return N
				end
				function j:CreateThemeTab()
					local W = j:CreateTab("#!THEME", "paintbrush")

					pcall(function()
						if not isfolder("Catsaken") then
							makefolder("Catsaken")
						end

						if not isfolder("Catsaken/themes") then
							makefolder("Catsaken/themes")
						end
					end)

					local m = { "Default Catsaken", "Purplesaken", "Greensaken", "Bluesaken" }
					local d = { Purplesaken = { title = "", background = "https://i.pinimg.com/236x/3f/f6/d6/3ff6d6f8e37e18859575e453bd434eb9.jpg", accent = "ae59ff", shades = { alt = "c900ff", hover = "b81eff", mid = "9e27f5", dark = "c900ff", dark2 = "7c0fa0", deep = "84009b", light = "c76eff" } }, Greensaken = { title = "", background = "https://img.pixers.pics/pho_wat(s3:700/FO/47/10/76/97/700_FO47107697_297131ab14cff90a0d8e3fe6e39e5b9b.jpg,700,700,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,650,jpg)/wall-murals-green-eco-leaves-seamless-background-pattern.jpg.jpg", accent = "59ff5b", shades = { alt = "00ff0c", hover = "1eff57", mid = "27f53f", dark = "20ff00", dark2 = "0fa034", deep = "00ff4a", light = "6eff70" } }, ["Default Catsaken"] = { title = "", background = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg", accent = "ffbe50" }, Bluesaken = { title = "", background = "https://w.wallhaven.cc/full/eo/wallhaven-eod8ew.png", accent = "0088ff", shades = { alt = "00a1ff", hover = "00a0ff", mid = "008ef5", dark = "00548c", dark2 = "005ca0", deep = "00416e", light = "2b9eff" } } }
					local n = {}
					local N, z

					local function D(u)
						return string.format("%02x%02x%02x", math.floor(u.R * 255 + 0.5), math.floor(u.G * 255 + 0.5), math.floor(u.B * 255 + 0.5))
					end
					local function u(Z)
						Z = tostring(Z):gsub("#", "")

						local E, S, x = tonumber(Z:sub(1, 2), 16), tonumber(Z:sub(3, 4), 16), tonumber(Z:sub(5, 6), 16)

						if E and S and x then
							return Color3.fromRGB(E, S, x)
						end
					end
					local function Z(E)
						E = tostring(E or ""):gsub("[^%w _%-]", "")

						return E:match("^%s*(.-)%s*$")
					end
					local function E(S)
						return "Catsaken/themes" .. "/" .. S .. ".json"
					end
					local function S()
						local x = { title = type(_G.LUNAR_TITLE) == "string" and _G.LUNAR_TITLE or "", background = type(_G.LUNAR_BACKGROUND) == "string" and _G.LUNAR_BACKGROUND or "", accent = D(C()), shades = {} }

						for f, f in ipairs(t.AccentShadeNames) do
							x.shades[f] = D(C(f))
						end

						return x
					end
					local function D()
						local x = {}
						local f, P = pcall(listfiles, "Catsaken/themes")

						if f then
							for f, f in ipairs(P) do
								local P = f:match("([^/\\]+)%.json$")

								if P then
									table.insert(x, P)
								end
							end
						end

						table.sort(x, function(f, P)
							return f:lower() < P:lower()
						end)

						return x
					end
					local function x()
						local f = { unpack(m) }

						for P, P in ipairs(D()) do
							if not d[P] then
								table.insert(f, P)
							end
						end

						return f
					end
					local function D(f)
						if d[f] then
							return d[f]
						end

						local P = E(f)

						if isfile(P) then
							local f, O = pcall(function()
								return HttpService:JSONDecode(readfile(P))
							end)

							if f and type(O) == "table" then
								return O
							end
						end
					end
					local function f()
						if isfile("Catsaken/themes/_autoload.txt") then
							local P = readfile("Catsaken/themes/_autoload.txt"):match("^%s*(.-)%s*$")

							return P ~= "" and P or nil
						end
					end
					local function P(O)
						local q = O.accent and u(O.accent)

						if q then
							p = q
						end

						for q, q in ipairs(t.AccentShadeNames) do
							local X = O.shades and O.shades[q]

							g[q] = X and u(X) or nil
						end

						i()

						if n.accent then
							n.accent:Set(C())
						end

						for u, u in ipairs(t.AccentShadeNames) do
							if n[u] then
								n[u]:Set(C(u))
							end
						end

						if O.title ~= nil then
							_G.LUNAR_TITLE = O.title ~= "" and O.title or v26
							_G.UpdGuiTitle()

							if N then
								N:Set(O.title)
							end
						end

						if O.background ~= nil then
							_G.LUNAR_BACKGROUND = O.background ~= "" and O.background or nil
							_G.UpdGuiBackground()

							if z then
								z:Set(O.background)
							end
						end
					end

					W:CreateSection("Colors", "Left")
					n.accent = W:CreateColorPicker({ Name = "Accent", Color = C(), Flag = "__ThemeAccent", DontSave = true, Callback = function(u)
						p = u
						i()

						for p, p in ipairs(t.AccentShadeNames) do
							if not g[p] and n[p] then
								n[p]:Set(C(p))
							end
						end
					end })

					local p = { alt = "Title gradient end", hover = "Icon hover", mid = "Slider, dropdown, scrollbar", dark = "Toggle on, search box", dark2 = "Keybind waiting", deep = "Tab hover", light = "Input text" }

					for u, u in ipairs(t.AccentShadeNames) do
						n[u] = W:CreateColorPicker({ Name = p[u], Color = C(u), Flag = "__ThemeShade_" .. u, DontSave = true, Callback = function(p)
							g[u] = p
							i()
						end })
					end

					W:CreateSection("Themes", "Right")

					local p = m[1]
					local m = ""
					local n

					local function u(g)
						n:Set("Auto-load: " .. (f() or "none") .. (g and ("\n" .. g) or ""))
					end

					n = W:CreateLabel("")
					u()

					local n = W:CreateDropdown({ Name = "Theme", Flag = "__ThemeSelect", Options = x(), CurrentOption = { p }, MultipleOptions = false, Callback = function(g)
						p = g[1]
					end })

					W:CreateButton({ Name = "Load theme", Callback = function()
						local g = p and D(p)

						if not g then
							return u("Pick a theme first")
						end

						P(g)
						u("Loaded " .. p)
					end })
					W:CreateButton({ Name = "Set as auto-load", Callback = function()
						if not (p and D(p)) then
							return u("Pick a theme first")
						end

						writefile("Catsaken/themes/_autoload.txt", p)
						u("Auto-load set to " .. p)
					end })
					W:CreateButton({ Name = "Clear auto-load", Callback = function()
						pcall(delfile, "Catsaken/themes/_autoload.txt")
						u("Auto-load cleared")
					end })
					W:CreateButton({ Name = "Delete theme", Callback = function()
						if not p then
							return u("Pick a theme first")
						end

						if d[p] then
							return u("Presets can't be deleted")
						end

						local g = p

						pcall(delfile, E(g))

						if f() == g then
							pcall(delfile, "Catsaken/themes/_autoload.txt")
						end

						p = nil
						n:Refresh(x())
						u("Deleted " .. g)
					end })
					W:CreateInput({ Name = "Save current as", Flag = "__ThemeSaveName", PlaceholderText = "Theme name", RemoveTextAfterFocusLost = false, DontSave = true, Callback = function(p)
						m = Z(p)
					end })
					W:CreateButton({ Name = "Save theme", Callback = function()
						if m == "" then
							return u("Type a theme name first")
						end

						if d[m] then
							return u(m .. " is a preset name")
						end

						writefile(E(m), HttpService:JSONEncode(S()))
						n:Refresh(x())
						u("Saved " .. m)
					end })
					W:CreateSection("Preview", "Right")
					W:CreateLabel("Everything here uses your colors live.")
					W:CreateToggle({ Name = "Example toggle", Flag = "__ThemePreviewToggle", CurrentValue = true, NoSave = true, ToolTip = "Example tooltip", Callback = NULL })
					W:CreateToggle({ Name = "Example text toggle", Flag = "__ThemePreviewTextToggle", CurrentValue = true, TextMode = true, NoSave = true, Callback = NULL, ToolTip = "Used to easily differentiate setting/configurations and actual features" })
					W:CreateSlider({ Name = "Example slider", Flag = "__ThemePreviewSlider", Range = { 0, 100 }, Increment = 1, Suffix = "%", CurrentValue = 50, Callback = NULL })
					W:CreateDropdown({ Name = "Example dropdown", Flag = "__ThemePreviewDropdown", Options = { "Option 1", "Option 2", "Option 3" }, CurrentOption = { "Option 1" }, MultipleOptions = false, Callback = NULL })
					W:CreateKeybind({ Name = "Example keybind", Callback = NULL })
					W:CreateInput({ Name = "Example textbox", Flag = "__ThemePreviewInput", PlaceholderText = "Type here", DontSave = true, Callback = NULL })
					W:CreateColorPicker({ Name = "Example color picker", Color = Color3.fromRGB(255, 255, 255), Flag = "__ThemePreviewColor", DontSave = true, Callback = NULL })
					W:CreateButton({ Name = "Example button", Callback = NULL })
					W:CreateSection("Window", "Left")
					z = W:CreateInput({ Name = "Background (URL)", CurrentValue = isfile("Catsaken/backgroundimg") and readfile("Catsaken/backgroundimg"), PlaceholderText = "URL", RemoveTextAfterFocusLost = false, Flag = "backgroundimg", DontSave = true, Callback = function(m, p)
						if p then
							return
						end

						writefile("Catsaken/backgroundimg", m)

						if m == "" or not m:match("http?.://") then
							m = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg"
						end

						_G.LUNAR_BACKGROUND = m
						_G.UpdGuiBackground()
					end })
					N = W:CreateInput({ Name = "Window title (html supported)", CurrentValue = isfile("Catsaken/windowtitle") and readfile("Catsaken/windowtitle"), PlaceholderText = "Text", RemoveTextAfterFocusLost = false, Flag = "windowtitle", DontSave = true, Callback = function(m, p)
						if p then
							return
						end

						writefile("Catsaken/windowtitle", m)
						_G.LUNAR_TITLE = m ~= "" and m or v26
						_G.UpdGuiTitle()
					end })

					if (isfile("Catsaken/backgroundimg")) then
						local m = readfile("Catsaken/backgroundimg")

						if m == "" or not m:match("http?.://") then
							m = "https://github.com/aibabylaugh/catsaken/raw/main/patterns.jpg"
						end

						_G.LUNAR_BACKGROUND = m
						_G.UpdGuiBackground()
					end

					if (isfile("Catsaken/windowtitle")) then
						local m = readfile("Catsaken/windowtitle")

						_G.LUNAR_TITLE = m ~= "" and m or v26
						_G.UpdGuiTitle()
					end

					local Q = f()
					local m = Q and D(Q)

					if m then
						task.spawn(P, m)
					end

					return W
				end

				j.Keybinds = {}
				t4[#t4 + 1] = UserInputService.InputBegan:Connect(function(Q, k)
					if u34 then
						return
					end

					if k then
						return
					end

					for k, k in pairs(j.Keybinds) do
						if k.Pressable and k.KeyCode and Q.KeyCode == Enum.KeyCode[k.KeyCode] then
							k.Callback()
						end
					end
				end)

				function j:SelectTab(Q)
					for k, k in pairs(o) do
						if k ~= o[Q] then
							k.IsSelected = false
							k.Deselect()
						end
					end

					o[Q].IsSelected = true
					o[Q].Select()
				end

				j.Flags = setmetatable({}, { __index = function(Q, k)
					if not rawget(Q, k) then
						return { CurrentValue = false, Color = Color3.fromRGB(0, 0, 0), CurrentOption = {} }
					end

					return rawget(Q, k)
				end })
				t.__Window__ = b

				return j
			end
			function t:Destroy()
				pcall(function()
					t.__Window__.Parent:Destroy()
				end)
			end
			function t:SafeCallback(Q, k, W, ...)
				assert(typeof(Q) == "function", "SafeCallback: Callback is not a function")
				assert(typeof(k) == "string", "SafeCallback: Name is not a string")
				assert(typeof(W) == "string", "SafeCallback: Type is not a string")
				xpcall(Q, function(Q)
					v126(string.format("[UI] error in %s \"%s\"! threw: %s", tostring(W), tostring(k), tostring(Q)))
				end, ...)
			end

			return t
		end)()
		local lua = boolCatsakenOldui and safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/rayfield.lua")
		local ScreenGui, hui

		if not boolCatsakenOldui then
			lib = v211
			t5 = {}
			ScreenGui = Instance.new("ScreenGui")
			ScreenGui.Name = "NotifHolder"
			hui = not RunService:IsStudio() and gethui() or LocalPlayer.PlayerGui
			ScreenGui.Parent = hui
			ScreenGui.ResetOnSpawn = false
			ScreenGui.IgnoreGuiInset = true
			Frame = Instance.new("Frame")
			Frame.Name = "List"
			Frame.Parent = ScreenGui
			Frame.AnchorPoint = Vector2.new(1, 1)
			Frame.Position = UDim2.new(1, -20, 1, -20)
			Frame.Size = UDim2.new(0, 300, 1, -40)

			if n2 ~= 369997639 then
				exitTo = 2

				break
			end

			n1 -= 2039
			n4 = 42462611
			n3 = 927157634
			n5 += 1764
			n6 -= 1645
			n10 = 551443209
			n9 += 1349
			n8 = 884807881
			n7 += 275
			n2 = 364740125
			IsAiming = nil
			UpdateSpectators = hookfunction
			EnableNoclip = t4

			if Spectating ~= nil then
				continue
			end

			exitTo = 3

			break
		end

		if not lua then
			exitTo = 1

			break
		end

		lib = loadstring(lua)()
		t5 = {}
		ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Name = "NotifHolder"
		hui = not RunService:IsStudio() and gethui() or LocalPlayer.PlayerGui
		ScreenGui.Parent = hui
		ScreenGui.ResetOnSpawn = false
		ScreenGui.IgnoreGuiInset = true
		Frame = Instance.new("Frame")
		Frame.Name = "List"
		Frame.Parent = ScreenGui
		Frame.AnchorPoint = Vector2.new(1, 1)
		Frame.Position = UDim2.new(1, -20, 1, -20)
		Frame.Size = UDim2.new(0, 300, 1, -40)

		if n2 ~= 369997639 then
			exitTo = 2

			break
		end

		n1 -= 2039
		n4 = 42462611
		n3 = 927157634
		n5 += 1764
		n6 -= 1645
		n10 = 551443209
		n9 += 1349
		n8 = 884807881
		n7 += 275
		n2 = 364740125
		IsAiming = nil
		UpdateSpectators = hookfunction
		EnableNoclip = t4

		if Spectating ~= nil then
			continue
		end

		exitTo = 3

		break
	end

	if exitTo == 1 then
		u34 = true

		return v130("External module(4) failed to load")
	end

	if exitTo == 2 then
		Frame.BackgroundTransparency = 1
	elseif exitTo ~= 3 then
		return
	end

	local UIListLayout = Instance.new("UIListLayout")

	UIListLayout.Parent = Frame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.Padding = UDim.new(0, 8)

	local v991 = Frame

	lib.ChangeNotificationLayout = function(p25, p26)
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment[p26]

		if not (n7 < 254531846) then
			n10 += 602
			n3 = 524472526
			n8 = 551079814
			n6 += 1350
			n2 = 902692094
			n7 = 304385957
			n4 = 262337626
			n9 += 1930
			n1 -= 1726
		end
	end
	lib.DeleteNotifications = function()
		for _, child in pairs(v991:GetChildren()) do
			if child.Name == "Notif" then
				child:Destroy()
			end
		end

		if n10 < n4 then
			t5 = {}
		else
			n1 -= 487
			n7 = 358144316
			n8 += 1348
			n9 = 665421540
			n10 = 259964418
			n4 = 917951839
			n2 += 261
			n3 = 490392154
			n6 += 853
			InterceptAudio = nil
			calcN7position = nil
		end
	end
	lib.Notify = function(p27, p28)
		local n17 = 999485021
		local Title = p28.Title or ""
		local Content = p28.Content or ""
		local Duration = p28.Duration or 5
		local Image = p28.Image
		local NoQueue = p28.NoQueue

		if t5[Content] then
			return
		end

		if not NoQueue then
			t5[Content] = true
		end

		task.delay(Duration, function()
			t5[Content] = nil
		end)

		local v1000 = v991
		local Frame2 = Instance.new("Frame")

		Frame2.Name = "Notif"
		Frame2.Parent = v1000
		Frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		Frame2.BorderSizePixel = 0
		Frame2.Size = UDim2.new(1, 0, 0, 0)
		Frame2.AutomaticSize = Enum.AutomaticSize.Y
		Frame2.ClipsDescendants = true
		Frame2.LayoutOrder = UIListLayout.VerticalAlignment == Enum.VerticalAlignment.Bottom and -os.clock() or os.clock()
		Frame2.BackgroundTransparency = 0.5

		local UICorner = Instance.new("UICorner")

		UICorner.CornerRadius = UDim.new(0, 8)
		UICorner.Parent = Frame2

		local UIStroke = Instance.new("UIStroke")

		UIStroke.Color = Color3.fromRGB(55, 55, 55)
		UIStroke.Thickness = 1
		UIStroke.Parent = Frame2

		local UIPadding = Instance.new("UIPadding")

		UIPadding.PaddingTop = UDim.new(0, 12)
		UIPadding.PaddingBottom = UDim.new(0, 12)
		UIPadding.PaddingLeft = UDim.new(0, 12)
		UIPadding.PaddingRight = UDim.new(0, 12)
		UIPadding.Parent = Frame2

		local n18 = 0

		if Image then
			local v1006 = v133(Image)
			local ImageLabel = Instance.new("ImageLabel")

			ImageLabel.Name = "Icon"
			ImageLabel.Parent = Frame2
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Position = UDim2.new(0, 0, 0, 1)
			ImageLabel.Size = UDim2.new(0, 18, 0, 18)
			ImageLabel.Image = v1006.id
			ImageLabel.ImageRectOffset = v1006.imageRectOffset
			ImageLabel.ImageRectSize = v1006.imageRectSize
			ImageLabel.ImageColor3 = Color3.fromRGB(230, 230, 230)
			n18 = 26
		end

		local TextButton = Instance.new("TextButton")

		TextButton.Name = "Close"
		TextButton.Parent = Frame2
		TextButton.AnchorPoint = Vector2.new(1, 0)
		TextButton.Position = UDim2.new(1, 0, 0, 0)
		TextButton.Size = UDim2.new(0, 18, 0, 18)
		TextButton.BackgroundTransparency = 1
		TextButton.Text = ""
		TextButton.ZIndex = 3

		local v1009 = v133("x")
		local ImageLabel = Instance.new("ImageLabel")

		ImageLabel.Parent = TextButton
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel.Image = v1009.id
		ImageLabel.ImageRectOffset = v1009.imageRectOffset
		ImageLabel.ImageRectSize = v1009.imageRectSize
		ImageLabel.ImageColor3 = Color3.fromRGB(150, 150, 150)
		TextButton.MouseEnter:Connect(function()
			setthreadidentity(8)
			TweenService:Create(ImageLabel, TweenInfo.new(0.15), {
				ImageColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		end)
		TextButton.MouseLeave:Connect(function()
			setthreadidentity(8)
			TweenService:Create(ImageLabel, TweenInfo.new(0.15), {
				ImageColor3 = Color3.fromRGB(150, 150, 150)
			}):Play()
		end)

		local TextLabel = Instance.new("TextLabel")

		TextLabel.Name = "Title"
		TextLabel.Parent = Frame2
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, n18, 0, 0)
		TextLabel.Size = UDim2.new(1, -n18 - 22, 0, 18)
		TextLabel.Font = Enum.Font.GothamBold
		TextLabel.Text = Title
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 14
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextYAlignment = Enum.TextYAlignment.Top

		local TextLabel2 = Instance.new("TextLabel")

		TextLabel2.Name = "Content"
		TextLabel2.Parent = Frame2
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Position = UDim2.new(0, n18, 0, 22)
		TextLabel2.Size = UDim2.new(1, -n18, 0, 0)
		TextLabel2.AutomaticSize = Enum.AutomaticSize.Y
		TextLabel2.Font = Enum.Font.Gotham
		TextLabel2.Text = Content
		TextLabel2.TextColor3 = Color3.fromRGB(180, 180, 180)
		TextLabel2.TextSize = 13
		TextLabel2.TextWrapped = true
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.TextYAlignment = Enum.TextYAlignment.Top

		if n3 == 72757245 then
			n1 += 1436
			n6 += 1589
			n17 += 1349
			n3 += 351
			n7 -= 709
			n8 = 17262758
			n9 = 497594329
			n10 += 585
			n4 = 906401571
			n5 += 1746
			GetInfStamMethod = nil
		else
			TextLabel2.RichText = true
		end

		local Frame3 = Instance.new("Frame")

		Frame3.Name = "Bar"
		Frame3.Parent = Frame2
		Frame3.AnchorPoint = Vector2.new(0, 1)
		Frame3.Position = UDim2.new(0, 8, 1, 12)
		Frame3.Size = UDim2.new(1, -16, 0, 2)
		Frame3.BackgroundColor3 = Color3.fromRGB(245, 159, 39)
		Frame3.BorderSizePixel = 0
		Frame2.Size = UDim2.new(1, 0, 0, 0)
		Frame2.BackgroundTransparency = 1
		Frame2.Position = UDim2.new(0, 40, 0, 0)

		for _, descendant in ipairs(Frame2:GetDescendants()) do
			if descendant:IsA("TextLabel") then
				descendant.TextTransparency = 1
			end

			if descendant:IsA("ImageLabel") then
				descendant.ImageTransparency = 1
			end
		end

		UIStroke.Transparency = 1
		Frame3.BackgroundTransparency = 1
		wait()
		TweenService:Create(Frame2, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			BackgroundTransparency = 0.15,
			Position = UDim2.new(0, 0, 0, 0)
		}):Play()
		TweenService:Create(UIStroke, TweenInfo.new(0.35), {
			Transparency = 0
		}):Play()

		for _, descendant in ipairs(Frame2:GetDescendants()) do
			if descendant:IsA("TextLabel") then
				TweenService:Create(descendant, TweenInfo.new(0.35), {
					TextTransparency = descendant == TextLabel2 and 0.3 or 0
				}):Play()
			elseif descendant:IsA("ImageLabel") then
				TweenService:Create(descendant, TweenInfo.new(0.35), {
					ImageTransparency = 0
				}):Play()
			end
		end

		TweenService:Create(Frame3, TweenInfo.new(0.35), {
			BackgroundTransparency = 0.3
		}):Play()
		TweenService:Create(Frame3, TweenInfo.new(Duration, Enum.EasingStyle.Linear), {
			Size = UDim2.new(0, 0, 0, 2)
		}):Play()

		local u1018 = false

		local function v1019()
			if u1018 then
				return
			end

			u1018 = true
			t5[Content] = nil

			local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

			TweenService:Create(Frame2, tweenInfo, {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 40, 0, 0)
			}):Play()
			TweenService:Create(UIStroke, tweenInfo, {
				Transparency = 1
			}):Play()

			for _, descendant in ipairs(Frame2:GetDescendants()) do
				if descendant:IsA("TextLabel") then
					TweenService:Create(descendant, tweenInfo, {
						TextTransparency = 1
					}):Play()
				elseif descendant:IsA("ImageLabel") then
					TweenService:Create(descendant, tweenInfo, {
						ImageTransparency = 1
					}):Play()
				end
			end

			TweenService:Create(Frame3, tweenInfo, {
				BackgroundTransparency = 1
			}):Play()
			wait(0.2)

			local tween = TweenService:Create(Frame2, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Size = UDim2.new(1, 0, 0, 0)
			})

			tween:Play()
			tween.Completed:Wait()
			Frame2:Destroy()
		end

		TextButton.MouseButton1Click:Connect(v1019)

		if not p28.Sticky then
			task.delay(Duration + 1, function()
				Frame2:Destroy()

				if n17 == 999485296 then
					n5 = 278629734
					n10 = 848955167
					n17 -= 19
					n1 -= 1494
					n9 = 571338162
					n6 = 399648917
					NotifyAutofarmMinigame = nil
				end
			end)
			task.delay(Duration, v1019)
		end

		return {
			Close = v1019
		}
	end
	obj.Rayfield = lib

	local u1024 = boolCatsakenOldui
	local u1025 = boolCatsakenOldui
	local u1026 = boolCatsakenOldui
	local u1027
	local lua

	xpcall(function()
		local n19 = 379923505

		downloadIcons = function(p29)
			local n20 = 0
			local t11 = {
				"shield.png",
				"app-window.png"
			}

			for _, v in pairs(t11) do
				if not isfile("Catsaken/" .. v) then
					local ok, result = pcall(function()
						return safehttpget("https://github.com/aibabylaugh/catsaken/raw/main/" .. v, true)
					end)

					if ok then
						if u1027 then
							u1027("Downloading Icons (" .. n20 .. "/" .. #t11 .. ")")
						end

						v127("writing image:", v, result)
						writefile("Catsaken/" .. v, result)

						if p29 then
							table.insert(p29, getcustomasset("Catsaken/" .. v))
						end
					else
						v126("cannot download img", v, tostring(result))
					end
				end

				n20 += 1
			end
		end

		if boolCatsakenOldui then
			v127("skipping loader, using old gui")
			pcall(function()
				if n19 < n4 then
					gethui().CatLoadGui:Destroy()
				else
					n1 = 277920497
					n9 -= 1335
					n4 -= 1633
					n6 = 596617165
					n10 = 267298754
					n19 += 212
				end
			end)
			downloadIcons()
		else
			task.spawn(function()
				local n21 = 412806953
				local n22

				local function v1038()
					n22 = 332641788

					local color3 = Color3.fromRGB
					local n23 = 33
					local t12

					while true do
						color3 = color3(n23, 33, 33)
						n23 = Color3.fromRGB(60, 60, 60)

						local n24 = 55
						local color32 = Color3.fromRGB(55, 55, n24)

						n24 = 182

						local color33 = Color3.fromRGB(255, n24, 46)

						n24 = 170

						local color34 = Color3.fromRGB(n24, 170, 170)

						n24 = 608814394

						local color35 = Color3.fromRGB(235, 235, 235)

						t12 = {}
						t12.__index = t12

						local function v1047(p30, p31, p32)
							local instance = Instance.new(p30)

							for k, v in pairs(p31) do
								instance[k] = v
							end

							instance.Parent = p32

							return instance
						end
						local function v1051(p33, p34)
							local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, p34 and Enum.EasingDirection.Out or Enum.EasingDirection.In)
							local v1053 = p34 and 0 or 1

							TweenService:Create(p33._content, tweenInfo, {
								GroupTransparency = v1053
							}):Play()
							TweenService:Create(p33._card, tweenInfo, {
								BackgroundTransparency = v1053
							}):Play()
							TweenService:Create(p33._stroke, tweenInfo, {
								Transparency = v1053
							}):Play()

							local tween = TweenService:Create(p33._scale, tweenInfo, {
								Scale = p34 and 1 or 0.9
							})

							tween:Play()

							return tween
						end

						local s7 = "new"

						local function u1056(p35)
							local obj2 = setmetatable({}, t12)
							local Frame2 = v1047("Frame", {
								AnchorPoint = Vector2.new(0.5, 0.5),
								Position = UDim2.fromScale(0.5, 0.5),
								Size = UDim2.fromOffset(340, 116),
								BackgroundColor3 = color3,
								BackgroundTransparency = 1,
								BorderSizePixel = 0
							})

							v1047("UIDragDetector", {}, Frame2)
							v1047("UICorner", {
								CornerRadius = UDim.new(0, 14)
							}, Frame2)

							local UIStroke = v1047("UIStroke", {
								Color = n23,
								Thickness = 1,
								Transparency = 1
							}, Frame2)
							local UIScale = v1047("UIScale", {
								Scale = 0.9
							}, Frame2)
							local CanvasGroup = v1047("CanvasGroup", {
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = 1,
								GroupTransparency = 1
							}, Frame2)
							local Frame3 = v1047("Frame", {
								AnchorPoint = Vector2.new(1, 0),
								Position = UDim2.new(1, -24, 0, 16),
								Size = UDim2.fromOffset(34, 34),
								BackgroundTransparency = 1
							}, CanvasGroup)
							local t13 = {}

							for i = 1, 13 do
								local v1065 = (i - 1) / 13 * math.pi * 2 - 1.5707963267948966
								local Frame4 = v1047("Frame", {
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.fromScale(0.5 + math.cos(v1065) * 0.385, 0.5 + math.sin(v1065) * 0.385),
									Size = UDim2.fromOffset(5, 5),
									BackgroundColor3 = color33,
									BorderSizePixel = 0
								}, Frame3)

								v1047("UICorner", {
									CornerRadius = UDim.new(1, 0)
								}, Frame4)
								t13[i] = Frame4
							end

							v1047("TextLabel", {
								Position = UDim2.fromOffset(24, 16),
								Size = UDim2.new(1, -90, 0, 34),
								BackgroundTransparency = 1,
								Font = Enum.Font.GothamBold,
								Text = "Catsaken",
								TextColor3 = color35,
								TextSize = 22,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTruncate = Enum.TextTruncate.AtEnd
							}, CanvasGroup)

							local TextLabel = v1047("TextLabel", {
								Position = UDim2.fromOffset(24, 56),
								Size = UDim2.new(1, -110, 0, 22),
								BackgroundTransparency = 1,
								Font = Enum.Font.GothamMedium,
								Text = "Loading...",
								TextColor3 = color34,
								TextSize = 15,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextTruncate = Enum.TextTruncate.AtEnd
							}, CanvasGroup)
							local TextLabel2 = v1047("TextLabel", {
								AnchorPoint = Vector2.new(1, 0),
								Position = UDim2.new(1, -24, 0, 56),
								Size = UDim2.fromOffset(56, 22),
								BackgroundTransparency = 1,
								Font = Enum.Font.GothamBold,
								Text = "0%",
								TextColor3 = color35,
								TextSize = 15,
								TextXAlignment = Enum.TextXAlignment.Right
							}, CanvasGroup)
							local Frame4 = v1047("Frame", {
								Position = UDim2.fromOffset(24, 88),
								Size = UDim2.new(1, -48, 0, 8),
								BackgroundColor3 = color32,
								BorderSizePixel = 0
							}, CanvasGroup)

							v1047("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}, Frame4)

							local Frame5 = v1047("Frame", {
								Size = UDim2.fromScale(0, 1),
								BackgroundColor3 = color33,
								BorderSizePixel = 0
							}, Frame4)

							v1047("UICorner", {
								CornerRadius = UDim.new(1, 0)
							}, Frame5)

							local ScreenGui = v1047("ScreenGui", {
								Name = "LoadingScreen",
								IgnoreGuiInset = true,
								ResetOnSpawn = false,
								DisplayOrder = 999,
								ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							})

							Frame2.Parent = ScreenGui
							ScreenGui.Parent = p35 or gethui and gethui() or Players.LocalPlayer:WaitForChild("PlayerGui")
							obj2._root = ScreenGui

							local n25 = 693285369

							obj2._card = Frame2
							obj2._stroke = UIStroke
							obj2._scale = UIScale
							obj2._content = CanvasGroup
							obj2._status = TextLabel
							obj2._target = 0
							obj2._shown = 0
							obj2._done = false
							obj2._conn = RunService.Heartbeat:Connect(function(dt)
								local v1073 = os.clock() * 10 % 13

								for i, v in ipairs(t13) do
									v.BackgroundTransparency = (v1073 - i) % 13 / 13 * 0.85
								end

								obj2._shown += (obj2._target - obj2._shown) * math.min(1, dt * 8)
								Frame5.Size = UDim2.fromScale(obj2._shown / 100, 1)
								TextLabel2.Text = math.floor(obj2._shown + 0.5) .. "%"

								if not (n25 < n4) then
									n24 -= 1546
									n25 += 754
									n4 = 910905589
									n1 -= 1613
									GrabTool = nil
								end
							end)
							v1051(obj2, true)

							return obj2
						end

						t12[s7] = u1056
						s7 = nil
						u1056 = nil

						local n26
						local s8 = "setProgress"

						local function u1078(p36, p37, p38)
							s7 = 781978337
							u1056 = 907549921
							n26 = 571988555

							if p36._done then
								return
							end

							p36._target = math.clamp(p37, 0, 100)

							if n4 ~= n26 then
								if p38 then
									p36._status.Text = p38
								end

								return
							end

							n4 += 1025
							u1056 -= 1615
							n19 = 928100272
							n26 = 977861175
							n24 -= 562
							n21 += 433
							n1 = 20548911
							s7 += 1747

							return nil
						end

						t12[s8] = u1078
						s8 = "setStatus"
						u1078 = function(p39, p40)
							if p39._done then
								return
							end

							p39._status.Text = p40
						end
						t12[s8] = u1078
						s8 = nil
						u1078 = nil

						local s9 = "finished"

						local function u1080(p41)
							s8 = 314252940
							u1078 = 11127886

							if p41._done then
								return
							end

							p41._done = true
							p41._target = 100

							while p41._shown < 99.5 and p41._root.Parent do
								wait()
							end

							p41._shown = 100
							wait(0.25)

							if not p41._root.Parent then
								return
							end

							v1051(p41, false)
							wait(0.3)

							if n22 < n1 then
								p41:destroy()
							else
								n22 = 997505682
								n1 = 335277210
								n19 = 605116028
								n5 -= 483
								u1078 -= 969
								n4 -= 1376
								s8 = 758479567
								n21 = 42368961
								n24 = 684934483
							end
						end

						t12[s9] = u1080
						s9 = nil
						u1080 = nil
						t12.destroy = function(p42)
							s9 = 905650448
							u1080 = 463461607
							p42._done = true
							p42._conn:Disconnect()
							p42._root:Destroy()
						end

						break
					end

					return t12
				end

				local v1081 = v1038().new()

				QUITLOADING = function()
					v1081:destroy()
					obj.catsakenexecuted = false
				end
				u1027 = function(p43)
					if n19 == 379923505 then
						v1081:setStatus(p43)
					else
						n1 = 1012283668
						n21 = 168804956
						n6 = 790368333
						n19 = 640468914
						n3 += 512
					end
				end
				v127("[status] Preparing Translations")
				v1081:setStatus("Preparing Translations")
				lua = safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/translations.lua", true)

				if not lua then
					u34 = true

					return v130("External module(5) failed to load")
				end

				lua = loadstring(lua)()

				local n27 = 0

				v127("[status] Downloading Icons")
				v1081:setStatus("Downloading Icons")

				local t14 = {}

				downloadIcons(t14)
				u1026 = true
				v127("[status] Initiating")

				local now2 = tick()

				repeat
					if obj.LOADING_ERROR then
						return
					end

					u1027(string.format("Initiating (%.1fs)", tick() - now2))
					wait()
				until u1025

				local descendants = _G.globaluilibrary:GetDescendants()

				for i = 1, #descendants do
					if not descendants[i]:IsA("ImageLabel") then
						if not descendants[i]:IsA("ImageButton") then
							continue
						end
					end

					t14[#t14 + 1] = descendants[i].Image
				end

				v127("[status] Preparing UI")
				u1027("Preparing UI (0/" .. #t14 .. ")")

				local t15 = {}

				task.spawn(function()
					local v1088

					for i = 1, #t14 do
						if t15[t14[i]] then
							n27 += 1
						else
							local u1090 = false

							task.spawn(function()
								pcall(ContentProvider.PreloadAsync, ContentProvider, { t14[i] })
								u1090 = true

								if n3 == 72758239 then
									n3 -= 1628
									n19 = 274826841
									n21 -= 220
									n1 -= 515
									n4 = 627362778
									PressKeycode = nil
								end
							end)

							local now3 = tick()

							if n21 == 412806953 then
								while true do
									wait()

									if u1090 then
										break
									elseif tick() - now3 > 2 then
										break
									end
								end
							else
								n4 -= 1937
								n1 -= 1963
								n21 -= 164
								n3 = 947552632
								n19 = 408686760
								v1088 = v1088()
								CompleteGenerators = nil
							end

							n27 += 1
							t15[t14[i]] = true
						end
					end
				end)

				while wait() do
					u1027("Preparing UI (" .. n27 .. "/" .. #t14 .. ")")
					v1081:setProgress(#t14 == 0 and 100 or n27 / #t14 * 100)

					if n27 == #t14 then
						break
					end
				end

				pcall(function()
					gethui().CatLoadGui:Destroy()
				end)
				v1081:finished()
				u1024 = true
			end)
		end

		if boolCatsakenOldui then
			lua = safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/translations.lua", true)

			if not lua then
				u34 = true

				return v130("External module(6) failed to load")
			end

			lua = loadstring(lua)()
		end

		v126("translations init")

		repeat
			wait()
		until u1026

		v126("icons init")
	end, function(p44)
		v126("load error:\n", tostring(p44))
		v130("loader errored - this should NOT happen")
	end)

	local n28
	local n29

	xpcall(function()
		n28 = 1032266516

		local n30 = 28953323

		n29 = 585934660

		local n31 = 291407125
		local v1096 = lib:CreateWindow({
			Name = v26,
			Version = "V4.1",
			TabWidth = _G.TAB_WIDTH,
			Icon = getcustomasset("Catsaken/catsaken_transparent.png"),
			LoadingTitle = "Catsaken Remastered",
			LoadingSubtitle = "V4.1",
			ShowText = "catsaken",
			Theme = "AmberGlow",
			ToggleUIKeybind = "F4",
			DisableRayfieldPrompts = true,
			DisableBuildWarnings = true,
			Translations = lua,
			ConfigurationSaving = {
				Enabled = true,
				FolderName = "CatsakenRemastered",
				FileName = "Forsaken"
			},
			Discord = {
				Enabled = false,
				Invite = "",
				RememberJoins = true
			},
			SizeSettings = {
				750,
				480
			}
		})

		_G.CATSAKENX = v1096

		do
			if boolCatsakenOldui then
				v1096.Flags = setmetatable(lib.Flags, {
					__index = function(p45, p46)
						if rawget(p45, p46) then
							return rawget(p45, p46)
						end

						return {
							CurrentValue = false,
							Color = Color3.fromRGB(0, 0, 0),
							CurrentOption = {}
						}
					end
				})
			end
		end

		if pos then
			lib:Notify({
				Title = "Dear velocity user",
				Content = "Your executor is very unstable. Script may crash randomly or if certain features are enabled",
				Duration = 30,
				Image = "bug"
			})
		end

		setthreadidentity(2)

		local v1097 = Icon.new():setImage(getcustomasset("Catsaken/app-window.png")):setLabel("Catsaken"):setCaption("Toggle Menu"):autoDeselect(false):select()

		obj.MobileToggle = v1097

		if boolCatsakenOldui then
			v1097:setEnabled(false)
		end

		setthreadidentity(8)
		FindAnimationAsset = function(p47, p48)
			local module2 = require(p47)

			if not module2.Animations then
				return
			end

			local Animations = module2.Animations
			local parts = p48:split("/")

			if #parts > 1 then
				v127(parts[1], parts[2])
				Animations = Animations[parts[1]]
				p48 = parts[2]

				if not Animations then
					return
				end
			end

			if Animations[p48] then
				return Animations[p48]
			end
		end

		do
			FindSoundAsset = function(p49, p50)
				local module2 = require(p49)

				if not module2.Sounds then
					return
				end

				local Sounds = module2.Sounds
				local parts = p50:split("/")

				if #parts > 1 then
					Sounds = Sounds[parts[1]]
					p50 = parts[2]

					if n10 ~= 355398448 then
						n28 = 1010789426
						n2 += 1196
						n9 += 1883
						n29 -= 1003
						n10 = 283670565
						n30 = 391778931
						n1 = 832510437
						n3 -= 895
						n31 = 717277558
						StartAimbotting = nil
						MassIdSearch = nil
						calcN7position = nil
						GhostAnim = nil
					elseif not Sounds then
						return
					end
				end

				if Sounds[p50] then
					return Sounds[p50]
				end
			end
		end

		get_translated_tab = function(p51)
			local v1104 = lua.Tabs[p51] or {
				["en-us"] = p51
			}

			return v1104[LocalPlayer.LocaleId] or v1104["en-us"]
		end
		CreateTab = function(p52, p53)
			local v1105 = get_translated_tab(p52)

			setthreadidentity(8)

			return v1096:CreateTab(v1105, p53)
		end

		do
			local About = CreateTab("About", "info")

			About:CreateSection("Contact")
			About:CreateLabel("Discord server: https://discord.gg/VzHp67sw9a")
			About:CreateButton({
				Name = "Copy invite",
				Callback = function()
					setclipboard("https://discord.gg/rmneruazd")

					return
				end
			})
			About:CreateSection("Script Help")
			About:CreateLabel("The keybind to the GUI is F4" .. (boolCatsakenOldui and "." or ", or press the button in the top bar. Hold/Hover over features to show help"))
			About:CreateLabel("As a reminder, there aren't any execution logs or linkable information.")
			About:CreateLabel("Name hider is on by default to protect you when recording a video or taking a screenshot. You can disable it in miscallenous, the section is called \"Streamer mode\"\nNote: Only you can see the fake name, everybody else can see your real username.")

			local v1107 = identifyexecutor()

			About:CreateParagraph({
				Title = "Executor",
				Content = string.format("You are using %s (%s)", v1107, table.find({
					"Potassium",
					"Delta"
				}, v1107) and "Supported" or "Untested")
			})
			About:CreateSection("Changelog", "Right")
			About:CreateParagraph({
				Title = "Changelog (V3.2 -> V4)",
				Content = "View all changelogs in our discord server (Copy invite in \"About\" tab)\n" .. (boolCatsakenOldui and "" or "V3.2 -> V4\n") .. [[<b>Reworks</b>
Reworked generators tab (changed to minigames)
Reworked general tab (changed to character)
Reworked esp tab and visual esp
Reworked auto lobby - now disables cutscene entirely
Reworked hitbox expander (has dynamic/static mode, target sort modes, and doesnt use velocity so way more legit without chance of kick)
Reworked Id scraping logic

<b>QOL</b>
Moved settings options from misc to dedicated button
Moved some options from general to self
More optimizations on script performance (less lag)
Made dropdowns with alot of options searchable
Made sliders have a way to type custom values
Made settings auto save instead of requiring manual save every time
Optimized gui to not lag when dragging/using navbar
Removed "blatant mode" toggle because it was hard to find for some people
Removed invisibility, desync, and all features that relied on those like anti hit (PATCHED BY FORSAKEN)
Improved "reveal ability trajectory" and "Fake emote"
Improved auto-block hitbox detection
Added protections to auto-gen incase you finish it too fast to avoid gensploit kick

<b>Fixes</b>
Fixed everything for latest forsaken patch
Fixed "hide puzzle ui" when autofarming
Fixed autoblock visualizer
Fixed autoblock not detecting azure golem
Fixed autoblock drag tech
Fixed stamina options/inf stamina
Fixed bypass killer walls making killer noclippable
Fixed anti hallucinations
Fixed stuff in audio tab
Fixed/reworked device spoofer
Fixed autogen legit delay always using legit delay
Fixed some fake emotes not working
Fixed colorpickers not saving properly
Fixed lobby music changer
Fixed round timer being slightly offset
Fixed generator anim playing while autofarming
Fixed auto-gen edge cases
Fixed esp showing while in lobby
Fixed script detecting fake nolis as killers
Fixed insta enter gen sometimes just not working at all

<b>New features</b>
Added features for new generator minigames
Added gears esp
Added auto pick up all gears
Added azure exploit character destroy/kick
Added azure launch velocity changer
Added sixer inf hitbox trail
Added nosferatu inf hitbox trail
Added 007n7 clone esp
Added feature to detect when players spectate you
Added fake injured animations
Added run/walk/idle/injured animation changers
Added ghost animations
Added togglable sprint
Added esp outline whiteness option
Added seperate survivor/killer stamina options
Added troll c00lgui
Added cancellable c00lgui
Added walkspeed override tp hit
Added enstrangle silent aim
Added infernal cry silent aim
Added auto slash 360
Added slash lunge
Added clone bodyblock modes
Added inf crystal hold time
Added super punch
Added sk8 anti-crash
Added sk8 forever (2 methods)
Added sk8 trick anywhere
Added sk8 autofarm
Added sk8 movement control
Added anti backstab
Added killer/survivor AI autoplay
Added anti void star pull
Added anti azure vine pull
Added anti afk kill
Added anti knockback
Added anti infernal cry
Added anti invisible players
Added anti exhaust
Added 2time hitbox distance multi
Added 2time backstab exploit
Added 2time glidestab helper
Added M1 visualizer
Added auto detonate nova
Added always show player list
Added name hider/streamer mode
Added maximum penalty time
Added [infinite stamina] modes
Added azure random complete time
Added nos qte random complete time
Added taph tripmine range esp
Added reveal hallucination status
Added "old forsaken menu"
Added anti detect spectate
Added customizable window titles, backgrounds, colors
Added hitbox check (better alternative to face check) to non-guest autoblock]]
			})
		end

		local function v1108()
		end

		local Minigames = CreateTab("Minigames", "joystick")
		local esp = CreateTab("ESP", "scan-eye")
		local Stamina = CreateTab("Stamina", "footprints")
		local Aimbot = CreateTab("Aimbot", "crosshair")
		local Hitboxes = CreateTab("Hitboxes", "sword")
		local Character_2 = CreateTab("Character", "star")
		local Autoblock = CreateTab("Autoblock", "shield")
		local Self = CreateTab("Self", "user")
		local Animations = CreateTab("Animations", "square-play")
		local Editor = CreateTab("Editor", "wand-sparkles")
		local Autoplay = CreateTab("Autoplay", "bot")
		local Game = CreateTab("Game", "gamepad-2")
		local Antis = CreateTab("Antis", "ban")
		local Miscallenous = CreateTab("Miscallenous", "dices")
		local Audio = CreateTab("Audio", "music")
		local Configs = CreateTab("Configs", "cog")
		local v1125 = boolCatsakenOldui and Miscallenous or v1096:CreateTab("#!SETTINGS", "cog")

		if not boolCatsakenOldui then
			v1096:CreateThemeTab()
		end

		local t16 = {
			indexes = {},
			funcs = {},
			intervals = {},
			adding = 0,
			removing = 0
		}

		do
			t16.add = function(p54, p55, p56)
				assert(p54, "RenderStepped.add: missing name")
				assert(p55, "RenderStepped.add: missing func")
				v127("[RenderStepped] adding", p54)

				local adding = t16.adding

				if adding > 0 then
					while true do
						v126("RenderStepped.add is already processing something")
						wait()

						if adding == 0 then
							break
						elseif u34 then
							break
						end
					end

					if u34 then
						t16.funcs = {}
					end
				end

				t16.adding += 1

				local v1128 = #t16.funcs + 1

				t16.indexes[p54] = v1128

				if p56 then
					local n32 = 0

					t16.funcs[v1128] = function(p57, p58)
						if p56 <= tick() - n32 then
							n32 = tick()
							p55(p57, p58)
						end
					end
				else
					t16.funcs[v1128] = p55
				end

				t16.adding -= 1
			end
		end

		t16.disconnect = function(p59)
			assert(p59, "RenderStepped.disconnect: missing name")

			local removing = t16.removing

			if removing > 0 then
				while true do
					v126("RenderStepped.disconnect is already processing something")
					wait()

					if removing == 0 then
						break
					elseif u34 then
						break
					end
				end

				if u34 then
					t16.funcs = {}
				end
			end

			t16.removing += 1

			local v1131 = t16.indexes[p59]

			if not v1131 then
				t16.removing -= 1

				return
			end

			v127("[RenderStepped] removing", p59)
			t16.indexes[p59] = nil
			table.remove(t16.funcs, v1131)

			if n30 == 28953323 then
				t16.removing -= 1
			else
				n1 = 474136349
				n31 = 484425769
				n9 = 210960423
				n3 += 1368
				n7 = 844906682
				n30 += 843
				n6 -= 608
				n5 -= 656
				n10 = 52606277
				GetGeneratorProgress = nil
				GrabTool = nil
				IsGearGenerator = nil
			end
		end

		local attackIdToName = {}
		local attackIdToWindup = {}
		local attackidToLinger = {}

		do
			local t17 = {
				Animations = {},
				Sounds = {}
			}

			NewSearch = function(p60, p61, p62, p63)
				local v1136 = t17[p62]
				local t18 = {}

				for _, v in p61, nil, nil do
					local v1140 = v[1]
					local v1141 = v[2] or 0
					local v1142 = v[3] or 0.36
					local FindAnimationAsset_ = FindAnimationAsset

					if p62 ~= "Animations" then
						FindAnimationAsset_ = FindSoundAsset
					end

					local v1144 = Killers

					if p63 ~= "Killer" then
						v1144 = Survivors
					end

					for _, v2 in v1144[p60]:GetChildren() do
						if v2:FindFirstChild("Config") then
							local v1147 = v1136[v2.Name]

							if not v1147 then
								v1147 = {}
								v1136[v2.Name] = v1147
							end

							local v1148 = v1147[v1140] or FindAnimationAsset_(v2.Config, v1140)

							if v1148 then
								t18[#t18 + 1] = v1148

								if not v1147[v1140] then
									attackIdToName[v1148] = v1140
									attackIdToWindup[v1148] = v1141
									attackidToLinger[v1148] = v1142
									v1147[v1140] = v1148
								end
							end
						end
					end

					local v1149 = v1136[p60]

					if not v1149 then
						v1149 = {}
						v1136[p60] = v1149
					end

					local v1150 = Killers2

					if p63 ~= "Killer" then
						v1150 = Survivors2
					end

					local v1151 = v1149[v1140] or FindAnimationAsset_(v1150[p60].Config, v1140)

					if v1151 then
						t18[#t18 + 1] = v1151

						if not v1149[v1140] then
							attackIdToName[v1151] = v1140
							attackIdToWindup[v1151] = v[2] or 0
							attackidToLinger[v1151] = v[3] or 0.36
							v1149[v1140] = v1151
						end
					else
						error(v1140 .. " doesnt exist in " .. p60)
					end
				end

				return t18
			end
		end

		MassIdSearch = function(p64, p65, p66)
			local t19 = {}

			for k, v in pairs(p64) do
				local v1155 = NewSearch(k, v, p65, p66)

				for _, v2 in pairs(v1155) do
					t19[#t19 + 1] = v2
				end
			end

			v127("Mass Id Search results :", #t19, "unique", p65:lower())

			if n8 ~= 589689871 then
				return t19
			end

			n30 = 383542996
			n5 += 1717
			n28 = 665018706
			n31 -= 587
			n29 = 364980873
			n3 -= 1471
			n10 -= 267
			n1 += 63
			n8 = 570377342
		end

		local t20

		do
			local v1159 = TableUtils.Extend(MassIdSearch({
				Slasher = {
					{
						"Slash",
						0.2,
						0.25
					},
					{
						"Behead",
						0.45,
						0.15
					},
					{
						"EnragedSlash",
						0.2
					},
					{
						"EnragedBehead",
						0.45
					},
					{
						"GashingWoundStart",
						0.36
					}
				},
				c00lkidd = { {
					"Attack",
					0.1,
					0.3
				} },
				JohnDoe = { {
					"Slash",
					0.4,
					0.25
				} },
				Sixer = { {
					"Slash/Slash",
					0.3,
					0.25
				} },
				Noli = { {
					"Stab",
					0.35,
					0.25
				} },
				["1x1x1x1"] = { {
					"Slash",
					0.4,
					0.25
				} },
				Nosferatu = { {
					"Slash",
					0.3,
					0.3
				} },
				Azure = {
					{
						"Slash",
						0.22,
						0.25
					},
					{
						"GolemSlash",
						0.35,
						0.25
					}
				}
			}, "Animations", "Killer"), MassIdSearch({
				Shedletsky = { {
					"Slash",
					0.5
				} }
			}, "Animations", "Survivor"))
			local t21 = {}

			for i, v in ipairs(Config8.Sounds.Swing) do
				t21[i] = v
				attackIdToName[v] = "Swing"
				attackIdToWindup[v] = 0.3
				attackidToLinger[v] = 0.25
			end

			for _, child in ipairs(Killers.Sixer:GetChildren()) do
				local Config12 = child:FindFirstChild("Config") and require(child.Config)

				if Config12 and Config12.Sounds and Config12.Sounds.Swing then
					for i, v in ipairs(Config12.Sounds.Swing) do
						if not table.find(t21, v) then
							t21[i] = v
							attackIdToName[child] = "Swing"
							attackIdToWindup[child] = 0.3
							attackidToLinger[child] = 0.25
						end
					end
				end
			end

			v127("inserted", #t21, "sixer animations")
			t20 = {
				GameState = 0,
				RoundStart = 0,
				HitboxesDuration = 0.36,
				HasHitReg = function()
					return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("FOVMultipliers") and LocalPlayer.Character.FOVMultipliers:FindFirstChild("HitRegistered")
				end,
				AI = {
					FurthestSpawn = nil,
					ClosestGenerator = nil,
					ClosestGear = nil,
					GeneratorModel = nil,
					GearModel = nil,
					KillerDist = 9e9
				},
				Has007n7Clone = nil,
				JaneDoeDoc = nil,
				JaneDoeRing = nil,
				RoundGenerators = {},
				Killers = {},
				Survivors = {},
				Items = {},
				Gingerbread = {},
				TaphDebris = {},
				BuildermanDebris = {},
				DoeDebris = {},
				DoeTrailDebris = {},
				VeeDebris = {},
				GearsDebris = {},
				AzureDebris = {},
				Spikes = {},
				ChaseThemesCategorized = {},
				ChaseThemesRaw = {},
				CurrentChaseTheme = nil,
				CurrentLms = nil,
				CurrentLobbyMusic = nil,
				DusekkarActive = false,
				NoliActive = false,
				CoolkidActive = false,
				CurrentPuzzle = nil
			}
			t20.NetworkConnections = _G.Catsaken_NetworkConnections or debug.getupvalue(module.SetConnection, 1)
			t20.AttackHitboxes = setmetatable({
				Noli = {
					size = Vector3.new(4.5, 6, 7.5),
					offset = Vector3.new(0, 0, 2.25)
				},
				Slasher = {
					size = Vector3.new(4.5, 6, 7.5),
					offset = Vector3.new(0, 0, 1.75)
				},
				c00lkidd = {
					size = Vector3.new(4.5, 6, 5),
					offset = Vector3.new(0, 0, 2)
				},
				JohnDoe = {
					size = Vector3.new(4.5, 6, 7.5),
					offset = Vector3.new(-0.5, 0.5, 2.25)
				},
				["1x1x1x1"] = {
					size = Vector3.new(4.5, 6, 7.5),
					offset = Vector3.new(0, 0, 1.75)
				},
				Sixer = {
					size = Vector3.new(5, 7, 9.25),
					offset = Vector3.new(0, 1, 3.75)
				},
				Nosferatu = {
					size = Vector3.new(4.5, 6, 7.5),
					offset = Vector3.new(0, 0, 2.25)
				},
				Azure = {
					size = Vector3.new(4.5, 6, 8.5),
					offset = Vector3.new(0, 0, 2.25)
				},
				Shedletsky = {
					size = Vector3.new(4, 6, 5),
					offset = Vector3.new(0, 0, 2.75)
				},
				CalculateVelocity = function(p67, p68, p69)
					return (p69 - p68) / ((math.clamp(Players.LocalPlayer:GetNetworkPing(), 0, 0.12) / 1.4 + 0.06 + math.clamp(0.15, 0, 0.15)) / 4 * 2)
				end,
				Predict = function(p70, p71, p72)
					local v1168 = p72.CFrame + p71.AssemblyLinearVelocity * (math.clamp(LocalPlayer:GetNetworkPing(), 0, 0.12) / 1.4 + 0.06 + 0.15) / 4

					return CFrame.new(v1168.Position.X, v1168.Position.Y, v1168.Position.Z, select(4, p72.CFrame:GetComponents()))
				end
			}, {
				__index = function()
					return {
						size = Vector3.new(4.5, 6, 7.5),
						offset = Vector3.new(0, 0, 2.75),
						fake = true
					}
				end
			})
			t20.Sprint = function(p73, p74)
				if typeof(p73) ~= "table" then
					return v126("expected ':' not '.' calling Forsaken:Sprint()")
				end

				if typeof(p74) ~= "boolean" then
					return v126("that is not a fucking bool")
				end

				if Sprinting.IsSprinting == p74 then
					return
				end

				Sprinting.IsSprinting = p74
				Sprinting.__sprintedEvent:Fire(p74)

				return
			end
			t20.GetPlayerRolePath = function(p75, p76)
				local Parent = p76 and p76.Parent

				Parent = Parent and p76.Parent ~= Spectating and p76.Parent.Name

				return Parent and (Parent == "Killers" and Killers2 or Survivors2)
			end
			t20.GetPlayerRolePathSkin = function(p77, p78, p79)
				if p79 then
					if p79 ~= "" then
						local Parent = p78 and p78.Parent

						Parent = Parent and p78.Parent ~= Spectating
						Parent = Parent and p78.Parent.Name

						local n33 = 685477041
						local v1172 = Parent

						if v1172 then
							v1172 = (Parent == "Killers" and Killers or Survivors)[p78.Name]
						end

						if n30 < n33 then
							return v1172
						end

						n31 -= 1967
						n29 += 872
						n3 = 718629267
						n28 = 629500107
						n6 += 222
						n1 += 178
						n8 += 520
						n30 += 32
						n2 = 127348573
						CreateAntiFeatureCallback = nil

						return
					end
				end
			end
			t20.GetConfig = function(p80, p81)
				local Character_3 = p81 or LocalPlayer.Character

				while true do
					local playerRolePath = p80:GetPlayerRolePath(Character_3)

					return playerRolePath and playerRolePath:FindFirstChild(Character_3.Name) and require(playerRolePath[Character_3.Name].Config)
				end
			end
			t20.GetSkinConfig = function(p82, p83)
				local Character_3 = p83 or LocalPlayer.Character
				local playerRolePathSkin = p82:GetPlayerRolePathSkin(Character_3, Character_3:GetAttribute("SkinName"))

				if playerRolePathSkin then
					return playerRolePathSkin:FindFirstChild(Character_3.Name) and require(playerRolePathSkin[Character_3.Name].Config)
				end
			end
			t20.Metas = {
				AnimationMetas = {
					GeneralAttacks = v1159,
					TwoTimeStuff = MassIdSearch({
						TwoTime = {
							{ "LungeStart" },
							{ "Stab" }
						}
					}, "Animations", "Survivor"),
					AutoblockAnimations = MassIdSearch({
						Slasher = { {
							"Slash",
							"EnragedSlash"
						} },
						JohnDoe = { { "Slash" } },
						Noli = { { "Stab" } },
						["1x1x1x1"] = { { "Slash" } },
						Sixer = { { "Slash/Slash" } },
						Nosferatu = { { "Slash" } },
						Azure = {
							{ "Slash" },
							{ "GolemSlash" }
						},
						c00lkidd = { { "Attack" } }
					}, "Animations", "Killer"),
					RevealTrajectory = MassIdSearch({
						JohnDoe = { { "CorruptEnergy" } },
						["1x1x1x1"] = {
							{ "Entanglement" },
							{ "MassInfection" }
						},
						Nosferatu = { { "Uppercut" } }
					}, "Animations", "Killer"),
					SentinelAnimations = MassIdSearch({
						Guest1337 = {
							{ "Punch" },
							{ "ParryPunch" }
						},
						Shedletsky = { { "Slash" } },
						TwoTime = {
							{ "LungeStart" },
							{ "Stab" }
						},
						JaneDoe = { { "Axe" } }
					}, "Animations", "Survivor")
				},
				SoundMetas = {
					AutoblockSounds = MassIdSearch({
						Slasher = { {
							"Swing",
							0.2
						} },
						c00lkidd = { {
							"Swing",
							0.1
						} },
						Nosferatu = { {
							"SlashGround",
							0.3
						} },
						Noli = { {
							"Swing",
							0.35
						} },
						JohnDoe = { {
							"Swing",
							0.4
						} },
						Azure = { {
							"Slash",
							0.22
						} }
					}, "Sounds", "Killer"),
					AutoCloneSounds = MassIdSearch({
						Slasher = {
							{
								"Swing",
								0.2
							},
							{
								"Behead",
								0.45
							},
							{
								"GashingWoundSwing",
								0.36
							}
						},
						c00lkidd = {
							{
								"Swing",
								0.1
							},
							{
								"WalkspeedOverrideLunge",
								0.5
							}
						},
						Nosferatu = { {
							"SlashGround",
							0.3
						} },
						Noli = { {
							"Swing",
							0.35
						} },
						JohnDoe = { {
							"Swing",
							0.4
						} },
						Azure = { {
							"Slash",
							0.22
						} }
					}, "Sounds", "Killer")
				},
				GhostAnimations = {
					Shedletsky = {
						{
							AnimationKeys = { "Slash" },
							Flag = "ShedletskySlash",
							Method = "Stop"
						},
						{
							AnimationKeys = { "FriedChicken" },
							Flag = "ShedletskyFried Chicken",
							Method = "Stop"
						}
					},
					Chance = {
						{
							AnimationKeys = {
								"AimGun",
								"GunFire",
								"GunFail",
								"GunExplode"
							},
							Flag = "ChanceOne Shot",
							Method = "Stop"
						},
						{
							AnimationKeys = {
								"FlipCoinHeads",
								"FlipCoinTails"
							},
							Flag = "ChanceCoin Flip",
							Method = "Stop"
						},
						{
							AnimationKeys = { "HatFix" },
							Flag = "ChanceHat Fix",
							Method = "Stop"
						}
					},
					TwoTime = {
						{
							AnimationKeys = {
								"CrouchStart",
								"CrouchIdle",
								"CrouchWalk",
								"CrouchRun"
							},
							Flag = "TwoTimeCrouch",
							Method = "Stop"
						},
						{
							AnimationKeys = {
								"Stab",
								"LungeStart",
								"LungeLoop",
								"LungeEnd"
							},
							Flag = "TwoTimeDagger",
							Method = "Stop"
						},
						{
							AnimationKeys = {
								"PrayStart",
								"PrayLoop",
								"PrayEnd"
							},
							Flag = "TwoTimePray",
							Method = "Stop"
						},
						{
							AnimationKeys = { "Ritual" },
							Flag = "TwoTimeRitual",
							Method = "Stop"
						}
					},
					Noob = {
						{
							AnimationKeys = { "Drinking1" },
							Flag = "NoobBloxy Cola",
							Method = "Stop"
						},
						{
							AnimationKeys = { "Drinking2" },
							Flag = "NoobSlateskin Potion",
							Method = "Stop"
						},
						{
							AnimationKeys = { "Eating" },
							Flag = "NoobGhostburger",
							Method = "Stop"
						}
					},
					["1x1x1x1"] = {
						{
							AnimationKeys = { "Entanglement" },
							Flag = "1x1x1x1Entanglement",
							Method = "Stop"
						},
						{
							AnimationKeys = { "MassInfection" },
							Flag = "1x1x1x1Mass Infection",
							Method = "Stop"
						},
						{
							AnimationKeys = { "RejuvenateTheRotten" },
							Flag = "1x1x1x1Rejuvenate The Rotten",
							Method = "Stop"
						},
						{
							AnimationKeys = { "UnstableEye" },
							Flag = "1x1x1x1Unstable Eye",
							Method = "Stop"
						}
					},
					Sixer = {
						{
							AnimationKeys = {
								"DemonicPursuitStart",
								"DemonicPursuitLoop",
								"DemonicPursuitLunge"
							},
							Flag = "SixerDemonic Pursuit",
							Method = "Stop"
						},
						{
							AnimationKeys = { "EcholocationActivate" },
							Flag = "SixerBlood Rush",
							Method = "Stop"
						},
						{
							AnimationKeys = { "BloodHuntActivate" },
							Flag = "SixerBlood Hunt",
							Method = "Stop"
						},
						{
							AnimationKeys = { "Cry" },
							Flag = "SixerInfernal Cry",
							Method = "Stop"
						}
					},
					Slasher = {
						{
							AnimationKeys = {
								"Behead",
								"EnragedBehead"
							},
							Flag = "SlasherBehead",
							Method = "Stop"
						},
						{
							AnimationKeys = { "GashingWoundStart" },
							Flag = "SlasherGashing Wound",
							Method = "Stop"
						},
						{
							AnimationKeys = { "EnragedStart" },
							Flag = "SlasherRaging Pace",
							Method = "Stop"
						}
					},
					c00lkidd = {
						{
							AnimationKeys = {
								"WalkspeedOverrideStart",
								"WalkspeedOverrideLoop",
								"WalkspeedOverrideHit",
								"WalkspeedOverrideMiss"
							},
							Flag = "c00lkiddWalkspeed Override",
							Method = "Stop"
						},
						{
							AnimationKeys = { "CorruptNature" },
							Flag = "c00lkiddCorrupt Nature",
							Method = "Stop"
						},
						{
							AnimationKeys = { "SummonPizzaDelivery" },
							Flag = "c00lkiddPizza Delivery",
							Method = "Stop"
						}
					},
					Noli = {
						{
							AnimationKeys = {
								"NovaThrow",
								"NovaDet"
							},
							Flag = "NoliNova",
							Method = "Stop"
						},
						{
							AnimationKeys = {
								"VoidRush/StartCharge",
								"VoidRush/LoopCharge",
								"VoidRush/CancelCharge",
								"VoidRush/StartDashInit",
								"VoidRush/LoopDashInit",
								"VoidRush/EndDash",
								"VoidRush/EndDashCrashed",
								"VoidRush/EndDashNonChar",
								"VoidRush/WeakHit"
							},
							Flag = "NoliVoid Rush",
							Method = "Stop"
						},
						{
							AnimationKeys = {
								"ObservantStart",
								"ObservantLoop",
								"ObservantTeleport"
							},
							Flag = "NoliObservant",
							Method = "Stop"
						}
					},
					JohnDoe = {
						{
							AnimationKeys = { "CorruptEnergy" },
							Flag = "JohnDoeCorrupt Energy",
							Method = "Stop"
						},
						{
							AnimationKeys = { "DigitalFootprint" },
							Flag = "JohnDoeDigital Footprint",
							Method = "Stop"
						}
					},
					Azure = {
						{
							AnimationKeys = {
								"GrabWindup",
								"GrabWindupIdle",
								"GrabShoot",
								"GrabPullingLoop",
								"GrabVictimHooked",
								"GrabShootFailed",
								"GrabShootSuccess",
								"GrabIdle",
								"GrabWalk",
								"GrabRun",
								"GrabThrow",
								"GrabVictimSuccess",
								"GrabVictimIdle",
								"GrabVictimWalk",
								"GrabVictimRun",
								"GrabVictimThrow"
							},
							Flag = "AzureEnstrangle",
							Method = "Stop"
						},
						{
							AnimationKeys = { "Sow" },
							Flag = "AzureSeeker Bulb",
							Method = "Stop"
						},
						{
							AnimationKeys = { "Stigmatize" },
							Flag = "AzureStigmatize",
							Method = "Stop"
						},
						{
							AnimationKeys = { "GolemShockwave" },
							Flag = "AzureBlooming",
							Method = "Stop"
						},
						{
							AnimationKeys = { "GolemFissure" },
							Flag = "AzureUnearthing",
							Method = "Stop"
						}
					}
				},
				GhostAnimationsOrder = {
					"Shedletsky",
					"Chance",
					"TwoTime",
					"Noob",
					"1x1x1x1",
					"Sixer",
					"Slasher",
					"c00lkidd",
					"Noli",
					"JohnDoe",
					"Azure"
				},
				HitboxSizesMeta = {
					SlasherGashingWoundSwing = {
						size = Vector3.new(8, 4, 8),
						offset = Vector3.new(0, 0, 2.25)
					},
					SlasherBehead = {
						size = Vector3.new(8, 2, 7),
						offset = Vector3.new(0, 0, 2)
					}
				}
			}
		end

		t20.EspAppliedToGenerators = {}
		t20.EspAppliedToItems = {}
		t20.EspAppliedToGingerbread = {}
		t20.EspAppliedToTaphDebris = {}
		t20.EspAppliedToBuildermanDebris = {}
		t20.EspAppliedToDoeDebris = {}
		t20.EspAppliedToVeeDebris = {}
		t20.EspAppliedToAzureDebris = {}
		t20.EspAppliedToGearsDebris = {}
		t20.EspAppliedToKillers = {}
		t20.EspAppliedToSurvivors = {}
		t20.UsingWalkspeedOverride = false
		t20.LungingWalkspeedOverride = false
		t20.WalkspeedOverrideAnimations = {}
		t20.WalkspeedOverrideEndedAnims = {}
		t20.WalkspeedOverrideLoopAnims = {}
		t20.GearHighlightsStore = {}
		t20.PursuitTracker = nil
		t20.IsCharging = false
		t20.TargetTwoTime = nil
		t20.PuzzleContainer = nil
		t20.BackgroundUI = nil
		t20.Disconnectables = {}
		t20.Disconnectables[#t20.Disconnectables + 1] = LocalPlayer.Idled:Connect(function()
			local VirtualInputManager2 = Instance.new("VirtualInputManager")

			VirtualInputManager2:SendMouseButtonEvent(0, 0, 0, true, game, 0)
			VirtualInputManager2:SendMouseButtonEvent(0, 0, 0, false, game, 0)
			VirtualInputManager2:Destroy()
		end)
		t20.OldProjectileCreate = clonefunction(t20.NetworkConnections.CreateProjectile.Callback)

		do
			t20.NetworkConnections.CreateProjectile.Callback = function(p84, p85)
				t20.OldProjectileCreate(p84, p85)
				v127("Projectile created:", p84.Model:GetFullName())

				if n28 == 1032266758 then
					n7 = 98631471
					n30 -= 1172
					n28 += 708
					n1 = 911016303
					n31 = 243997555
					n10 += 779
					n9 = 641539021
					n29 = 577513572
					n5 += 998
					GetAutoLockpickVar = nil
					GetCharges = nil
				else
					xpcall(function()
						local connection

						connection = RunService.Heartbeat:Connect(function()
							if not p84.Model or not p84.Model.Parent or not p84.Running then
								connection:Disconnect()
								v127("Projectile destroyed:", p84.Model and p84.Model:GetFullName())

								return
							end

							local Model = p84.Model:IsA("BasePart") and p84.Model or p84.Model.PrimaryPart

							if Model and typeof(Model) == "Instance" then
								return
							end

							return connection:Disconnect(), v126("why does this projectile have no primary part??")
						end)
						t20.Disconnectables[#t20.Disconnectables + 1] = connection
					end, function(p86)
						v126("error in projectile hook:", tostring(p86))

						return
					end)
				end
			end
		end

		local u1180 = false
		local u1181 = false
		local u1182 = false

		t20.Metas.AttackIdToWindup = attackIdToWindup
		t20.Metas.AttackIdToName = attackIdToName
		t20.Metas.AttackidToLinger = attackidToLinger
		_G.Catsaken_NetworkConnections = t20.NetworkConnections
		NotifyAutofarmMinigame = function(p87, p88)
			if not u1180 then
				return
			end

			if not v1096.Flags.AutofarmNotifications.CurrentValue then
				return
			end

			local v1183 = getthreadidentity()

			setthreadidentity(8)
			lib:Notify({
				Title = "Autofarm",
				Content = "Minigame: " .. p87,
				Image = p88,
				Duration = 5
			})
			setthreadidentity(v1183)
		end
		GhostAnim = function(p89, p90)
			if p90 == "Stop" then
				return p89:Stop()
			end

			local now2 = tick()
			local u1185

			local function v1186()
				u1185 = true
			end

			t20.Disconnectables[#t20.Disconnectables + 1] = p89.Stopped:Once(v1186)
			t20.Disconnectables[#t20.Disconnectables + 1] = p89.Destroying:Once(v1186)
			p89:AdjustSpeed(0)
			p89.TimePosition = 0

			while tick() - now2 <= p89.Length and not u1185 do
				wait()
			end

			if not u1185 and p89.IsPlaying then
				p89:Stop()
			end
		end

		do
			t20.Disconnectables[#t20.Disconnectables + 1] = LocalPlayer.PlayerGui.TemporaryUI.ChildAdded:Connect(function(child)
				Check()

				if child.Name == "PlayerInfo" then
					child:WaitForChild("PlayerIcon")
					PlayerInfo = child

					if v1096.Flags.NameHider.CurrentValue then
						local function v1187()
							for _, descendant in pairs(PlayerInfo:GetDescendants()) do
								if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
									descendant.Text = descendant.Text:gsub(LocalPlayer.Name, v1096.Flags.NameHiderText.CurrentValue)
								elseif descendant.Name == "PlayerIcon" and descendant.Image == "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420" then
									descendant.Image = getcustomasset(v1096.Flags.NameHiderIcon.CurrentValue)
								end
							end
						end

						v1187()
						child.PlayerIcon:GetPropertyChangedSignal("Image"):Once(v1187)
					end
				elseif child.Name == "BackgroundUI" then
					t20.BackgroundUI = child

					if v1096.Flags.AutoGeneratorNoUI.CurrentValue and u1180 then
						child.Enabled = false
					end
				elseif child.Name == LocalPlayer.Name and v1096.Flags.NameHider.CurrentValue then
					child:WaitForChild("PlayerIconHolder"):WaitForChild("Player")

					local function v1190()
						for _, descendant in pairs(child:GetDescendants()) do
							if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
								descendant.Text = descendant.Text:gsub(LocalPlayer.Name, v1096.Flags.NameHiderText.CurrentValue)
							elseif descendant:IsA("ImageLabel") and descendant.Name == "Player" then
								descendant.Image = getcustomasset(v1096.Flags.NameHiderIcon.CurrentValue)
							end
						end
					end

					v1190()
					child.PlayerIconHolder.Player:GetPropertyChangedSignal("Image"):Once(v1190)
				end
			end)
		end

		for _, child in pairs(Killers2:GetChildren()) do
			local ChildName = Killers:FindFirstChild(child.Name)

			if ChildName then
				for _, child2 in pairs(ChildName:GetChildren()) do
					local Config12 = child2:FindFirstChild("Config") and require(child2.Config)
					local TerrorRadiusThemes = Config12 and Config12.Sounds and Config12.Sounds.TerrorRadiusThemes

					if TerrorRadiusThemes then
						for _, TerrorRadiusTheme in pairs(TerrorRadiusThemes) do
							if TerrorRadiusTheme.Chase and not table.find(t20.ChaseThemesRaw, TerrorRadiusTheme.ID) then
								table.insert(t20.ChaseThemesCategorized, {
									Name = string.format("%s (%s) - %d BPM", child.Name, Config12.DisplayName or child2.Name, TerrorRadiusTheme.BPM),
									Asset = TerrorRadiusTheme.ID
								})
								table.insert(t20.ChaseThemesRaw, TerrorRadiusTheme.ID)
							end
						end
					end
				end
			end

			local Config12 = child:FindFirstChild("Config") and require(child.Config)
			local TerrorRadiusThemes = Config12 and Config12.Sounds and Config12.Sounds.TerrorRadiusThemes

			if TerrorRadiusThemes then
				for _, TerrorRadiusTheme in pairs(TerrorRadiusThemes) do
					if TerrorRadiusTheme.Chase and not table.find(t20.ChaseThemesRaw, TerrorRadiusTheme.ID) then
						table.insert(t20.ChaseThemesCategorized, {
							Name = string.format("%s %d BPM", Config12.DisplayName or child.Name, TerrorRadiusTheme.BPM),
							Asset = TerrorRadiusTheme.ID
						})
						table.insert(t20.ChaseThemesRaw, TerrorRadiusTheme.ID)
					end
				end
			end
		end

		table.sort(t20.ChaseThemesCategorized, function(p91, p92)
			local n34 = 1013665670

			if n7 ~= n34 then
				return p91.Name < p92.Name
			end

			n31 += 2025
			n7 += 1641
			n28 += 392
			n1 += 747
			n3 = 218147445
			n6 = 340311709
			n9 = 798487724
			n8 += 464
			n30 = 185980607
			safehttpget = nil
		end)

		do
			local WalkspeedOverrideAnimations = t20.WalkspeedOverrideAnimations
			local WalkspeedOverrideEndedAnims = t20.WalkspeedOverrideEndedAnims
			local WalkspeedOverrideLoopAnims = t20.WalkspeedOverrideLoopAnims

			table.insert(WalkspeedOverrideAnimations, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideStart)
			table.insert(WalkspeedOverrideEndedAnims, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideHit)
			table.insert(WalkspeedOverrideEndedAnims, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideMiss)
			table.insert(WalkspeedOverrideLoopAnims, require(Killers2.c00lkidd.Config).Animations.WalkspeedOverrideLoop)

			for _, v in Killers.c00lkidd:GetChildren() do
				if v:FindFirstChild("Config") then
					local Config12 = require(v:FindFirstChild("Config"))

					if Config12.Animations then
						if Config12.Animations.WalkspeedOverrideStart and not table.find(WalkspeedOverrideAnimations, Config12.Animations.WalkspeedOverrideStart) then
							table.insert(WalkspeedOverrideAnimations, Config12.Animations.WalkspeedOverrideStart)
						end

						if Config12.Animations.WalkspeedOverrideHit and not table.find(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideHit) then
							table.insert(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideHit)
						end

						if Config12.Animations.WalkspeedOverrideMiss and not table.find(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideMiss) then
							table.insert(WalkspeedOverrideEndedAnims, Config12.Animations.WalkspeedOverrideMiss)
						end

						if Config12.Animations.WalkspeedOverrideLoop and not table.find(WalkspeedOverrideLoopAnims, Config12.Animations.WalkspeedOverrideLoop) then
							table.insert(WalkspeedOverrideLoopAnims, Config12.Animations.WalkspeedOverrideLoop)
						end
					end
				end
			end
		end

		do
			xpcall(function()
				v127("inserted", #t20.WalkspeedOverrideAnimations, "walkspeed override start animations")
				v127("inserted", #t20.WalkspeedOverrideEndedAnims, "walkspeed override end animations")
				v127("inserted", #t20.WalkspeedOverrideLoopAnims, "walkspeed override loop animations")
				v127("inserted", #t20.Metas.AnimationMetas.AutoblockAnimations, "M1 animations")
				v127("inserted", #t20.Metas.SoundMetas.AutoblockSounds, "M1 sounds")
				v127("inserted", #t20.ChaseThemesRaw, "chase theme sounds")
			end, function()
				v126("oh")
			end)
		end

		do
			IsRoundLoaded = function()
				return GetGameMap() ~= nil and #t20.RoundGenerators >= 5 and t20.GameState == 1
			end
		end

		do
			local t22 = {}

			GameStateChanged = function(...)
				t22[#t22 + 1] = { ... }

				if not (n29 > 234116841) then
					n8 = 1040700365
					n6 = 938701815
					n31 -= 155
					n28 = 894314111
					n5 = 677485169
					n30 -= 375
					n9 -= 1535
					n1 = 985591021
					n29 = 492500628
					GetGeneratorProgress = nil
					stareFunc = nil
				end
			end
			GetGameState = function()
				local attribute = LocalPlayer:GetAttribute("MatchState")

				assert(attribute, "awkward")

				if n2 == 369996309 then
					return attribute == "Playing" and 1 or 0
				end

				n2 = 177360313
				n3 = 417207466
				n10 = 707676885
				n1 -= 644
				n30 = 80631869
				n8 = 18551080
				n28 += 417
				n9 += 1713
				n31 -= 8
			end
			t20.Disconnectables[#t20.Disconnectables + 1] = LocalPlayer:GetAttributeChangedSignal("MatchState"):Connect(function()
				t20.GameState = GetGameState()

				for i = 1, #t22 do
					local v1216 = t22[i]

					if t20.GameState == 1 then
						(v1216[1] or v1108)()
					else
						(v1216[2] or v1108)()
					end
				end

				if n29 == n9 then
					n1 = 648028269
					n7 -= 510
					n29 = 596363306
					n31 = 223739003
					n6 -= 1574
					n30 += 753
					n10 += 1395
					n5 = 852214729
					n9 = 538228790
				end
			end)
		end

		t20.GameState = GetGameState()

		do
			GameStateChanged(function()
				local Folder = Instance.new("Folder")

				Folder.Parent = ReplicatedStorage
				Folder.Name = "GearsHighlightStorage"
			end, function()
				local FindFirstChild = ReplicatedStorage.FindFirstChild
				local v1219 = FindFirstChild

				if FindFirstChild(ReplicatedStorage, "GearsHighlightStorage") then
					local GearsHighlightStorage = ReplicatedStorage.GearsHighlightStorage
					local v1221 = GearsHighlightStorage
					local Destroy = GearsHighlightStorage.Destroy

					v1219 = Destroy
					Destroy(v1221)
				end

				table.clear(t20.GearHighlightsStore)
			end)
		end

		do
			WaitAndReset = function(p93, p94)
				t20[p93] = true
				task.spawn(function()
					local v1223 = wait

					v1223(p94 or 3)
					t20[p93] = false

					if not (n7 < n2) then
						n2 += 159
						n1 = 440974098
						n9 -= 1388
						n3 += 1895
						n31 += 155
						n7 = 867643880
						WaitAndReset = nil
						NewSearch = nil
					end
				end)
			end
		end

		GetClosestGenerator = function(p95)
			local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

			if not HumanoidRootPart then
				return
			end

			local v1225
			local v1226
			local exitTo
			local v1228, v1229, v1230

			for k, v in t20.RoundGenerators, nil, nil do
				v1228 = t176_25_1[3]
				v1229 = t176_25_1[2]

				if v:FindFirstChild("Positions") then
					local Positions = v.Positions
					local v1234 = Positions
					local FindFirstChild = Positions.FindFirstChild

					v1230 = FindFirstChild

					if FindFirstChild(v1234, "Center") then
						if (v.Positions.Center.Position - HumanoidRootPart.Position).Magnitude <= 7 then
							v1225 = v
							v1226 = k
							exitTo = 1

							break
						end
					end
				end
			end

			if exitTo ~= 1 then
				v1228 = t176_25_1[3]
				v1229 = t176_25_1[2]
				v1230 = t176_25_1[1]
			end

			local n35 = 631417675

			if not p95 then
				return v1225
			end

			if n35 < n28 then
				return v1226
			end

			n7 += 1684
			n29 = 432988013
			n30 = 232493285
			n8 = 1043035416
			n2 += 1099
			n28 -= 631
			n31 += 1307
			n1 = 780528706
			n6 += 796
			formatclr = nil
			v1230[v1229] = v1228
		end
		IsPlayerNearGenerator = function(p96)
			local t23 = {}

			for i = 1, #t20.Survivors do
				t23[#t23 + 1] = t20.Survivors[i]
			end

			t23[#t23 + 1] = t20.MainKiller

			local n36 = 586381241

			for _, v in t23, nil, nil do
				local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")

				if HumanoidRootPart and v:GetAttribute("Username") ~= LocalPlayer.Name and p96:FindFirstChild("Positions") then
					if p96.Positions:FindFirstChild("Center") and (p96.Positions.Center.Position - HumanoidRootPart.Position).Magnitude <= 40 then
						return true
					end
				end
			end

			if n1 < n36 then
				return false
			end

			n6 -= 1671
			n5 = 939593261
			n1 = 780837294
			n30 += 643
			n28 = 144223140
			n9 = 327775771
			n8 += 588
			n31 += 1667
			n7 = 994546588
			YoinkLoot = nil
		end

		do
			GetGameMap = function()
				return workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
			end
		end

		GetGameMapObjects = function()
			return GetGameMap():GetChildren()
		end
		PressKeycode = function(p97)
			for i = 1, 2 do
				VirtualInputManager:SendKeyEvent(i < 2, p97, false, game)
				wait()
			end
		end
		GetClosestToMouse = function(p98)
			if p98 == "Killer" then
				if t20.MainKiller then
					local HumanoidRootPart = t20.MainKiller and t20.MainKiller:FindFirstChild("HumanoidRootPart")

					if not HumanoidRootPart then
						return nil
					end

					local _, v1246 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

					return v1246 and t20.MainKiller or nil
				end

				return nil
			end

			if #t20.Survivors == 0 then
				return nil
			end

			local huge = math.huge
			local v1248

			for _, v in t20.Survivors, nil, nil do
				local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")

				if HumanoidRootPart then
					if v122 then
						local v1252, v1253 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

						if v1253 then
							local v1254 = CurrentCamera.ViewportSize / 2
							local Magnitude = (Vector2.new(v1252.X, v1252.Y) - v1254).Magnitude

							if Magnitude < huge then
								huge = Magnitude
								v1248 = v
							end
						end
					else
						local mouse = LocalPlayer:GetMouse()
						local v1257, v1258 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

						if v1258 then
							local Magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(v1257.X, v1257.Y)).Magnitude

							if Magnitude < huge then
								huge = Magnitude
								v1248 = v
							end
						end
					end
				end
			end

			return v1248
		end
		GetClosestSurvivor = function(p99, p100)
			local t24 = {}

			for _, v in t20.Survivors, nil, nil do
				if not p100 then
					if not LocalPlayer.Character then
						continue
					end

					if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						continue
					end
				end

				if v:FindFirstChild("HumanoidRootPart") then
					if v ~= LocalPlayer.Character then
						local Magnitude = ((p100 or LocalPlayer.Character.HumanoidRootPart.Position) - v.HumanoidRootPart.Position).Magnitude

						if Magnitude <= p99 then
							table.insert(t24, {
								Distance = Magnitude,
								Player = v
							})
						end
					end
				end
			end

			table.sort(t24, function(p101, p102)
				return p101.Distance < p102.Distance
			end)

			local Player2 = t24[1] and t24[1].Player

			return Player2
		end
		GetClosestKiller = function(p103)
			local n37 = 407163049
			local MainKiller = t20.MainKiller

			if n7 < n37 then
				return MainKiller and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and MainKiller:FindFirstChild("HumanoidRootPart") and MainKiller ~= LocalPlayer.Character and (LocalPlayer.Character.HumanoidRootPart.Position - MainKiller.HumanoidRootPart.Position).Magnitude <= p103 and not MainKiller:GetAttribute("Invincible") and MainKiller or nil
			end

			n29 += 1548
			n2 -= 74
			n28 = 700505936
			n1 = 756806043
			n10 = 169287683
			n31 += 276
			n30 = 120755802
			n7 = 507304644
			n8 -= 1597
		end
		Predict = function(p104)
			return p104.HumanoidRootPart.Position + p104.Humanoid.MoveDirection * (p104.Humanoid:GetMoveVelocity() / 3.5)
		end

		do
			GetKillerUsername = function()
				if n1 ~= n28 then
					return t20.MainKiller and t20.MainKiller:GetAttribute("Username")
				end

				n31 -= 1899
				n28 = 775528728
				n5 = 237738467
				n30 = 912824952
				n10 = 111369778
				n29 += 1819
				n8 -= 309
				n7 = 87669919
				n1 += 452
			end
		end

		do
			IsKiller = function()
				if not LocalPlayer.Character then
					return
				end

				if not LocalPlayer.Character.Parent then
					return
				end

				return LocalPlayer.Character.Parent == Killers3
			end
		end

		do
			HasAbility = function(p105)
				if n30 == 28953323 then
					return PlayerGui.MainUI:FindFirstChild("AbilityContainer") and PlayerGui.MainUI.AbilityContainer:FindFirstChild(p105)
				end

				n2 -= 551
				n28 = 602289535
				n10 = 389377343
				n9 = 388280856
				n8 = 580062498
				n3 = 1002609763
				n1 = 465172025
				n31 -= 1159
				n30 += 1148
			end
		end

		HasAbilityReady = function(p106)
			local v1267 = HasAbility(p106)

			if not v1267 then
				return false
			end

			if v1267:FindFirstChild("NoCharges") or v1267:FindFirstChild("Helpless") then
				return false
			end

			if n30 ~= 28953863 then
				return v1267.CooldownTime.Text == ""
			end

			n7 = 699135673
			n9 += 751
			n28 = 519753284
			n6 = 893065532
			n8 = 395134361
			n1 = 925615304
			n31 = 807077864
			n30 -= 1304
			n2 = 306391900
		end

		do
			GetM1Name = function()
				if not LocalPlayer.Character then
					return "Slash"
				end

				if LocalPlayer.Character.Parent ~= Killers3 then
					return "Slash"
				end

				local Name = LocalPlayer.Character.Name

				if Name == "c00lkidd" then
					return "Tag"
				end

				if Name == "Noli" then
					return "Stab"
				end

				if Name == "Sixer" then
					return "Carving Slash"
				end

				return "Slash"
			end
		end

		GetMaxM1Reach = function()
			local v1269 = t20.AttackHitboxes[LocalPlayer.Character.Name]

			return v1269.offset.Z + v1269.size.Z
		end
		StartAimbotting = function(p107, p108, p109, p110, p111)
			local now2 = tick()
			local n38 = 1043444624
			local Enabled = SmoothShiftLock.Enabled

			setthreadidentity(2)

			while wait() do
				if not (tick() - now2 <= (p110 or 6)) or u34 then
					break
				end

				if p107 and p107.Parent and p108() then
					if p111 then
						if not SmoothShiftLock.Enabled then
							SmoothShiftLock:ToggleShiftLock()
						end

						CurrentCamera.CFrame = CFrame.new(CurrentCamera.CFrame.Position, p107.HumanoidRootPart.Position)
					else
						if SmoothShiftLock.Enabled then
							SmoothShiftLock:ToggleShiftLock()
						end

						if p109 then
							LocalPlayer.Character.HumanoidRootPart.CFrame = p109()
						else
							stareFunc(p107)
						end
					end

					continue
				end

				if Enabled and not SmoothShiftLock.Enabled then
					SmoothShiftLock:ToggleShiftLock()
				end

				break
			end

			if not (n6 < n38) then
				n10 = 85312434
				n3 += 1388
				n1 -= 1496
				n30 -= 163
				n31 = 1051495677
				n6 = 674551844
				n9 = 880550026
				n7 = 302975720
				n5 = 600906030
				SearchTool = nil
			end
		end
		HasNotification = function(p112)
			for _, child in pairs(LocalPlayer.PlayerGui.Notis:GetChildren()) do
				if string.find(child.Text:lower(), p112) then
					return true
				end
			end

			if n31 == 291407746 then
				n31 = 568499465
				n6 = 564246904
				n1 = 637297242
				n10 = 18341995
				n29 = 163816093
				n28 = 811948689
				n30 = 271035697
				n3 -= 123
				n7 = 1017366853
				upv68 = nil
				GetClosestSurvivor = nil
			end
		end

		local u1275
		local t25 = {}
		local t26 = {}
		local t27 = {}
		local t28 = {}

		CreateRangeCircle = function(p113, p114, p115)
			local Part = Instance.new("Part")

			Part.Name = "RANGEVIS"
			Part.Anchored = true
			Part.CanCollide = false
			Part.CanQuery = false
			Part.CanTouch = false
			Part.Transparency = 0.5
			Part.Color = Color3.fromRGB(255, 0, 0)
			Part.Material = Enum.Material.ForceField
			Part.Shape = Enum.PartType.Cylinder
			Part.Parent = p113
			t27[#t27 + 1] = {
				Circle = Part,
				RangeX = p114,
				RangeZ = p115,
				Object = p113
			}

			return Part
		end
		task.spawn(function()
			while wait(n14) and not u34 do
				xpcall(function()
					local t = {
						Survivors = {},
						MainKiller = nil
					}
					local N = workspace:GetChildren()
					local u = Killers3:GetChildren()

					for z = 1, #u do
						local A = u[z]

						if (A:GetAttribute("Username") ~= nil and Players:GetPlayerFromCharacter(A) ~= nil) then
							t20.MainKiller = A

							break
						end
					end

					local z = Survivors3:GetChildren()

					for u = 1, #z do
						local A = z[u]

						if A:GetAttribute("InvisibilityTransparency") then
							A:SetAttribute("LastInvisibilityTime", tick())
						end

						if (not table.find(t.Survivors, A)) then
							table.insert(t.Survivors, A)
						end
					end

					if (GetGameMap()) then
						t.RoundGenerators = {}
						t.Items = {}
						t.Gingerbread = {}
						t.TaphDebris = {}
						t.BuildermanDebris = {}
						t.DoeDebris = {}
						t.DoeTrailDebris = {}
						t.NosDebris = {}
						t.VeeDebris = {}
						t.AzureDebris = {}
						t.GearsDebris = {}
						t.Spikes = {}
						t.JaneDoeDoc = nil
						t.JaneDoeRing = nil

						for z = 1, #t20.Items do
							local u = t20.Items[z]

							if (u and ((u.Parent and (u.Parent.Parent == Survivors3 or u.Parent.Name == "Backpack")) or not u.Parent)) then
								table.remove(t20.Items, z)
							end
						end

						local j = GetGameMapObjects()

						for z = 1, #j do
							local u = j[z]

							if (u.Name == "Generator" and not table.find(t.RoundGenerators, u)) then
								table.insert(t.RoundGenerators, u)
							elseif (u:IsA("Tool") and not table.find(t.Items, u)) then
								table.insert(t.Items, u)
							elseif (u.Name == "GearsTest") then
								local j = u:GetChildren()

								for z = 1, #j do
									local u = j[z]

									if u.Name == "Gear" then
										if not table.find(t.GearsDebris, u) then
											table.insert(t.GearsDebris, u)
										end
									end
								end
							end
						end

						for j = 1, #N do
							local z = N[j]

							if (z:IsA("Tool") and (z.Name == "BloxyCola" or z.Name == "Medkit") and not table.find(t.Items, z)) then
								table.insert(t.Items, z)
							elseif z.Name == "Model" and z:IsA("MeshPart") then
								if z.MeshId == s2 then
									t.JaneDoeRing = z
								elseif z.MeshId == s1 then
									t.JaneDoeDoc = z
								end
							end
						end

						local p = workspace.Map.Ingame:GetChildren()

						for j = 1, #p do
							local n = p[j]

							if ((string.find(n.Name, "TaphTripwire") or n.Name == "SubspaceTripmine") and not table.find(t.TaphDebris, n)) and n:FindFirstChild("SubspaceBox") then
								table.insert(t.TaphDebris, n)
							elseif ((n.Name == "BuildermanSentry" or n.Name == "BuildermanDispenser") and not table.find(t.BuildermanDebris, n)) then
								table.insert(t.BuildermanDebris, n)
							elseif (n.Name:sub(-7.0) == "Shadows" and n.Name:sub(1, -8.0) == GetKillerUsername()) then
								for p, p in pairs(n:GetChildren()) do
									if (not table.find(t.DoeDebris, p)) then
										table.insert(t.DoeDebris, p)
									end
								end
							elseif (n.Name:sub(-12.0) == "JohnDoeTrail" and n.Name:sub(1, -13.0) == GetKillerUsername()) then
								for p, p in pairs(n:GetChildren()) do
									if (not table.find(t.DoeTrailDebris, p)) then
										table.insert(t.DoeTrailDebris, p)
									end
								end
							elseif (n.Name:sub(-6.0) == "Puddle" and n.Name:sub(1, -7.0) == GetKillerUsername() and not table.find(t.NosDebris, n)) then
								table.insert(t.NosDebris, n)
							elseif (n.Name:sub(-5.0) == "Spray" and Players:FindFirstChild(n.Name:sub(1, -6.0)) and not table.find(t.VeeDebris, n)) then
								table.insert(t.VeeDebris, n)
							elseif (n.Name == "SpikeCollision" and not table.find(t.Spikes, n)) then
								if (v1096.Flags.SpikeNoclip.CurrentValue) then
									n:Destroy()
								else
									table.insert(t.Spikes, n)
								end
							elseif ((n.Name == "VineModel" or n.Name == "GroundBulbModel") and n:FindFirstChild("RootPart") and not table.find(t.AzureDebris, n)) then
								table.insert(t.AzureDebris, n)
							elseif (n:IsA("Tool") and not table.find(t.Items, n)) then
								table.insert(t.Items, n)
							end
						end

						if (workspace.Map.Ingame:FindFirstChild("CurrencyLocations")) then
							local m = workspace.Map.Ingame.CurrencyLocations:GetChildren()

							for p = 1, #m do
								local j = m[p]

								if (j:FindFirstChildWhichIsA("Part").Position.Y > 0 and not table.find(t.Gingerbread, j)) then
									table.insert(t.Gingerbread, j)
								else
									if (table.find(t.Gingerbread, j) and j[`{j}Exp`].Transparency == 1) then
										table.remove(t.Gingerbread, p)
									end
								end
							end
						end

						if u1275 then
							FuckingTable = t20.EspAppliedToGenerators

							for m = 1, #t20.RoundGenerators do
								local p = t20.RoundGenerators[m]

								if u34 then
									return
								end

								if (not v1096.Flags.GeneratorEsp.CurrentValue) then
									if (not p:FindFirstChildOfClass("Highlight")) then
										continue
									end

									p:FindFirstChildOfClass("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "GeneratorEspColor")

								local m = { GearServerMinigame = "Gears", ConnectServerMinigame = "Dots Connect", FlowServerMinigame = "Flow Game", LockServerMinigame = "Lockpick" }

								AddTextLabel(p.Main, "GeneratorEspColor", "GeneratorEsp", { Text = function()
									local j = GetGeneratorProgress(p) and LocalPlayer.Character and t20.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

									if j then
										local n = GetGeneratorProgress(p)

										return ("%s • %dm • %s\n%s"):format("Generator", math.round((p.Main.Position - j.Position).magnitude / 3.57), n >= 100 and "Done" or (n .. "%"), m[p:GetAttribute("Puzzle")] or "Unknown minigame")
									elseif GetGeneratorProgress(p) then
										local m = GetGeneratorProgress(p)

										return ("%s • %s"):format("Generator", m >= 100 and "Done" or (m .. "%"))
									else
										return "Generator"
									end
								end, TextSize = 10, Font = Enum.Font.RobotoMono }, Color3.fromRGB(0, 0, 0))
							end

							FuckingTable = t20.EspAppliedToItems

							for m = 1, #t20.Items do
								local p = t20.Items[m]
								local m = p:FindFirstChild("ItemRoot")

								if u34 then
									return
								end

								if m then
									local j = m:FindFirstChild("ProximityPrompt")

									if j then
										local n = v1096.Flags.ItemPromptWallbang.CurrentValue

										j.RequiresLineOfSight = not n

										if v1096.Flags.PickupReachExtend.CurrentValue then
											j.MaxActivationDistance = 24
										else
											j.MaxActivationDistance = j:GetAttribute("OriginalActivationDistance") or 12
										end
									end
								end

								if (not v1096.Flags.ItemEsp.CurrentValue) then
									if (not p:FindFirstChildOfClass("Highlight")) then
										continue
									end

									p:FindFirstChildOfClass("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "ItemEspColor")

								if m then
									AddTextLabel(m, "ItemEspColor", "ItemEsp", { Text = function()
										local j = LocalPlayer.Character and t20.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

										if j then
											return ("%s • %dm"):format(p.Name == "BloxyCola" and "Bloxy Cola" or p.Name, math.round((m.Position - j.Position).magnitude / 3.57))
										else
											return p.Name == "BloxyCola" and "Bloxy Cola" or p.Name
										end
									end, TextSize = 10, Font = Enum.Font.RobotoMono }, Color3.fromRGB(0, 0, 0))
								end
							end

							FuckingTable = t20.EspAppliedToGingerbread

							for m = 1, #t20.Gingerbread do
								local p = t20.Gingerbread[m]

								if u34 then
									return
								end

								if (not v1096.Flags.GingerbreadEsp.CurrentValue) then
									if (not p:FindFirstChildOfClass("Highlight")) then
										continue
									end

									p:FindFirstChildOfClass("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "GingerbreadEspColor")
							end

							FuckingTable = t20.EspAppliedToTaphDebris

							for m = 1, #t20.TaphDebris do
								local p = t20.TaphDebris[m]

								if u34 then
									return
								end

								if (v1096.Flags.TripmineRanges.CurrentValue and p.Name == "SubspaceTripmine" and p:FindFirstChild("SubspaceBox") and not p.SubspaceBox:FindFirstChild("RANGEVIS")) then
									CreateRangeCircle(p.SubspaceBox, Config5.SubspaceRange, Config5.SubspaceRange)
								end

								if (not v1096.Flags.TaphEsp.CurrentValue) then
									if (not p:FindFirstChildOfClass("Highlight")) then
										continue
									end

									if (not IsKiller()) then
										continue
									end

									p:FindFirstChildOfClass("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "TaphEspColor")
							end

							FuckingTable = t20.EspAppliedToBuildermanDebris

							for m = 1, #t20.BuildermanDebris do
								local p = t20.BuildermanDebris[m]

								if u34 then
									return
								end

								if (not v1096.Flags.BuildermanEsp.CurrentValue) then
									if (not p:FindFirstChildOfClass("Highlight")) then
										continue
									end

									if (not IsKiller()) then
										continue
									end

									p:FindFirstChildOfClass("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "BuildermanEspColor")
							end

							FuckingTable = t20.EspAppliedToDoeDebris

							for m = 1, #t20.DoeDebris do
								local p = t20.DoeDebris[m]

								if u34 then
									return
								end

								if (not v1096.Flags.JohnDoeEsp.CurrentValue) then
									if (not p:FindFirstChild("Highlight")) then
										continue
									end

									p:FindFirstChild("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (p:FindFirstChild("PlayerAura")) then
									p.PlayerAura:Destroy()
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								p.Transparency = 0
								AddHighlightEsp(p, "JohnDoeEspColor")
							end

							FuckingTable = t20.EspAppliedToVeeDebris

							for m = 1, #t20.VeeDebris do
								local p = t20.VeeDebris[m]

								if u34 then
									return
								end

								if (not v1096.Flags.VeeronicaEsp.CurrentValue) then
									if (not p:FindFirstChildOfClass("Highlight")) then
										continue
									end

									p:FindFirstChildOfClass("Highlight"):Destroy()
									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "VeeronicaEspColor")
							end

							FuckingTable = t20.EspAppliedToAzureDebris

							for m = 1, #t20.AzureDebris do
								local p = t20.AzureDebris[m]

								if u34 then
									return
								end

								if (v1096.Flags.AzureEspRange.CurrentValue and p:FindFirstChild("RootPart") and not p.RootPart:FindFirstChild("RANGEVIS")) then
									if p.Name == "GroundBulbModel" then
										CreateRangeCircle(p.RootPart, Config10.ConstructConfigs.GroundBulb.Radius, Config10.ConstructConfigs.GroundBulb.Radius)
									elseif p.Name == "VineModel" then
										CreateRangeCircle(p.RootPart, Config10.ConstructConfigs.Vine.Radius, Config10.ConstructConfigs.Vine.Radius)
									end
								end

								if (not v1096.Flags.AzureEsp.CurrentValue) then
									if (p:FindFirstChild("AZUREHIGHLIGHT")) then
										p.AZUREHIGHLIGHT:Destroy()
									end

									FuckingTable[p] = false

									continue
								end

								if (FuckingTable[p]) then
									continue
								end

								FuckingTable[p] = true
								AddHighlightEsp(p, "AzureEspColor", "AZUREHIGHLIGHT")
							end

							if u34 then
								return
							end

							local W = t20.JaneDoeDoc or t20.JaneDoeRing

							if W then
								if (not W:FindFirstChildOfClass("EspTL")) then
									AddTextLabel(W, "JaneDoeQuestEspColor", "JaneDoeQuestEsp", { Text = function()
										local m = LocalPlayer.Character and t20.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

										if m then
											return ("%s • %dm"):format(W == t20.JaneDoeDoc and "Document" or "Ring", math.round((W.Position - m.Position).magnitude / 3.57))
										else
											return W == t20.JaneDoeDoc and "Document" or "Ring"
										end
									end, TextSize = 10, Font = Enum.Font.RobotoMono }, Color3.fromRGB(0, 0, 0))
								end
							end

							FuckingTable = t20.EspAppliedToGearsDebris

							local Q = v1096.Flags.GearsEsp.CurrentValue

							if (not Q and ReplicatedStorage:FindFirstChild("GearsHighlightStorage")) then
								for W, W in pairs(ReplicatedStorage.GearsHighlightStorage:GetChildren()) do
									W.Parent = t20.GearHighlightsStore[W]
									t20.GearHighlightsStore[W] = nil
								end
							end

							for W = 1, #t20.GearsDebris do
								local m = t20.GearsDebris[W]

								if u34 then
									return
								end

								local W = m:FindFirstChild("ProximityPrompt")

								if W then
									if v1096.Flags.GearPickupReachExtend.CurrentValue then
										W.MaxActivationDistance = 16
									else
										W.MaxActivationDistance = W:GetAttribute("OriginalActivationDistance") or 8
									end
								end

								if not m:GetAttribute("labelAdded") and m:FindFirstChild("Root") then
									labelshit(m.Root, "GearsEspColor", "GearsEsp")
									m:SetAttribute("labelAdded", true)
								end

								if (not Q) then
									if (not m:FindFirstChild("NewGearHighlight")) then
										continue
									end

									m:FindFirstChild("NewGearHighlight"):Destroy()
									FuckingTable[m] = false

									continue
								end

								if (FuckingTable[m]) then
									continue
								end

								FuckingTable[m] = true
								pcall(function()
									t20.GearHighlightsStore[m.GearHighlight] = m
									m.GearHighlight.Parent = ReplicatedStorage.GearsHighlightStorage
								end)
								AddHighlightEsp(m, "GearsEspColor", "NewGearHighlight")
							end
						end
					end

					for Q, W in pairs(t) do
						t20[Q] = W
					end

					u1275 = true
				end, function(t)
					if u34 then
						return
					end

					v126("error in an extremely important loop:", tostring(t))
				end)
			end
		end)

		repeat
			v126("waiting for initial state update")
			wait(0.1)
		until u1275

		GetSpectators = function()
			local t29 = {}

			for _, player in ipairs(Players:GetPlayers()) do
				if player:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId then
					table.insert(t29, player.Name)
				end
			end

			return table.concat(t29, ", ")
		end
		Minigames:CreateSection("Generators")

		local function v1346(p116, p117)
			if GetGameMap():GetAttribute("MapName") == "PirateBay" and p117 == p116.Positions.Right.Position then
				return true
			end

			for _, v in t20.Survivors, nil, nil do
				if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - p117).Magnitude <= 6 and v ~= LocalPlayer.Character then
					return true
				end
			end

			return false
		end

		do
			GetAutoDotsVar = function()
				local CurrentValue = v1096.Flags.AutoCompleteDotsConnect.CurrentValue

				return CurrentValue or LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue or u1180
			end
		end

		GetAutoFlowGameVar = function()
			local CurrentValue = v1096.Flags.AutoCompleteFlowGame.CurrentValue

			if not CurrentValue then
				CurrentValue = LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue
			end

			return CurrentValue or u1180
		end

		do
			GetAutoLockpickVar = function()
				return v1096.Flags.AutoCompleteLockpick.CurrentValue or LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue or u1180
			end
		end

		GetAutoGearsVar = function()
			if n8 == n7 then
				n31 -= 1985
				n7 = 683780697
				n8 = 862093968
				n29 = 959513081
				n9 = 277743763
				n30 += 1937
				n1 += 387
				n3 = 945131042
				n10 = 189386603
				RestoreEffect = nil

				return
			end

			local CurrentValue = v1096.Flags.AutoCompleteGear.CurrentValue

			return CurrentValue or LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue or u1180
		end

		do
			GetPairs = function(p118)
				local t30 = {}
				local t31 = {}

				for k, v in p118.Blobs, nil, nil do
					local v1356 = t30[v]

					if not v1356 then
						v1356 = {}
						t30[v] = v1356
						t31[#t31 + 1] = v1356
					end

					v1356[#v1356 + 1] = k
				end

				return t31
			end
		end

		GetGeneratorProgress = function(p119)
			local ok, result = pcall(function()
				return math.floor(math.clamp(p119.Instances.Generator.Progress.BarUI.Bar.Size.X.Scale * 100, 0, 100) / 20) * 20
			end)

			if not ok then
				return
			end

			if n9 ~= 202624204 then
				return result
			end

			n2 -= 361
			n1 = 3241751
			n31 -= 2046
			n7 = 950214659
			n9 += 1743
			n30 = 203951239
			n6 += 1259
			n29 += 755
			n10 = 828585771
			autoplaymgr2 = nil

			return nil
		end
		AutoGenerator = function(p120)
			local Board = p120.Board
			local Renderer = p120.Renderer
			local n39 = 0
			local now2 = tick()

			p120.Dragging = nil

			for k in Board.Blobs, nil, nil do
				Board:Disconnect(k)
			end

			Renderer:Render()

			for _, v in GetPairs(Board) do
				local v1366 = v[1]
				local v1367 = v[2]

				if p120.Ended then
					return
				end

				if not (Force or GetAutoDotsVar()) then
					return
				end

				local CurrentValue = v1096.Flags.DotsMistakeChance.CurrentValue

				if CurrentValue == 0 or CurrentValue <= math.random(0, 100) or tick() - n39 <= 1.5 then
					local v1369

					if GetClosestGenerator() and IsPlayerNearGenerator(GetClosestGenerator()) then
						v1369 = true
					else
						v1369 = GetSpectators() ~= ""
					end

					if v1096.Flags.DotsLegitPuzzles.CurrentValue and v1369 then
						wait(v1096.Flags.DotsDelayLegit.CurrentValue)
					else
						wait(v1096.Flags.DotsDelay.CurrentValue)
					end
				else
					n39 = tick()
					wait(math.random(20, 50) / 100)
				end

				if Board:Connect(v1366, v1367) then
					Renderer:Render()
					Renderer:Pulse(v1367)
				end

				if not Board:IsSolved() then
					continue
				end

				if tick() - now2 <= 1.4 then
					local v1370 = 1.4 - (tick() - now2)

					v126("finished puzzle too fast (", tick() - now2, ") waiting", v1370, "seconds to be careful")
					wait(v1370)
				end

				p120:__finish()
				p120.Callbacks.OnSolved()

				return
			end
		end
		DrawSolutions = function(p121)
			local v1371 = p121
			local Board = v1371.Board
			local Renderer = v1371.Renderer
			local t32 = {}

			for _, v in GetPairs(Board) do
				t32[#t32 + 1] = {
					Renderer:__newLine(Renderer.Colors[Board:GetColor(v[1])], 0.7),
					v[1],
					v[2]
				}
			end

			local function v1377()
				for _, v in t32, nil, nil do
					Renderer:__placeLine(v[1], Renderer:ScreenCenter(v[2]), Renderer:ScreenCenter(v[3]))
				end

				return
			end

			v1377()
			Renderer.Grid:GetPropertyChangedSignal("AbsoluteSize"):Connect(v1377)
		end
		task.spawn(function()
			local v1380

			v1380 = v29(require_.new, newcclosure(function(p122, p123, p124)
				local v1381 = v1380(p122, p123, p124)
				local n40 = 530285173

				task.spawn(function()
					if not GetAutoGearsVar() then
						return
					end

					NotifyAutofarmMinigame("Gears", "settings")

					local v1383 = clonefunction(p123.OnTurn)

					for _, connection in pairs(v1381.__connections) do
						v127("destroying gear:", connection)
						connection:Disconnect()
					end

					wait(0.55)

					while not (v1381.Ended or u34) do
						if not ((LocalPlayer:GetAttribute("Gears") or 0) > 0) then
							break
						end

						v1383(v1096.Flags.GearTurnDegrees.CurrentValue)
						wait(v1096.Flags.GearTurnDelay.CurrentValue / 1000)
					end

					if not (v1381.Ended or u34) then
						if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
							t20:Sprint(true)
							t20:Sprint(false)
						end
					end

					if not (n6 < n40) then
						n1 = 511107665
						n5 -= 1591
						n3 += 1658
						n6 -= 241
						n40 = 165070480
						walk_coroutine = nil
						GetLocalHitboxes = nil
						GetAutoDotsVar = nil
						GetClosestSurvivor = nil
					end
				end)

				return v1381
			end))

			local Start
			local v1387

			for k, v in pairs(GearClientMinigame) do
				if tostring(k) ~= "MinigameKey(ClassValues)" then
					continue
				end

				Start = v.Start
				v1387 = nil
				v1387 = v29(Start, newcclosure(function(p125)
					p125.Network.Properties:Get("FixerUserId")
				end))

				return
			end

			v1387 = nil
			v1387 = v29(Start, newcclosure(function(p126)
				p126.Network.Properties:Get("FixerUserId")
			end))
		end)
		task.spawn(function()
			local n41 = 868666725
			local v1391

			v1391 = v29(LockBoard.Press, newcclosure(function(p127, p128)
				local n42 = 506246661

				if v1096.Flags.LockpickAntiMiss.CurrentValue then
					if not p127:IsOnTarget(p127:AngleAt(math.max(p128, p127.State.AnchorTime))) then
						return v126("prevented misclick cause you're so trash")
					end

					if n42 ~= n41 then
						return v1391(p127, p128)
					end

					n7 = 549268054
					n3 = 649101677
					n30 = 71164096
					n1 = 245834096
					n5 -= 216
				else
					if n42 ~= n41 then
						return v1391(p127, p128)
					end

					n7 = 549268054
					n3 = 649101677
					n30 = 71164096
					n1 = 245834096
					n5 -= 216
				end

				n28 = 641707681
				n41 += 1065
				n31 -= 937
				upv364[nil] = nil --[[ constant not decoded ]]
			end))

			local Start
			local v1394, u1395

			for k, v in pairs(LockClientMinigame) do
				if n31 == 291407125 then
					if tostring(k) ~= "MinigameKey(ClassValues)" then
						continue
					end

					Start = v.Start
					v1394 = nil
					u1395 = nil
					v1394 = v29(Start, newcclosure(function(p129)
						u1395 = 833622944

						if p129.Network.Properties:Get("FixerUserId") ~= LocalPlayer.UserId then
							return
						end

						if n5 == u1395 then
							n7 -= 461
							n28 -= 1309
							n41 = 567708786
							u1395 = 116464368
							n1 = 186234507
							n6 = 369651002
							n5 += 1973
							n30 -= 1543
							GetMaxM1Reach = nil
							GetGameMapObjects = nil
						else
							task.spawn(function()
								local __renderer = p129.__renderer

								if not __renderer then
									local now2 = tick()

									while true do
										v127("waiting for __renderer")
										__renderer = p129.__renderer
										wait()

										if __renderer then
											break
										elseif u34 or tick() - now2 >= 0.2 then
											break
										end
									end
								end

								if not __renderer then
									return v126("Unable to get the renderer")
								end

								if u34 then
									return
								end

								local Board = __renderer.Board

								if not Board then
									local now2 = tick()

									while true do
										v127("waiting for Renderer.Board")
										Board = __renderer.Board
										wait()

										if Board then
											break
										elseif u34 or tick() - now2 >= 0.2 then
											break
										end
									end
								end

								if not Board then
									return v126("Unable to get the board")
								end

								if u34 then
									return
								end

								local __input = p129.__input

								if not __input then
									local now2 = tick()

									while true do
										v127("waiting for LockClient.__input")
										__input = p129.__input
										wait()

										if __input then
											break
										elseif u34 or tick() - now2 >= 0.2 then
											break
										end
									end
								end

								if not __input then
									return v126("Unable to get the input")
								end

								if u34 then
									return
								end

								t20.CurrentPuzzle = Board
								t20.PuzzleContainer = __renderer.Container
								task.spawn(function()
									while true do
										RunService.RenderStepped:Wait()

										if __input.Ended then
											break
										elseif not __renderer.UI.Parent then
											break
										end
									end

									if t20.CurrentPuzzle == Board then
										t20.CurrentPuzzle = nil
										t20.PuzzleContainer = nil
									end
								end)

								if not GetAutoLockpickVar() then
									return
								end

								NotifyAutofarmMinigame("Lockpick", "lock-keyhole-open")

								if v1096.Flags.AutoGeneratorNoUI.CurrentValue and u1180 then
									__renderer.UI.Enabled = false
								end

								local connection
								local v1405 = clonefunction(__renderer.Close)

								__renderer.Close = function(p130)
									v127("Lockpicker closed")
									connection:Disconnect()
									v1405(p130)
								end

								local now2 = tick()

								connection = RunService.RenderStepped:Connect(function()
									if tick() - now2 <= 0.75 then
										return
									end

									if p129 and p129.Network and p129.__renderer then
										if Board:IsBroken() then
											v127("Broke lock")
											connection:Disconnect()
										end

										local t = workspace:GetServerTimeNow()
										local m = Board:IsOnTarget(Board:AngleAt(math.max(t, Board.State.AnchorTime)))

										if m then
											local m = Board:Press(t)

											if m then
												p129.Network:FireServer("Press", t)
												p129.__renderer:Play(v10)
											end
										end
									else
										v127("hey that is nil!", p129, p129 and p129.Network, p129 and p129.__renderer)
										connection:Disconnect()
									end
								end)
								t20.Disconnectables[#t20.Disconnectables + 1] = connection
							end)
						end

						return v1394(p129)
					end))

					return
				end

				repeat
					n7 -= 316
					n6 -= 977
					n1 = 35461873
					n5 -= 1623
					n41 = 93716609
					n28 = 165224374
					n31 = 763879517
					n30 -= 685
					n3 = 467519779
					n2 = 945303494
					EntanglementActive = nil
				until not (nil < nil)

				GameStateChanged = nil
			end

			v1394 = nil
			u1395 = nil
			v1394 = v29(Start, newcclosure(function(p131)
				u1395 = 833622944

				if p131.Network.Properties:Get("FixerUserId") ~= LocalPlayer.UserId then
					return
				end

				if n5 == u1395 then
					n7 -= 461
					n28 -= 1309
					n41 = 567708786
					u1395 = 116464368
					n1 = 186234507
					n6 = 369651002
					n5 += 1973
					n30 -= 1543
					GetMaxM1Reach = nil
					GetGameMapObjects = nil
				else
					task.spawn(function()
						local __renderer = p131.__renderer

						if not __renderer then
							local now2 = tick()

							while true do
								v127("waiting for __renderer")
								__renderer = p131.__renderer
								wait()

								if __renderer then
									break
								elseif u34 or tick() - now2 >= 0.2 then
									break
								end
							end
						end

						if not __renderer then
							return v126("Unable to get the renderer")
						end

						if u34 then
							return
						end

						local Board = __renderer.Board

						if not Board then
							local now2 = tick()

							while true do
								v127("waiting for Renderer.Board")
								Board = __renderer.Board
								wait()

								if Board then
									break
								elseif u34 or tick() - now2 >= 0.2 then
									break
								end
							end
						end

						if not Board then
							return v126("Unable to get the board")
						end

						if u34 then
							return
						end

						local __input = p131.__input

						if not __input then
							local now2 = tick()

							while true do
								v127("waiting for LockClient.__input")
								__input = p131.__input
								wait()

								if __input then
									break
								elseif u34 or tick() - now2 >= 0.2 then
									break
								end
							end
						end

						if not __input then
							return v126("Unable to get the input")
						end

						if u34 then
							return
						end

						t20.CurrentPuzzle = Board
						t20.PuzzleContainer = __renderer.Container
						task.spawn(function()
							while true do
								RunService.RenderStepped:Wait()

								if __input.Ended then
									break
								elseif not __renderer.UI.Parent then
									break
								end
							end

							if t20.CurrentPuzzle == Board then
								t20.CurrentPuzzle = nil
								t20.PuzzleContainer = nil
							end
						end)

						if not GetAutoLockpickVar() then
							return
						end

						NotifyAutofarmMinigame("Lockpick", "lock-keyhole-open")

						if v1096.Flags.AutoGeneratorNoUI.CurrentValue and u1180 then
							__renderer.UI.Enabled = false
						end

						local connection
						local v1417 = clonefunction(__renderer.Close)

						__renderer.Close = function(p132)
							v127("Lockpicker closed")
							connection:Disconnect()
							v1417(p132)
						end

						local now2 = tick()

						connection = RunService.RenderStepped:Connect(function()
							if tick() - now2 <= 0.75 then
								return
							end

							if p131 and p131.Network and p131.__renderer then
								if Board:IsBroken() then
									v127("Broke lock")
									connection:Disconnect()
								end

								local t = workspace:GetServerTimeNow()
								local m = Board:IsOnTarget(Board:AngleAt(math.max(t, Board.State.AnchorTime)))

								if m then
									local m = Board:Press(t)

									if m then
										p131.Network:FireServer("Press", t)
										p131.__renderer:Play(v10)
									end
								end
							else
								v127("hey that is nil!", p131, p131 and p131.Network, p131 and p131.__renderer)
								connection:Disconnect()
							end
						end)
						t20.Disconnectables[#t20.Disconnectables + 1] = connection
					end)
				end

				return v1394(p131)
			end))
		end)

		do
			task.spawn(function()
				local v1422

				v1422 = v29(ConnectBoard.new, newcclosure(function(p133, ...)
					local v1423 = v1422(p133, ...)

					if not v1096.Flags.DotsGridChanger.CurrentValue then
						return v1423
					end

					for _, v in GetPairs(v1423) do
						v1423:Connect(v[1], v[2])
					end

					local CurrentValue = v1096.Flags.DotsGridModNum.CurrentValue
					local t33 = {}
					local n43 = 0
					local t34 = {}

					for _, v in p133, nil, nil do
						if not t33[v] then
							if CurrentValue <= n43 then
								continue
							end

							t33[v] = true
							n43 += 1
						end

						t34[#t34 + 1] = v
					end

					local v1432 = v1422(t34, ...)

					v1432.RealBoard = v1423
					v1432.Export = function()
						return v1423:Export()
					end

					return v1432
				end))
			end)
		end

		task.spawn(function()
			local v1433

			v1433 = v29(ConnectInput.new, newcclosure(function(...)
				local v1434 = v1433(...)
				local Board = v1434.Board
				local Renderer = v1434.Renderer

				t20.CurrentPuzzle = Board
				t20.PuzzleContainer = Renderer.Container
				task.spawn(function()
					while true do
						RunService.RenderStepped:Wait()

						if v1434.Ended then
							break
						elseif not Renderer.UI.Parent then
							break
						end
					end

					if t20.CurrentPuzzle == Board then
						t20.CurrentPuzzle = nil
						t20.PuzzleContainer = nil
					end
				end)

				if v1096.Flags.AutoGeneratorNoUI.CurrentValue and u1180 then
					Renderer.UI.Enabled = false
				end

				if v1096.Flags.DotsConnectDrawLines.CurrentValue then
					xpcall(DrawSolutions, function(p134)
						v126("Failed to draw puzzle - " .. tostring(p134))
					end, v1434)
				end

				if GetAutoDotsVar() then
					NotifyAutofarmMinigame("Dots Connect", "workflow")
					task.spawn(function()
						local now2 = tick()

						xpcall(AutoGenerator, function(p135)
							v126("Failed to complete generator - " .. tostring(p135))
						end, v1434)

						local v1438 = math.round((tick() - now2) * 100) / 100

						task.spawn(function()
							setthreadidentity(8)

							if v1096.Flags.GeneratorNotifications.CurrentValue then
								lib:Notify({
									Title = "Dots connected",
									Content = ("completed in %*s"):format(v1438),
									Duration = 2,
									Image = "puzzle",
									NoQueue = true
								})
							end
						end)
					end)
				end

				return v1434
			end))
		end)
		SolveFlow = function(t, k)
			local W, m, p = t.Size, t.Pairs, t.Dots
			local t = {}

			for d = 1, W * W do
				local j, n, M = (d - 1) // W + 1, (d - 1) % W + 1, {}

				if j > 1 then
					M[#M + 1] = d - W
				end

				if j < W then
					M[#M + 1] = d + W
				end

				if n > 1 then
					M[#M + 1] = d - 1
				end

				if n < W then
					M[#M + 1] = d + 1
				end

				t[d] = M
			end

			local function d(j, n)
				return math.abs((j - 1) // W - (n - 1) // W) + math.abs((j - 1) % W - (n - 1) % W)
			end
			local function W(j, n, M)
				local N, z, R = { [j] = false }, { j }, 1

				while R <= #z do
					local j = z[R]

					R += 1

					if j == n then
						local R = {}

						while j do
							table.insert(R, 1, j)
							j = N[j]
						end

						return R
					end

					local R = t[j]
					local t = math.random(#R)

					for D = 0, #R - 1 do
						local Y = R[(D + t) % #R + 1]

						if N[Y] == nil and not M[Y] and (p[Y] == nil or Y == n) then
							N[Y] = j
							z[#z + 1] = Y
						end
					end
				end

				return nil
			end

			local t = {}

			for p in m do
				t[#t + 1] = p
			end

			table.sort(t, function(p, j)
				return d(m[p][1], m[p][2]) < d(m[j][1], m[j][2])
			end)

			for p = 1, 3000 do
				if k and p % 200 == 0 then
					wait()
				end

				if p > 1 then
					for k = #t, 2, -1.0 do
						local d = math.random(k)

						t[k], t[d] = t[d], t[k]
					end
				end

				local k, d, j = {}, {}, true

				for n, n in t do
					local t = W(m[n][1], m[n][2], k)

					if not t then
						j = false

						break
					end

					for W, W in t do
						k[W] = true
					end

					d[n] = t
				end

				if j then
					return d
				end

				if p % 200 == 0 then
					wait()
				end
			end

			return nil
		end
		AutoGeneratorFlow = function(p136, p137)
			local Board = p136.Board
			local Renderer = p136.Renderer
			local n44 = 0
			local now2 = tick()

			for k in Board.Pairs, nil, nil do
				Board.Paths[k] = {}
			end

			Board:__rebuild()
			Renderer:Render()
			NotifyAutofarmMinigame("Flow Game", "puzzle")

			local n45 = 395846072

			for i = 1, #Board.Pairs do
				local v1478 = p137[i]

				Board:Begin(v1478[1])
				Renderer:Render()

				for i2 = 2, #v1478 do
					if p136.Ended then
						return
					end

					if not (Force or GetAutoFlowGameVar()) then
						Board:Release(i, false)
						Renderer:Render()

						return
					end

					local v1480 = Board:Step(i, v1478[i2], 0)

					Renderer:Render()

					if v1480 == "connected" then
						Renderer:Pulse(v1478[i2])
					end

					local CurrentValue = v1096.Flags.GeneratorMistakeChance.CurrentValue

					if CurrentValue == 0 or CurrentValue <= math.random(0, 100) or tick() - n44 <= 1.5 then
						local v1482

						if GetClosestGenerator() and IsPlayerNearGenerator(GetClosestGenerator()) then
							v1482 = true
						else
							v1482 = GetSpectators() ~= ""
						end

						if v1096.Flags.LegitPuzzles.CurrentValue and v1482 then
							wait(v1096.Flags.GeneratorLegitPuzzleDelay.CurrentValue)
						else
							wait(v1096.Flags.GeneratorPuzzleDelay.CurrentValue)
						end
					else
						n44 = tick()
						wait(math.random(20, 50) / 100)
					end
				end

				Board:Release(i, false)
				Renderer:Render()
			end

			if Board:IsSolved() and not p136.Ended then
				if tick() - now2 <= 1.4 then
					local v1483 = 1.4 - (tick() - now2)

					v126("finished flow too fast (", tick() - now2, ") waiting", v1483, "seconds to be careful")
					wait(v1483)
				end

				p136:__finish()
				p136.Callbacks.OnSolved()
			end

			if n45 ~= n1 then
				return
			end

			n5 -= 120
			n9 -= 1440
			n30 -= 333
			n3 = 264422282
			n28 = 969229942
			n8 += 1567
			n1 += 171
			n31 += 544
			n7 = 214524305
			AddAbilityIntoContainer = nil
			-- (could not be recovered)
		end
		DrawSolutionsFlow = function(p138, p139)
			local Renderer = p138.Renderer
			local Board = p138.Board
			local Grid = Renderer.Grid
			local Frame2 = Instance.new("Frame")

			Frame2.Parent = Grid.Parent
			Frame2.ZIndex = 6
			Frame2.BackgroundTransparency = 1
			Frame2.Size = Grid.Size
			Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame2.Position = UDim2.fromScale(0.5, 0.5)

			local v1488 = 1 / Board.Size

			for k, v in p139, nil, nil do
				local v1491 = Renderer.Colors[k]

				for _, v2 in v, nil, nil do
					local v1494 = (v2 - 1) // Board.Size + 1
					local v1495 = (v2 - 1) % Board.Size + 1
					local Frame3 = Instance.new("Frame")

					Frame3.Parent = Frame2
					Frame3.BorderSizePixel = 0
					Frame3.BackgroundTransparency = 0.7
					Frame3.BackgroundColor3 = Color3.new(v1491.R / 1.2, v1491.G / 1.2, v1491.B / 1.2)
					Frame3.Size = UDim2.fromScale(v1488, v1488)
					Frame3.ZIndex = 7
					Frame3.Position = UDim2.fromScale(v1488 * (v1495 - 1), v1488 * (v1494 - 1))
				end
			end
		end

		do
			task.spawn(function()
				local function v1497(p140, p141)
					local t35 = {}
					local t36 = {}
					local n46 = 0

					while p141 > #t36 and n46 < 500 do
						n46 += 1

						local v1501 = math.random(p140 * p140)

						if not t35[v1501] then
							local t37 = { v1501 }
							local t38 = {
								[v1501] = true
							}
							local v1504 = v1501
							local v1505 = math.random(2, math.max(2, p140))

							while v1505 > #t37 do
								local v1506, v1507 = FlowBoard.ToRowCol(p140, v1504)
								local t39 = {}

								for _, v in {
									{
										-1,
										0
									},
									{
										1,
										0
									},
									{
										0,
										-1
									},
									{
										0,
										1
									}
								}, nil, nil do
									local v1511 = v1506 + v[1]
									local v1512 = v1507 + v[2]

									if v1511 >= 1 and v1511 <= p140 and v1512 >= 1 then
										if v1512 <= p140 then
											local v1513 = FlowBoard.ToIndex(p140, v1511, v1512)

											if not (t35[v1513] or t38[v1513]) then
												t39[#t39 + 1] = v1513
											end
										end
									end
								end

								if #t39 == 0 then
									break
								else
									v1504 = t39[math.random(#t39)]
									t37[#t37 + 1] = v1504
									t38[v1504] = true
								end
							end

							if #t37 >= 2 then
								for _, v in t37, nil, nil do
									t35[v] = true
								end

								t36[#t36 + 1] = {
									t37[1],
									t37[#t37]
								}
							end
						end
					end

					return t36
				end

				local v1516

				v1516 = v29(FlowBoard.new, newcclosure(function(p142, p143, ...)
					local v1517 = v1516(p142, p143, ...)

					if not v1096.Flags.GeneratorGridMod.CurrentValue then
						return v1517
					end

					local v1518 = SolveFlow(v1517)

					if not v1518 then
						v126("Flow: real board unsolvable, using real board")

						return v1517
					end

					for k, v in v1518, nil, nil do
						v1517.Paths[k] = table.clone(v)
					end

					v1517:__rebuild()

					local CurrentValue = v1096.Flags.GeneratorGridModNum.CurrentValue
					local v1522 = math.max(2, math.round(#p143 * (CurrentValue * CurrentValue) / (p142 * p142)))
					local v1523 = v1516(CurrentValue, v1497(CurrentValue, v1522), ...)

					v1523.RealBoard = v1517
					v1523.Export = function()
						return v1517:Export()
					end

					return v1523
				end))
			end)
		end

		do
			task.spawn(function()
				local n47 = 633912016
				local v1525

				v1525 = v29(FlowInput.new, newcclosure(function(...)
					local n48 = 928186241
					local v1527 = v1525(...)
					local Board = v1527.Board
					local Renderer = v1527.Renderer

					t20.CurrentPuzzle = Board
					t20.PuzzleContainer = Renderer.Container
					task.spawn(function()
						while true do
							RunService.RenderStepped:Wait()

							if v1527.Ended then
								break
							elseif not Renderer.UI.Parent then
								break
							end
						end

						if t20.CurrentPuzzle == Board then
							t20.CurrentPuzzle = nil
							t20.PuzzleContainer = nil
						end
					end)

					local CurrentValue, v1531, u1532

					if v1096.Flags.AutoGeneratorNoUI.CurrentValue then
						if u1180 then
							Renderer.UI.Enabled = false
						end
					end

					CurrentValue = v1096.Flags.GeneratorHelper.CurrentValue
					v1531 = GetAutoFlowGameVar()
					u1532 = nil

					if CurrentValue or v1531 then
						task.spawn(function()
							local n49 = 177840273

							u1532 = 1033943016

							local v1534 = SolveFlow(Board)

							if not v1534 then
								v126("Flow: no solution found")
								t20:Sprint(true)

								return t20:Sprint(false)
							end

							if CurrentValue then
								xpcall(DrawSolutionsFlow, function(p144)
									v126("Failed to draw puzzle - " .. tostring(p144))

									if n1 == 426031276 then
										n10 += 1659
										n1 = 949768634
										n2 -= 2030
										n48 = 478004986
										n49 -= 289

										local v1535 = n30 + 1818

										repeat
											n30 = v1535
										until not (nil <= nil)
									end
								end, v1527, v1534)
							end

							if not (n48 < u1532) then
								n47 = 402589682
								n48 += 1145
								u1532 = 746338236
								n30 += 1103
								n10 = 665612179
								n6 = 843782641
								n2 += 1248
								n1 = 437509289
								n49 = 423999341
								AddAbilitiesContainer = nil
								AddBoxEsp = nil
							elseif v1531 then
								local now2 = tick()

								xpcall(AutoGeneratorFlow, function(p145)
									v126("Failed to complete flow game - " .. tostring(p145))

									if n47 == n1 then
										n2 += 1666
										n6 = 203498796
										n47 = 793578053
										n10 = 503527513
										n49 -= 799
										n30 += 1179
										n1 += 1616
										WaitAndReset = nil
										SuperSpecialFemboyNotifyOWO = nil
									end
								end, v1527, v1534)

								local v1537 = math.round((tick() - now2) * 100) / 100

								task.spawn(function()
									setthreadidentity(8)

									if n49 ~= 177840273 then
										n1 += 1530
										n49 -= 2025
										n47 = 156723659
										n48 = 195282733
										n2 -= 1839
										n10 += 1703
										IsAiming = nil
									elseif v1096.Flags.GeneratorNotifications.CurrentValue then
										lib:Notify({
											Title = "Flow solved",
											Content = ("flow game completed in %*s"):format(v1537),
											Duration = 2,
											Image = "puzzle",
											NoQueue = true
										})
									end
								end)
							end
						end)

						return v1527
					end

					return v1527
				end))
			end)
		end

		YoinkGears = function(p146, p147)
			if IsKiller() then
				return
			end

			if t20.GameState ~= 1 then
				return
			end

			if u1182 or u1182 then
				return
			end

			if u1180 then
				if not p147 then
					return
				end
			end

			if (LocalPlayer:GetAttribute("Gears") or 9e9) >= 5 then
				return
			end

			if v1096.Flags.AutoGetGears.CurrentValue or p146 then
				u1182 = true
				xpcall(function()
					local now2 = tick()

					repeat
						wait()

						if GetGameMap():FindFirstChild("GearsTest") then
							if #GetGameMap().GearsTest:GetChildren() >= 5 or tick() - now2 >= 10 then
								break
							end
						end
					until tick() - now2 >= 10

					if tick() - now2 >= 10 then
						return v126("timed out waiting for gears")
					end

					for _, gearsDebri in ipairs(t20.GearsDebris) do
						local attribute = LocalPlayer:GetAttribute("Gears")

						if (attribute or 9e9) >= 5 then
							return
						end

						local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart

						while true do
							HumanoidRootPart.CFrame = CFrame.new(gearsDebri.Root.Position, HumanoidRootPart.CFrame.LookVector)
							fireproximityprompt(gearsDebri.ProximityPrompt)
							wait()

							if LocalPlayer:GetAttribute("Gears") ~= attribute then
								break
							elseif u34 or not LocalPlayer.Character.Parent.Parent == Players2 then
								break
							end
						end
					end

					if n3 ~= 72758347 then
						return
					end

					n1 -= 1790
					n8 = 666599995
					n10 = 442417379
					n30 = 77981817
					n3 = 551504954
					n28 -= 1059
					RagdollEnable = nil
					Turn360 = nil
					AddAbilityIntoContainer = nil

					return table.unpack({ nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, Random, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, M1Target, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil }, 1, 484)
				end, function(p148)
					if n9 == 202622865 then
						n31 = 639658997
						n30 = 443214473
						n28 += 1540
						n9 = 712340168
						n10 -= 1282
						n1 += 35
						randomstring = nil
					else
						v126("error when grabbing gears:", tostring(p148))
					end
				end)
				u1182 = false
			end
		end
		IsGearGenerator = function(p149)
			return p149:GetAttribute("Puzzle") == "GearServerMinigame"
		end
		CompleteGenerators = function(p150)
			if not v1096.Flags.DisableAnticheat.CurrentValue then
				if not LocalPlayer.Character:GetAttribute("acbypass") then
					if t20.GameState ~= 1 then
						return v126("You are not a player.")
					end

					if not IsRoundLoaded() then
						while true do
							v126("waiting for load")
							wait(1)

							if IsRoundLoaded() then
								break
							elseif u34 then
								break
							end
						end
					end

					if u34 then
						return v126("The script is unloaded.")
					end

					if u1180 and not p150 then
						return v126("You are already doing all generators.")
					end

					if IsKiller() then
						return v126("You are killer.")
					end

					local CurrentValue = v1096.Flags.AutoGeneratorFarm.CurrentValue
					local CFrame_ = LocalPlayer.Character.HumanoidRootPart.CFrame

					YoinkGears(true, true)
					u1180 = true

					local n50
					local ok, result = pcall(function()
						n50 = 221761822

						for _, v in t20.RoundGenerators, nil, nil do
							if IsGearGenerator(v) then
								if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
									v126("no gears to do generators.", LocalPlayer:GetAttribute("Gears"), "current gears")

									if not (#t20.GearsDebris > 0) then
										continue
									end

									v126("collecting gears to do generator")
									YoinkGears(true, true)
								end
							end

							if CurrentValue and not v1096.Flags.AutoGeneratorFarm.CurrentValue then
								return v126("Autofarm has been disabled.")
							end

							if GetGeneratorProgress(v) and GetGeneratorProgress(v) ~= 100 then
								local Prompt = v:FindFirstChild("Main") and v.Main:FindFirstChild("Prompt")

								if not Prompt then
									continue
								end

								if not LocalPlayer.Character then
									return v126("root got destroyed while doing gens")
								end

								if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
									return v126("root got destroyed while doing gens")
								end

								if not IsRoundLoaded() then
									return v126("round unloaded while doing gens")
								end

								wait(0.3)

								if CurrentValue and not v1096.Flags.AutoGeneratorFarm.CurrentValue then
									return
								end

								local now2 = tick()
								local v1552 = v1346(v, v.Positions.Center.Position)
								local v1553 = v1346(v, v.Positions.Right.Position)
								local v1554 = v1346(v, v.Positions.Left.Position)

								if v1552 and v1553 and v1554 then
									continue
								end

								if v1552 then
									if v1553 then
										if v1554 then
											v126("get y'all fat assess off the generator what the fuck")

											continue
										end

										LocalPlayer.Character.HumanoidRootPart.CFrame = v.Positions.Left.CFrame
									else
										LocalPlayer.Character.HumanoidRootPart.CFrame = v.Positions.Right.CFrame
									end
								else
									LocalPlayer.Character.HumanoidRootPart.CFrame = v.Positions.Center.CFrame
								end

								LocalPlayer.Character.Humanoid:MoveTo(v.Main.Position)

								local exitTo

								while true do
									fireproximityprompt(Prompt)

									if LocalPlayer.Character.Parent == Spectating then
										break
									end

									if CurrentValue and not v1096.Flags.AutoGeneratorFarm.CurrentValue then
										exitTo = 1

										break
									end

									wait(0.5)

									if tick() - now2 >= 7 then
										exitTo = 2

										break
									end

									local ok = not t20.CurrentPuzzle

									if not ok then
										ok = not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI")
									end

									if ok then
										if GetGeneratorProgress(v) and GetGeneratorProgress(v) >= 100 then
											exitTo = 2

											break
										end
									else
										exitTo = 2

										break
									end
								end

								if exitTo == 1 then
									return
								end

								if exitTo ~= 2 then
									return
								end

								if tick() - now2 >= 7 then
									v126("timed out waiting for response")

									continue
								end

								wait(0.4)

								if CurrentValue and not v1096.Flags.AutoGeneratorFarm.CurrentValue then
									return
								end

								if t20.CurrentPuzzle then
									if LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") then
										repeat
											if CurrentValue and not v1096.Flags.AutoGeneratorFarm.CurrentValue then
												return
											end

											wait()

											if not GetGeneratorProgress(v) or GetGeneratorProgress(v) == 100 then
												break
											end

											if IsGearGenerator(v) then
												if not ((LocalPlayer:GetAttribute("Gears") or 0) > 0) then
													break
												end
											end
										until not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI")

										v126("Autofarm: generator finished")

										continue
									end
								end

								v126("currentpuzzle or puzzleui is missing:", t20.CurrentPuzzle, LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI"))
							end
						end

						local v1557 = true

						for _, v in t20.RoundGenerators, nil, nil do
							if IsGearGenerator(v) then
								if not ((LocalPlayer:GetAttribute("Gears") or 0) < 1) and GetGeneratorProgress(v) and GetGeneratorProgress(v) ~= 100 then
									v1557 = false

									break
								end
							elseif GetGeneratorProgress(v) and GetGeneratorProgress(v) ~= 100 then
								v1557 = false

								break
							end
						end

						if CurrentValue and not v1096.Flags.AutoGeneratorFarm.CurrentValue then
							return
						end

						if not v1557 then
							CompleteGenerators(true)

							return "Retry"
						end

						if n50 == n1 then
							n50 = 744482295
							n10 = 1045120179
							n31 += 1626
							n1 = 976028448
							n5 = 539931421
							n29 -= 1583
							n30 = 444020596
							FindSoundAsset = nil
						else
							LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame_
						end
					end)

					if not ok then
						v126("Error in le autofarm :flushed:\n", result)

						return lib:Notify({
							Title = "Error",
							Content = "Autofarm errored",
							Duration = 6,
							Image = "circle-x"
						})
					end

					if result == "Retry" then
						return v126("Autofarm: Retrying generators")
					end

					u1180 = false

					if v1096.Flags.GeneratorNotifications.CurrentValue then
						lib:Notify({
							Title = "Complete every generator",
							Content = "All generators have been checked",
							Duration = 6
						})
					end

					return
				end
			end

			return v126("Anticheat disabler is enabled.")
		end

		do
			Minigames:CreateToggle({
				Name = "Autofarm generators",
				CurrentValue = false,
				Flag = "AutoGeneratorFarm",
				Callback = function(p151)
					if p151 then
						CompleteGenerators()
					end
				end
			})
		end

		Minigames:CreateToggle({
			Name = "└── Hide puzzle ui",
			CurrentValue = false,
			Flag = "AutoGeneratorNoUI",
			Callback = v1108,
			TextMode = true
		})

		do
			GameStateChanged(function()
				local now2 = tick()

				while true do
					wait()

					if tick() - now2 >= 10 then
						break
					elseif #t20.RoundGenerators == 5 then
						break
					end
				end

				if tick() - now2 >= 10 then
					return v126("timed out waiting for generators")
				end

				if v1096.Flags.AutoGeneratorFarm.CurrentValue then
					v126("doing autofarm generators")

					if n7 < n30 then
						CompleteGenerators()
					else
						n6 -= 886
						n30 += 1855
						n8 = 296216381
						n31 = 789991000
						n29 = 325491333
						n7 = 486321369
						n5 = 449440119
						n10 = 705077144
						n1 += 506
						EntanglementActive = nil
					end
				end
			end)
		end

		RandomNumber = function(p152, p153)
			return Random.new():NextNumber(math.min(p152, p153), math.max(p152, p153))
		end

		local connection

		Minigames:CreateToggle({
			Name = "Instantly enter generator",
			CurrentValue = false,
			Flag = "InstantlyEnterGenerator",
			Callback = function(p154)
				local n51 = 515113669

				if p154 then
					connection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
						if prompt.Parent.Name == "Main" and prompt.Parent.Parent.Name == "Generator" then
							fireproximityprompt(prompt)
						end
					end)
				elseif connection then
					if n10 < n51 then
						connection:Disconnect()
					else
						n6 = 368230513
						n9 += 204
						n1 += 1822
						n10 += 1080
						n29 += 1646
						n8 = 419346435
						n31 = 958706341
						n30 = 650275267
						n5 = 757022269
						FindAnimationAsset = nil
						GetSelectedGhostAnims = nil
					end
				end
			end
		})

		do
			Minigames:CreateButton({
				Name = "Complete every generator",
				Callback = function()
					CompleteGenerators()

					return
				end
			})
		end

		Minigames:CreateSection("Flow Game")
		Minigames:CreateToggle({
			Name = "Draw solution",
			CurrentValue = false,
			Flag = "GeneratorHelper",
			Callback = v1108,
			ToolTip = "Draws the solution to the puzzle on the gui"
		})
		Minigames:CreateToggle({
			Name = "Auto solve flow game",
			CurrentValue = false,
			Flag = "AutoCompleteFlowGame",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Grid size changer",
			CurrentValue = false,
			Flag = "GeneratorGridMod",
			Callback = v1108,
			ToolTip = "Default = 7x7"
		})
		Minigames:CreateSlider({
			Name = "└── Grid Size",
			Range = {
				2,
				30
			},
			Increment = 1,
			Suffix = " cols and rows",
			CurrentValue = 7,
			Flag = "GeneratorGridModNum",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "Puzzle speed",
			Range = {
				0.02,
				1
			},
			Increment = 0.01,
			Suffix = "s",
			CurrentValue = 0.08,
			Flag = "GeneratorPuzzleDelay",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Use legit speed",
			CurrentValue = false,
			Flag = "LegitPuzzles",
			Callback = v1108,
			TextMode = true,
			ToolTip = "Uses a different speed when somebody is nearby or you are being spectated"
		})
		Minigames:CreateSlider({
			Name = "└── Puzzle speed",
			Range = {
				0.1,
				2
			},
			Increment = 0.01,
			Suffix = "s",
			CurrentValue = 0.08,
			Flag = "GeneratorLegitPuzzleDelay",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "Mistake chance",
			Range = {
				0,
				95
			},
			Increment = 5,
			Suffix = "%",
			CurrentValue = 0,
			Flag = "GeneratorMistakeChance",
			Callback = v1108
		})
		Minigames:CreateSection("Dots Connect")
		Minigames:CreateToggle({
			Name = "Draw lines",
			CurrentValue = false,
			Flag = "DotsConnectDrawLines",
			Callback = v1108,
			ToolTip = "Draws lines on the generator gui to solve the puzzle"
		})
		Minigames:CreateToggle({
			Name = "Auto connect lines",
			CurrentValue = false,
			Flag = "AutoCompleteDotsConnect",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Pairs amount changer",
			CurrentValue = false,
			Flag = "DotsGridChanger",
			Callback = v1108,
			ToolTip = "No default amount, normal amount of pairs is random"
		})
		Minigames:CreateSlider({
			Name = "└── Pairs",
			Range = {
				2,
				11
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 7,
			Flag = "DotsGridModNum",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "Delay between lines",
			Range = {
				0.2,
				2
			},
			Increment = 0.01,
			Suffix = "s",
			CurrentValue = 0.08,
			Flag = "DotsDelay",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Use legit speed",
			CurrentValue = false,
			Flag = "DotsLegitPuzzles",
			Callback = v1108,
			TextMode = true,
			ToolTip = "Uses a different speed when somebody is nearby or you are being spectated"
		})
		Minigames:CreateSlider({
			Name = "└── Delay between lines",
			Range = {
				0.2,
				2
			},
			Increment = 0.01,
			Suffix = "s",
			CurrentValue = 0.2,
			Flag = "DotsDelayLegit",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "Mistake chance",
			Range = {
				0,
				95
			},
			Increment = 5,
			Suffix = "%",
			CurrentValue = 0,
			Flag = "DotsMistakeChance",
			Callback = v1108
		})
		Minigames:CreateSection("Lockpick")
		Minigames:CreateToggle({
			Name = "Auto complete",
			CurrentValue = false,
			Flag = "AutoCompleteLockpick",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Anti miss",
			CurrentValue = false,
			Flag = "LockpickAntiMiss",
			Callback = v1108,
			ToolTip = "If you press at the wrong time it wont reset the progress basically"
		})
		Minigames:CreateSection("Gears")
		Minigames:CreateToggle({
			Name = "Auto turn gears",
			CurrentValue = false,
			Flag = "AutoCompleteGear",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "└── Turn degrees",
			Range = {
				1,
				90
			},
			Increment = 1,
			Suffix = "°",
			CurrentValue = 10,
			Flag = "GearTurnDegrees",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "└── Turn delay",
			Range = {
				0,
				200
			},
			Increment = 1,
			Suffix = " ms",
			CurrentValue = 6,
			Flag = "GearTurnDelay",
			Callback = v1108
		})
		Minigames:CreateSection("Nosferatu")
		Minigames:CreateToggle({
			Name = "Auto reel",
			CurrentValue = false,
			Flag = "AutoNosferatuReel",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Auto escape",
			CurrentValue = false,
			Flag = "NosferatuMinigame",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "Minimum press delay",
			Range = {
				0,
				800
			},
			Increment = 10,
			Suffix = "ms",
			CurrentValue = 0,
			Flag = "AutoNosEscapeTimeMin",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "Maximum press delay",
			Range = {
				0,
				800
			},
			Increment = 10,
			Suffix = "ms",
			CurrentValue = 0,
			Flag = "AutoNosEscapeTimeMax",
			Callback = v1108
		})
		Minigames:CreateSection("Azure")
		Minigames:CreateToggle({
			Name = "Auto disarm minigame",
			CurrentValue = false,
			Flag = "AutoDisarmMinigame",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "└── Minimum time",
			Range = {
				0.5,
				30
			},
			Increment = 0.1,
			Suffix = "s",
			CurrentValue = 2.5,
			Flag = "AutoDisarmTimeMin",
			Callback = v1108
		})
		Minigames:CreateSlider({
			Name = "└── Maximum time",
			Range = {
				0.5,
				30
			},
			Increment = 0.1,
			Suffix = "s",
			CurrentValue = 2.5,
			Flag = "AutoDisarmTimeMax",
			Callback = v1108
		})
		Minigames:CreateToggle({
			Name = "Infinite disarm attempts",
			CurrentValue = false,
			Flag = "InfiniteDisarmAttempts",
			Callback = v1108,
			ToolTip = "Gives you infinite attempts in the minigame when disarming a vine or bulb from azure"
		})
		Minigames:CreateSection("Teleports")

		do
			local u1563
			local v1564 = Minigames:CreateDropdown({
				Name = "Select generator",
				Options = {
					"1",
					"2",
					"3",
					"4",
					"5"
				},
				CurrentOption = { "1" },
				Flag = "GeneratorSelected",
				Callback = function(p155)
					u1563 = tonumber(p155[1]:sub(1, 1))
				end
			})

			Minigames:CreateButton({
				Name = "Teleport to generator",
				Callback = function()
					if t20.RoundGenerators[u1563] and LocalPlayer.Character then
						if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							LocalPlayer.Character.HumanoidRootPart.CFrame = t20.RoundGenerators[u1563].Positions.Center.CFrame
						end
					end
				end
			})
			task.spawn(function()
				while wait(0.2) do
					local t40 = {
						"1",
						"2",
						"3",
						"4",
						"5"
					}

					for k, v in t20.RoundGenerators, nil, nil do
						if GetGeneratorProgress(v) then
							t40[k] = ("%* (%*%%)"):format(k, GetGeneratorProgress(v))
						end
					end

					for k, v in t40, nil, nil do
						v1564.__DropdownOptions[k].Title.Text = v
					end

					local v1570 = GetClosestGenerator(true)

					if v1570 then
						local v1571 = v1564
						local SetTitle = v1564.SetTitle
						local v1573 = ("Select generator (you are at #%*)"):format(v1570)

						SetTitle(v1571, v1573)
					else
						v1564:SetTitle("Select generator")
					end
				end
			end)
		end

		Minigames:CreateSection("Generator Settings")
		Minigames:CreateToggle({
			Name = "Minigame Notifications",
			CurrentValue = false,
			Flag = "GeneratorNotifications",
			Callback = v1108,
			TextMode = true,
			ToolTip = "For flow game and dots connect, will notify you how fast you completed the minigame (when auto is on)"
		})
		Minigames:CreateToggle({
			Name = "Autofarm Notifications",
			CurrentValue = true,
			Flag = "AutofarmNotifications",
			Callback = v1108,
			TextMode = true
		})

		local ScreenGui = Instance.new("ScreenGui")

		ScreenGui.Parent = gethui()
		ScreenGui.ResetOnSpawn = false
		ScreenGui.DisplayOrder = 100001
		ScreenGui.OnTopOfCoreBlur = true
		ScreenGui.Name = "LabelEspGui"

		local ScreenGui2 = Instance.new("ScreenGui")

		ScreenGui2.Parent = gethui()
		ScreenGui2.ResetOnSpawn = false
		ScreenGui2.DisplayOrder = 10000
		ScreenGui2.OnTopOfCoreBlur = true
		ScreenGui2.Name = "PlayerEspGui"
		AddBoxEsp = function(p156, p157, p158, p159)
			local Frame2 = Instance.new("Frame")

			Frame2.Parent = ScreenGui2
			Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Frame2.BorderSizePixel = 0
			Frame2.Visible = false

			local Frame3 = Instance.new("Frame")

			Frame3.Parent = ScreenGui2
			Frame3.Visible = false
			Frame3.BackgroundTransparency = 1

			local UIListLayout2 = Instance.new("UIListLayout")

			UIListLayout2.Parent = Frame3
			UIListLayout2.Padding = UDim.new(0, 5)
			UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

			local ImageLabel = Instance.new("ImageLabel")

			ImageLabel.Image = "rbxassetid://18818586848"
			ImageLabel.Size = UDim2.new(1, 0, 0.3, 0)
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Parent = Frame3
			ImageLabel.Name = "BloxyCola"
			ImageLabel.Visible = false
			ImageLabel.LayoutOrder = 1

			local ImageLabel2 = Instance.new("ImageLabel")

			ImageLabel2.Parent = ImageLabel
			ImageLabel2.BackgroundTransparency = 1
			ImageLabel2.Image = t3[1]
			ImageLabel2.Size = UDim2.fromScale(1, 1)
			ImageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel2.Position = UDim2.fromScale(0.5, 0.5)

			local clone = ImageLabel:Clone()

			clone.Parent = Frame3
			clone.ImageLabel.Image = t3[2]
			clone.Name = "Medkit"
			clone.LayoutOrder = 2

			local clone2 = ImageLabel2:Clone()

			clone2.Parent = Frame3
			clone2.Name = "Device"
			clone2.Size = UDim2.new(1, 0, 0.3, 0)
			clone2.LayoutOrder = 3

			local UIStroke = Instance.new("UIStroke")

			UIStroke.Parent = Frame2
			UIStroke.Color = Color3.fromRGB(0, 0, 0)

			local Frame4 = Instance.new("Frame")

			Frame4.Parent = Frame2
			Frame4.BorderSizePixel = 0
			Frame4.Size = UDim2.fromScale(0, 0)
			Frame4.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
			Frame4.ZIndex = 2

			local Frame5 = Instance.new("Frame")

			Frame5.Parent = Frame2
			Frame5.BorderSizePixel = 0
			Frame5.Size = UDim2.fromScale(1, 1)
			Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			local UIGradient = Instance.new("UIGradient")

			UIGradient.Parent = Frame5
			UIGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
				ColorSequenceKeypoint.new(0.33, Color3.fromRGB(255, 255, 0)),
				ColorSequenceKeypoint.new(0.66, Color3.fromRGB(255, 128, 0)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
			})
			UIGradient.Rotation = 90

			local TextLabel = Instance.new("TextLabel")

			TextLabel.Parent = Frame2
			TextLabel.TextSize = 12
			TextLabel.Text = "100%"
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel.Position = UDim2.new(0.5, 0, 1, 12)
			TextLabel.TextStrokeTransparency = 0
			TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			table.insert(t25, {
				Character = p156,
				ColorFlag = p157,
				ToggleFlag = p158,
				ShowItems = p159,
				HealthBarOutline = Frame2,
				HealthBar = Frame4,
				HealthBarGradientFill = Frame5,
				HPText = TextLabel,
				PlayerFlagsFrame = Frame3,
				Items = Items
			})
		end

		local n52

		AddHighlightEsp = function(p160, p161, p162, p163)
			n52 = 831131706

			local Highlight = Instance.new("Highlight")

			Highlight.Name = p162 or "HIFORSAKEN"
			Highlight.Parent = p160
			Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			Highlight.Enabled = false

			local connection2

			connection2 = Highlight:GetPropertyChangedSignal("Parent"):Connect(function()
				if Highlight:GetAttribute("DESTROYED") then
					return connection2:Disconnect()
				end

				if n52 == 831133216 then
					n28 -= 1067
					n1 -= 521
					n52 = 719610642
					n10 -= 124
					n5 -= 1990
					n8 -= 199
					DrawSolutionsFlow = nil
				else
					pcall(function()
						if n8 == 589688394 then
							Highlight.Parent = p160
						else
							n8 = 1038380855
							n10 = 816825756
							n5 = 2535867
							n52 += 433
							n1 = 797539188
							DrawSolutionsFlow = nil
							YoinkLoot = nil
							NeedToEscapeOrReel = nil
							UpdateStamina = nil
							Counter = nil
						end
					end)
				end
			end)

			if not Highlight.Parent then
				return
			end

			Highlight.Parent.Destroying:Once(function()
				connection2:Disconnect()
			end)
			table.insert(t26, {
				Model = p160,
				ColorFlag = p161,
				Flag = p161:match("(.+)Color"),
				Highlight = Highlight,
				OnlyOutline = p163
			})
		end
		Stamina:CreateSection("Main")
		UpdateStamina = function(p164)
			local v1591 = p164

			v1591 = v1591 or Sprinting

			if t20.GameState ~= 1 then
				return
			end

			if not v1591.__staminaChangedEvent then
				return
			end

			v1591.__staminaChangedEvent:Fire()
		end

		local t41 = {
			MaxStamina = tostring(Sprinting.DefaultConfig.MaxStamina),
			StaminaLoss = tostring(Sprinting.DefaultConfig.StaminaLoss),
			StaminaGain = tostring(Sprinting.DefaultConfig.StaminaGain)
		}
		local t42 = {
			MaxStamina = 100,
			StaminaLoss = 10,
			StaminaGain = 20
		}
		local t43 = {
			MaxStamina = tostring(Sprinting.DefaultConfig.MaxStamina),
			StaminaLoss = tostring(Sprinting.DefaultConfig.StaminaLoss),
			StaminaGain = tostring(Sprinting.DefaultConfig.StaminaGain)
		}
		local t44 = {
			MaxStamina = 110,
			StaminaLoss = 9.5,
			StaminaGain = 21
		}

		local function v1596()
			local v1597
			local v1598 = LocalPlayer.Character and LocalPlayer.Character.Parent == Killers3 and t43 or t41

			for k, v in pairs(v1598) do
				if Sprinting[k] ~= tonumber(v) then
					v1597 = true
					Sprinting[k] = tonumber(v)
				end
			end

			if v1597 then
				Sprinting.__staminaChangedEvent:Fire()
			end
		end

		do
			GetInfStamMethod = function()
				return v1096.Flags.InfiniteStaminaMethod.CurrentOption[1]
			end
			Stamina:CreateToggle({
				Name = "Infinite stamina",
				CurrentValue = false,
				Flag = "UnlimitedRunning",
				Callback = function(p165)
					if p165 then
						t16.add("InfiniteStamina", function()
							if (GetInfStamMethod() == "Disable stamina loss") then
								Sprinting.Stamina = Sprinting.MaxStamina
							end
						end)
					else
						t16.disconnect("InfiniteStamina")
					end
				end
			})
			Stamina:CreateDropdown({
				Name = "└── Method",
				Options = {
					"Sprint while at 0 stamina (legit)",
					"Disable stamina loss"
				},
				CurrentOption = { "Sprint while at 0 stamina (legit)" },
				Flag = "InfiniteStaminaMethod",
				Callback = function(p166)
					if p166[1] ~= "Disable stamina loss" and v1096.Flags.UnlimitedRunning.CurrentValue then
						Sprinting.StaminaLossDisabled = false
					end
				end
			})
			canstartsprintzero = function()
				return Sprinting.CanSprint and Sprinting.BindsEnabled and not Sprinting.IsSprinting and Sprinting.Stamina <= Sprinting.MinStamina
			end

			if Sprinting.MobileButton then
				t20.Disconnectables[#t20.Disconnectables + 1] = Sprinting.MobileButton.MouseButton1Down:Connect(function()
					if v1096.Flags.UnlimitedRunning.CurrentValue then
						if GetInfStamMethod() ~= "Disable stamina loss" then
							task.defer(function()
								if canstartsprintzero() then
									t20:Sprint(true)
								end
							end)
						end
					end
				end)
			end

			local n53 = 0
			local u1602 = false

			t20.Disconnectables[#t20.Disconnectables + 1] = RunService.Heartbeat:Connect(function()
				if not v1096.Flags.UnlimitedRunning.CurrentValue or GetInfStamMethod() == "Disable stamina loss" then
					return
				end

				local Character_3 = LocalPlayer.Character

				if not Character_3 then
					return
				end

				if Sprinting.IsSprinting then
					n53 = os.clock()
				end

				local attribute = Character_3:GetAttribute("StaminaPenaltyActive")

				if attribute and not u1602 and not Sprinting.IsSprinting and Sprinting.CanSprint and os.clock() - n53 < 0.15 then
					t20:Sprint(true)
				end

				u1602 = attribute
			end)

			local IsSprintKeyHeld = Sprinting.IsSprintKeyHeld
			local Stamina2 = Sprinting.Stamina
			local u1607 = false

			rawset(Sprinting, "Stamina", nil)
			setmetatable(Sprinting, {
				__index = function(p167, p168)
					local spilled = {}

					if p168 == "Stamina" then
						if u1607 then
							u1607 = false

							return math.max(Stamina2, rawget(p167, "MinStamina") + 1)
						end

						return Stamina2
					end
				end,
				__newindex = function(p169, p170, p171)
					if p170 == "Stamina" then
						Stamina2 = p171
					else
						rawset(p169, p170, p171)
					end

					if n31 == 291408171 then
						n2 = 221235616
						n30 = 1073650002
						n6 = 650384198
						n5 -= 309
						n31 += 2032
						n9 = 444015116
						n3 -= 1217
						n8 -= 1230
						n1 = 367985308
						autoplaymgr2 = nil
						Changelobbymusic = nil
						CreateRangeCircle = 409554421
					end
				end
			})
			Sprinting.IsSprintKeyHeld = function(p172)
				local CurrentValue = v1096.Flags.UnlimitedRunning.CurrentValue

				if CurrentValue then
					CurrentValue = GetInfStamMethod() ~= "Disable stamina loss"

					local CurrentValue2 = CurrentValue or v1096.Flags.AutoSprint.CurrentValue or t20._SprintDuringSk8

					if CurrentValue2 then
						if p172.IsSprinting then
							if CurrentValue and p172.CanSprint then
								u1607 = true
							end

							return true
						end

						return IsSprintKeyHeld(p172)
					end
				else
					local CurrentValue2 = v1096.Flags.AutoSprint.CurrentValue or t20._SprintDuringSk8

					if CurrentValue2 then
						if p172.IsSprinting then
							if CurrentValue and p172.CanSprint then
								u1607 = true
							end

							return true
						end

						return IsSprintKeyHeld(p172)
					end
				end

				return IsSprintKeyHeld(p172)
			end
		end

		do
			Stamina:CreateToggle({
				Name = "Enable stamina settings",
				CurrentValue = false,
				Flag = "StaminaSettingsEnabled",
				Callback = function(p173)
					if t20:GetConfig() and not p173 then
						for k in t41, nil, nil do
							Sprinting[k] = t20:GetConfig()[k] or t42[k]
						end
					end

					if p173 then
						t16.add("StaminaSettings", v1596, 1.5)
					else
						t16.disconnect("StaminaSettings")
					end
				end
			})
		end

		do
			for i = 1, 2 do
				local v1614 = i > 1 and t43 or t41
				local v1615 = i > 1 and t44 or t42

				Stamina:CreateSection((i > 1 and "Killer" or "Survivor") .. " stamina settings")
				Stamina:CreateInput({
					Name = "Max Stamina",
					CurrentValue = v1615.MaxStamina,
					PlaceholderText = "Number",
					RemoveTextAfterFocusLost = false,
					Flag = "StaminaOptions_MaxStamina",
					Callback = function(p174)
						if not tonumber(p174) then
							return lib:Notify({
								Title = "Please enter a number",
								Content = "to change your max stamina",
								Duration = 6.5
							})
						end

						v1614.MaxStamina = p174
					end
				})
				Stamina:CreateInput({
					Name = "Stamina Loss",
					CurrentValue = v1615.StaminaLoss,
					PlaceholderText = "Number",
					RemoveTextAfterFocusLost = false,
					Flag = "StaminaOptions_StaminaLoss",
					Callback = function(p175)
						if tonumber(p175) then
							v1614.StaminaLoss = p175

							return
						end

						return lib:Notify({
							Title = "Please enter a number",
							Content = "to change your stamina loss",
							Duration = 6.5
						})
					end
				})
				Stamina:CreateInput({
					Name = "Stamina Gain",
					CurrentValue = v1615.StaminaGain,
					PlaceholderText = "Number",
					RemoveTextAfterFocusLost = false,
					Flag = "StaminaOptions_StaminaGain",
					Callback = function(p176)
						if not tonumber(p176) then
							return lib:Notify({
								Title = "Please enter a number",
								Content = "to change your stamina gain",
								Duration = 6.5
							})
						end

						v1614.StaminaGain = p176
					end
				})
			end
		end

		Stamina:CreateSection("Sprinting")
		Stamina:CreateToggle({
			Name = "Fast sprint (kick warning)",
			CurrentValue = false,
			Callback = v1108,
			Flag = "FastSprint",
			ToolTip = "Super high chance of speedhack anticheat kick. Use if you want to, but expect to get kicked after a while",
			Callback = function(p177)
				if p177 and v1096.Flags.SprintSpeed.CurrentValue then
					Sprinting.SprintSpeed = v1096.Flags.SprintSpeed.CurrentValue
				elseif not p177 then
					Sprinting.SprintSpeed = t20:GetConfig() and t20:GetConfig().SprintSpeed or 26
				end

				if p177 then
					t16.add("FastSprint", function(t, t)
						Sprinting.SprintSpeed = (t and t:FindFirstChild("Skateboard") and t.Skateboard.Transparency ~= 1) and 26 or v1096.Flags.SprintSpeed.CurrentValue
					end)
				else
					t16.disconnect("FastSprint")
				end
			end
		})
		Stamina:CreateSlider({
			Name = "└── Speed",
			Range = {
				26,
				30
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 26,
			Flag = "SprintSpeed",
			Callback = function(p178)
				if v1096.Flags.FastSprint.CurrentValue then
					Sprinting.SprintSpeed = p178

					if Sprinting.IsSprinting then
						t20:Sprint(false)
						t20:Sprint(true)
					end
				end
			end
		})

		do
			Stamina:CreateToggle({
				Name = "Instant stamina recovery",
				CurrentValue = false,
				Callback = function(p179)
					if p179 then
						t16.add("InstantStaminaRecover", function()
							if Sprinting.timeUntilStaminaRecovers > 0 and not Sprinting.IsSprinting and not Sprinting:IsSprintKeyHeld() then
								Sprinting.timeUntilStaminaRecovers = 0
							end
						end)
					else
						t16.disconnect("InstantStaminaRecover")
					end
				end,
				Flag = "InstantStaminaRecover"
			})
		end

		Stamina:CreateSlider({
			Name = "Maximum penalty time",
			Range = {
				0,
				2
			},
			Increment = 0.01,
			Suffix = "s",
			CurrentValue = 2,
			Flag = "MaxPenaltyTime",
			Callback = v1108
		})
		MapHealthColor = function(p180, p181)
			local v1616 = math.clamp(p180 / p181, 0, 1)

			return Color3.new(1 - v1616, v1616, 0)
		end

		local u1617
		local Part = Instance.new("Part")

		Part.Anchored = true
		Part.CanCollide = false
		Part.Transparency = 0.8
		Part.Material = Enum.Material.Neon
		Part.CFrame = CFrame.new(99999, 99999999, 9999)
		Part.Parent = workspace
		Part:SetAttribute("in", false)

		local Part2 = Instance.new("Part")

		Part2.Anchored = true
		Part2.Size = Vector3.zero
		Part2.CanCollide = false
		Part2.Transparency = 0.8
		Part2.Material = Enum.Material.Neon
		Part2.CFrame = CFrame.new(99999, 99999999, 9999)
		Part2.Parent = workspace

		local Part3 = Instance.new("Part")

		Part3.Name = "DangerZone"
		Part3.Shape = Enum.PartType.Cylinder
		Part3.Anchored = true
		Part3.CanCollide = false
		Part3.Transparency = 0.8
		Part3.Material = Enum.Material.Neon
		Part3.Color = Color3.fromRGB(255, 0, 0)
		Instance.new("PathfindingModifier", Part3).Label = "Danger"
		Part3.Parent = workspace
		Part2:SetAttribute("in", false)

		do
			local t45 = {}

			GetLocalHitboxes = function(p182)
				local n54 = 0
				local children = workspace.Hitboxes:GetChildren()

				if n3 < n1 then
					for i = 1, #children do
						local v1625 = children[i]

						if v1625.Name:sub(1, -7) == LocalPlayer.Name then
							if v1625.Size == p182 then
								n54 += 1
							end
						end
					end
				else
					n31 -= 860
					n30 -= 1382
					n29 = 937538648
					n8 -= 1555
					n5 += 849
					n10 -= 153
					n9 = 691292358
					n3 = 6525204
					n1 -= 1737
				end

				return n54
			end
			createm1part = function(p183)
				local v1626 = t20.AttackHitboxes[p183.Name]

				if v1626.fake then
					return
				end

				local Part4 = Instance.new("Part")

				Part4.Anchored = true
				Part4.Size = v1626.size
				Part4.CanCollide = false
				Part4.Parent = workspace
				t20.Disconnectables[#t20.Disconnectables + 1] = p183:GetPropertyChangedSignal("Parent"):Once(function()
					Part4:Destroy()
					t45[p183] = nil
				end)
				t45[p183] = Part4
				task.spawn(function()
					local QueryHitbox = p183:FindFirstChild("QueryHitbox")
					local HumanoidRootPart = p183:FindFirstChild("HumanoidRootPart")

					while p183.Parent and t45[p183] and not u34 do
						if not RunService.RenderStepped:Wait() then
							break
						end

						if not QueryHitbox or not HumanoidRootPart then
							QueryHitbox = p183:FindFirstChild("QueryHitbox")
							HumanoidRootPart = p183:FindFirstChild("HumanoidRootPart")
						end

						if QueryHitbox and HumanoidRootPart then
							local v1630 = true

							if not v1096.Flags.M1Visualizer.CurrentValue then
								v1630 = false
							elseif v1096.Flags.M1VisualizerRequireReady.CurrentValue and not HasAbilityReady(GetM1Name()) then
								v1630 = false
							elseif v1096.Flags.M1VisualizerNoHitboxes.CurrentValue and GetLocalHitboxes(v1626.size) > 0 then
								v1630 = false
							end

							Part4.CFrame = (v1096.Flags.M1VisualizerTrackQuery.CurrentValue and t20.AttackHitboxes:Predict(HumanoidRootPart, QueryHitbox) or HumanoidRootPart.CFrame):ToWorldSpace(CFrame.new(-v1626.offset))
							Part4.Material = v1096.Flags.M1VisualizerMaterial.CurrentOption[1]
							Part4.Transparency = v1630 and v1096.Flags.M1VisualizerTransparency.CurrentValue or 1
							Part4.Color = v1096.Flags.M1VisualizerColor.Color
						end
					end

					Part4:Destroy()
					t45[p183] = nil
				end)
			end
		end

		local funcs = t16.funcs
		local indexes = t16.indexes

		t16.add("c00lkiddChecker", function()
			if (not Killers3:FindFirstChild("c00lkidd")) then
				t20.UsingWalkspeedOverride = false
			end
		end, 0.25)
		t16.add("GuiVisManager", function()
			if _G.globaluilibrary then
				_G.globaluilibrary.Enabled = (u1024 and v1097.isSelected)
			end
		end)
		t16.add("EspUnloader", function()
			local t = (not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Humanoid")) or (t20.GameState == 1 or workspace.CurrentCamera.CameraSubject ~= LocalPlayer.Character.Humanoid)

			if u34 then
				for p, p in pairs(t25) do
					p.HealthBarOutline:Destroy()
					p.PlayerFlagsFrame:Destroy()
				end

				for p, p in pairs(t26) do
					p.Highlight:Destroy()
				end

				for p, p in pairs(t27) do
					p.Circle:Destroy()
				end

				for p, p in pairs(t28) do
					p.Label:Destroy()
				end

				table.clear(t25)
				table.clear(t26)
				table.clear(t27)
				table.clear(t28)
				u1617 = true

				return true
			end

			ScreenGui2.Enabled = t
			ScreenGui.Enabled = t
		end)

		local connection2 = RunService.RenderStepped:Connect(function(t)
			local A = LocalPlayer.Character

			setthreadidentity(8)

			for E = 1, #funcs do
				local S = funcs[E](t, A)

				setthreadidentity(8)

				if S ~= nil then
					return
				end
			end

			if (not indexes.InstantStaminaRecover) then
				local t = v1096.Flags.MaxPenaltyTime.CurrentValue

				if t < 2 then
					Sprinting.timeUntilStaminaRecovers = math.min(Sprinting.timeUntilStaminaRecovers, t)
				end
			end;

			(function()
				if not A then
					return
				end

				if (Sprinting.Stamina ~= Sprinting.MaxStamina or not v1096.Flags.AutoSprint.CurrentValue) and not t20._SprintDuringSk8 then
					return
				end

				if (A.Parent == Killers3 and v1096.Flags.AI_Killer_Toggle.CurrentValue) or t20._SprintDuringSk8 or ((not Sprinting.IsSprinting and tick() - t20.RoundStart >= 6) and not (v1096.Flags.AI_Survivor_Toggle.CurrentValue and LocalPlayer.Character.Parent == Survivors3) and Sprinting.CanSprint and Sprinting.BindsEnabled) then
					t20:Sprint(true)
				end
			end)()

			for t = #t25, 1, -1.0 do
				xpcall(function()
					local p = t25[t]
					local M = p.Character

					if not M or not M.Parent then
						p.HealthBarOutline:Destroy()
						p.PlayerFlagsFrame:Destroy()
						table.remove(t25, t)

						return
					end

					local t = p.HealthBar
					local k = p.HealthBarOutline
					local N = p.HPText
					local z = p.PlayerFlagsFrame
					local R = M:FindFirstChild("HumanoidRootPart")
					local D = M:FindFirstChild("Humanoid")
					local u = Players:GetPlayerFromCharacter(M)

					if not (R and R.Parent and D and D.Parent) then
						t:Destroy()
					else
						local W, M = CurrentCamera:WorldToScreenPoint(R.Position)

						if v1096.Flags[p.ToggleFlag].CurrentValue and M and (CurrentCamera.CFrame.Position - R.Position).Magnitude <= _G.ESP_HPBAR_MIN_MAGNITUDE then
							local p = (CurrentCamera.ViewportSize.Y / 2) / (W.Z * math.tan(math.rad(CurrentCamera.FieldOfView) / 2))
							local M = 5 * p

							k.Visible = v1096.Flags.EspShowHealth.CurrentValue
							t.Size = UDim2.fromScale(1, 1 - (D.Health / D.MaxHealth))
							k.Size = UDim2.fromOffset(3, M)
							k.Position = UDim2.fromOffset(W.X - 1.8 * p, W.Y - M / 2)
							N.Text = (v1096.Flags.HealthBarStyle.CurrentOption[1] == "Percent") and math.ceil((D.Health / D.MaxHealth) * 100) .. "%" or tostring(math.ceil(D.Health))

							if u then
								z.Visible = true
								z.Size = UDim2.fromOffset(M / 3, M)
								z.Position = UDim2.fromOffset(W.X + 1.8 * p, W.Y - M / 2)

								if v1096.Flags.EspShowItems.CurrentValue then
									z.BloxyCola.Visible = u.Backpack:FindFirstChild("BloxyCola") ~= nil
									z.Medkit.Visible = u.Backpack:FindFirstChild("Medkit") ~= nil
								else
									z.BloxyCola.Visible = false
									z.Medkit.Visible = false
								end

								if v1096.Flags.EspShowDevice.CurrentValue then
									z.Device.Visible = true
									z.Device.Image = v100[u:GetAttribute("Device")] or v100.Unknown
								else
									z.Device.Visible = false
								end
							else
								z.Visible = false
							end
						else
							k.Visible = false
							z.Visible = false
						end
					end
				end, function(t)
					v126("error in box esp:", tostring(t))
				end)
			end

			for t = #t26, 1, -1.0 do
				xpcall(function()
					local k = t26[t]
					local W = k.Model
					local p = k.Highlight

					p.Enabled = v1096.Flags[k.Flag].CurrentValue

					if W:FindFirstChild("Highlight") then
						W.Highlight:Destroy()
					end

					if W:FindFirstChild("PlayerAura") then
						W.PlayerAura:Destroy()
					end

					if not W or not W.Parent then
						p:Destroy()
						table.remove(t26, t)

						return
					end

					local t = v1096.Flags.OutlineOnlyESP.CurrentValue or k.OnlyOutline

					p.FillTransparency = t and 1 or 0

					local W = v1096.Flags[k.ColorFlag].Color
					local d, M, N = W:ToHSV()

					if not t then
						local t = v1096.Flags.OutlineWhiteness.CurrentValue / 100

						N = N + (1 - N) * t
						M = M * (1 - t)
					end

					p.OutlineColor = Color3.fromHSV(d, M, N)
					p.FillColor = W

					if v1096.Flags.NoOutlineESP.CurrentValue and not k.OnlyOutline then
						p.OutlineTransparency = 1
					else
						p.OutlineTransparency = 0
					end
				end, function(t)
					v126("error in chams esp:", tostring(t))
				end)
			end

			for t = #t27, 1, -1.0 do
				xpcall(function()
					local k = t27[t]

					k.Circle.Size = Vector3.new(0.2, k.RangeX * 2, k.RangeZ * 2)
					k.Circle.CFrame = CFrame.new(k.Object.Position.X, k.Object.Position.Y + 0.2, k.Object.Position.Z) * CFrame.Angles(0, 0, math.rad(90))
				end, function(t)
					v126("error in range esp:", tostring(t))
				end)
			end

			for t = #t28, 1, -1.0 do
				xpcall(function()
					local k = t28[t]
					local W = k.Object
					local p = k.Label
					local d = k.Flag
					local M = k.TagFlag

					if W and W.Parent then
						if W:IsDescendantOf(workspace) then
							local N, z = CurrentCamera:WorldToScreenPoint(W.Position)

							if z and v1096.Flags[d].CurrentValue and (not M or not rawget(v1096.Flags, M) or v1096.Flags[M].CurrentValue) then
								local W = 0

								if k.Display.Offset then
									local d = (CurrentCamera.ViewportSize.Y / 2) / (N.Z * math.tan(math.rad(CurrentCamera.FieldOfView) / 2))

									W = k.Display.Offset * d
								end

								p.Position = UDim2.fromOffset(N.X, N.Y - W)
								p.Visible = true
							else
								p.Visible = false
							end
						else
							p.Visible = false
						end
					else
						p:Destroy()
						table.remove(t28, t)
					end
				end, function(t)
					v126("error in label esp:", tostring(t))
				end)
			end
		end)

		esp:CreateSection("Player Esp")
		esp:CreateToggle({
			Name = "Killer Esp",
			CurrentValue = false,
			Flag = "KillerEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Survivor Esp",
			CurrentValue = false,
			Flag = "SurvivorEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Zombie/Minion Esp",
			CurrentValue = false,
			Flag = "EntityEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "007n7 Clone Esp",
			CurrentValue = false,
			Flag = "CloneEsp",
			Callback = v1108
		})
		esp:CreateSection("Ability/Object Esp")
		esp:CreateToggle({
			Name = "Generator Esp",
			CurrentValue = false,
			Flag = "GeneratorEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Item Esp",
			CurrentValue = false,
			Flag = "ItemEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Jane Doe Quest Esp",
			CurrentValue = false,
			Flag = "JaneDoeQuestEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Gingerbread Esp [DISABLED]",
			CurrentValue = false,
			Flag = "GingerbreadEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Sukkar Esp [DISABLED]",
			CurrentValue = false,
			Flag = "SukkarEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Taph Esp",
			CurrentValue = false,
			Flag = "TaphEsp",
			Callback = v1108
		})

		do
			esp:CreateToggle({
				Name = "Tripmine ranges Esp",
				CurrentValue = false,
				Flag = "TripmineRanges",
				Callback = function(p184)
					if not p184 then
						for i = 1, #t20.TaphDebris do
							pcall(function()
								t20.TaphDebris[i].SubspaceBox.RANGEVIS:Destroy()
							end)
						end
					end
				end
			})
		end

		esp:CreateToggle({
			Name = "Builderman Esp",
			CurrentValue = false,
			Flag = "BuildermanEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "John Doe Esp",
			CurrentValue = false,
			Flag = "JohnDoeEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Veeronica Esp",
			CurrentValue = false,
			Flag = "VeeronicaEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Azure Esp",
			CurrentValue = false,
			Flag = "AzureEsp",
			Callback = v1108
		})
		esp:CreateToggle({
			Name = "Bulb/Vine ranges Esp",
			CurrentValue = false,
			Flag = "AzureEspRange",
			Callback = function(p185)
				if not p185 then
					for i = 1, #t20.AzureDebris do
						pcall(function()
							t20.AzureDebris[i].RootPart.RANGEVIS:Destroy()
						end)
					end
				end
			end
		})
		esp:CreateToggle({
			Name = "Gears Esp",
			CurrentValue = false,
			Flag = "GearsEsp",
			Callback = v1108
		})

		if _G.UNLOCK_CD_ESP then
			esp:CreateToggle({
				Name = "Cooldown Esp",
				CurrentValue = false,
				Flag = "CooldownEsp",
				Callback = v1108,
				ToolTip = "Shows you other people's cooldown of abilities like block, mass infection, plasma beam, etc"
			})
		end

		esp:CreateSection("Esp Colors")
		esp:CreateColorPicker({
			Name = "Generator Color",
			Color = Color3.fromRGB(221, 51, 255),
			Flag = "GeneratorEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Killer Color",
			Color = Color3.fromRGB(255, 0, 0),
			Flag = "KillerEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Survivor Color",
			Color = Color3.fromRGB(0, 0, 255),
			Flag = "SurvivorEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Item Color",
			Color = Color3.fromRGB(0, 255, 255),
			Flag = "ItemEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Gingerbread Color",
			Color = Color3.fromRGB(255, 50, 204),
			Flag = "GingerbreadEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Zombie/Minion Color",
			Color = Color3.fromRGB(255, 159, 0),
			Flag = "EntityEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "007n7 Clone Color",
			Color = Color3.fromRGB(157, 255, 0),
			Flag = "CloneEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Taph Color",
			Color = Color3.fromRGB(75, 255, 145),
			Flag = "TaphEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Builderman Color",
			Color = Color3.fromRGB(157, 255, 0),
			Flag = "BuildermanEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "John Doe Color",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "JohnDoeEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Veeronica Color",
			Color = Color3.fromRGB(255, 0, 242),
			Flag = "VeeronicaEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Azure Color",
			Color = Color3.fromRGB(255, 255, 255),
			Flag = "AzureEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Quest Color",
			Color = Color3.fromRGB(186, 119, 52),
			Flag = "JaneDoeQuestEspColor",
			Callback = v1108
		})
		esp:CreateColorPicker({
			Name = "Gears Color",
			Color = Color3.fromRGB(255, 159, 0),
			Flag = "GearsEspColor",
			Callback = v1108
		})
		esp:CreateSection("Esp Settings")
		esp:CreateToggle({
			Name = "Outlines only",
			CurrentValue = false,
			Flag = "OutlineOnlyESP",
			Callback = v1108,
			TextMode = true
		})
		esp:CreateToggle({
			Name = "No outlines",
			CurrentValue = false,
			Flag = "NoOutlineESP",
			Callback = v1108,
			TextMode = true
		})
		esp:CreateToggle({
			Name = "Show items in Player Esp",
			CurrentValue = false,
			Flag = "EspShowItems",
			Callback = v1108,
			TextMode = true
		})
		esp:CreateToggle({
			Name = "Show device in Player Esp",
			CurrentValue = false,
			Flag = "EspShowDevice",
			Callback = v1108,
			TextMode = true
		})
		esp:CreateToggle({
			Name = "Show health in Player Esp",
			CurrentValue = true,
			Flag = "EspShowHealth",
			Callback = v1108,
			TextMode = true
		})
		esp:CreateSlider({
			Name = "Outline whiteness",
			Range = {
				0,
				100
			},
			Increment = 5,
			Suffix = "%",
			CurrentValue = 50,
			Flag = "OutlineWhiteness",
			Callback = v1108,
			ToolTip = "Determines how much lighter the outline is compared to the main color of the highlight"
		})
		esp:CreateDropdown({
			Name = "HP Bar style",
			Options = {
				"Percent",
				"Number"
			},
			CurrentOption = { "Percent" },
			MultipleOptions = false,
			Flag = "HealthBarStyle",
			Callback = v1108
		})
		esp:CreateButton({
			Name = "Enable all Esp",
			Callback = function()
				local t46 = {
					"GeneratorEsp",
					"KillerEsp",
					"SurvivorEsp",
					"ItemEsp",
					"EntityEsp",
					"CloneEsp",
					"TaphEsp",
					"BuildermanEsp",
					"JohnDoeEsp",
					"VeeronicaEsp",
					"AzureEsp",
					"JaneDoeQuestEsp",
					"GearsEsp",
					"TripmineRanges",
					"AzureEspRange"
				}
				local v1686 = #t46
				local n55 = 1
				local v1688 = v1686 + 0
				local v1689 = 1 - n55

				for i = 1, v1686 do
					local v1691 = v1096.Flags[t46[i]]

					if not v1691.CurrentValue then
						local exitTo

						repeat
							v1691:Set(true)
							exitTo = nil

							local exitTo2
							local v1694

							while true do
								v1689 += n55

								if n55 <= 0 then
									exitTo2 = 1

									break
								end

								if not (v1689 <= v1688) then
									break
								end

								v1694 = v1689
								v1691 = v1096.Flags[t46[v1694]]

								if v1691.CurrentValue then
									continue
								end

								exitTo2 = 2

								break
							end

							if exitTo2 == 1 then
								if v1689 >= v1688 then
									v1694 = v1689

									while true do
										v1691 = v1096.Flags[t46[v1694]]

										if not v1691.CurrentValue then
											exitTo = 1

											break
										end

										local exitTo3

										while true do
											v1689 += n55

											if n55 <= 0 then
												exitTo3 = 1

												break
											end

											if not (v1689 <= v1688) then
												break
											end

											v1694 = v1689
											v1691 = v1096.Flags[t46[v1694]]

											if v1691.CurrentValue then
												continue
											end

											exitTo3 = 2

											break
										end

										if exitTo3 == 1 then
											if v1689 >= v1688 then
												v1694 = v1689

												continue
											end
										else
											if exitTo3 == 2 then
												exitTo = 1
											end

											break
										end

										break
									end
								end
							elseif exitTo2 == 2 then
								exitTo = 1
							end
						until exitTo ~= 1

						return
					end
				end
			end
		})
		esp:CreateSection("Tag Settings")

		for k, v in pairs({
			Generator = "Generator",
			Killer = "Killer",
			Survivor = "Survivor",
			Item = "Item",
			Entity = "Zombie/Minion",
			Gears = "Gears"
		}) do
			esp:CreateToggle({
				Name = v .. " tags",
				CurrentValue = true,
				Flag = k .. "EspTags",
				Callback = v1108,
				TextMode = true
			})
		end

		do
			AddTextLabel = function(p186, p187, p188, p189, p190)
				local TextLabel = Instance.new("TextLabel")

				TextLabel.Parent = ScreenGui
				TextLabel.Size = UDim2.new(0, 0, 0, 0)
				TextLabel.Font = Enum.Font.GothamMedium
				TextLabel.BackgroundTransparency = 1
				TextLabel.Visible = false
				t28[#t28 + 1] = {
					Object = p186,
					Label = TextLabel,
					Display = p189,
					Flag = p188,
					TagFlag = p188 .. "Tags"
				}
				task.spawn(function()
					while p186.Parent do
						if u34 then
							v126("ending text esp because unload")

							break
						end

						if v1096.Flags[p188].CurrentValue then
							if typeof(p189) == "table" then
								if TextLabel.Text then
									xpcall(function()
										TextLabel.Text = p189.Text()
									end, function(p191)
										v126("failed to set esp text of", tostring(p186:GetFullName()), " erorr:", tostring(p191))
									end)
								end

								if p189.Font then
									TextLabel.Font = p189.Font
								end

								if p189.TextSize then
									TextLabel.TextSize = p189.TextSize
								end
							else
								TextLabel.Text = p189
							end

							if p190 then
								TextLabel.TextStrokeTransparency = 0
								TextLabel.TextStrokeColor3 = p190
							end

							TextLabel.TextColor3 = v1096.Flags[p187].Color
						end

						wait(0.1)
					end

					TextLabel:Destroy()
				end)
			end
		end

		AddAbilitiesContainer = function(p192)
			local BillboardGui = Instance.new("BillboardGui")

			BillboardGui.Parent = p192
			BillboardGui.AlwaysOnTop = false
			BillboardGui.StudsOffset = Vector3.new(0, 6, 0)
			BillboardGui.Size = UDim2.new(0, 240, 0, 50)
			BillboardGui.Name = "Abilities"
			BillboardGui.MaxDistance = 80
			BillboardGui.ResetOnSpawn = false

			local Frame2 = Instance.new("Frame")

			Frame2.Parent = BillboardGui
			Frame2.Size = UDim2.new(1, 0, 1, 0)
			Frame2.BackgroundTransparency = 1

			local UIListLayout2 = Instance.new("UIListLayout")

			UIListLayout2.Parent = BillboardGui
			UIListLayout2.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout2.Padding = UDim.new(0, 42)
			UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder

			return Frame2
		end

		do
			AddAbilityIntoContainer = function(p193, p194, p195, p196, p197)
				if p194:FindFirstChild(p193) then
					return v126(p193, "already in container")
				end

				local ImageLabel = Instance.new("ImageLabel")

				ImageLabel.Parent = p194
				ImageLabel.Size = UDim2.new(0, 50, 0, 50)
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.Image = p195
				ImageLabel.LayoutOrder = p197
				ImageLabel.Name = p193

				local TextLabel = Instance.new("TextLabel")

				TextLabel.Parent = ImageLabel
				TextLabel.Size = UDim2.new(1, 0, 1, 0)
				TextLabel.TextSize = 12
				TextLabel.Font = Enum.Font.RobotoMono
				TextLabel.BackgroundTransparency = 1
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.AnchorPoint = Vector2.new(0.5, 0)
				TextLabel.Position = UDim2.new(0.5, 0, 1, -4)
				task.spawn(function()
					local now2 = tick()

					while true do
						if not (tick() - now2 <= p196) then
							ImageLabel:Destroy()

							return
						end

						if u34 then
							break
						end

						TextLabel.Text = ("%s\n%.1fs"):format(p193:gsub("Walkspeed Override", "WS Override"), p196 - (tick() - now2))
						wait(0.1)
					end

					return p194:Destroy()
				end)
			end
		end

		do
			labelshit = function(p198, p199, p200)
				AddTextLabel(p198, p199, p200, {
					Text = function()
						local Character_3 = LocalPlayer.Character
						local exitTo, Name, Parent, n56, v1710, v1711, s10, format, v1714, v1715, v1716, s11, format2, v1719, v1720

						if Character_3 then
							exitTo = nil

							while true do
								Character_3 = t20.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
								Name = p198.Parent.Name

								if Name == "PizzaDeliveryRig" then
									Name = "Minion"
								elseif Name == "1x1x1x1Zombie" then
									Name = "Zombie"
								elseif Name == "007n7" then
									Parent = p198.Parent

									if Parent:GetAttribute("clone") then
										Name = "Clone"
									end
								end

								n56 = 855107804
								v1710 = v1096.Flags.EspShowHealth.CurrentValue and p198.Name == "HumanoidRootPart" and p198.Parent:FindFirstChild("Humanoid") and (CurrentCamera.CFrame.Position - p198.Position).Magnitude >= _G.ESP_HPBAR_MIN_MAGNITUDE

								if Character_3 then
									exitTo = 1

									break
								end

								if not (n7 < n56) then
									n3 = 921534926
									n8 = 135601199
									n1 -= 533
									n2 = 886456450
									n30 = 170497149
									n7 += 654
									n29 = 672840456
									v1711 += i_0

									if i_0 <= 0 then
										if v1711 >= G_0 then
											continue
										end

										exitTo = 2

										break
									end

									if v1711 <= G_0 then
										continue
									end

									exitTo = 2

									break
								end

								break
							end

							if exitTo == 1 then
								s10 = "%s • %dm%s"
								format = ("%s • %dm%s").format
								v1714 = Name
								v1715 = math.floor((p198.Position - Character_3.Position).magnitude / 3.57)
								v1716 = v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or ""

								return format(s10, v1714, v1715, v1716)
							end

							if exitTo ~= 2 then
								s11 = "%s%s"
								format2 = ("%s%s").format
								v1719 = Name
								v1720 = v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or ""

								return format2(s11, v1719, v1720)
							end
						else
							Name = p198.Parent.Name

							if Name == "PizzaDeliveryRig" then
								Name = "Minion"
							elseif Name == "1x1x1x1Zombie" then
								Name = "Zombie"
							elseif Name == "007n7" then
								Parent = p198.Parent

								if Parent:GetAttribute("clone") then
									Name = "Clone"
								end
							end

							n56 = 855107804
							v1710 = v1096.Flags.EspShowHealth.CurrentValue and p198.Name == "HumanoidRootPart" and p198.Parent:FindFirstChild("Humanoid") and (CurrentCamera.CFrame.Position - p198.Position).Magnitude >= _G.ESP_HPBAR_MIN_MAGNITUDE

							if n7 < n56 then
								s11 = "%s%s"
								format2 = ("%s%s").format
								v1719 = Name
								v1720 = v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or ""

								return format2(s11, v1719, v1720)
							end

							n3 = 921534926
							n8 = 135601199
							n1 -= 533
							n2 = 886456450
							n30 = 170497149
							n7 += 654
							n29 = 672840456
							v1711 += i_0

							if i_0 <= 0 then
								if v1711 >= G_0 then
									exitTo = nil

									while true do
										Character_3 = t20.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
										Name = p198.Parent.Name

										if Name == "PizzaDeliveryRig" then
											Name = "Minion"
										elseif Name == "1x1x1x1Zombie" then
											Name = "Zombie"
										elseif Name == "007n7" then
											Parent = p198.Parent

											if Parent:GetAttribute("clone") then
												Name = "Clone"
											end
										end

										n56 = 855107804
										v1710 = v1096.Flags.EspShowHealth.CurrentValue and p198.Name == "HumanoidRootPart" and p198.Parent:FindFirstChild("Humanoid") and (CurrentCamera.CFrame.Position - p198.Position).Magnitude >= _G.ESP_HPBAR_MIN_MAGNITUDE

										if Character_3 then
											exitTo = 1

											break
										end

										if not (n7 < n56) then
											n3 = 921534926
											n8 = 135601199
											n1 -= 533
											n2 = 886456450
											n30 = 170497149
											n7 += 654
											n29 = 672840456
											v1711 += i_0

											if i_0 <= 0 then
												if v1711 >= G_0 then
													continue
												end

												exitTo = 2

												break
											end

											if v1711 <= G_0 then
												continue
											end

											exitTo = 2

											break
										end

										break
									end

									if exitTo == 1 then
										s10 = "%s • %dm%s"
										format = ("%s • %dm%s").format
										v1714 = Name
										v1715 = math.floor((p198.Position - Character_3.Position).magnitude / 3.57)
										v1716 = v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or ""

										return format(s10, v1714, v1715, v1716)
									end

									if exitTo ~= 2 then
										s11 = "%s%s"
										format2 = ("%s%s").format
										v1719 = Name
										v1720 = v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or ""

										return format2(s11, v1719, v1720)
									end
								end
							elseif v1711 <= G_0 then
								exitTo = nil

								while true do
									Character_3 = t20.GameState == 1 and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
									Name = p198.Parent.Name

									if Name == "PizzaDeliveryRig" then
										Name = "Minion"
									elseif Name == "1x1x1x1Zombie" then
										Name = "Zombie"
									elseif Name == "007n7" then
										if p198.Parent:GetAttribute("clone") then
											Name = "Clone"
										end
									end

									n56 = 855107804
									v1710 = v1096.Flags.EspShowHealth.CurrentValue and p198.Name == "HumanoidRootPart" and p198.Parent:FindFirstChild("Humanoid") and (CurrentCamera.CFrame.Position - p198.Position).Magnitude >= _G.ESP_HPBAR_MIN_MAGNITUDE

									if Character_3 then
										exitTo = 1

										break
									end

									if not (n7 < n56) then
										n3 = 921534926
										n8 = 135601199
										n1 -= 533
										n2 = 886456450
										n30 = 170497149
										n7 += 654
										n29 = 672840456
										v1711 += i_0

										if i_0 <= 0 then
											if v1711 >= G_0 then
												continue
											end

											exitTo = 2

											break
										end

										if v1711 <= G_0 then
											continue
										end

										exitTo = 2

										break
									end

									break
								end

								if exitTo == 1 then
									return ("%s • %dm%s"):format(Name, math.floor((p198.Position - Character_3.Position).magnitude / 3.57), v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or "")
								end

								if exitTo ~= 2 then
									return ("%s%s"):format(Name, v1710 and (" • %dHP"):format(p198.Parent.Humanoid.Health) or "")
								end
							end
						end

						updateeditgui = nil
						VoidRushIsDangerous = nil
					end,
					TextSize = 15,
					Font = Enum.Font.Gotham,
					Color3.fromRGB(0, 0, 0),
					Offset = tostring(p198) ~= "Sixer" and 3 or 5.5
				}, Color3.fromRGB(0, 0, 0))
			end
		end

		InterceptAudio = function(p201, p202)
			v127("replacing", p201, "with", p202)
			p201.SoundId = p202
		end

		local t47 = {}
		local t48 = {}

		Aimbot:CreateSection("Silent Aim")
		Aimbot:CreateToggle({
			Name = "Enable silent aim",
			CurrentValue = false,
			Flag = "SilentAimToggle",
			Callback = v1108
		})
		Aimbot:CreateDropdown({
			Name = "Ability to use silent aim",
			Options = {
				"Plasma beam - Dusekkar",
				"Void Star - Noli",
				"Corrupt Nature - Coolkid",
				"Crystal - Jane Doe",
				"Enstrangle - Azure",
				"Infernal Cry - Sixer"
			},
			CurrentOption = {},
			MultipleOptions = true,
			Flag = "SilentAimValues",
			Callback = function(p203)
				t47 = {}

				for _, v in p203, nil, nil do
					t47[v:match("^(.-)%s*%-")] = true
				end
			end,
			Searchable = true
		})
		Aimbot:CreateToggle({
			Name = "Dusekkar target survivor",
			CurrentValue = false,
			Flag = "DusekkarSurvivor",
			Callback = v1108,
			TextMode = true
		})

		do
			local function v1725()
				local Crystal = Config4.Crystal
				local v1727 = Crystal.MinChargeTime / Crystal.MaxChargeTime

				for _, child in ipairs(TemporaryUI:GetChildren()) do
					local Bar = child:FindFirstChild("Bar")
					local Percent = Bar and Bar:FindFirstChild("Percent")

					if Percent then
						local v1732 = tonumber(Percent.Text:match("%d+"))

						if v1732 then
							return math.clamp(v1732 / 100, v1727, 1)
						end
					end
				end

				return v1727
			end

			local v1733

			v1733 = v29(GetMousePos, newcclosure(function(...)
				setthreadidentity(2)

				local Killer = GetClosestToMouse("Killer")
				local Survivor = GetClosestToMouse("Survivor")

				if t20.DusekkarActive and v1096.Flags.SilentAimToggle.CurrentValue then
					if t47["Plasma beam"] then
						if v1096.Flags.DusekkarSurvivor.CurrentValue and Survivor then
							return Predict(Survivor)
						end

						if Killer then
							return Predict(Killer)
						end
					end
				elseif t20.NoliActive and v1096.Flags.SilentAimToggle.CurrentValue then
					if t47["Void Star"] and Survivor then
						local HumanoidRootPart = Survivor:FindFirstChild("HumanoidRootPart")
						local hit = workspace:Raycast(HumanoidRootPart.Position, Vector3.new(0, -1000, 0), RaycastParams.new())
						local Position = hit and hit.Position or HumanoidRootPart.Position

						return Position
					end
				elseif t20.CoolkidActive and v1096.Flags.SilentAimToggle.CurrentValue then
					if t47["Corrupt Nature"] and Survivor then
						return Predict(Survivor)
					end
				elseif t20.Has007n7Clone and v1096.Flags["007n7CloneFollow"].CurrentValue then
					local ok, result = pcall(getN7player)

					if ok and result then
						local ok2, result2 = pcall(calcN7position, result, t20.Has007n7Clone)

						if ok2 and result2 then
							return result2
						end

						if ok2 then
							v127("no res for bodyblock clc")
						else
							v126("bodyblock calc err:", tostring(result2))
						end
					elseif ok then
						v127("no target for bodyblock")
					else
						v126("bodyblock err:", tostring(result))
					end
				elseif tostring(LocalPlayer.Character) ~= "JaneDoe" or not v1096.Flags.SilentAimToggle.CurrentValue then
					if tostring(LocalPlayer.Character) == "Sixer" and v1096.Flags.SilentAimToggle.CurrentValue and t47["Infernal Cry"] then
						local Survivor2 = GetClosestToMouse("Survivor")

						if Survivor2 then
							return Survivor2.HumanoidRootPart.Position
						end
					end
				elseif t47.Crystal and Killer then
					local t49 = { ... }
					local ok, result = xpcall(function()
						local Crystal = Config4.Crystal
						local v1748 = Killer.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
						local Character_3 = LocalPlayer.Character
						local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")
						local Humanoid = Character_3 and Character_3:FindFirstChildOfClass("Humanoid")

						if not HumanoidRootPart or not Humanoid then
							v126("no root or hum")

							return v1733(unpack(t49))
						end

						local v1752 = math.lerp(Crystal.MinSpeed, Crystal.MaxSpeed, v1725())
						local ProjectileArc = Crystal.ProjectileArc
						local v1754 = (Humanoid.HipHeight + HumanoidRootPart.Size.Y / 2) / 2
						local v1755 = v1748 - (HumanoidRootPart.Position + Vector3.new(0, v1754, 0))
						local vector3 = Vector3.new(v1755.X, 0, v1755.Z)
						local Magnitude = vector3.Magnitude
						local v1758 = v1752 * v1752
						local v1759 = math.max(v1758 * v1758 - ProjectileArc * (ProjectileArc * Magnitude * Magnitude + 2 * v1755.Y * v1758), 0)
						local v1760 = math.atan((v1758 + -math.sqrt(v1759)) / (ProjectileArc * Magnitude))
						local v1761 = vector3.Unit * math.cos(v1760) + Vector3.new(0, math.sin(v1760), 0)

						return HumanoidRootPart.Position + (v1761 * (-v1754 * v1761.Y + math.sqrt(v1754 * v1754 * v1761.Y * v1761.Y - v1754 * v1754 + 250000)) + Vector3.new(0, v1754, 0)) / 500 * 1000
					end, function(p204)
						v126("[silent aim] jane doe error:", tostring(p204))
					end)

					if ok then
						return result
					end
				end

				return v1733(...)
			end))
		end

		Aimbot:CreateSection("Aimbot")
		Aimbot:CreateToggle({
			Name = "Enable aimbots",
			CurrentValue = false,
			Flag = "AimbotToggle",
			Callback = v1108
		})

		do
			Aimbot:CreateDropdown({
				Name = "Ability to use aimbot",
				Options = {
					"Entanglement - 1x1x1x1",
					"Mass Infection - 1x1x1x1",
					"Throw Pizza - Elliot",
					"Blood Hook - Nosferatu",
					"One Shot - Chance",
					"Corrupt Energy - John Doe",
					"Enstrangle - Azure",
					"Hatchet - Jane Doe",
					"WS Override - Coolkidd",
					"Void Rush - Noli",
					"Charge - Guest1337"
				},
				CurrentOption = {},
				MultipleOptions = true,
				Flag = "AimbotValues",
				Callback = function(p205)
					t48 = {}

					for _, v in p205, nil, nil do
						t48[v:match("^(.-)%s*%-")] = true
					end
				end,
				Searchable = true
			})
		end

		Aimbot:CreateToggle({
			Name = "M1 assist",
			CurrentValue = false,
			Flag = "Mouse1Aimbot",
			Callback = v1108
		})
		Aimbot:CreateToggle({
			Name = "Chance 360 no-scope",
			CurrentValue = false,
			Flag = "Chance360",
			Callback = v1108,
			ToolTip = "It does a 360 when you shoot with chance aimbot on"
		})
		Aimbot:CreateSlider({
			Name = "Void Rush range",
			Range = {
				10,
				130
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 60,
			Flag = "VoidRushThreshold",
			Callback = v1108
		})
		Aimbot:CreateSlider({
			Name = "Walkspeed Override range",
			Range = {
				10,
				100
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 50,
			Flag = "WalkspeedOverrideThreshold",
			Callback = v1108
		})
		Aimbot:CreateSlider({
			Name = "Charge range",
			Range = {
				3,
				30
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 14,
			Flag = "ChargeAimbotThreshold",
			Callback = v1108
		})
		Aimbot:CreateDropdown({
			Name = "Aimbot mode",
			Options = {
				"Camera",
				"Character"
			},
			CurrentOption = { "Character" },
			MultipleOptions = false,
			Flag = "AimbotLookMode",
			Callback = v1108
		})
		MassInfectionActive = function()
			return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("SpeedMultipliers") and LocalPlayer.Character:FindFirstChild("SpeedMultipliers"):FindFirstChild("MassInfection")
		end

		do
			EntanglementActive = function()
				return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("SpeedMultipliers") and LocalPlayer.Character:FindFirstChild("SpeedMultipliers"):FindFirstChild("Entanglement")
			end
		end

		ElliotHasPizza = function()
			return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Pizza") and LocalPlayer.Character:FindFirstChild("Pizza").Transparency == 0
		end
		AzureAimingEnstrangle = function()
			local v1764
			local children = workspace.Map.Ingame:GetChildren()

			for i = 1, #children do
				local v1767 = children[i]

				if v1767.Name == "Beam" and v1767.Texture == "rbxassetid://4955566540" and v1767.CurveSize0 == 0 and v1767.CurveSize1 == 0 then
					v1764 = children[i]

					break
				end
			end

			return LocalPlayer.Character and LocalPlayer.Character.Name == "Azure" and v1764
		end

		do
			task.spawn(function()
				if n30 == 28953520 then
					n30 -= 165
					n7 -= 991
					n2 += 1562
					n1 = 262790614
					n10 = 212734636
					n5 = 753549637
					n31 = 1058364412
					n8 -= 1429
					n9 -= 1657
					GrabTool = nil
				else
					while wait() do
						if t48.Enstrangle and not t47.Enstrangle and v1096.Flags.AimbotToggle.CurrentValue and AzureAimingEnstrangle() then
							local v1768 = GetClosestSurvivor(60)

							if v1768 then
								StartAimbotting(v1768, function()
									if n9 ~= 202624226 then
										return AzureAimingEnstrangle()
									end

									n8 -= 326
									n10 += 208
									n9 += 160
									n31 = 839641880
									n7 -= 88
									n1 -= 891
								end, nil, math.huge, true)
								wait(1.6)
							end
						end
					end
				end
			end)
		end

		local u1769

		stareFunc = function(p206, p207)
			if t20.TargetTwoTime and not p207 then
				return
			end

			local Character_3 = LocalPlayer.Character
			local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")
			local HumanoidRootPart2 = p206 and p206:FindFirstChild("HumanoidRootPart")

			if not HumanoidRootPart or not HumanoidRootPart2 then
				return
			end

			if HumanoidRootPart.Anchored or HumanoidRootPart2.Anchored then
				return
			end

			if u1769 then
				return
			end

			u1769 = true

			local Position = HumanoidRootPart.Position

			HumanoidRootPart.CFrame = CFrame.new(Position, Vector3.new(HumanoidRootPart2.Position.X, Position.Y, HumanoidRootPart2.Position.Z))
			u1769 = false
		end

		do
			Turn360 = function(p208, p209)
				local n57 = 986280181
				local now2 = tick()

				while tick() - now2 < 0.5 do
					p208.CFrame = p209 * CFrame.Angles(0, math.rad((tick() - now2) / 0.5 * 252), 0)

					if n5 < n57 then
						RunService.RenderStepped:Wait()
					else
						n8 -= 1382
						n29 = 50103197
						n57 = 440693834
						n5 = 208736613
						n30 += 2042
						n1 = 556811927
						n9 = 880667248
						n31 = 350453196
						n2 = 792026218
						n7 -= 885
						FindAnimationAsset = nil
						IsFacingBack = nil
						GrabMedkit = nil
					end
				end

				local now3 = tick()

				while tick() - now3 < 0.3 do
					p208.CFrame = p209 * CFrame.Angles(0, math.rad(252 + (tick() - now3) / 0.3 * 108), 0)
					RunService.RenderStepped:Wait()
				end

				p208.CFrame = p209 * CFrame.Angles(0, math.rad(360), 0)
			end
		end

		Turn360Static = function(p210, p211, p212)
			local Humanoid = p210.Parent:FindFirstChildOfClass("Humanoid")
			local AutoRotate = Humanoid and Humanoid.AutoRotate

			if Humanoid then
				Humanoid.AutoRotate = false
			end

			local now2 = tick()
			local n58 = 0

			while tick() - now2 < p212 do
				local v1781 = math.rad(360 * math.clamp((tick() - now2) / p212, 0, 1))

				p210.CFrame *= CFrame.Angles(0, v1781 - n58, 0)
				n58 = v1781
				wait()
			end

			p210.CFrame *= CFrame.Angles(0, math.rad(360) - n58, 0)

			if Humanoid then
				Humanoid.AutoRotate = AutoRotate
			end
		end
		t20.Disconnectables[#t20.Disconnectables + 1] = Network.RemoteEvent.OnClientEvent:Connect(function(...)
			if u34 then
				return
			end

			local t50 = { ... }

			if t50[1] == "UseActorAbility" then
				local v1783 = t50[2]

				if type(v1783) == "table" and typeof(v1783[1]) == "buffer" then
					local v1784 = buffer.tostring(v1783[1])
					local v1785 = GetClosestSurvivor(130)
					local v1786 = GetClosestKiller(90)
					local v1787 = GetClosestKiller(13)
					local MainKiller = t20.MainKiller
					local v1789 = GetClosestSurvivor(25)
					local v1790 = GetClosestSurvivor(95)
					local v1791 = GetClosestSurvivor(113.846)

					if IsKiller() and v1096.Flags.AutoFarmSurvivors.CurrentValue then
						M1Target = nil
					end

					local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
					local now2 = tick()
					local CFrame_ = HumanoidRootPart.CFrame
					local v1795 = table.find(v1096.Flags.AimbotLookMode.CurrentOption, "Camera") ~= nil

					if v1784:find("MassInfection") and t48["Mass Infection"] and v1096.Flags.AimbotToggle.CurrentValue and v1785 then
						StartAimbotting(v1785, MassInfectionActive, nil, nil, v1795)
					elseif v1784:find("Entanglement") and t48.Entanglement and v1096.Flags.AimbotToggle.CurrentValue and v1785 then
						StartAimbotting(v1785, EntanglementActive, nil, nil, v1795)
					elseif v1784:find("Uppercut") and t48["Blood Hook"] and v1096.Flags.AimbotToggle.CurrentValue and v1791 then
						StartAimbotting(v1791, function()
							return tick() - now2 <= 2 and IsKiller()
						end, nil, nil, v1795)
					elseif v1784:find("Axe") and t48.Hatchet and v1096.Flags.AimbotToggle.CurrentValue and v1787 then
						StartAimbotting(v1787, function()
							return tick() - now2 <= 1 and LocalPlayer.Character and t20.GameState == 1
						end, nil, nil, true)
					elseif v1784:find("ThrowPizza") and t48["Throw Pizza"] and v1096.Flags.AimbotToggle.CurrentValue and v1789 then
						StartAimbotting(v1789, ElliotHasPizza, function()
							return CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + (v1789.HumanoidRootPart.Position - HumanoidRootPart.CFrame * Vector3.new(-1, 0, 0)).Unit)
						end, nil, v1795)
					elseif v1784:find("Shoot") and (t48["One Shot"] and v1096.Flags.AimbotToggle.CurrentValue or v1096.Flags.TPOneShot.CurrentValue) and LocalPlayer.Character.Name == "Chance" then
						local CurrentValue = v1096.Flags.TPOneShot.CurrentValue and MainKiller and MainKiller or v1786
						local HumanoidRootPart2 = CurrentValue and CurrentValue:FindFirstChild("HumanoidRootPart")

						v127(HumanoidRootPart2)

						if v1096.Flags.TPOneShot.CurrentValue and HumanoidRootPart2 then
							xpcall(function()
								now2 = tick()

								while tick() - now2 <= 1.669 and HumanoidRootPart.Parent do
									local result = RunService.Heartbeat:Wait()
									local ok = HasNotification("stunned") or HasNotification("you tried")

									if not ok then
										ok = not not workspace.Hitboxes:FindFirstChild(LocalPlayer.Name .. "Hitbox")
									end

									if ok then
										return v127("chance shot ended")
									end

									local CFrame_2 = HumanoidRootPart.CFrame

									HumanoidRootPart.CFrame = MainKiller.HumanoidRootPart.CFrame

									local v1801 = coroutine.running()

									RunService:BindToRenderStep("ChanceShoot", Enum.RenderPriority.First.Value, function()
										RunService:UnbindFromRenderStep("ChanceShoot")
										HumanoidRootPart.CFrame = CFrame_2 + CFrame_2.LookVector * result
										task.spawn(v1801)
									end)
									coroutine.yield()
								end
							end, function(p213)
								v126("chance tp shoot failure:", tostring(p213))
							end)
						elseif HumanoidRootPart2 and MainKiller and v1786 then
							local Enabled = SmoothShiftLock.Enabled

							if v1096.Flags.Chance360.CurrentValue then
								if Enabled then
									setthreadidentity(2)
									SmoothShiftLock:ToggleShiftLock()
									setthreadidentity(8)
								end

								Turn360(HumanoidRootPart, CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + (HumanoidRootPart2.Position - HumanoidRootPart.CFrame * Vector3.new(-1, 0, 0)).Unit))

								if Enabled and not SmoothShiftLock.Enabled then
									setthreadidentity(2)
									SmoothShiftLock:ToggleShiftLock()
									setthreadidentity(8)
								end
							end

							StartAimbotting(v1786, function()
								local v1803 = tick() - now2 <= 2

								if v1803 then
									v1803 = not (HasNotification("stunned") or HasNotification("you tried") or workspace.Hitboxes:FindFirstChild(LocalPlayer.Name .. "Hitbox"))
								end

								return v1803
							end, function()
								local v1804 = math.clamp((60 - (HumanoidRootPart.Position - HumanoidRootPart2.Parent.QueryHitbox.Position).magnitude) / 60, 0, math.huge)

								v127(v1804)

								local v1805 = HumanoidRootPart.CFrame * Vector3.new(-1, 0, 0)
								local Unit = (HumanoidRootPart2.Parent.QueryHitbox.Position + HumanoidRootPart2.Parent.Humanoid:GetMoveVelocity() * v1804 - v1805).Unit

								return CFrame.lookAt(HumanoidRootPart.Position, HumanoidRootPart.Position + Unit)
							end, nil, true)
						end
					elseif v1784:find("Punch") and LocalPlayer.Character.Name == "Guest1337" and v1096.Flags.SuperPunch.CurrentValue then
						wait(0.62)

						local LinearVelocity = Instance.new("LinearVelocity")

						LinearVelocity.Attachment0 = HumanoidRootPart.RootAttachment
						LinearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
						LinearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane
						LinearVelocity.PrimaryTangentAxis = Vector3.xAxis
						LinearVelocity.SecondaryTangentAxis = Vector3.zAxis
						LinearVelocity.MaxForce = math.huge

						local CurrentValue = v1096.Flags.SuperPunchPower.CurrentValue

						LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5
						LinearVelocity.Parent = HumanoidRootPart
						task.delay(0.22, function()
							LinearVelocity:Destroy()
						end)
						task.spawn(function()
							while true do
								if tick() - now2 <= 0.79 then
									if RunService.Heartbeat:Wait() then
										LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5

										continue
									end

									break
								end

								break
							end
						end)
					elseif v1784:find("Slash") and LocalPlayer.Character.Parent == Survivors3 then
						if v1096.Flags.TPSlash.CurrentValue and MainKiller then
							wait(0.1)

							local now3 = tick()

							while tick() - now3 <= t20.HitboxesDuration do
								local result = RunService.Heartbeat:Wait()
								local CFrame_2 = HumanoidRootPart.CFrame

								HumanoidRootPart.CFrame = MainKiller.HumanoidRootPart.CFrame

								local v1812 = coroutine.running()

								RunService:BindToRenderStep("TpSlash", Enum.RenderPriority.First.Value, function()
									RunService:UnbindFromRenderStep("TpSlash")
									HumanoidRootPart.CFrame = CFrame_2 + CFrame_2.LookVector * result
									task.spawn(v1812)
								end)
								coroutine.yield()
							end
						elseif v1096.Flags.ShedLunge.CurrentValue then
							wait(0.57)

							local LinearVelocity = Instance.new("LinearVelocity")

							LinearVelocity.Attachment0 = HumanoidRootPart.RootAttachment
							LinearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
							LinearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane
							LinearVelocity.PrimaryTangentAxis = Vector3.xAxis
							LinearVelocity.SecondaryTangentAxis = Vector3.zAxis
							LinearVelocity.MaxForce = math.huge

							local CurrentValue = v1096.Flags.ShedLungePower.CurrentValue

							LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5
							LinearVelocity.Parent = HumanoidRootPart
							task.delay(0.22, function()
								LinearVelocity:Destroy()
							end)
							task.spawn(function()
								while true do
									if tick() - now2 <= 0.79 then
										if RunService.Heartbeat:Wait() then
											LinearVelocity.PlaneVelocity = Vector2.new(HumanoidRootPart.CFrame.LookVector.X * CurrentValue, HumanoidRootPart.CFrame.LookVector.Z * CurrentValue) * 5

											continue
										end

										break
									end

									break
								end

								if n1 == 426031650 then
									n10 -= 197
									n7 = 369671490
									n5 = 686875024
									n3 = 561683442
									n31 += 1954
									n1 = 253361593
									upv103 = nil
									DrawSolutionsFlow = nil
									AutoGeneratorFlow = nil
									YoinkLoot = nil
								end
							end)
						elseif v1096.Flags.Shed360.CurrentValue then
							wait(v1096.Flags.Shed360Wait.CurrentValue / 1000)
							Turn360Static(HumanoidRootPart, CFrame_, v1096.Flags.Shed360Duration.CurrentValue / 1000)
						end
					elseif v1784:find("CorruptEnergy") and t48["Corrupt Energy"] and v1096.Flags.AimbotToggle.CurrentValue and v1790 then
						if PlayerGui.MainUI.AbilityContainer.CorruptEnergy.AbilityName.Text == "Retract" then
							return
						end

						StartAimbotting(v1790, function()
							return tick() - now2 <= Config11.DelayBetweenSpikeSummons * Config11.SpikeAmount + Config11.CorruptEnergyWindup and IsKiller()
						end, nil, nil, v1795)
					elseif v1784:find(GetM1Name()) and v1096.Flags.Mouse1Aimbot.CurrentValue then
						local v1815 = GetMaxM1Reach()

						while tick() - now2 <= 0.66 and LocalPlayer.Character and (LocalPlayer.Character.Parent == Killers3 or LocalPlayer.Character.Parent == Survivors3) and wait() do
							M1Target = LocalPlayer.Character and (IsKiller() and GetClosestSurvivor(v1815) or LocalPlayer.Character.Name == "Shedletsky" and GetClosestKiller(v1815))

							if M1Target then
								stareFunc(M1Target)
							end

							if t20:HasHitReg() then
								break
							end
						end
					elseif v1784:find("WalkspeedOverride") and v1096.Flags.OverrideAutoHit.CurrentValue then
						task.delay(Config9.WalkspeedOverrideWindup, function()
							local u1816

							scanGroup = function(p214)
								local v1817 = v1096.Flags.OverrideAutoHitMode.CurrentOption[1]
								local huge = math.huge
								local LookVector = HumanoidRootPart.CFrame.LookVector

								for _, v in ipairs(p214) do
									local HumanoidRootPart2 = v:FindFirstChild("HumanoidRootPart")
									local Humanoid = v:FindFirstChild("Humanoid")

									if v ~= Character and HumanoidRootPart2 and Humanoid and Humanoid.Health > 0 then
										local v1824 = HumanoidRootPart2.Position - HumanoidRootPart.Position
										local Magnitude = v1824.Magnitude

										if Magnitude > 0 and Magnitude <= 9e9 then
											local v1826

											if v1817 == "Facing" then
												v1826 = -LookVector:Dot(v1824.Unit)
											elseif v1817 == "Nearest" then
												v1826 = Magnitude
											else
												v1826 = Humanoid.Health
											end

											if v1826 < huge then
												huge = v1826
												u1816 = v
											end
										end
									end
								end
							end
							scanGroup(t20.Survivors)

							if u1816 then
								while tick() - now2 <= 0.66 and IsKiller() and HumanoidRootPart.Parent and u1816 and u1816.Parent and u1816:FindFirstChild("Humanoid") and u1816:FindFirstChild("HumanoidRootPart") and u1816.Humanoid.Health > 0 do
									if not RunService.Heartbeat:Wait() then
										break
									end

									if u1816.HumanoidRootPart:FindFirstChild("BurningStatusSFX") then
										return v127("ws tp hit: Success")
									end

									if HumanoidRootPart:FindFirstChild("LinearVelocity") then
										v127("deleting lv")
										HumanoidRootPart.LinearVelocity:Destroy()
									end

									local CFrame_2 = HumanoidRootPart.CFrame

									HumanoidRootPart.CFrame = u1816.HumanoidRootPart.CFrame + u1816.Humanoid:GetMoveVelocity() / 3.5

									local v1828 = coroutine.running()

									RunService:BindToRenderStep("WalkspeedOverrideAutoHit", Enum.RenderPriority.First.Value, function()
										RunService:UnbindFromRenderStep("WalkspeedOverrideAutoHit")
										HumanoidRootPart.CFrame = CFrame_2
										task.spawn(v1828)
									end)
									coroutine.yield()
								end
							end
						end)
					end
				end
			end
		end)
		Hitboxes:CreateSection("Hitbox Expander")
		Hitboxes:CreateToggle({
			Name = "Enable hitbox expander",
			CurrentValue = false,
			Flag = "HitboxExpander",
			Callback = v1108
		})
		Hitboxes:CreateSlider({
			Name = "Range",
			Range = {
				8,
				200
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 15,
			Flag = "HitboxExpanderRange",
			Callback = v1108
		})
		Hitboxes:CreateDropdown({
			Name = "Target",
			Options = {
				"Facing",
				"Nearest",
				"Lowest HP"
			},
			CurrentOption = { "Facing" },
			MultipleOptions = false,
			Flag = "HitboxExpanderMode",
			Callback = v1108
		})
		Hitboxes:CreateDropdown({
			Name = "Expand mode",
			Options = {
				"Dynamic",
				"Static"
			},
			CurrentOption = { "Dynamic" },
			MultipleOptions = false,
			Flag = "HitboxExpandMode",
			Callback = v1108
		})
		Hitboxes:CreateToggle({
			Name = "(Dynamic) auto rotate",
			CurrentValue = true,
			Flag = "HitboxExpanderAutoRotate",
			Callback = v1108,
			ToolTip = "Automatically faces your hitbox to the character increasing chance of hit",
			TextMode = true
		})
		Hitboxes:CreateLabel([[Dynamic: Automatically guarantees your hitbox to land on targetted player
Static: Increases your hitbox distance X amount infront of you
HIGHER RANGE = MORE GAPS AND MORE OBVIOUS]])
		Hitboxes:CreateSection("Hitbox Visualiser (PERFORMANCE INTENSIVE)")
		Hitboxes:CreateToggle({
			Name = "Enable visualiser modifications",
			CurrentValue = false,
			Flag = "HitboxModifications",
			Callback = v1108
		})

		local t51 = {}

		for k, v in Enum.Material:GetEnumItems() do
			t51[k] = tostring(v):split(".")[3]
		end

		table.sort(t51)
		Hitboxes:CreateDropdown({
			Name = "Material",
			Options = t51,
			CurrentOption = { "Plastic" },
			MultipleOptions = false,
			Flag = "HitboxMaterialValue",
			Callback = v1108,
			Searchable = true
		})
		Hitboxes:CreateColorPicker({
			Name = "Hitbox color",
			Color = Color3.new(1, 0.25, 0.25),
			Flag = "HitboxColor",
			Callback = v1108
		})
		Hitboxes:CreateColorPicker({
			Name = "Hitbox color (Hit)",
			Color = Color3.new(0.5, 1, 0.5),
			Flag = "HitboxHitColor",
			Callback = v1108
		})
		Hitboxes:CreateSlider({
			Name = "Hitbox transparency",
			Range = {
				0,
				1
			},
			Increment = 0.02,
			Suffix = "",
			CurrentValue = 0.98,
			Flag = "HitboxTransparency",
			Callback = v1108
		})
		Hitboxes:CreateSlider({
			Name = "Hitbox transparency (Hit)",
			Range = {
				0,
				1
			},
			Increment = 0.02,
			Suffix = "",
			CurrentValue = 0.7,
			Flag = "HitboxHitTransparency",
			Callback = v1108
		})
		Hitboxes:CreateSection("M1 Visualizer", "Left")
		Hitboxes:CreateToggle({
			Name = "Enable M1 Hitbox visualizer",
			CurrentValue = false,
			Flag = "M1Visualizer",
			Callback = v1108
		})
		Hitboxes:CreateDropdown({
			Name = "Material",
			Options = t51,
			CurrentOption = { "Plastic" },
			MultipleOptions = false,
			Flag = "M1VisualizerMaterial",
			Callback = v1108,
			Searchable = true
		})
		Hitboxes:CreateColorPicker({
			Name = "Hitbox color",
			Color = Color3.new(1, 0.25, 0.25),
			Flag = "M1VisualizerColor",
			Callback = v1108
		})
		Hitboxes:CreateSlider({
			Name = "Hitbox transparency",
			Range = {
				0,
				1
			},
			Increment = 0.02,
			Suffix = "",
			CurrentValue = 0.7,
			Flag = "M1VisualizerTransparency",
			Callback = v1108
		})
		Hitboxes:CreateToggle({
			Name = "Dont show if M1 not ready",
			CurrentValue = false,
			Flag = "M1VisualizerRequireReady",
			Callback = v1108
		})
		Hitboxes:CreateToggle({
			Name = "Track query position",
			CurrentValue = false,
			Flag = "M1VisualizerTrackQuery",
			Callback = v1108,
			ToolTip = "Shows you accurately where your M1 hitbox is actually going to land, rather than a client-sided static result <b>Recommended to enable</b>"
		})
		Hitboxes:CreateToggle({
			Name = "Dont show if M1 hitboxes",
			CurrentValue = true,
			Flag = "M1VisualizerNoHitboxes",
			Callback = v1108,
			ToolTip = "Do not show if there are hitboxes from your M1 attack lingering on the map"
		})
		t20.Disconnectables[#t20.Disconnectables + 1] = workspace.Hitboxes.ChildAdded:Connect(function(child)
			if not v1096.Flags.HitboxModifications.CurrentValue then
				return
			end

			local v1832 = Enum.Material[v1096.Flags.HitboxMaterialValue.CurrentOption[1]]
			local Color = child.Color

			while child.Parent and wait() do
				child.Material = v1832

				if Color.R == 1 then
					child.Color = v1096.Flags.HitboxColor.Color
					child.Transparency = v1096.Flags.HitboxTransparency.CurrentValue
				else
					child.Color = v1096.Flags.HitboxHitColor.Color
					child.Transparency = v1096.Flags.HitboxHitTransparency.CurrentValue
				end
			end
		end)

		do
			local n59

			Editor:CreateSection("Editor")
			Editor:CreateLabel("If a value does nothing after changing then it means that value is only used by the server and changing it on client affects nothing")

			local function v1835(p215, p216)
				for match in string.gmatch(p216, "[^%.]+") do
					p215 = rawget(p215, match)

					if p215 == nil then
						return nil
					end
				end

				return p215
			end
			local function v1837(p217, p218)
				if p217 == p218 then
					return true
				end

				for _, v in pairs(p218) do
					if type(v) == "table" and v1837(p217, v) then
						return true
					end
				end

				return false
			end
			local function v1840(p219, p220, p221)
				local t52 = {}

				for match in string.gmatch(p220, "[^%.]+") do
					table.insert(t52, match)
				end

				local v1843 = p219

				for i = 1, #t52 - 1 do
					local value = rawget(v1843, t52[i])

					if type(value) ~= "table" then
						if n2 == 369997182 then
							n5 -= 1011
							n29 = 149446999
							n1 = 1011789411
							n31 += 894
							n9 -= 1777
							n28 += 873
							n30 = 680623447
							n3 -= 1035
							n2 = 893977876
							Punch = nil
						else
							value = {}
						end

						rawset(v1843, t52[i], value)
					end

					v1843 = value
				end

				rawset(v1843, t52[#t52], p221)
			end

			local t53 = {
				[{
					"Sixer",
					true
				}] = {
					"PursuitMaxSpeed",
					"PursuitLength",
					"PursuitBaseSpeed"
				},
				[{
					"Nosferatu",
					true
				}] = { "AscentFlight.Duration" },
				[{
					"Noli",
					true
				}] = {
					"VoidRushChargeLength",
					"VoidRushTurnSpeed",
					"VoidRushInitialTurnMult",
					"VoidRushChargingSpeed",
					"VoidRushDashSpeed",
					"VoidRushInitialTurnDuration"
				},
				[{ "JaneDoe" }] = {
					"Crystal.MaxChargeTime",
					"Crystal.ChargeSpeedMult",
					"Crystal.MinChargeTime",
					"Crystal.MaximumHoldTime",
					"Axe.DashSpeed"
				},
				[{ "TwoTime" }] = {
					"CrouchRunSpeed",
					"CrouchSpeed",
					"DaggerUncrouchedLungeForce",
					"DaggerLungeForce"
				},
				[{ "Guest1337" }] = {
					"ChargingSpeed",
					"ChargingTurnSpeed"
				},
				[{ "Veeronica" }] = {
					"Sk8BumpPower",
					"Sk8TurnControl",
					"Sk8TrickStamina",
					"Sk8TrickCooldown",
					"Sk8TrickTurnControl",
					"Sk8TrickPower",
					"Sk8Speed",
					"Sk8TrickGravity",
					"Sk8TrickJump"
				}
			}
			local t54 = {}
			local t55 = {}
			local t56 = {}
			local t57 = {}
			local FORSAKEN_defaultvalues = obj.FORSAKEN_defaultvalues or {}

			obj.FORSAKEN_defaultvalues = FORSAKEN_defaultvalues

			local s12 = "Sixer"
			local v1853
			local u1854
			local v1855
			local v1856
			local u1857
			local s13 = "Catsaken/Editor"

			if not isfolder(s13) then
				makefolder(s13)
			end

			if not isfolder(s13 .. "/Configs") then
				makefolder(s13 .. "/Configs")
			end

			local v1859 = s13 .. "/Configs"

			local function v1860()
				local t58 = {}

				for _, v in ipairs(listfiles(v1859)) do
					table.insert(t58, v:match("[^/]+$"))
				end

				table.sort(t58)

				if n5 < 381102867 then
					return t58
				end

				n8 = 715231820
				n5 -= 1308
				n1 = 157503686
				n7 = 976683821
				n2 -= 1157
				n3 = 500008727
				n31 += 1624
				n30 -= 255
				n10 += 1273
				PlaySound = nil
			end
			local function v1864(p222)
				return v1859 .. "/" .. p222
			end
			local function v1865(p223)
				if type(p223) ~= "table" then
					return p223
				end

				local t59 = {}

				for k, v in pairs(p223) do
					if type(v) == "table" then
						t59[v1865(k)] = v1865(v)
					else
						t59[v1865(k)] = v
					end
				end

				return setmetatable(t59, getmetatable(p223))
			end
			local function v1869(p224)
				if not p224 or p224:gsub("%s+", "") == "" then
					return lib:Notify({
						Title = "Editor",
						Content = "Enter a save name.",
						Duration = 5
					})
				end

				local v1870 = p224:gsub("[\\/:*?\"<>|]", "_")
				local ok, result = pcall(function()
					while true do
						return GetService("HttpService"):JSONEncode(t54)
					end

					stareFunc = nil
					AddBoxEsp = nil
					IsFacing2 = nil
				end)

				if not ok then
					return lib:Notify({
						Title = "Editor",
						Content = "Failed to encode the changes.",
						Duration = 5
					})
				end

				local ok2, result2 = pcall(function()
					writefile(v1864(v1870), result)
				end)

				if not ok2 then
					return lib:Notify({
						Title = "Editor",
						Content = "Failed to save: " .. tostring(result2),
						Duration = 5
					})
				end

				lib:Notify({
					Title = "Editor",
					Content = "Saved \"" .. v1870 .. "\".",
					Duration = 5
				})

				if saveDropdown then
					saveDropdown:Refresh(v1860())
				end
			end

			for k, v in pairs(t53) do
				local v1877 = k[1]

				if not FORSAKEN_defaultvalues[v1877] then
					FORSAKEN_defaultvalues[v1877] = {}
				end

				t55[v1877] = v
				t56[v1877] = k[2]
				t57[v1877] = true

				for _, v2 in pairs(v) do
					v1840(FORSAKEN_defaultvalues[v1877], v2, v1835(require(Assets[k[2] and "Killers" or "Survivors"][v1877].Config), v2))
				end
			end

			updateeditgui = function()
				if not t57[s12] then
					return
				end

				local v1880 = "D = Default\n" .. s12 .. ":"
				local Config12 = require(Assets[t56[s12] and "Killers" or "Survivors"][s12].Config)

				for _, v in pairs(t55[s12]) do
					v1880 ..= "\n" .. v .. ": " .. tostring(v1835(Config12, v)) .. " (D=" .. tostring(v1835(FORSAKEN_defaultvalues[s12], v)) .. ")"
				end

				v1855:Set(v1880)

				if v1853 then
					v1856:Refresh(t55[s12])
				end
			end

			local t60 = {}

			for k in pairs(t53) do
				table.insert(t60, k[1])
			end

			Editor:CreateDropdown({
				Name = "Select character",
				Options = t60,
				CurrentOption = { "Sixer" },
				Flag = "SelectedEditCharacter",
				NoSave = true,
				Callback = function(p225)
					s12 = p225[1]

					if v1853 then
						updateeditgui()
					end
				end
			})
			v1856 = Editor:CreateDropdown({
				Name = "Select key",
				Options = t55[s12] or {},
				CurrentOption = {},
				Flag = "SelectedEditKey",
				NoSave = true,
				Callback = function(p226)
					u1854 = p226[1]

					if u1854 then
						u1857 = v1835(FORSAKEN_defaultvalues[s12], u1854)
					end
				end
			})
			Editor:CreateInput({
				Name = "Select value",
				CurrentValue = "",
				PlaceholderText = "Value",
				RemoveTextAfterFocusLost = false,
				Flag = "SelectedEditValue",
				Callback = function(p227)
					u1857 = tonumber(p227) or p227

					return
				end
			})
			Editor:CreateButton({
				Name = "Update key to value",
				Callback = function()
					if not u1854 then
						return lib:Notify({
							Title = "Editor",
							Content = "Select a key.",
							Duration = 5
						})
					end

					if not v1835(FORSAKEN_defaultvalues[s12], u1854) then
						return lib:Notify({
							Title = "Editor",
							Content = "Select the correct character.",
							Duration = 5
						})
					end

					require(Assets[t56[s12] and "Killers" or "Survivors"][s12].Config)

					if not t54[s12] then
						t54[s12] = {}
					end

					t54[s12][u1854] = u1857

					for _, v in getgc(true) do
						if type(v) == "table" and v1835(v, u1854) ~= nil and not v1837(v, FORSAKEN_defaultvalues) then
							v126("updated", s12, u1854, u1857)
							v1840(v, u1854, u1857)
						end
					end

					updateeditgui()
				end
			})

			local function resetEditedValues()
				for k, v in pairs(t54) do
					for k2 in pairs(v) do
						local v1892 = v1835(FORSAKEN_defaultvalues[k], k2)

						if v1892 ~= nil then
							for _, v2 in getgc(true) do
								if type(v2) == "table" and v1835(v2, k2) ~= nil and not v1837(v2, FORSAKEN_defaultvalues) then
									v1840(v2, k2, v1892)
								end
							end
						end
					end
				end

				t54 = {}
				updateeditgui()

				if not (n31 < n28) then
					n10 += 731
					n8 = 60144388
					n31 -= 1440
					n30 = 37665417
					n28 -= 1856
					n6 = 357266986
					n5 += 463
					n1 -= 1244
					n29 += 148
					SearchTool = nil
					autoplaymgr = nil
					AutoGenerator = nil
					DisableNoclip = nil
					stareFunc = nil
				end
			end

			obj.resetEditedValues = resetEditedValues
			Editor:CreateButton({
				Name = "Reset all values",
				Callback = resetEditedValues
			})
			Editor:CreateSection("Saves")
			loadChanges = function(p228)
				if p228 == "" then
					return
				end

				if not isfile(v1859 .. "/" .. p228) then
					v126("no exist")

					return
				end

				local ok, result = pcall(function()
					return GetService("HttpService"):JSONDecode(readfile(v1859 .. "/" .. p228))
				end)

				if ok then
					resetEditedValues()
					t54 = result

					for _, v in pairs(t54) do
						for _, v2 in getgc(true) do
							for k, v3 in pairs(v) do
								if type(v2) == "table" and v1835(v2, k) ~= nil then
									if not v1837(v2, FORSAKEN_defaultvalues) then
										v1840(v2, k, v3)
									end
								end
							end
						end
					end
				else
					v126("no read json")
				end

				updateeditgui()
			end

			local s14 = ""
			local v1904 = Editor:CreateDropdown({
				Name = "Load save",
				Options = v1860(),
				CurrentOption = {},
				Flag = "EditorLoadSave",
				NoSave = true,
				Callback = function(p229)
					if p229[1] then
						s14 = p229[1]
					end

					return
				end
			})

			Editor:CreateButton({
				Name = "Load selected",
				Callback = function()
					loadChanges(s14)
				end
			})
			Editor:CreateButton({
				Name = "Delete selected",
				Callback = function()
					local v1905 = v1859 .. "/" .. s14

					if isfile(v1905) then
						pcall(delfile, v1905)
						lib:Notify({
							Title = "Editor",
							Content = "\"" .. s14 .. "\" has been deleted.",
							Duration = 5
						})
					else
						lib:Notify({
							Title = "Editor",
							Content = "\"" .. s14 .. "\" doesn't exist.",
							Duration = 5
						})
					end
				end
			})
			Editor:CreateInput({
				Name = "Save name",
				PlaceholderText = "Enter a name",
				RemoveTextAfterFocusLost = false,
				Flag = "EditorSaveName",
				DontSave = true
			})
			Editor:CreateButton({
				Name = "Save",
				Callback = function()
					v1869(v1096.Flags.EditorSaveName.CurrentValue)
				end
			})
			Editor:CreateButton({
				Name = "Refresh saves",
				Callback = function()
					v1904:Refresh(v1860())
				end
			})
			Editor:CreateButton({
				Name = "Set auto-load",
				Callback = function()
					local CurrentOption = v1096.Flags.EditorLoadSave.CurrentOption

					if not CurrentOption or not CurrentOption[1] then
						return lib:Notify({
							Title = "Editor",
							Content = "Select a save first.",
							Duration = 5
						})
					end

					local v1907 = CurrentOption[1]
					local ok, result = pcall(function()
						writefile("Catsaken/editorautoload.txt", v1907)
					end)

					if not ok then
						return lib:Notify({
							Title = "Editor",
							Content = "Failed to set auto-load: " .. tostring(result),
							Duration = 5
						})
					end

					lib:Notify({
						Title = "Editor",
						Content = "\"" .. v1907 .. "\" is now set to auto-load.",
						Duration = 5
					})
				end
			})
			Editor:CreateButton({
				Name = "Remove current auto-load",
				Callback = function()
					n59 = 690812134

					local txt = isfile("Catsaken/editorautoload.txt") and readfile("Catsaken/editorautoload.txt")

					if not (n5 < n59) then
						n28 += 304
						n3 = 261948286
						n31 += 567
						n10 = 793472502
						n5 -= 1985
						n59 = 34382345
						n6 += 1045
						n30 = 11019768
						n1 += 1754
						n2 = 1030817278
						RagdollEnable = nil
						MapHealthColor = nil
						HasAbility = nil
					elseif txt then
						pcall(delfile, "Catsaken/editorautoload.txt")
						lib:Notify({
							Title = "Editor",
							Content = "\"" .. txt .. "\" is removed from auto-load.",
							Duration = 5
						})
					else
						lib:Notify({
							Title = "Editor",
							Content = "There is no auto-load.",
							Duration = 5
						})
					end
				end
			})
			Editor:CreateSection("Values")
			v1855 = Editor:CreateLabel("")
			v1853 = true
		end

		updateeditgui()
		task.defer(function()
			local txt = isfile("Catsaken/editorautoload.txt") and readfile("Catsaken/editorautoload.txt")

			if txt then
				loadChanges(txt)
			end
		end)
		Character_2:CreateSection("Global")
		Character_2:CreateLabel("Kick warning for all noclip features!, if you get stuck you will probably get kicked")
		Character_2:CreateToggle({
			Name = "Disable directional speed",
			CurrentValue = false,
			Flag = "DisableDirectionalSpeed",
			Callback = function(p230)
				setthreadidentity(2)

				if p230 then
					DirectionalSpeed:Destroy()
				else
					DirectionalSpeed:Start()
				end
			end
		})
		Character_2:CreateToggle({
			Name = "Disable directional movement",
			CurrentValue = false,
			Flag = "DisableDirectionalMovement",
			Callback = function(p231)
				if LocalPlayer.Character then
					LocalPlayer.Character:SetAttribute("DirectionalMovementDisabled", p231)
				end
			end
		})

		do
			if _G.UNLOCK_AC_DISABLER then
				local function v1912()
					local ok, result = pcall(function()
						local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart

						return HumanoidRootPart
					end)

					if not ok then
						return nil
					end

					if n6 ~= 285547822 then
						return result
					end

					n30 = 207702354
					n31 -= 1818
					n10 += 213
					n3 = 854080049
					n8 -= 1513
					n9 = 529651671
					n6 += 222
					n1 = 85901201
					n7 = 994980143
				end
				local function v1916()
					RunService:UnbindFromRenderStep("AnticheatDisabler")
					pcall(function()
						LocalPlayer.Character.HumanoidRootPart.Anchored = false
					end)
				end

				Character_2:CreateToggle({
					Name = "Anticheat disabler (Read tooltip)",
					CurrentValue = false,
					Flag = "DisableAnticheat",
					Callback = function(p232)
						v1916()

						if not p232 then
							return
						end

						task.spawn(function()
							local n60 = 168709103
							local n61 = 671945413

							while RunService.Heartbeat:Wait() and v1096.Flags.DisableAnticheat.CurrentValue do
								local v1919 = coroutine.running()
								local v1920 = v1912()

								if v1920 then
									if n3 < n61 then
										v1920.Anchored = true
									else
										n60 = 89191666
										n31 = 380235531
										n29 = 38608065
										n5 += 1322
										n1 = 555330094
										n3 = 203147934

										local v1921 = n8 - 1058

										n8 = v1921
										n61 = 418500109
										GetInfStamMethod = nil
										Track = v1921
									end

									RunService:BindToRenderStep("AnticheatDisabler", Enum.RenderPriority.First.Value, function()
										RunService:UnbindFromRenderStep("AnticheatDisabler")
										v1920.Anchored = false
										RunService.PostSimulation:Wait()

										if n61 == n60 then
											n60 += 1181
											n61 -= 1571
											n1 = 244220513
											n31 -= 495
											n29 = 687578276
											n3 = 673633540
										else
											task.spawn(v1919)
										end
									end)
									coroutine.yield()
								end
							end
						end)
					end,
					ToolTip = "1. BREAKS picking up items, doing generators, and projectile abilities and ONLY prevents movement kicks (fly/speed/noclip)"
				})
			end
		end

		do
			Character_2:CreateToggle({
				Name = "Speed boost",
				CurrentValue = false,
				Flag = "SmallSpeedBoost",
				Callback = function(p233)
					if p233 then
						t16.add("SpeedBoost", function(t, W)
							local m = W and W:FindFirstChild("HumanoidRootPart") and W:FindFirstChild("Humanoid")

							if (t20.GameState == 1 and m and W.HumanoidRootPart.Velocity.Magnitude > 1) then
								W:TranslateBy(m.MoveDirection * (v1096.Flags.SpeedBoostPercent and (v1096.Flags.SpeedBoostPercent.CurrentValue / 10) or 7) * t)
							end
						end)
					else
						t16.disconnect("SpeedBoost")
					end
				end
			})
		end

		Character_2:CreateSlider({
			Name = "└── Percent",
			Range = {
				10,
				70
			},
			Increment = 1,
			Suffix = "%",
			CurrentValue = 70,
			Flag = "SpeedBoostPercent",
			Callback = v1108
		})
		Character_2:CreateSection("Sixer", "Left")

		do
			local t61 = {}

			EnableNoclip = function()
				if LocalPlayer.Character then
					for _, child in pairs(LocalPlayer.Character:GetChildren()) do
						if child:IsA("BasePart") then
							t61[child] = child
							child.CanCollide = false
						end
					end
				end
			end
			DisableNoclip = function()
				for _, v in pairs(t61) do
					v.CanCollide = true
				end
			end
		end

		Character_2:CreateToggle({
			Name = "Demonic pursuit noclip",
			CurrentValue = false,
			Flag = "DemonicPursuitNoclip",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Demonic pursuit anti-crash",
			CurrentValue = false,
			Flag = "DemonicPursuitAntiCrash",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Infinite hitbox trail",
			CurrentValue = false,
			Flag = "DemonicPursuitHitboxTrail",
			Callback = v1108,
			ToolTip = "For demonic pursuit, use and you will walk around with hitboxes forever until you hit someone"
		})
		Character_2:CreateSection("Noli", "Left")
		Character_2:CreateToggle({
			Name = "Void rush noclip",
			CurrentValue = false,
			Flag = "VoidRushNoclip",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Void rush anti-crash",
			CurrentValue = false,
			Flag = "VoidRushAntiCrash",
			Callback = v1108
		})

		do
			local VoidRushInitialTurnDuration = Config6.VoidRushInitialTurnDuration
			local VoidRushInitialTurnMult = Config6.VoidRushInitialTurnMult

			Character_2:CreateToggle({
				Name = "Void rush control",
				CurrentValue = false,
				Flag = "VoidRushControl",
				Callback = function(p234)
					if p234 then
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "VoidRushInitialTurnDuration") then
								rawset(v, "VoidRushInitialTurnDuration", 9999)
								rawset(v, "VoidRushInitialTurnMult", 9999)
							end
						end
					else
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "VoidRushInitialTurnDuration") then
								rawset(v, "VoidRushInitialTurnDuration", VoidRushInitialTurnDuration)
								rawset(v, "VoidRushInitialTurnMult", VoidRushInitialTurnMult)
							end
						end
					end
				end
			})
		end

		Character_2:CreateToggle({
			Name = "Auto detonate nova",
			CurrentValue = false,
			Flag = "AutoNova",
			Callback = v1108,
			ToolTip = "Auto detonate void star when a player is in the explosion radius"
		})
		Character_2:CreateSection("Guest 1337", "Right")
		Character_2:CreateToggle({
			Name = "Charge anti-crash",
			CurrentValue = false,
			Flag = "ChargeAntiCrash",
			Callback = v1108
		})

		do
			local n62
			local ChargingTurnSpeed = Config2.ChargingTurnSpeed

			Character_2:CreateToggle({
				Name = "Charge turn control",
				CurrentValue = false,
				Flag = "ChargeControl",
				Callback = function(p235)
					n62 = 260424392

					if p235 then
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "ChargingTurnSpeed") then
								rawset(v, "ChargingTurnSpeed", 9999)
							end
						end
					elseif n9 < n62 then
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "ChargingTurnSpeed") then
								rawset(v, "ChargingTurnSpeed", ChargingTurnSpeed)
							end
						end
					else
						n5 = 162992913
						n8 += 269
						n9 = 24766127
						n6 += 351
						n62 = 939505922
						n10 = 854419936
						n7 -= 1073
						n30 -= 1908
						n31 += 601
						n1 = 311643333
						IsPlayerNearGenerator = nil
					end
				end
			})
		end

		Character_2:CreateToggle({
			Name = "Charge pilot",
			CurrentValue = false,
			Flag = "Gen1337StopsDoingGeneratorsAndGetsInTheCockpit",
			Callback = v1108,
			ToolTip = "Lets you fly when using the charge ability"
		})
		Character_2:CreateToggle({
			Name = "Charge noclip",
			CurrentValue = false,
			Flag = "GuestNoclip",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Super punch",
			CurrentValue = false,
			Flag = "SuperPunch",
			Callback = v1108
		})
		Character_2:CreateSlider({
			Name = "└── Power",
			Range = {
				5,
				40
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 20,
			Flag = "SuperPunchPower",
			Callback = v1108
		})
		Character_2:CreateSection("Nosferatu", "Left")

		do
			local n63
			local Duration = Config7.AscentFlight.Duration

			Character_2:CreateToggle({
				Name = "Infinite flight duration",
				CurrentValue = false,
				Flag = "InfiniteNosFly",
				Callback = function(p236)
					n63 = 226371923

					local v1942, v1943

					if p236 then
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "AscentFlight") then
								rawset(rawget(v, "AscentFlight"), "Duration", math.huge)
							end
						end

						v1942 = t93_30_1[2]
						v1943 = t93_30_1[1]
					else
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "AscentFlight") then
								rawset(rawget(v, "AscentFlight"), "Duration", Duration)
							end
						end

						v1942 = t103_166_1[2]
						v1943 = t103_166_1[1]
					end

					if n2 ~= 369996309 then
						n2 -= 1476
						n7 = 568445939
						n31 = 297695127
						n3 = 461078681
						n10 -= 918
						n29 = 852876932
						n30 = 1033410152
						n6 = 241266112
						n1 = 443203316
						n63 -= 520
						v1943[v1942] = n63
					end
				end
			})
		end

		Character_2:CreateToggle({
			Name = "Infinite hitbox trail",
			CurrentValue = false,
			Flag = "NosHitboxTrail",
			Callback = v1108,
			ToolTip = "After diving with the ascent ability, you will walk with hitboxes forever until you hit somebody (Essentially the same as the one for sixer)"
		})
		Character_2:CreateSection("c00lkidd", "Left")
		Character_2:CreateToggle({
			Name = "Walkspeed override pilot",
			CurrentValue = false,
			Flag = "FlyOverride",
			Callback = v1108,
			ToolTip = "Lets you fly when using walkspeed override"
		})
		Character_2:CreateToggle({
			Name = "Walkspeed override noclip",
			CurrentValue = false,
			Flag = "NoclipOverride",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Walkspeed override TP hit",
			CurrentValue = false,
			Flag = "OverrideAutoHit",
			Callback = v1108
		})
		Character_2:CreateDropdown({
			Name = "└── Target",
			Options = {
				"Facing",
				"Nearest",
				"Lowest HP"
			},
			CurrentOption = { "Facing" },
			MultipleOptions = false,
			Flag = "OverrideAutoHitMode",
			Callback = v1108
		})

		if _G.UNLOCK_AZURE_FEATUREZ then
			Character_2:CreateSection("Azure", "Left")
			Character_2:CreateToggle({
				Name = "Azure tentacles exploit",
				CurrentValue = false,
				Flag = "AzureTentacleKick",
				Callback = v1108,
				ToolTip = "Can either destroy the player's character making them unable to play for the whole round and counting them as dead, or kicks them in rare cases"
			})
			Character_2:CreateSlider({
				Name = "Throw velocity",
				Range = {
					1,
					20
				},
				Increment = 0.1,
				Suffix = "x",
				CurrentValue = 1,
				Flag = "AzureThrowVelocity",
				Callback = v1108,
				ToolTip = "Changes how far your throw goes, 1x = Disabled"
			})
		end

		Character_2:CreateSection("Jane Doe", "Right")

		do
			local MinChargeTime = Config4.Crystal.MinChargeTime
			local MaxChargeTime = Config4.Crystal.MaxChargeTime

			Character_2:CreateToggle({
				Name = "Instant crystal charge",
				CurrentValue = false,
				Flag = "JaneDoeInstantCharge",
				Callback = function(p237)
					if p237 then
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
								rawset(rawget(v, "Crystal"), "MinChargeTime", 0)
								rawset(rawget(v, "Crystal"), "MaxChargeTime", 0.1)
							end
						end
					else
						for _, v in getgc(true) do
							if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
								rawset(rawget(v, "Crystal"), "MinChargeTime", MinChargeTime)
								rawset(rawget(v, "Crystal"), "MaxChargeTime", MaxChargeTime)
							end
						end
					end
				end
			})
		end

		local MaximumHoldTime = Config4.Crystal.MaximumHoldTime

		Character_2:CreateToggle({
			Name = "Infinite crystal hold time",
			CurrentValue = false,
			Flag = "JaneDoeInfHold",
			Callback = function(p238)
				local v1955, v1956

				if p238 then
					for _, v in getgc(true) do
						if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
							rawset(rawget(v, "Crystal"), "MaximumHoldTime", math.huge)
						end
					end

					v1955 = t219_49_1[2]
					v1956 = t219_49_1[1]
				else
					for _, v in getgc(true) do
						if type(v) == "table" and rawget(v, "Crystal") and typeof(v.Crystal) == "table" then
							rawset(rawget(v, "Crystal"), "MaximumHoldTime", MaximumHoldTime)
						end
					end

					v1955 = t2_169_1[2]
					v1956 = t2_169_1[1]
				end

				if n3 == 72758234 then
					n8 += 2022
					n30 = 586780901
					n1 += 1480
					n5 = 1015839077
					n10 += 569
					n2 = 67850105
					n3 += 1654
					n9 -= 817
					n31 = 317050506
					SuperSpecialFemboyNotifyOWO = nil
					n31[v1956] = v1955()
				end
			end
		})
		Character_2:CreateSection("007n7", "Right")
		getN7player = function()
			local v1961 = v1096.Flags["007n7CloneFollowTarget"].CurrentOption[1]

			if v1961 == "Yourself" then
				return LocalPlayer.Character
			end

			if v1961 == "Killer" then
				return t20.MainKiller
			end

			if v1961 ~= "Nearest survivor" then
				if v1961 ~= "Lowest health" then
					v127("no target, fallback to lplr")

					return LocalPlayer.Character
				end

				local huge = math.huge
				local v1963

				for _, survivor in ipairs(t20.Survivors) do
					local Health = survivor.Humanoid.Health

					if Health < huge then
						huge = Health
						v1963 = survivor
					end
				end

				return v1963
			end

			local Character_3 = LocalPlayer.Character

			if not Character_3 or not Character_3:FindFirstChild("HumanoidRootPart") then
				return nil
			end

			local Position = Character_3.HumanoidRootPart.Position
			local huge = math.huge
			local v1970

			for _, survivor in ipairs(t20.Survivors) do
				if survivor ~= Character_3 then
					local Magnitude = (survivor.HumanoidRootPart.Position - Position).Magnitude

					if Magnitude < huge then
						huge = Magnitude
						v1970 = survivor
					end
				end
			end

			return v1970
		end
		calcN7position = function(p239)
			local HumanoidRootPart = p239 and p239:FindFirstChild("HumanoidRootPart")

			if not HumanoidRootPart then
				return
			end

			local AssemblyLinearVelocity = HumanoidRootPart.AssemblyLinearVelocity
			local Unit = AssemblyLinearVelocity.Magnitude > 1 and AssemblyLinearVelocity.Unit or HumanoidRootPart.CFrame.LookVector
			local v1977 = HumanoidRootPart.Position + AssemblyLinearVelocity * v1096.Flags["007n7CloneFollowPrediction"].CurrentValue / 100
			local CurrentValue = v1096.Flags["007n7CloneFollowDistance"].CurrentValue
			local now2 = tick()
			local v1980 = v1096.Flags["007n7CloneFollowMode"].CurrentOption[1]

			if v1980 == "Normal" then
				if n29 ~= 585934684 then
					return v1977
				end

				n28 = 317000032
				n10 = 400948077
				n1 -= 112
				n30 = 730425827
				n31 -= 426
				n5 = 274186194
				n29 += 165
				n6 = 58961959
				n2 -= 1895
				getN7player = nil
				canstartsprintzero = nil
				IsRoundLoaded = nil
			end

			if v1980 == "Front" then
				return v1977 + Unit * CurrentValue
			end

			if v1980 == "Back" then
				return v1977 - Unit * CurrentValue
			end

			if v1980 == "Orbit" then
				return v1977 + Vector3.new(math.sin(now2 * 4) * CurrentValue, 0, math.cos(now2 * 4) * CurrentValue)
			end

			if v1980 == "Strafe" then
				return v1977 + Unit * CurrentValue + HumanoidRootPart.CFrame.RightVector * math.sin(now2 * 6) * CurrentValue / 1.5
			end

			if v1980 ~= "Run away" then
				return v1977
			end

			local HumanoidRootPart2 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

			if HumanoidRootPart2 then
				return HumanoidRootPart2.Position + HumanoidRootPart2.CFrame.LookVector * CurrentValue * 1.5
			end

			return v1977
		end
		Character_2:CreateToggle({
			Name = "Clone follow/bodyblock",
			CurrentValue = false,
			Flag = "007n7CloneFollow",
			ToolTip = "Must set \"inject\" ability to \"cursor\"",
			Callback = v1108
		})
		Character_2:CreateDropdown({
			Name = "└── Mode",
			Options = {
				"Normal",
				"Orbit",
				"Front",
				"Back",
				"Run away",
				"Strafe"
			},
			CurrentOption = { "Front" },
			MultipleOptions = false,
			Flag = "007n7CloneFollowMode",
			Callback = v1108
		})
		Character_2:CreateDropdown({
			Name = "└── Target",
			Options = {
				"Killer",
				"Nearest survivor",
				"Lowest health",
				"Yourself"
			},
			CurrentOption = { "Killer" },
			MultipleOptions = false,
			Flag = "007n7CloneFollowTarget",
			Callback = v1108
		})
		Character_2:CreateSlider({
			Name = "└── Prediction",
			Range = {
				0,
				30
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 15,
			Flag = "007n7CloneFollowPrediction",
			Callback = v1108
		})
		Character_2:CreateSlider({
			Name = "└── Distance",
			Range = {
				0,
				14
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 6,
			Flag = "007n7CloneFollowDistance",
			Callback = v1108
		})

		do
			local n64
			local n65 = 9e9
			local u1984 = false
			local DropButton = ReplicatedStorage.Systems.Player.UI.CustomBackpack.HotbarItemContainer.DropButton
			local u1986 = false

			local function v1987(p240)
				if u1986 then
					return v126("Cancelc00lgui: already cancelling")
				end

				u1986 = true

				local CFrame_
				local n66 = 1024422976

				n65 = tick()

				if n8 == n31 then
					n28 = 536648789
					n9 = 729188848
					n1 -= 1256
					n3 = 1015789177
					n2 = 896886498
					n66 += 673
					n31 -= 1987
					n7 -= 14
					n8 -= 335
					n30 -= 384
					AutoGenerator = nil
					Changelms = nil
					FindAnimationAsset = nil
					n66()
				else
					u1984 = false
				end

				local connection3

				local function v1991()
					u1986 = false
					connection3:Disconnect()
				end

				local n67

				connection3 = RunService.Heartbeat:Connect(function()
					n67 = 415533630

					local Character_3 = LocalPlayer.Character
					local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("Humanoid") and Character_3:FindFirstChild("HumanoidRootPart")

					if not HumanoidRootPart or Character_3.Humanoid.Health <= 0 then
						return v1991(), v126("Cancelc00lgui: died while doing troll gui")
					end

					local n68
					local n69

					if not u1984 then
						if not Character_3:FindFirstChild("c00lgui") then
							if not (tick() - n65 >= 1) then
								return
							end

							return v1991(), v126("Cancelc00lgui: c00lgui never appeared; aborting troll gui")
						end

						u1984 = true

						if p240 then
							xpcall(function()
								TemporaryUI:WaitForChild("ProgressBar"):Destroy()
							end, function()
								v126("Cancelc00lgui: fail to delete progress bar")
							end)
							xpcall(function()
								obj.c00lguiAnimationTrack:Stop()

								return
							end, function()
								v126("Cancelc00lgui: fail to stop c00lgui animation")
							end)
							xpcall(function()
								n69 = 48103938

								if n30 < n69 then
									Character_3.SpeedMultipliers.c00lgui:Destroy()
								else
									n9 = 153931118
									n66 += 1495
									n1 = 437639107
									n8 -= 667
									n69 = 484212137
									n67 = 60689107
									n30 = 1015613322
									n7 += 1242
									FindAnimationAsset = nil
									CreateRangeCircle = nil
									GetClosestGenerator = nil
									Track = nil
									GrabTool = nil
									Punch = nil
								end
							end, function()
								n68 = 493966921

								if n67 < n68 then
									v126("Cancelc00lgui: fail to stop c00lgui slowdown")
								else
									n68 -= 464
									n30 = 955061405
									n1 += 1878
									n67 -= 1654
									n28 += 1485
									n9 = 968636295
									GetLocalHitboxes = nil
								end
							end)
							Sprinting.CanSprint = true
							lib:Notify({
								Title = p240,
								Content = "c00lgui cancelled",
								Duration = 4
							})
						end

						v127("Cancelc00lgui: c00lgui ability detected")
					end

					if not CFrame_ then
						CFrame_ = HumanoidRootPart.CFrame
					end

					if (HumanoidRootPart.Position - CFrame_.Position).magnitude >= 40 then
						v127("Cancelc00lgui: c00lgui teleport detected")
						HumanoidRootPart.CFrame = CFrame_

						return v1991()
					end

					if not (tick() - n65 >= 6.5) then
						RunService.RenderStepped:Wait()
						CFrame_ = HumanoidRootPart.CFrame

						return
					end

					v126("Cancelc00lgui: well thats not normal")

					return v1991()
				end)
			end

			local u1997
			local connection3
			local u1999
			local connection4
			local connection5
			local connection6

			local function v2003()
				if u1997 then
					u1997 = u1997:Destroy()
				end

				if connection3 then
					connection3 = connection3:Disconnect()
				end
			end
			local function v2004()
				if u1999 then
					u1999 = u1999:Destroy()
				end

				if connection4 then
					connection4 = connection4:Disconnect()
				end

				if n1 == n30 then
					n28 -= 1708
					n3 += 476
					n30 = 567156203
					n1 += 179
					n31 += 1809
					n7 -= 1877
					n8 = 255986467
					n9 = 495419245
					n6 -= 32
					Counter = nil
					NeedToEscapeOrReel = getfenv
				end
			end
			local function v2005()
				local Character_3 = LocalPlayer.Character

				if not Character_3 or Character_3.Name ~= "007n7" or Character_3.Parent ~= Survivors3 then
					return
				end

				local AbilityContainer = PlayerGui.MainUI:WaitForChild("AbilityContainer", 3)

				if not AbilityContainer then
					return v126("CreateTrollGui: ability container is nil")
				end

				local c00lgui = AbilityContainer:WaitForChild("c00lgui", 3)

				if not c00lgui then
					return v126("CreateTrollGui: c00lgui doesnt exist in abilities")
				end

				local clone = c00lgui:Clone()

				clone.Name = "tr0llgui"
				clone.AbilityName.Text = "tr0llgui"
				clone.KeybindName:Destroy()
				clone.Parent = c00lgui.Parent
				u1997 = clone
				connection3 = clone.MouseButton1Click:Connect(function()
					if not HasAbilityReady("c00lgui") then
						v126("CreateTrollGui: you aint supposed to click that yet")

						return
					end

					module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "c00lgui")
					v1987()

					if not (n7 < 937249615) then
						n6 = 651875925
						n10 += 353
						n7 += 103
						n1 -= 1901
						n31 += 1284
						n29 -= 1271
						GetSelectedGhostAnims = nil
						DisableNoclip = nil
					end
				end)
				task.spawn(function()
					while c00lgui.Parent and u1997 and clone.Parent do
						if u1997:FindFirstChild("DropButton") then
							u1997.DropButton:Destroy()
						end

						clone.CooldownTime.Text = c00lgui.CooldownTime.Text
						clone.Clipping.Size = c00lgui.Clipping.Size
						clone.Clipping.Top.Size = c00lgui.Clipping.Top.Size
						wait()
					end

					v2003()
				end)
			end
			local function v2010()
				local Character_3 = LocalPlayer.Character

				if not Character_3 or Character_3.Name ~= "007n7" or Character_3.Parent ~= Survivors3 then
					return
				end

				local AbilityContainer = PlayerGui.MainUI:WaitForChild("AbilityContainer", 3)

				if not AbilityContainer then
					return v126("CreateCancelGui: ability container is nil")
				end

				local c00lgui = AbilityContainer:WaitForChild("c00lgui", 3)

				if not c00lgui then
					return v126("CreateCancelGui: c00lgui doesnt exist in abilities")
				end

				local clone = DropButton:Clone()

				clone.Parent = c00lgui
				u1999 = clone
				connection4 = clone.MouseButton1Click:Connect(function()
					if LocalPlayer.Character then
						local Character_4 = LocalPlayer.Character
						local v2016 = Character_4
						local FindFirstChild = Character_4.FindFirstChild
						local v2018 = FindFirstChild

						if FindFirstChild(v2016, "c00lgui") then
							v1987("Catsaken")

							return
						end
					end

					return v126("CreateCancelGui: there is literally no reason to press the button")
				end)
			end

			Character_2:CreateToggle({
				Name = "Troll c00lgui",
				CurrentValue = false,
				Flag = "007n7TrollGui",
				Callback = function(p241)
					n64 = 119618304

					if n64 == n9 then
						n29 = 28972558
						n1 += 620
						n6 -= 564
						n64 = 629205667
						n8 = 321844486
						n9 = 648149383
						n30 = 995551202
						n28 += 504
						n31 = 599522627
						n7 = 102677430
						GetAutoGearsVar = nil
					elseif p241 then
						v2005()
						connection5 = LocalPlayer.CharacterAdded:Connect(function(character)
							if character.Name == "007n7" and character.Parent == Survivors3 then
								while true do
									local AbilityContainer = PlayerGui.MainUI:FindFirstChild("AbilityContainer")

									wait()

									if AbilityContainer and AbilityContainer.Parent and not AbilityContainer:FindFirstChild("tr0llgui") then
										break
									elseif not character.Parent then
										break
									end
								end

								if not character.Parent then
									return
								end

								v127("recreating troll gui")

								if n29 == 585936396 then
									n31 += 624
									n29 += 1294
									n28 = 416304531
									n6 += 867
									n1 += 1842
									n8 = 280401950
									n7 = 312538127
									AddHighlightEsp = nil
									PressKeycode = nil
									FindSoundAsset = nil
								else
									v2005()
								end
							end
						end)
					else
						v2003()

						if connection5 then
							connection5 = connection5:Disconnect()
						end
					end
				end,
				ToolTip = [[Will not actually teleport you after c00lgui is finished loading

NOTE: there will be a really short teleportation other players see (for like 100ms) when the c00lgui teleport happens for real]]
			})
			Character_2:CreateToggle({
				Name = "Cancellable c00lgui",
				CurrentValue = false,
				Flag = "c00lguiCancelButton",
				Callback = function(p242)
					if p242 then
						v2010()
						connection6 = LocalPlayer.CharacterAdded:Connect(function(character)
							if character.Name == "007n7" and character.Parent == Survivors3 then
								repeat
									local AbilityContainer = PlayerGui.MainUI:FindFirstChild("AbilityContainer")

									wait()

									if AbilityContainer and AbilityContainer.Parent and AbilityContainer:FindFirstChild("c00lgui") then
										if not AbilityContainer.c00lgui:FindFirstChild("DropButton") or not character.Parent then
											break
										end
									end
								until not character.Parent

								if not character.Parent then
									return
								end

								v127("recreating cancel button")
								v2010()
							end
						end)
					else
						v2004()

						if connection6 then
							connection6 = connection6:Disconnect()
						end
					end
				end,
				ToolTip = [[Adds a cancel button to your c00lgui

NOTE: there will be a really short teleportation other players see (for like 100ms) when the c00lgui teleport happens for real]]
			})
		end

		Character_2:CreateSection("Veeronica", "Right")
		VerronicaIsSkating = function()
			if t20.GameState ~= 1 then
				return false
			end

			if LocalPlayer.Character.Name ~= "Veeronica" then
				return false
			end

			if not Behavior2:FindFirstChild("Highlight") then
				return false
			end

			if Behavior2.Highlight.Adornee == LocalPlayer.Character then
				return true
			end

			return false
		end
		Character_2:CreateToggle({
			Name = "Sk8 auto trick",
			CurrentValue = false,
			Flag = "AutoTrick",
			Callback = function(p243)
				if p243 then
					while wait() and v1096.Flags.AutoTrick.CurrentValue do
						if VerronicaIsSkating() then
							if v122 then
								firesignal(PlayerGui.MainUI.SprintingButton.MouseButton1Down)
							else
								PressKeycode(Enum.KeyCode.Space)
							end
						end
					end
				end
			end
		})

		local Sk8TurnControl = Config.Sk8TurnControl

		Character_2:CreateToggle({
			Name = "Sk8 turn control",
			CurrentValue = false,
			Flag = "SkateTurningControl",
			Callback = function(p244)
				if p244 then
					for _, v in getgc(true) do
						if type(v) == "table" and rawget(v, "Sk8TurnControl") then
							rawset(v, "Sk8TurnControl", 10)
						end
					end
				else
					for _, v in getgc(true) do
						if type(v) == "table" and rawget(v, "Sk8TurnControl") then
							rawset(v, "Sk8TurnControl", Sk8TurnControl)
						end
					end
				end

				if not (n7 < n1) then
					n1 += 1060
					n3 += 662
					n31 += 2039
					n7 = 607101372
					n10 = 240015115
					n9 += 791
					n5 = 875643094
					n6 = 1022287734
					n30 += 1301
					FindSoundAsset = nil
				end
			end
		})
		Character_2:CreateToggle({
			Name = "Sk8 anti-crash",
			CurrentValue = false,
			Flag = "Sk8AntiCrash",
			Callback = v1108,
			ToolTip = "Can be blatant if used incorrectly"
		})
		Character_2:CreateToggle({
			Name = "Sk8 forever",
			CurrentValue = false,
			Flag = "Sk8Forever",
			Callback = v1108,
			ToolTip = "Lets you skate even when you are out of stamina"
		})
		Character_2:CreateDropdown({
			Name = "└── Mode",
			Options = {
				"Coninute skating at 0 stamina",
				"Freeze stamina while skating"
			},
			CurrentOption = { "Coninute skating at 0 stamina" },
			MultipleOptions = false,
			Flag = "Sk8ForeverMode",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Sk8 trick anywhere",
			CurrentValue = false,
			Flag = "Sk8TrickAnywhere",
			Callback = v1108,
			ToolTip = "Allows you to do a trick anywhere"
		})
		Character_2:CreateToggle({
			Name = "Sk8 autofarm",
			CurrentValue = false,
			Flag = "Sk8Autofarm",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Sk8 movement control",
			CurrentValue = false,
			Flag = "Sk8Freewalk",
			Callback = v1108,
			ToolTip = "Allow to move start/stop moving while using skate"
		})
		Character_2:CreateSection("Dusekkar", "Right")
		Character_2:CreateToggle({
			Name = "Anti protection break",
			CurrentValue = false,
			Flag = "ProtectionBreak",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Use protection through walls",
			CurrentValue = false,
			Flag = "ProtectionBreakWall",
			Callback = v1108
		})
		Character_2:CreateSection("Shedletsky", "Right")

		do
			Character_2:CreateToggle({
				Name = "Auto slash 360",
				CurrentValue = false,
				Flag = "Shed360",
				Callback = function(p245)
					if p245 and v1096.Flags.ShedLunge.CurrentValue then
						lib:Notify({
							Title = "Auto slash 360",
							Content = "Slash lunge is enabled, this feature will not do anything."
						})
					end
				end,
				ToolTip = "Could be blatant in some cases, user discretion is advised"
			})
		end

		Character_2:CreateSlider({
			Name = "└── 360 duration",
			Range = {
				100,
				400
			},
			Increment = 10,
			Suffix = "ms",
			CurrentValue = 200,
			Flag = "Shed360Duration",
			Callback = v1108
		})
		Character_2:CreateSlider({
			Name = "└── 360 delay",
			Range = {
				100,
				700
			},
			Increment = 10,
			Suffix = "ms",
			CurrentValue = 500,
			Flag = "Shed360Wait",
			Callback = v1108,
			ToolTip = "Time to wait before doing the 360\nForsaken default windup = 0.55s (500ms)"
		})

		do
			Character_2:CreateToggle({
				Name = "Slash lunge",
				CurrentValue = false,
				Flag = "ShedLunge",
				Callback = function(p246)
					if p246 then
						if v1096.Flags.Shed360.CurrentValue then
							lib:Notify({
								Title = "Slash lunge",
								Content = "360 is enabled, this feature will make it disabled."
							})
						end
					end
				end
			})
		end

		Character_2:CreateSlider({
			Name = "└── Power",
			Range = {
				5,
				40
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 20,
			Flag = "ShedLungePower",
			Callback = v1108
		})
		Character_2:CreateSection("Two Time", "Right")
		Character_2:CreateToggle({
			Name = "Auto backstab",
			CurrentValue = false,
			Flag = "AutoBackstab",
			Callback = v1108
		})
		Character_2:CreateToggle({
			Name = "Glidestab helper",
			CurrentValue = false,
			Flag = "GlidestabHelper",
			Callback = v1108,
			ToolTip = "Automatically aims at killer back when in range after lunging"
		})
		Character_2:CreateSlider({
			Name = "Lunge hitbox distance multi",
			Range = {
				1,
				4.5
			},
			Increment = 0.1,
			Suffix = "x",
			CurrentValue = 1,
			Flag = "DaggerLungeMul",
			Callback = v1108,
			ToolTip = "Increases the distance of your dagger to hit.\n1x = Disabled"
		})
		Character_2:CreateSlider({
			Name = "Crouch hitbox distance multi",
			Range = {
				1,
				2
			},
			Increment = 0.1,
			Suffix = "x",
			CurrentValue = 1,
			Flag = "DaggerCrouchLungeMul",
			Callback = v1108,
			ToolTip = "Same thing as lunge hitbox distance multi, just applies only when crouched"
		})
		Character_2:CreateToggle({
			Name = "Backstab exploit",
			CurrentValue = false,
			Flag = "BackstabExploit",
			Callback = v1108
		})

		do
			local t62 = {}
			local n70

			TrackAttributes = function(p247)
				n70 = 964182684

				local n71 = 330006368

				if not p247 then
					return
				end

				local n72 = 590002891
				local connection3 = p247:GetAttributeChangedSignal("PursuitState"):Connect(function()
					if p247:GetAttribute("PursuitState") == "Dashing" then
						t20.PursuitTracker = tick()

						if IsKiller() and v1096.Flags.DemonicPursuitNoclip.CurrentValue then
							EnableNoclip()

							while true do
								wait()

								if LocalPlayer.Character then
									if LocalPlayer.Character:GetAttribute("PursuitState") ~= "Dashing" or not IsKiller() then
										break
									end
								else
									break
								end
							end

							DisableNoclip()
						end
					end

					if not (n72 < n28) then
						n8 = 609779575
						n10 = 578750978
						n71 -= 262
						n2 = 479655203
						n28 += 1741
						n1 += 592
						n72 = 574921094
						MapHealthColor = nil
						labelshit = nil
					end
				end)
				local connection4 = p247:GetAttributeChangedSignal("VoidRushState"):Connect(function()
					local n73 = 734119155
					local n74

					if p247:GetAttribute("VoidRushState") == "Dashing" then
						t20.VoidRushTracker = tick()
						task.spawn(function()
							n74 = 253913310

							while LocalPlayer.Character:GetAttribute("VoidRushState") == "Dashing" and wait() do
								if IsKiller() and t48["Void Rush"] then
									local v2034 = GetClosestSurvivor(v1096.Flags.VoidRushThreshold.CurrentValue)

									if n74 == n73 then
										n28 = 252478978
										n74 = 239271084
										n31 = 865638971
										n73 += 1067
										n1 = 832618785
										n10 += 810
										n72 = 845235215
										CATSAKEN_panic = nil
										Predict = nil
										AddBoxEsp = nil
									elseif v2034 then
										StartAimbotting(v2034, function()
											return IsKiller() and LocalPlayer.Character:GetAttribute("VoidRushState") == "Dashing"
										end, nil, nil, true)
									end

									StartAimbotting()
								end
							end
						end)

						if IsKiller() and v1096.Flags.VoidRushNoclip.CurrentValue then
							EnableNoclip()

							if n2 == n28 then
								n10 = 62902177
								n72 -= 680
								n71 = 520351334
								n28 = 125753817
								n1 = 168263808
								n70 = 968660601
								n2 = 63312139
								n31 -= 141
								n73 -= 1868
								__SCRIPT = nil
							else
								while true do
									wait()

									if LocalPlayer.Character then
										if LocalPlayer.Character:GetAttribute("VoidRushState") ~= "Dashing" or not IsKiller() then
											break
										end
									else
										break
									end
								end
							end

							DisableNoclip()
						end
					end
				end)
				local connection5 = p247:GetAttributeChangedSignal("DirectionalMovementDisabled"):Connect(function()
					if v1096.Flags.DisableDirectionalMovement.CurrentValue then
						p247:SetAttribute("DirectionalMovementDisabled", true)
					end
				end)

				if v1096.Flags.DisableDirectionalMovement.CurrentValue then
					p247:SetAttribute("DirectionalMovementDisabled", true)
				end

				local connection6 = p247:GetAttributeChangedSignal("FootstepsMuted"):Connect(function()
					if v1096.Flags.AntiFootsteps.CurrentValue then
						p247:SetAttribute("FootstepsMuted", true)
					end

					if not (n71 < n70) then
						n10 -= 1056
						n72 = 633305020
						n30 = 1001865635
						n70 = 1000828478
						n71 -= 1445
						n28 = 699653478
						n1 = 640446857
						n31 += 543
						GetGeneratorProgress = nil
						ins_custom_files = nil
					end
				end)

				if v1096.Flags.AntiFootsteps.CurrentValue then
					p247:SetAttribute("FootstepsMuted", true)
				end

				local connection7 = p247:GetAttributeChangedSignal("NoFallSlow"):Connect(function()
					if v1096.Flags.AntiSlowOnLanding.CurrentValue then
						p247:SetAttribute("NoFallSlow", true)
					end
				end)

				if v1096.Flags.AntiSlowOnLanding.CurrentValue then
					p247:SetAttribute("NoFallSlow", true)
				end

				local HumanoidRootPart = p247:WaitForChild("HumanoidRootPart", 7)
				local Humanoid = p247:WaitForChild("Humanoid", 7)

				assert(HumanoidRootPart, "TrackAttributes: no root")
				assert(Humanoid, "TrackAttributes: no humanoid")

				local connection8 = HumanoidRootPart.ChildAdded:Connect(function(child)
					if child:IsA("LinearVelocity") then
						if u34 then
							return
						end

						if p247.Name ~= "c00lkidd" or not v1096.Flags.FlyOverride.CurrentValue then
							return
						end

						child.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector

						local connection8

						connection8 = RunService.Heartbeat:Connect(function()
							local LookVector = CurrentCamera.CFrame.LookVector

							if not child.Parent then
								connection8:Disconnect()

								return
							end

							if t20.UsingWalkspeedOverride then
								child.VectorVelocity = LookVector * Config9.WalkspeedOverrideSpeed
								HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, HumanoidRootPart.Position + LookVector)
							else
								child:Destroy()
							end
						end)
						t20.Disconnectables[#t20.Disconnectables + 1] = connection8
						t20.Disconnectables[#t20.Disconnectables + 1] = child.AncestryChanged:Connect(function(child2, parent)
							if not parent then
								HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							end
						end)
					end
				end)

				t20.Disconnectables[#t20.Disconnectables + 1] = connection3
				t20.Disconnectables[#t20.Disconnectables + 1] = connection4
				t20.Disconnectables[#t20.Disconnectables + 1] = connection5
				t20.Disconnectables[#t20.Disconnectables + 1] = connection6
				t20.Disconnectables[#t20.Disconnectables + 1] = connection7
				t20.Disconnectables[#t20.Disconnectables + 1] = connection8
				t62[#t62 + 1] = connection4
				t62[#t62 + 1] = connection3
				t62[#t62 + 1] = connection5
				t62[#t62 + 1] = connection6
				t62[#t62 + 1] = connection7
				t62[#t62 + 1] = connection8
				t20.Disconnectables[#t20.Disconnectables + 1] = Humanoid.Died:Once(function()
					v127("TrackAttributes: clearing trackers")

					for i = 1, #t62 do
						local v2044 = t62[i]

						if v2044 then
							v2044:Disconnect()

							local v2045 = table.find(t20.Disconnectables, v2044)

							if v2045 then
								table.remove(t20.Disconnectables, v2045)
							else
								v126("OMG how does that not exist")
							end
						else
							v126("Something strange is happening in track attributes FOR SURE!!")
						end
					end
				end)
			end
		end

		TrackAttributes(LocalPlayer.Character)
		LocalPlayer.CharacterAdded:Connect(TrackAttributes)

		do
			local v2046

			v2046 = v29(debug.getupvalue(Behavior.Created, 3), newcclosure(function(...)
				if not v1096.Flags.ProtectionBreak.CurrentValue then
					return v2046(...)
				end

				if n6 ~= 285547106 then
					return true, 0
				end

				n6 = 642379486
				n7 += 1869
				n2 = 53584331
				n3 += 963
				n31 = 897164191
				n30 = 282607121
				n28 = 1021702908
				n9 -= 448
				n1 = 431918495
			end))
		end

		Autoblock:CreateSection("Auto Block")
		t16.add("NoliCoolkidDetector", function(t, t)
			if (VoidRushIsDangerous and OverrideIsDangerous and t20.MainKiller) then
				if v1096.Flags.AutoBlockToggle.CurrentValue then
					if t20.MainKiller.Name == "Noli" and v1096.Flags.AutoBlockVoidRush.CurrentValue then
						local t, W = VoidRushIsDangerous()

						if (t and W) then
							if HasAbilityReady("Block") then
								Block()
							end
						end
					elseif t20.MainKiller.Name == "c00lkidd" and v1096.Flags.AutoBlockOverride.CurrentValue then
						local t, Q = OverrideIsDangerous()

						if (t and Q) then
							if HasAbilityReady("Block") then
								Block()
							end
						end
					end
				end
			end
		end)

		do
			Autoblock:CreateToggle({
				Name = "Auto block",
				CurrentValue = false,
				Flag = "AutoBlockToggle",
				Callback = function(p248)
					if p248 then
						t16.add("AutoBlockHitbox", function(t, t)
							xpcall(function()
								setthreadidentity(8)

								local d = t20.MainKiller
								local j = true

								if (tostring(t) ~= "Guest1337" and not v1096.Flags.AutoBlockVisualizerAlways.CurrentValue) or not v1096.Flags.AutoBlockVisualizer.CurrentValue then
									j = false
								end

								if t20.GameState ~= 1 then
									j = false
								end

								if not d then
									j = false
								end

								if j then
									Part.Transparency = 0.8
									Part2.Transparency = 0.8
								else
									Part.Transparency = 1
									Part2.Transparency = 1
								end

								if not d then
									return
								end

								local j = t20.AttackHitboxes[d.Name].offset
								local k = v1096.Flags.QueryAutoblock.CurrentValue and t:FindFirstChild("QueryHitbox") or t:FindFirstChild("HumanoidRootPart")
								local n = v1096.Flags.QueryAutoblock.CurrentValue and d:FindFirstChild("QueryHitbox") or d:FindFirstChild("HumanoidRootPart")

								if not (v1096.Flags.HitboxDragTech.CurrentValue and v1096.Flags.HDTVisualizer.CurrentValue) then
									Part2.Transparency = 1
								else
									Part2.Transparency = 0.8
								end

								if not d or tostring(t) ~= "Guest1337" then
									return
								end

								if (n and k) then
									local M = v1096.Flags.VisualizerFront.CurrentValue + ((v1096.Flags.VisualizerFrontPlus.CurrentValue * (d.Humanoid:GetMoveVelocity().magnitude / d.Humanoid.WalkSpeed)) or 0)
									local N, z, R = v1096.Flags.VisualizerLeft.CurrentValue, v1096.Flags.VisualizerRight.CurrentValue, v1096.Flags.VisualizerBack.CurrentValue

									Part.CFrame = (n.CFrame * CFrame.new((z - N) / 2, 0, -(M - R) / 2)):ToWorldSpace(CFrame.new(-j))
									Part.Size = Vector3.new(N + z, 10, M + R)

									local M = v1096.Flags.HDTFront.CurrentValue
									local N, z, R = v1096.Flags.HDTLeft.CurrentValue, v1096.Flags.HDTRight.CurrentValue, v1096.Flags.HDTBack.CurrentValue

									Part2.CFrame = (n.CFrame * CFrame.new((z - N) / 2, 0, -(M - R) / 2)):ToWorldSpace(CFrame.new(-j))
									Part2.Size = Vector3.new(N + z, 10, M + R)
								else
									Part:SetAttribute("in", false)
									Part2:SetAttribute("in", false)
									Part.CFrame = CFrame.new(99999, 99999999, 9999)
									Part2.CFrame = CFrame.new(99999, 99999999, 9999)
								end

								xpcall(function()
									Part:SetAttribute("in", LineOfSight(d, t) and arePartsTouching(Part, k))
								end, function(j)
									Part:SetAttribute("in", false)
								end)
								xpcall(function()
									Part2:SetAttribute("in", LineOfSight(d, t) and arePartsTouching(Part2, k))
								end, function(t)
									Part2:SetAttribute("in", false)
								end)
								Part.Color = v1096.Flags["Visualizer" .. (Part:GetAttribute("in") and "In" or "Out") .. "Color"].Color
								Part2.Color = v1096.Flags["HDT" .. (Part2:GetAttribute("in") and "In" or "Out") .. "Color"].Color
							end, function(t)
								v126("error in auto-block hitbox:", tostring(t))
							end)
						end)
					else
						t16.disconnect("AutoBlockHitbox")
					end
				end
			})
		end

		Autoblock:CreateToggle({
			Name = "Auto clone 007n7",
			CurrentValue = false,
			Flag = "AutoCloneToggle",
			Callback = v1108,
			ToolTip = "Uses 007n7's clone ability when killer hits you to make the killer's attack hit the clone instead of you"
		})
		Autoblock:CreateToggle({
			Name = "Auto raging pace",
			CurrentValue = false,
			Flag = "AutoParryToggle",
			Callback = v1108,
			ToolTip = "Uses slasher's raging pace ability when it detects shedletsky slash, jane doe axe, two time backstab, or guest1337 punch to parry them and avoid stun"
		})
		Autoblock:CreateToggle({
			Name = "Auto 404 Error",
			CurrentValue = false,
			Flag = "AutoUse404Error",
			Callback = v1108
		})

		local v2064 = Autoblock:CreateLabel("Ping: 0ms")

		task.spawn(function()
			while wait() do
				local value = Stats.PerformanceStats.Ping:GetValue()
				local s15

				if value <= 40 then
					s15 = "Best"
				elseif value <= 70 then
					s15 = "Good"
				elseif value <= 100 then
					s15 = "Decent"
				else
					s15 = "Bad, try finding a new server"
				end

				local v2067 = v2064
				local Set = v2064.Set
				local v2069 = ("Your ping is %*s (%*)"):format(string.format("%.2f", value / 1000), s15)

				Set(v2067, v2069)
			end

			if n30 == n31 then
				n30 -= 1622
				n10 = 962623469
				n28 = 278588098
				n1 -= 877
				n31 -= 852
				n7 = 677390311
				n8 += 1021
				n3 = 3945041
				n5 += 349
				track_spectate = nil
			end
		end)
		Autoblock:CreateSection("Settings")
		Autoblock:CreateToggle({
			Name = "Auto punch",
			CurrentValue = true,
			Flag = "AutoBlockPunch",
			Callback = v1108
		})
		Autoblock:CreateToggle({
			Name = "Hitbox shake",
			CurrentValue = false,
			Flag = "AntiBait",
			Callback = v1108,
			ToolTip = "This is not legit. This feature teleports your character to the killer to get parries"
		})
		Autoblock:CreateToggle({
			Name = "Hitbox drag tech",
			CurrentValue = true,
			Flag = "HitboxDragTech",
			Callback = v1108,
			ToolTip = "Walks into the killer's old attack hitboxes to get a free parry"
		})
		Autoblock:CreateLabel("Detection range and face/hitbox check apply to auto raging pace/404 error/clone, not auto block")
		Autoblock:CreateSlider({
			Name = "Detection range",
			Range = {
				4,
				12
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 10,
			Flag = "RagingPaceRange",
			Callback = v1108
		})
		Autoblock:CreateToggle({
			Name = "Face check",
			CurrentValue = false,
			Flag = "RagingPaceFaceCheck",
			Callback = v1108,
			TextMode = true
		})
		Autoblock:CreateToggle({
			Name = "Hitbox check",
			CurrentValue = true,
			Flag = "NGAutoBlockHitboxCheck",
			Callback = v1108,
			TextMode = true
		})
		Autoblock:CreateToggle({
			Name = "Detect slasher sounds",
			CurrentValue = false,
			Flag = "DetectSlasherSounds",
			Callback = v1108,
			TextMode = true,
			ToolTip = "Autoblock ignores slashers sounds even when sound detection is on because Slasher's M1 and Behead use the same IDs. If you enable this, it will detect sounds BUT will block behead and nothing can be done about it."
		})
		Autoblock:CreateDropdown({
			Name = "Aim on",
			Options = {
				"Block",
				"Punch"
			},
			CurrentOption = {
				"Block",
				"Punch"
			},
			MultipleOptions = true,
			Flag = "AutoBlockAims",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "Wait delay before blocking",
			Range = {
				0,
				300
			},
			Increment = 1,
			Suffix = "ms",
			CurrentValue = 0,
			Flag = "AutoBlockMS",
			Callback = v1108,
			ToolTip = "You might aswell just keep this at 0, but if you want it to look more like a real react block or drag tech, set it higher"
		})
		Autoblock:CreateToggle({
			Name = "Sound detection",
			CurrentValue = true,
			Flag = "AutoBlockSounds",
			Callback = v1108,
			ToolTip = "Sounds replicate before animations do, which offers a faster detection and can easily block coolkidd M1 and more"
		})
		Autoblock:CreateToggle({
			Name = "Query based detection",
			CurrentValue = true,
			Flag = "QueryAutoblock",
			Callback = v1108,
			ToolTip = "Detects wether to block based on your/their replicated position instead of client position."
		})
		Autoblock:CreateSection("Hitbox/Visualizer")
		Autoblock:CreateToggle({
			Name = "Show hitbox",
			CurrentValue = true,
			Flag = "AutoBlockVisualizer",
			Callback = v1108
		})
		Autoblock:CreateToggle({
			Name = "└── Always show",
			CurrentValue = false,
			Flag = "AutoBlockVisualizerAlways",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "Left size",
			Range = {
				0,
				9
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "VisualizerLeft",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "Right size",
			Range = {
				0,
				9
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "VisualizerRight",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "Front size",
			Range = {
				0,
				18
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 17,
			Flag = "VisualizerFront",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "Back size",
			Range = {
				-5,
				11
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "VisualizerBack",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "Z-Expansion",
			Range = {
				0,
				9
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "VisualizerFrontPlus",
			Callback = v1108,
			ToolTip = "Adds length to front when the killer is moving"
		})
		Autoblock:CreateColorPicker({
			Name = "Color (In hitbox)",
			Color = Color3.fromRGB(0, 255, 0),
			Flag = "VisualizerInColor",
			Callback = v1108
		})
		Autoblock:CreateColorPicker({
			Name = "Color (Not in hitbox)",
			Color = Color3.fromRGB(255, 0, 0),
			Flag = "VisualizerOutColor",
			Callback = v1108
		})
		Autoblock:CreateDivider()
		Autoblock:CreateToggle({
			Name = "Show HDT hitbox",
			CurrentValue = true,
			Flag = "HDTVisualizer",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "HDT left size",
			Range = {
				0,
				9
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "HDTLeft",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "HDT right size",
			Range = {
				0,
				9
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "HDTRight",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "HDT front size",
			Range = {
				0,
				18
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 10,
			Flag = "HDTFront",
			Callback = v1108
		})
		Autoblock:CreateSlider({
			Name = "HDT back size",
			Range = {
				-5,
				11
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "HDTBack",
			Callback = v1108
		})
		Autoblock:CreateColorPicker({
			Name = "HDT Color (In hitbox)",
			Color = Color3.fromRGB(0, 255, 0),
			Flag = "HDTInColor",
			Callback = v1108
		})
		Autoblock:CreateColorPicker({
			Name = "HDT Color (Not in hitbox)",
			Color = Color3.fromRGB(255, 0, 0),
			Flag = "HDTOutColor",
			Callback = v1108
		})
		Autoblock:CreateSection("Block Settings")
		Autoblock:CreateToggle({
			Name = "Block void rush",
			CurrentValue = false,
			Flag = "AutoBlockVoidRush",
			Callback = v1108,
			TextMode = true
		})
		Autoblock:CreateToggle({
			Name = "Block walkspeed override",
			CurrentValue = false,
			Flag = "AutoBlockOverride",
			Callback = v1108,
			TextMode = true
		})
		Autoblock:CreateToggle({
			Name = "Enable sprint after block",
			CurrentValue = true,
			Flag = "AutoParrySprint",
			Callback = v1108,
			TextMode = true
		})
		Autoblock:CreateToggle({
			Name = "Notifications",
			CurrentValue = true,
			Flag = "AutoBlockNotifications",
			Callback = v1108,
			TextMode = true
		})

		do
			IsFacing = function(p249, p250, p251)
				local v2070 = p250.CFrame.LookVector:Dot((p249.Position - p250.Position).Unit)

				if n28 ~= 1032266728 then
					return v2070 > (p251 or 0.6)
				end

				n28 = 1067409002
				n30 += 1508
				n31 = 290666547
				n7 -= 579
				n2 = 472856444
				n1 = 861565097
				n5 = 372818174
				n3 = 167826361
				n8 = 260905701
				Turn360 = nil
				GetCharges = nil
			end
		end

		Block = function()
			module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Block")
		end
		Punch = function()
			module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Punch")

			if not (n1 > 254402099) then
				n3 = 858309932
				n2 += 741
				n8 = 765510725
				n30 -= 1967
				n9 -= 1226
				n7 = 514625217
				n31 -= 1964
				n5 -= 22
				n1 = 409523055
				GetSelectedGhostAnims = nil
				HasNotification = nil
			end
		end
		Clone = function()
			module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Clone")

			if n3 ~= 72756577 then
				n1 = 645461987
				n6 = 648197527
				n2 = 1010754279
				n10 = 370662203
				n3 -= 102
				n5 += 648

				repeat
					n31 -= 1565
					n29 = 659286376
					n30 = 548920920

					local v2071 = table.pack(x_0())
				until not v2071[1]
			end
		end

		local t63

		do
			local u2073 = false
			local u2074
			local n75 = 0

			local function v2076(p252)
				local Character_3 = LocalPlayer.Character
				local Humanoid = Character_3.Humanoid
				local HumanoidRootPart = Character_3.HumanoidRootPart

				if not p252 then
					return
				end

				local v2080 = (p252 - HumanoidRootPart.Position) * Vector3.new(1, 0, 1)

				if v2080.Magnitude <= 1 then
					return
				end

				local v2081 = v2080.Unit * Humanoid.WalkSpeed

				HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(v2081.X, HumanoidRootPart.AssemblyLinearVelocity.Y, v2081.Z)

				if Humanoid:GetState() ~= Enum.HumanoidStateType.Running then
					Humanoid:ChangeState(Enum.HumanoidStateType.Running)
				end
			end
			local function v2082(p253, p254)
				local now2 = tick()

				while not p253() and tick() - now2 < p254 do
					RunService.RenderStepped:Wait()
				end

				if n31 == 291407125 then
					return p253()
				end

				n10 = 780370918
				n5 = 402585055
				n28 = 448221042
				n8 += 261
				n1 = 508285452
				n9 += 1192
				n29 = 105442262
				n31 = 577874964
				n30 -= 1370
				createm1part = nil
				RandomNumber = nil
			end

			Counter = function(p255)
				if u2074 or p255:GetAttribute("Invincible") == 1 then
					return
				end

				local n76 = 477969850
				local Flags = v1096.Flags

				local function v2086()
					return Flags.HitboxDragTech.CurrentValue and Part2:GetAttribute("in")
				end

				if not (v2086() or Part:GetAttribute("in")) then
					return
				end

				u2074 = true

				if v2086() and not Flags.AntiBait.CurrentValue then
					controls:Disable()
				end

				local v2087 = Random.new()
				local Enabled = SmoothShiftLock.Enabled
				local u2089
				local u2090
				local u2091
				local u2092
				local HumanoidRootPart = p255.HumanoidRootPart
				local v2094 = t20.HitboxesDuration + 0.2

				local function v2095()
					if SmoothShiftLock.Enabled then
						setthreadidentity(2)
						SmoothShiftLock:ToggleShiftLock()
						setthreadidentity(8)
					end
				end
				local function v2096()
					if Sprinting.Stamina >= 0 and Sprinting.CanSprint and Sprinting.BindsEnabled then
						t20:Sprint(true)
					end

					if n31 == n76 then
						n6 = 901076183
						n5 = 14119252
						n31 = 181261720
						n1 = 1007526817
						n76 -= 1775
						n2 = 811804400
						n30 = 889885451
					end
				end

				local CurrentOption = Flags.AutoBlockAims.CurrentOption
				local v2098 = table.find(CurrentOption, "Block")
				local v2099 = table.find(CurrentOption, "Punch")

				local function v2100()
					xpcall(function()
						if Flags.AutoBlockMS.CurrentValue > 0 then
							task.wait(Flags.AutoBlockMS.CurrentValue / 1000)
						end

						if not (Part:GetAttribute("in") or Flags.AntiBait.CurrentValue) then
							return
						end

						task.spawn(Block)

						local attribute = LocalPlayer.Character:GetAttribute("SkinName")

						if attribute == "" then
							attribute = nil
						end

						local Config12 = require(Survivors2.Guest1337.Config)
						local Config13 = attribute and require(Survivors.Guest1337[attribute].Config) or Config12

						local function v2104(p256)
							return Config13.Sounds and Config13.Sounds[p256] or Config12.Sounds[p256]
						end

						if not v2082(function()
							return u2073
						end, 1) then
							return
						end

						local BlockSuccess = v2104("BlockSuccess")
						local now2 = tick()

						while u2073 and tick() - now2 < v2094 do
							v2095()

							if v2098 then
								stareFunc(p255)
							end

							if LocalPlayer.Character.HumanoidRootPart:FindFirstChild(BlockSuccess) then
								u2089 = true
								u2073 = false

								if Flags.AutoBlockNotifications.CurrentValue then
									lib:Notify({
										Title = "Auto Block",
										Content = "Successful Block",
										Duration = 7,
										Image = "shield"
									})
								end

								if Flags.AutoParrySprint.CurrentValue then
									v2096()
								end

								break
							end

							RunService.RenderStepped:Wait()
						end

						if not u2089 then
							u2073 = false

							return
						end

						if not Flags.AutoBlockPunch.CurrentValue then
							return
						end

						if not v2082(function()
							return HasAbilityReady("Punch")
						end, 1) then
							return
						end

						local now3 = tick()
						local CriticalPunch = v2104("CriticalPunch")
						local Parry = v2104("Parry")

						while tick() - now3 <= 1 do
							local v2110 = n75

							if tick() - v2110 >= 1 then
								Punch()
								n75 = tick()
							end

							if v2099 then
								v2110 = p255
								stareFunc(v2110)
							end

							if Flags.AntiBait.CurrentValue then
								t20.SpoofedVelocity = t20.AttackHitboxes:CalculateVelocity(LocalPlayer.Character.HumanoidRootPart.Position, HumanoidRootPart.Position) * 1.25 + Vector3.new(v2087:NextNumber(-1.5, 1.5), 0, v2087:NextNumber(-1.5, 1.5))
							end

							v2076(HumanoidRootPart.Position)

							if HumanoidRootPart:FindFirstChild(CriticalPunch) or HumanoidRootPart:FindFirstChild(Parry) then
								if Flags.AutoBlockNotifications.CurrentValue then
									lib:Notify({
										Title = "Auto Punch",
										Content = "Successful Punch",
										Duration = 7,
										Image = "flame"
									})
								end

								if Flags.AutoParrySprint.CurrentValue then
									v2096()
								end

								break
							end

							RunService.RenderStepped:Wait()
						end
					end, function(p257)
						v126("Counter() error:", tostring(p257))
					end)
					u2092 = true
				end

				task.spawn(function()
					local now2 = tick()

					while tick() - now2 < v2094 do
						xpcall(function()
							if not u2091 and (Flags.AntiBait.CurrentValue or Part:GetAttribute("in")) and HasAbilityReady("Block") then
								u2091 = true
								task.spawn(v2100)
							end

							if v2086() and not u2089 then
								controls:Disable()
								v2096()
								v2095()
								v2076(HumanoidRootPart.Position)
							end

							if v2098 then
								stareFunc(p255)
							end

							if u2091 and u2073 and not u2089 and Flags.AntiBait.CurrentValue then
								v2076()
								t20.SpoofedVelocity = t20.AttackHitboxes:CalculateVelocity(LocalPlayer.Character.HumanoidRootPart.Position, HumanoidRootPart.Position) * 1.25 + Vector3.new(v2087:NextNumber(-1.5, 1.5), 0, v2087:NextNumber(-1.5, 1.5))
							elseif not Flags.AntiBait.CurrentValue then
								t20.SpoofedVelocity = nil

								if v2086() and not u2089 then
									controls:Disable()
									v2096()
									v2095()
									v2076(HumanoidRootPart.Position)
								else
									v2076()
								end
							end
						end, function(p258)
							v126("error in loop:", tostring(p258))
						end)
						RunService.Heartbeat:Wait()
					end

					t20.SpoofedVelocity = nil
					v2076()
					u2090 = true
				end)

				repeat
					RunService.Heartbeat:Wait()
				until u2090 and (not u2091 or u2092)

				t20.SpoofedVelocity = nil
				v2076()
				controls:Enable()

				if Enabled and not SmoothShiftLock.Enabled then
					setthreadidentity(2)
					SmoothShiftLock:ToggleShiftLock()
					setthreadidentity(8)
				end

				u2074 = false

				return true
			end
			TableFindThatWorks = function(p259, p260)
				for _, v in p259, nil, nil do
					if v ~= p260 then
						continue
					end

					if n30 == 28953323 then
						return v
					end

					n10 -= 1410
					n5 -= 150
					n7 -= 986
					n9 -= 768
					n30 += 336
					n6 = 474673834
					n31 += 1626
					n8 -= 139
					n1 = 448900632
					GetGameState = nil
				end

				return false
			end
			IsFacing2 = function(p261, p262, p263, p264)
				local v2114 = p261.Position - p262.Position

				if v2114.Magnitude > 30 then
					return false
				end

				local Unit = v2114.Unit
				local v2116 = p262.CFrame.LookVector:Dot(Unit)
				local v2117 = math.abs(p262.CFrame.RightVector:Dot(Unit))
				local v2118 = v2116 > (p263 or 0.7)

				if v2118 then
					v2118 = v2117 < (p264 or 0.4)
				end

				return v2118
			end
			t63 = {}
			GetTrackLength = function(p265, p266)
				local Animation = Instance.new("Animation")

				Animation.AnimationId = p266

				local v2120 = p265:LoadAnimation(Animation)

				wait()

				local Length = v2120.Length

				v2120:Destroy()
				Animation:Destroy()

				if n5 == 142307361 then
					return Length
				end

				n7 += 1674
				n1 = 356535800
				n5 = 541259880
				n29 -= 2007
				n30 = 292938447
				n10 = 409132291
				n9 += 1897
				n2 -= 1815
				n31 = 445665616
				FindAnimationAsset = nil
			end
			GetSelectedGhostAnims = function()
				local t64 = {}

				for k, ghostAnimation in pairs(t20.Metas.GhostAnimations) do
					for _, v in ipairs(ghostAnimation) do
						if table.find(v1096.Flags[k .. "GhostAnimation"].CurrentOption, v.Flag:sub(#k + 1, #v.Flag)) then
							t64[#t64 + 1] = k .. v.Flag
						end
					end
				end

				return t64
			end
			TrackAnimations = function(t, O)
				local q = t and t:WaitForChild("HumanoidRootPart", 7)

				if (not q) then
					return
				end

				local X = q and t:WaitForChild("Humanoid", 7)

				if (not X) then
					return
				end

				local T = X:WaitForChild("Animator", 5)

				if (not T) then
					return
				end

				local X = t == LocalPlayer.Character
				local o = t:GetAttribute("SkinName")

				if o == "" then
					o = nil
				end

				local o = t20:GetConfig(t)
				local l = t20:GetSkinConfig(t)
				local G = require(Assets[t.Parent.Name][t.Name].Behavior)
				local E = o

				t20.Disconnectables[#t20.Disconnectables + 1] = T.AnimationPlayed:Connect(function(w)
					local y = t20.Metas.AttackIdToName[w.Animation.AnimationId]

					task.spawn(function()
						local function b(U, h)
							if not U then
								return nil
							end

							local a = U

							for U in string.gmatch(h, "[^/]+") do
								if type(a) ~= "table" then
									return nil
								end

								a = a[U]
							end

							return type(a) == "string" and a or nil
						end

						if X and v1096.Flags.GhostAnims.CurrentValue then
							for U, h in pairs(t20.Metas.GhostAnimations) do
								if t.Name == U then
									for a, a in ipairs(h) do
										if table.find(GetSelectedGhostAnims(), U .. a.Flag) then
											for U, U in ipairs(a.AnimationKeys) do
												local h = b(l and l.Animations, U) or b(E.Animations, U)

												if not h then
													v126("Ghost animations:", U, "nil in", a.Flag)

													continue
												end

												if h == w.Animation.AnimationId then
													GhostAnim(w, a.Method)
												end
											end
										end
									end
								end
							end

							if IsKiller() and v1096.Flags.GhostM1.CurrentValue then
								local b = (l and l.Animations) and l.Animations or E.Animations
								local E = "Slash"

								if t.Name == "Noli" then
									E = "Stab"
								elseif t.Name == "c00lkidd" then
									E = "Attack"
								elseif t.Name == "Azure" then
									E = (t:GetAttribute("FootstepOverride") == "GolemFootsteps") and "GolemSlash" or "Slash"
								end

								local U = b[E]

								if not U then
									return v126("Ghost animations: M1 nil in", t.Name .. " (skin: \"" .. tostring(t:GetAttribute("SkinName")) .. "\")")
								end

								if U == w.Animation.AnimationId then
									w:Stop()
								end
							end
						end
					end)

					local E = { "rbxassetid://127802146383565", "rbxassetid://82691533602949", "rbxassetid://128943791000974", "rbxassetid://122604262087779", "rbxassetid://139901321415812", "rbxassetid://130355934640695" }

					if X and u1180 and table.find(E, w.Animation.AnimationId) then
						v126("stopping generator animation")

						return w:Stop()
					end

					if X and w.Animation.AnimationId == require(Survivors2["007n7"].Config).Animations.c00lguiStart then
						obj.c00lguiAnimationTrack = w

						return v127("c00lgui track!")
					end

					task.spawn(function()
						local z = LocalPlayer.Character

						if X and table.find(t20.Metas.AnimationMetas.GeneralAttacks, w.Animation.AnimationId) then
							local Y = 0
							local E = tick()

							local function C(b, b)
								return Y >= b and Y <= b + t20.HitboxesDuration
							end

							local b = 0

							while z.Parent and tick() - E <= w.Length and v1096.Flags.HitboxExpander.CurrentValue and RunService.Heartbeat:Wait() do
								local U = z:FindFirstChild("HumanoidRootPart")

								if U and (tostring(z) == "Shedletsky" or IsKiller()) then
									local h = t20.Metas.AttackIdToWindup[w.Animation.AnimationId] or -0.01

									if h < 0 then
										v126("that aint supposed to happen")
									end

									Y = tick() - E

									local E = C(w, h) and not z.FOVMultipliers:FindFirstChild("HitRegistered")

									if not E then
										local E = math.atan((math.random() * 2 - 1) * 0.2 / 10)

										U.CFrame = U.CFrame * CFrame.Angles(0, E - b, 0)
										b = E

										continue
									end

									local E
									local C = v1096.Flags.HitboxExpanderRange.CurrentValue
									local a = v1096.Flags.HitboxExpandMode.CurrentOption[1]

									function scanGroup(J, r)
										local r = v1096.Flags.HitboxExpanderMode.CurrentOption[1]
										local H = math.huge
										local I = U.CFrame.LookVector

										for v, v in ipairs(J) do
											local J = v:FindFirstChild("HumanoidRootPart")
											local V = v:FindFirstChild("Humanoid")

											if v ~= z and J and V and V.Health > 0 then
												local K = J.Position - U.Position
												local J = K.Magnitude

												if J > 0 and J <= C then
													local c

													if r == "Facing" then
														c = -I:Dot(K.Unit)
													elseif r == "Nearest" then
														c = J
													else
														c = V.Health
													end

													if c < H then
														H = c
														E = v
													end
												end
											end
										end
									end

									if IsKiller() then
										scanGroup(t20.Survivors)
									else
										E = t20.MainKiller
									end

									if E or a ~= "Dynamic" then
										local J = t20.AttackHitboxes[z.Name].offset.Z
										local r = t20.AttackHitboxes[z.Name].size.Z

										C = C / r

										local z = U.CFrame
										local H = (Y - h) / t20.HitboxesDuration
										local Y

										if a == "Dynamic" then
											local h = E.QueryHitbox.CFrame
											local a = E.Humanoid:GetMoveVelocity() / 3.5
											local E = v1096.Flags.HitboxExpanderAutoRotate.CurrentValue
											local I = E and h or (z.Rotation + h.Position)

											Y = I + a - I.LookVector * (J / 2)
										else
											Y = z + ((z.LookVector * (C)) * (H * r))
										end

										U.CFrame = Y

										local Y = coroutine.running()

										RunService:BindToRenderStep("HitboxExpander", Enum.RenderPriority.First.Value, function()
											RunService:UnbindFromRenderStep("HitboxExpander")

											local E = math.atan((math.random() * 2 - 1) * 0.2 / 10)

											U.CFrame = z * CFrame.Angles(0, E - b, 0)
											b = E
											task.spawn(Y)
										end)
										coroutine.yield()
									end
								end
							end
						end
					end)

					local z = G.Abilities

					task.spawn(function()
						if table.find(t20.Metas.AnimationMetas.TwoTimeStuff, w.Animation.AnimationId) and t.Name == "TwoTime" then
							local z = 0
							local Y = tick()

							if v1096.Flags.Antibackstab.CurrentValue and IsKiller() and not t20.TargetTwoTime then
								while w.IsPlaying and RunService.RenderStepped:Wait() do
									if (LocalPlayer.Character.HumanoidRootPart.Position - t.HumanoidRootPart.Position).magnitude <= 23 then
										lib:Notify({ Title = "Anti backstab", Content = "TwoTime tried to stab you", Duration = 6, Image = "shield" })
										t20.TargetTwoTime = t
										task.delay(2.381, function()
											t20.TargetTwoTime = nil
										end)
										task.spawn(function()
											while t20.TargetTwoTime and LocalPlayer.Character and t20.GameState == 1 and wait() do
												stareFunc(t, true)
											end

											t20.TargetTwoTime = nil
										end)
									end
								end

								return
							elseif X then
								local function j(E, C)
									local G = E.HumanoidRootPart.Position
									local b = C.HumanoidRootPart.CFrame
									local U = b.LookVector * -1.0
									local h = RaycastParams.new()

									h.FilterType = Enum.RaycastFilterType.Exclude
									h.FilterDescendantsInstances = { E, C }

									for E = -1.0, 1 do
										for C = -2.0, 2 do
											local a = b * Vector3.new(E, C, 0.55)

											if U:Dot(G - a) > math.cos(math.rad(90)) then
												if not workspace:Raycast(G, a - G, h) then
													return true
												end
											end
										end
									end

									return false
								end

								task.spawn(function()
									xpcall(function()
										local E = true

										while tick() - Y <= w.Length and RunService.Heartbeat:Wait() do
											z = tick() - Y

											local C = t20.MainKiller

											if v1096.Flags.GlidestabHelper.CurrentValue and C and C:FindFirstChild("HumanoidRootPart") then
												local G = LocalPlayer.Character.HumanoidRootPart
												local b = j(LocalPlayer.Character, C)

												if b and E then
													return
												end

												E = false

												if b and (G.Position - C.HumanoidRootPart.Position).magnitude <= 14 then
													local j = G.CFrame
													local E = G.Velocity
													local b = C.QueryHitbox.CFrame
													local U = C.Humanoid:GetMoveVelocity()
													local C = U / 3.5

													if not t20:HasHitReg() then
														G.Velocity = Vector3.zero
														G.CFrame = (b + C) - (b.LookVector * 5)

														local C = coroutine.running()

														RunService:BindToRenderStep("BackstabAim", Enum.RenderPriority.First.Value, function()
															RunService:UnbindFromRenderStep("BackstabAim")
															G.Velocity = E
															G.CFrame = CFrame.new(j.Position, b.LookVector)
															task.spawn(C)
														end)
														coroutine.yield()
													end
												end
											end
										end
									end, function(j)
										v126("error in backstab aim:", tostring(j))
									end)
								end)

								local j = v1096.Flags.DaggerLungeMul.CurrentValue
								local E = v1096.Flags.DaggerCrouchLungeMul.CurrentValue
								local C = t.HumanoidRootPart

								if v1096.Flags.BackstabExploit.CurrentValue and t20.MainKiller then
									while tick() - Y <= w.Length and not t20:HasHitReg() and t20.MainKiller and t20.MainKiller.Parent and RunService.Heartbeat:Wait() do
										if z > (0.45 + LocalPlayer:GetNetworkPing()) then
											break
										end

										if z >= (0.2 - LocalPlayer:GetNetworkPing()) then
											local G = C.CFrame
											local b = C.AssemblyLinearVelocity
											local U = t20.MainKiller.QueryHitbox.CFrame
											local h = t20.MainKiller.Humanoid:GetMoveVelocity() * (1 + LocalPlayer:GetNetworkPing())
											local a = h / 3.5

											C.CFrame = (U + a) - (U.LookVector * 7)
											C.AssemblyLinearVelocity = Vector3.zero

											local U = coroutine.running()

											RunService:BindToRenderStep("BackstabExploit", Enum.RenderPriority.First.Value, function()
												RunService:UnbindFromRenderStep("BackstabExploit")
												C.CFrame = G
												C.AssemblyLinearVelocity = b
												task.spawn(U)
											end)
											coroutine.yield()
										end
									end

									return
								end

								if (y == "Stab" and j > 1) or E > 1 then
									local G = 0

									while tick() - Y <= w.Length and G < 1 and RunService.Heartbeat:Wait() do
										local Y = y == "Stab" and (w.Length - (0.25 + t20.HitboxesDuration)) or 0.6

										if z >= 0.25 then
											G = z / Y

											if not xpcall(function()
												local z = C.Position
												local Y = ((y == "Stab" and j or E) * G) * (y == "Stab" and 10 or 30)
												local j = C.CFrame.LookVector
												local E = z + (j * Y)
												local z = C.CFrame

												C.CFrame = z + (j * Y)

												local j = coroutine.running()

												RunService:BindToRenderStep("LungeRestore", Enum.RenderPriority.First.Value, function()
													RunService:UnbindFromRenderStep("LungeRestore")
													C.CFrame = z
													task.spawn(j)
												end)
												coroutine.yield()
											end, function(j)
												v126("error in dagger lunge multiplier:", tostring(j))
											end) then
												break
											end
										end
									end

									return
								end
							end
						end
					end)
					task.spawn(function()
						if t.Parent ~= Killers3 then
							return
						end

						if not v1096.Flags.StunSpy.CurrentValue then
							return
						end

						local j = (l and l.Animations and l.Animations.Stunned and l.Animations.Stunned.Start) and l.Animations.Stunned.Start or o.Animations.Stunned.Start
						local z = (l and l.Animations and l.Animations.Stunned and l.Animations.Stunned.End) and l.Animations.Stunned.End or o.Animations.Stunned.End
						local Y = GetTrackLength(T, z)

						if w.Animation.AnimationId == j then
							local j = 0
							local z = Players[t:GetAttribute("RecentAttacker")].Character

							if z.Name == "Shedletsky" then
								j = Config3.SlashStunTime
							elseif z.Name == "TwoTime" then
								j = (tick() - (z:GetAttribute("LastInvisibilityTime") or 0) <= 3) and nil or 2
							elseif z.Name == "Guest1337" and (t.HumanoidRootPart:FindFirstChild("rbxassetid://13471740561") or t.HumanoidRootPart:FindFirstChild("rbxassetid://116900970230089")) then
								j = Config2.ParryStunTime
							end

							if j == 0 then
								v126("cant figure out what stunned")
							end

							if j and t.Name == "Sixer" then
								j = j * 0.75
							end

							j = j + Y

							local Q = Instance.new("BillboardGui")

							Q.Parent = t.Head
							Q.AlwaysOnTop = true
							Q.StudsOffset = Vector3.new(0, 3, 0)
							Q.Size = UDim2.new(1, 40, 1, 0)
							Q.Name = "stunspybb"
							Q.ResetOnSpawn = false

							local N = Instance.new("TextLabel")

							N.Parent = Q
							N.Size = UDim2.new(1, 0, 1, 0)
							N.TextSize = 18
							N.Font = Enum.Font.RobotoMono
							N.BackgroundTransparency = 1
							N.TextColor3 = Color3.fromRGB(212, 0, 0)
							N.TextStrokeTransparency = 0
							N.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

							local z = tick()

							while t:GetAttribute("Stunned") and (not timedstunned or (j - (tick() - z) > 0)) do
								if j then
									N.Text = string.format("[STUNNED] %.2fs", j - (tick() - z))
								else
									N.Text = "[STUNNED]"
								end

								wait()
							end

							Q:Destroy()

							return
						end
					end)

					if y == "EnragedStart" then
						t:SetAttribute("enraged", true)
						v126("slasher enraged")
						task.spawn(function()
							local Q = tick()

							while t:GetAttribute("enraged") and not u34 and wait() do
								if tick() - Q >= o.EnragedTime then
									v126("slasher stopped enraged naturally")
									t:SetAttribute("enraged", false)
								end
							end
						end)
					elseif y == "EnragedBehead" or y == "EnragedSlash" or y == "GashingWoundStart" then
						t:SetAttribute("enraged", false)
					end

					local Q = (l and l.Animations and l.Animations.Block) and l.Animations.Block or o.Animations.Block
					local Q = (l and l.Animations and l.Animations.Charge) and l.Animations.Charge or o.Animations.Charge
					local j = (l and l.Sounds and l.Sounds.Parry) and l.Sounds.Parry or o.Sounds.Parry

					if Q == w.Animation.AnimationId and X then
						t20.IsCharging = true
						t20.Disconnectables[#t20.Disconnectables + 1] = w.Destroying:Once(function()
							t20.IsCharging = false
						end)
						t20.Disconnectables[#t20.Disconnectables + 1] = w.Stopped:Once(function()
							t20.IsCharging = false
						end)
						task.spawn(function()
							if v1096.Flags.GuestNoclip.CurrentValue then
								EnableNoclip()

								repeat
									wait()
								until not t20.IsCharging or t20.GameState ~= 1

								DisableNoclip()
							end
						end)
						task.spawn(function()
							if t48["Charge"] then
								while (t20.IsCharging and t20.GameState == 1 and wait()) do
									local Q = GetClosestKiller(v1096.Flags.ChargeAimbotThreshold.CurrentValue)

									if Q then
										StartAimbotting(Q, function()
											return t20.IsCharging and t20.GameState == 1
										end, nil, nil, true)
									end
								end
							end
						end)
						task.spawn(function()
							if v1096.Flags.Gen1337StopsDoingGeneratorsAndGetsInTheCockpit.CurrentValue then
								workspace.Gravity = 0
								LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero

								local Q = Instance.new("LinearVelocity")

								Q.Parent = LocalPlayer.Character.HumanoidRootPart
								Q.RelativeTo = Enum.ActuatorRelativeTo.World
								Q.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
								Q.Attachment0 = LocalPlayer.Character.HumanoidRootPart.RootAttachment
								Q.ForceLimitsEnabled = false

								repeat
									Q.VectorVelocity = CurrentCamera.CFrame.LookVector * o.ChargingSpeed
									wait()
								until not t20.IsCharging or t20.GameState ~= 1

								Q:Destroy()
								workspace.Gravity = 196.2
							end
						end)
					end

					task.spawn(function()
						if t.Name == "Guest1337" then
							if TableFindThatWorks(t63, w.Animation.AnimationId) then
								if X then
									u2073 = true
								end

								t:SetAttribute("isblocking", true)
								t20.Disconnectables[#t20.Disconnectables + 1] = w.Stopped:Once(function()
									t:SetAttribute("isblocking", false)

									if X then
										u2073 = false
									end
								end)
								t20.Disconnectables[#t20.Disconnectables + 1] = w.Destroying:Once(function()
									t:SetAttribute("isblocking", false)

									if X then
										u2073 = false
									end
								end)
								wait(w.Length)
								t:SetAttribute("isblocking", false)

								if X then
									u2073 = false
								end
							end
						end
					end)

					if O and IsKiller() and (LocalPlayer.Character.Name == "Slasher" or LocalPlayer.Character.Name == "JohnDoe") then
						if not table.find(t20.Metas.AnimationMetas.SentinelAnimations, w.Animation.AnimationId) then
							return
						end

						local Q = LocalPlayer.Character.HumanoidRootPart
						local j = t.HumanoidRootPart

						if v1096.Flags.QueryAutoblock.CurrentValue then
							Q = LocalPlayer.Character.QueryHitbox
							j = t.QueryHitbox
						end

						local N = Instance.new("Part")

						N.Parent = workspace
						N.Anchored = true
						N.CanCollide = false
						N.Transparency = 0.5
						N.Color = Color3.fromRGB(255, 0, 0)
						N.Material = Enum.Material.Air

						while w.IsPlaying do
							if (v1096.Flags.AutoParryToggle.CurrentValue or v1096.Flags.AutoUse404Error.CurrentValue) and (HasAbilityReady("RagingPace") or HasAbilityReady("404Error")) then
								if LocalPlayer.Character.Name == "Slasher" and not v1096.Flags.AutoParryToggle.CurrentValue then
									return
								end

								if LocalPlayer.Character.Name == "JohnDoe" and not v1096.Flags.AutoUse404Error.CurrentValue then
									return
								end

								local z = (Q.Position - j.Position).Magnitude
								local R = v1096.Flags.NGAutoBlockHitboxCheck.CurrentValue

								if (R or z <= v1096.Flags.RagingPaceRange.CurrentValue) and (not v1096.Flags.RagingPaceFaceCheck.CurrentValue or IsFacing2(Q, j, 0.707, 1)) and (not R or (function()
									local Q = t20.AttackHitboxes[t.Name]

									if not Q.fake then
										local j = (v1096.Flags.QueryAutoblock.CurrentValue and t.QueryHitbox or t.HumanoidRootPart).CFrame
										local z = j:ToWorldSpace(CFrame.new(-Q.offset))
										local z = LocalPlayer.Character.HumanoidRootPart
										local R = v1096.Flags.QueryAutoblock.CurrentValue and LocalPlayer.Character.QueryHitbox or z
										local Y = Q.size + ((z.Size / 2) * (z.AssemblyLinearVelocity.magnitude / 10))

										N.Size = Y
										N.CFrame = j + (j.LookVector * (Y.Z / 2))

										return arePartsTouching(N, R)
									end
								end)()) then
									if v1096.Flags.AutoBlockMS.CurrentValue > 0 then
										wait(v1096.Flags.AutoBlockMS.CurrentValue)
									end

									module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", LocalPlayer.Character.Name == "JohnDoe" and "404Error" or "RagingPace")
								end
							end

							RunService.RenderStepped:Wait()
						end

						N:Destroy()

						return
					end

					local Q
					local m

					if (table.find(t20.WalkspeedOverrideAnimations, w.Animation.AnimationId)) then
						t20.UsingWalkspeedOverride = true
						Q = true
						m = true
						task.spawn(function()
							if (IsKiller() and v1096.Flags.NoclipOverride.CurrentValue) then
								EnableNoclip()

								repeat
									wait()
								until not IsKiller() or not t20.UsingWalkspeedOverride

								DisableNoclip()
							end
						end)
						task.spawn(function()
							if (IsKiller() and t48["WS Override"]) then
								while (t20.UsingWalkspeedOverride and wait()) do
									local k = GetClosestSurvivor(v1096.Flags.WalkspeedOverrideThreshold.CurrentValue)

									if k then
										StartAimbotting(k, function()
											return IsKiller() and t20.UsingWalkspeedOverride
										end, nil, nil, true)
									end
								end
							end
						end)
					end

					if (table.find(t20.WalkspeedOverrideEndedAnims, w.Animation.AnimationId)) then
						t20.UsingWalkspeedOverride = false
						t20.LungingWalkspeedOverride = false
					end

					if (table.find(t20.WalkspeedOverrideLoopAnims, w.Animation.AnimationId)) then
						t20.Disconnectables[#t20.Disconnectables + 1] = w.Destroying:Once(function()
							t20.UsingWalkspeedOverride = false
							t20.LungingWalkspeedOverride = false
						end)
						t20.Disconnectables[#t20.Disconnectables + 1] = w.Stopped:Once(function()
							t20.UsingWalkspeedOverride = false
							t20.LungingWalkspeedOverride = false
						end)
						t20.LungingWalkspeedOverride = true
					end

					task.spawn(function()
						if v1096.Flags.RevealTrajectory.CurrentValue then
							local k = "Swords"
							local j = "Shockwave"

							if (t.Name == "1x1x1x1") then
								local N = (t20:GetSkinConfig(t) or t20:GetConfig(t)).Instances or {}

								k = N.SwordsTemplate and N.SwordsTemplate.Name or k
								j = N.ShockwaveTemplate and N.ShockwaveTemplate.Name or j
							end

							if (table.find(t20.Metas.AnimationMetas.RevealTrajectory, w.Animation.AnimationId) or Q) then
								local N = Instance.new("Part")

								N.Parent = workspace
								N.Anchored = true
								N.CanCollide = false
								N.Transparency = 0.7
								N.Material = Enum.Material.Neon
								N.Color = Color3.fromRGB(255, 0, 0)

								local z = false
								local R = (y == "MassInfection" and 5) or 2
								local Y
								local u = 0
								local Z = t.HumanoidRootPart.Position
								local A = t.HumanoidRootPart.CFrame.LookVector
								local E
								local x = true

								task.spawn(function()
									local g = tick()
									local _, _, _, _ = 6, 6, 0, 1000

									while tick() - g <= R do
										local g = workspace.Map.Ingame:FindFirstChild(j)
										local j = workspace.Map.Ingame:FindFirstChild(k)
										local k = g or j

										if (t.Name == "1x1x1x1" and k) then
											if not E then
												E = t.HumanoidRootPart.Position
											end

											local C = k:GetPivot()

											Y = true

											if (y == "MassInfection" and g) then
												N.CFrame = CFrame.new(E, C.Position) * CFrame.new(0.0, 0, -500.0)
												z = true
											end

											if (y == "Entanglement" and j) then
												N.CFrame = CFrame.new(E, C.Position) * CFrame.new(0.0, 0, -500.0)
												z = true
											end

											if (z and not g) then
												v127("shockwave deleted")

												break
											end
										end

										RunService.RenderStepped:Wait()
									end
								end)
								task.delay(1, function()
									if y == "Uppercut" then
										x = false
									end
								end)

								while (w.IsPlaying or t20.UsingWalkspeedOverride) and not Y do
									local k = m and (Config9.WalkspeedOverrideSpeed) or 1000
									local W, d, _ = 6, 6, 0

									if (y == "Entanglement" or y == "Uppercut") then
										W, d = 3, 3
									end

									if (y == "CorruptEnergy") then
										k = Config11.DistanceBetweenSpikes * Config11.SpikeAmount
									end

									if (y == "Uppercut") then
										k = 113.846
									end

									if (m) then
										W, d = 4, 4
									end

									local j = t.HumanoidRootPart.Position
									local z = j - Z
									local Y = z.Magnitude > 0.01 and Vector3.new(z.X, 0, z.Z).Unit or A

									A = Y

									if (m and t20.LungingWalkspeedOverride) then
										u = u + Vector3.new(z.X, 0, z.Z).Magnitude
									end

									Z = j

									local z = math.max(k - u, 0)

									if (x) then
										if (m and t20.LungingWalkspeedOverride) then
											local u = CFrame.new(j, j + Y)

											N.CFrame = u * CFrame.new((d - W) / 2, 0, -(z - 0) / 2)
											N.Size = Vector3.new(W + d, 10, z + 0)
										else
											N.CFrame = t.HumanoidRootPart.CFrame * CFrame.new((d - W) / 2, 0, -(k - 0) / 2)
											N.Size = Vector3.new(W + d, 10, k + 0)
										end
									end

									if (Q and not t20.UsingWalkspeedOverride) then
										break
									end

									if (y == "Uppercut" and not t.HookModel.Beam.Enabled) then
										break
									end

									RunService.RenderStepped:Wait()
								end

								N.Color = Color3.fromRGB(0, 0, 255)
								TweenService:Create(N, TweenInfo.new(R, Enum.EasingStyle.Linear), { Transparency = 1 }):Play()

								if (not m and y ~= "Uppercut") then
									wait(R)
								end

								N:Destroy()
							end
						end
					end)

					local t = GetClosestKiller(999)

					if (t and not IsKiller() and table.find(t20.Metas.AnimationMetas.AutoblockAnimations, w.Animation.AnimationId) and (not v1096.Flags.AutoblockSounds.CurrentValue or (t.Name == "Slasher" and not v1096.Flags.DetectSlasherSounds.CurrentValue) or t.Name == "Sixer") and LocalPlayer.Character.Name == "Guest1337") then
						local Q = t:FindFirstChild("HumanoidRootPart")
						local k = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

						if v1096.Flags.QueryAutoblock.CurrentValue then
							k = LocalPlayer.Character:FindFirstChild("QueryHitbox")
							Q = t:FindFirstChild("QueryHitbox")
						end

						if not k or not Q then
							return
						end

						local W = (k.Position - Q.Position).Magnitude
						local Q = tick()

						while w.IsPlaying and tick() - Q <= t20.HitboxesDuration do
							if (HasAbilityReady("Block") and v1096.Flags.AutoBlockToggle.CurrentValue) then
								if Counter(t, q, w, tick()) then
									break
								end

								wait()
							end

							RunService.RenderStepped:Wait()
						end
					end
				end)
			end
		end

		local MainKiller = t20.MainKiller

		if MainKiller then
			TrackAnimations(MainKiller)

			if MainKiller:GetAttribute("Username") ~= LocalPlayer.Name then
				AddBoxEsp(MainKiller, "KillerEspColor", "KillerEsp")
				AddHighlightEsp(MainKiller, "KillerEspColor", "HIFORSAKEN", true)
				labelshit(MainKiller:FindFirstChild("HumanoidRootPart"), "KillerEspColor", "KillerEsp")
			end
		end

		do
			t20.Disconnectables[#t20.Disconnectables + 1] = Killers3.ChildAdded:Connect(function(child)
				local now2 = tick()
				local fullName = child:GetFullName()

				while true do
					task.wait()

					if Players:GetPlayerFromCharacter(child) then
						break
					elseif tick() - now2 >= 5 then
						break
					end
				end

				if not child.Parent then
					return
				end

				if not Players:GetPlayerFromCharacter(child) then
					return v126(fullName, "is probably not a real killer")
				end

				TrackAnimations(child)

				if not child:GetAttribute("Username") or child:GetAttribute("Username") == LocalPlayer.Name then
					return
				end

				AddBoxEsp(child, "KillerEspColor", "KillerEsp")

				if n8 == 589690365 then
					n1 += 1536
					n31 += 1259
					n9 -= 467
					n28 -= 314
					n8 += 222
					n29 = 573274273
					n3 += 874
					n30 -= 1537
					n7 = 934827702
					RagdollEnable = nil
					UpdateStamina = nil
				else
					AddHighlightEsp(child, "KillerEspColor", "HIFORSAKEN", true)
				end

				labelshit(child:WaitForChild("HumanoidRootPart"), "KillerEspColor", "KillerEsp")
			end)
		end

		for _, v in t20.Survivors, nil, nil do
			TrackAnimations(v, true)

			if v:GetAttribute("Username") ~= LocalPlayer.Name then
				AddBoxEsp(v, "SurvivorEspColor", "SurvivorEsp", true)
				AddHighlightEsp(v, "SurvivorEspColor", "HIFORSAKEN", true)
				labelshit(v:FindFirstChild("HumanoidRootPart"), "SurvivorEspColor", "SurvivorEsp")
			end
		end

		t20.Disconnectables[#t20.Disconnectables + 1] = Survivors3.ChildAdded:Connect(function(child)
			TrackAnimations(child, true)

			if child:GetAttribute("Username") == LocalPlayer.Name then
				return
			end

			AddBoxEsp(child, "SurvivorEspColor", "SurvivorEsp", true)
			AddHighlightEsp(child, "SurvivorEspColor", "HIFORSAKEN", true)
			labelshit(child:WaitForChild("HumanoidRootPart"), "SurvivorEspColor", "SurvivorEsp")
		end)

		for _, v in workspace.Map.Ingame:GetChildren() do
			if v.Name == "PizzaDeliveryRig" or v.Name == "1x1x1x1Zombie" then
				AddBoxEsp(v, "EntityEspColor", "EntityEsp")

				if v1096.Flags.EntityEsp.CurrentValue then
					AddHighlightEsp(v, "EntityEspColor", "HIFORSAKEN", true)
				end

				labelshit(v:FindFirstChild("HumanoidRootPart"), "EntityEspColor", "EntityEsp")
			end
		end

		local n77 = 0

		t20.Disconnectables[#t20.Disconnectables + 1] = workspace.Map.Ingame.ChildAdded:Connect(function(t)
			(function()
				if t.Name == "007n7" then
					local R = t:WaitForChild("HumanoidRootPart")

					if not R then
						return v126("OMFG", t.PrimaryPart)
					end

					AddBoxEsp(t, "CloneEspColor", "CloneEsp")

					if v1096.Flags.CloneEsp.CurrentValue then
						AddHighlightEsp(t, "CloneEspColor", "HIFORSAKEN", true)
					end

					labelshit(R, "CloneEspColor", "CloneEsp")
					t:SetAttribute("clone", true)

					local R = t:GetAttribute("Username")
					local D = Players[R].Character.HumanoidRootPart

					if _G.UNLOCK_CD_ESP and v1096.Flags.CooldownEsp.CurrentValue then
					end

					if R == LocalPlayer.Name then
						t20.Has007n7Clone = t
						t20.Disconnectables[#t20.Disconnectables + 1] = t.Destroying:Once(function()
							t20.Has007n7Clone = nil
						end)
					else
						if (v1096.Flags.AntiClone007n7.CurrentValue) then
							t:Destroy()
							v126("destroyed a fake clone")

							if not v1096.Flags.Antis_EnableNotifications.CurrentValue or t20.GameState ~= 1 then
								return
							end

							lib:Notify({ Title = `Anti Clone`, Content = `Deleted a 007n7 clone`, Duration = 6, Image = "ban" })
						end
					end
				end
			end)();
			(function()
				if (IsKiller() and t.Name == "Voidstar") then
					local k

					k = RunService.Heartbeat:Connect(function()
						if (v1096.Flags.AutoNova.CurrentValue and tick() - n77 >= 1 and (function()
							for d, d in ipairs(t20.Survivors) do
								if (d:FindFirstChild("HumanoidRootPart") and d ~= LocalPlayer.Character) then
									if ((t.Position - d.HumanoidRootPart.Position).Magnitude <= (Config6.NovaExplosionRadius / 2) - 3) then
										return true
									end
								end
							end
						end)()) then
							v127("triggering nova")
							n77 = tick()
							module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Nova")
						end
					end)
					t20.Disconnectables[#t20.Disconnectables + 1] = t:GetPropertyChangedSignal("Parent"):Once(function()
						k:Disconnect()
					end)
				end
			end)()

			if (t.Name ~= "PizzaDeliveryRig" and t.Name ~= "1x1x1x1Zombie") then
				return
			end

			AddBoxEsp(t, "EntityEspColor", "EntityEsp")

			if v1096.Flags.EntityEsp.CurrentValue then
				AddHighlightEsp(Entity, "EntityEspColor", "HIFORSAKEN", true)
			end

			labelshit(t:WaitForChild("HumanoidRootPart"), "EntityEspColor", "EntityEsp")
		end)

		do
			IsAiming = function(p267, p268, p269, p270)
				return p268.Unit:Dot((p269 - p267).Unit) >= p270
			end
		end

		do
			VoidRushIsDangerous = function()
				if t20.GameState ~= 1 then
					return
				end

				local MainKiller2 = t20.MainKiller

				if MainKiller2 and MainKiller2:GetAttribute("VoidRushState") == "Dashing" then
					local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local HumanoidRootPart2 = MainKiller2:FindFirstChild("HumanoidRootPart")

					if v1096.Flags.QueryAutoblock.CurrentValue then
						HumanoidRootPart = LocalPlayer.Character.QueryHitbox
						HumanoidRootPart2 = MainKiller2.QueryHitbox
					end

					if HumanoidRootPart2 and HumanoidRootPart then
						return IsFacing2(HumanoidRootPart, HumanoidRootPart2), MainKiller2
					end
				end
			end
		end

		do
			OverrideIsDangerous = function()
				if t20.GameState ~= 1 then
					return
				end

				local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

				if not HumanoidRootPart then
					return
				end

				local MainKiller2 = t20.MainKiller
				local HumanoidRootPart2 = MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart")
				local v2305 = HumanoidRootPart2

				if not HumanoidRootPart2 then
					return
				end

				if v1096.Flags.QueryAutoblock.CurrentValue then
					HumanoidRootPart = LocalPlayer.Character:FindFirstChild("QueryHitbox")
					HumanoidRootPart2 = MainKiller2:FindFirstChild("QueryHitbox")
				end

				if not HumanoidRootPart2 or not HumanoidRootPart then
					return
				end

				if MainKiller2 and t20.UsingWalkspeedOverride then
					if MainKiller2.Name == "c00lkidd" and (HumanoidRootPart2.Position - HumanoidRootPart.Position).magnitude <= 30 then
						if IsFacing2(HumanoidRootPart, HumanoidRootPart2) then
							return true, MainKiller2
						end

						local LinearVelocity = v2305:FindFirstChild("LinearVelocity")
						local LineDirection = LinearVelocity and LinearVelocity.LineDirection

						if LineDirection then
							return IsAiming(HumanoidRootPart2.Position, LineDirection, HumanoidRootPart.Position, 0.906), MainKiller2
						end
					end
				end
			end
		end

		Self:CreateSection("Player related settings")
		NeedToEscapeOrReel = function()
			local QTE = TemporaryUI:FindFirstChild("QTE")

			if n10 < n1 then
				return QTE ~= nil and QTE:FindFirstChild("Zone3") == nil
			end

			n7 -= 695
			n28 -= 936
			n2 += 1838
			n1 = 328361298
			n10 += 47
			n5 = 674143845
			n6 -= 1670
			n31 = 694095885
			n30 += 1214
			GetClosestToMouse = nil
			CHANGELOADSTATE = nil
		end

		do
			Check = function()
				for _, v in TemporaryUI:GetChildren() do
					if v.Name == "1x1x1x1Popup" then
						v:Destroy()
					end
				end
			end
		end

		SuperSpecialFemboyNotifyOWO = function(...)
			if v1096.Flags.SpectateDetectorNotifications.CurrentValue then
				return lib:Notify(...)
			end
		end

		do
			local ScreenGui3 = Instance.new("ScreenGui")

			ScreenGui3.Name = "SpectatorsGui"
			ScreenGui3.ResetOnSpawn = false
			ScreenGui3.IgnoreGuiInset = true
			ScreenGui3.Parent = gethui()

			local TextLabel = Instance.new("TextLabel")

			TextLabel.BackgroundTransparency = 1
			TextLabel.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel.Position = UDim2.new(0.5, 0, 1, -20)
			TextLabel.Size = UDim2.new(0, 0, 0, 20)
			TextLabel.AutomaticSize = Enum.AutomaticSize.X
			TextLabel.Font = Enum.Font.Gotham
			TextLabel.TextSize = 14
			TextLabel.TextColor3 = Color3.new(1, 1, 1)
			TextLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
			TextLabel.TextStrokeTransparency = 0
			TextLabel.Visible = false
			TextLabel.Parent = ScreenGui3
			UpdateSpectators = function()
				local spectators = GetSpectators()

				TextLabel.Visible = v1096.Flags.SpectateDetector.CurrentValue and spectators ~= ""
				TextLabel.Text = "Spectators: " .. spectators
			end
		end

		Self:CreateToggle({
			Name = "Spectate detector",
			CurrentValue = true,
			Flag = "SpectateDetector",
			Callback = UpdateSpectators()
		})
		Self:CreateToggle({
			Name = "└── Notify",
			CurrentValue = true,
			Flag = "SpectateDetectorNotifications",
			Callback = v1108,
			TextMode = true
		})

		local t65 = {}

		track_spectate = function(p271)
			t20.Disconnectables[#t20.Disconnectables + 1] = p271:GetAttributeChangedSignal("SpectateTargetUserId"):Connect(function()
				UpdateSpectators()

				if t65[p271] then
					t65[p271].Close()
				end

				if p271:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId then
					local v2315 = true

					task.spawn(function()
						if not v2315 then
							return
						end

						while p271:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId do
							wait()
						end

						if v1096.Flags.SpectateDetector.CurrentValue then
							t65[p271] = SuperSpecialFemboyNotifyOWO({
								Title = "Spectate detector",
								Content = string.format("<font color=%s>%s</font> stopped spectating you", "\"rgb(0, 255, 0)\"", p271.Name),
								Duration = 12,
								Image = "triangle-alert",
								NoQueue = true
							})

							return
						end
					end)

					if v1096.Flags.SpectateDetector.CurrentValue then
						t65[p271] = SuperSpecialFemboyNotifyOWO({
							Title = "Spectate detector",
							Content = string.format("<font color=%s>%s</font> is spectating you!", "\"rgb(255, 0, 0)\"", p271.Name),
							Duration = 12,
							Image = "triangle-alert",
							NoQueue = true
						})
					end
				end
			end)
		end
		t20.Disconnectables[#t20.Disconnectables + 1] = Players.PlayerAdded:Connect(track_spectate)
		t20.Disconnectables[#t20.Disconnectables + 1] = Players.PlayerRemoving:Connect(function()
			task.defer(UpdateSpectators)

			if n10 == n31 then
				n6 = 562893781
				n10 = 240209724
				n5 -= 728
				n3 = 550860624
				n31 -= 1375
				n1 += 1124
				n9 += 70
				n29 -= 807
				n30 += 382
			end
		end)

		for _, player in ipairs(Players:GetPlayers()) do
			track_spectate(player)

			if player:GetAttribute("SpectateTargetUserId") == LocalPlayer.UserId and v1096.Flags.SpectateDetector.CurrentValue then
				SuperSpecialFemboyNotifyOWO({
					Title = "Spectate detector",
					Content = string.format("<font color=%s>%s</font> is spectating you!", "\"rgb(255, 0, 0)\"", player.Name),
					Duration = 12,
					Image = "triangle-alert",
					NoQueue = true
				})
			end
		end

		UpdateSpectators()
		Self:CreateToggle({
			Name = "Auto remove popups",
			CurrentValue = false,
			Flag = "AutoClearPopups",
			Callback = function(p272)
				if p272 then
					Check()
				end
			end
		})
		Self:CreateToggle({
			Name = "Auto unsprint",
			CurrentValue = false,
			Flag = "AutoUnsprint",
			Callback = function(p273)
				if p273 then
					t16.add("AutoUnsprint", function(t, t)
						if not t then
							return
						end

						if ((t.Parent == Killers3 and v1096.Flags.AI_Killer_Toggle.CurrentValue) or (not v1096.Flags.AI_Survivor_Toggle.CurrentValue or LocalPlayer.Character.Parent ~= Survivors3)) and not v1096.Flags.UnlimitedRunning.CurrentValue then
							if Sprinting.Stamina <= 1 then
								t20:Sprint(false)
							end
						end
					end)
				else
					t16.disconnect("AutoUnsprint")
				end
			end,
			ToolTip = "Unsprints at 1 stamina to avoid the penalty. Does nothing if infinite stamina is enabled"
		})
		Self:CreateToggle({
			Name = "Always sprint",
			CurrentValue = false,
			Flag = "AutoSprint",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "No sprint tweening",
			CurrentValue = false,
			Flag = "NoSprintTween",
			Callback = function(p274)
				if p274 then
					t16.add("NoSprintTween", function(p275, p276)
						if Sprinting.__currentSpeedTween and p276 and p276:FindFirstChild("Humanoid") and Sprinting.IsSprinting then
							Sprinting.__currentSpeedTween:Cancel()
							Sprinting.__currentSpeedTween = nil
							Sprinting.__speedMultiplier.Value = (Sprinting.CurrentSprintSpeed or Sprinting.SprintSpeed) / (p276.Humanoid:GetAttribute("BaseSpeed") or 16)
						end
					end)
				else
					t16.disconnect("NoSprintTween")
				end
			end,
			ToolTip = "Makes it so you when you sprint you immediately have full sprint speed instead of gradually getting faster"
		})
		Self:CreateToggle({
			Name = "Togglable sprint",
			CurrentValue = false,
			Flag = "ToggleSprintPC",
			Callback = v1108,
			ToolTip = "Allows you to toggle sprint on/off instead of holding, For PC/Console users"
		})

		do
			Self:CreateToggle({
				Name = "No slowdown",
				CurrentValue = false,
				Flag = "NoSlowdown",
				Callback = function()
					if n31 == 291407125 then
						task.spawn(function()
							while wait() and v1096.Flags.NoSlowdown.CurrentValue do
								if LocalPlayer.Character then
									if not LocalPlayer.Character:FindFirstChild("SpeedMultipliers") then
										continue
									end

									for _, child in ipairs(LocalPlayer.Character.SpeedMultipliers:GetChildren()) do
										if not HasAbility(child.Name) and child.Value < 1 then
											v126("Changing slowness effect: ", child)
											child.Value = 1

											if not child:GetAttribute("gaveconnection") then
												child:SetAttribute("gaveconnection", true)

												local connection3 = child:GetPropertyChangedSignal("Value"):Connect(function()
													child.Value = 1
												end)

												t20.Disconnectables[#t20.Disconnectables + 1] = child.Destroying:Once(function()
													connection3:Disconnect()
													v127("the slowness affect has been destroyed")
												end)
												t20.Disconnectables[#t20.Disconnectables + 1] = connection3
											end
										end
									end
								end
							end
						end)
					else
						n1 = 448134197
						n7 = 516628452
						n30 -= 1454
						n9 += 784
						n5 += 444
						n8 = 1052382947
						n28 = 598337980
						n29 = 767136652
						n31 = 1023977354
						RestoreEffect = nil
					end
				end
			})
		end

		Self:CreateToggle({
			Name = "No slowdown from abilitys",
			CurrentValue = false,
			Flag = "NoAbilitySlowdown",
			Callback = function()
				local n78 = 326987620
				local n79 = 379295013

				task.spawn(function()
					local n80 = 145061179

					while wait() and v1096.Flags.NoAbilitySlowdown.CurrentValue do
						if not (n31 < n79) then
							n31 += 830
							n78 = 925321638
							n29 -= 267
							n80 = 931354639
							n1 += 1480
							n79 -= 203
							n6 += 873
							GetTrackLength = nil
							GrabMedkit = nil
						elseif LocalPlayer.Character then
							if LocalPlayer.Character:FindFirstChild("SpeedMultipliers") then
								for _, v in LocalPlayer.Character.SpeedMultipliers:GetChildren() do
									if HasAbility(v.Name) and v.Value < 1 then
										v126("Changing ability slowness effect: ", v)
										v.Value = 1

										if not v:GetAttribute("gaveconnection") then
											v:SetAttribute("gaveconnection", true)

											local connection3 = v:GetPropertyChangedSignal("Value"):Connect(function()
												while true do
													v.Value = 1

													if n80 ~= 145061219 then
														break
													end

													n1 -= 1541
													n80 = 776319338
													n79 -= 700
													n31 = 865155779
													n6 = 718897093
												end
											end)

											t20.Disconnectables[#t20.Disconnectables + 1] = v.Destroying:Once(function()
												connection3:Disconnect()
												v127("the slowness affect has been destroyed")

												if n78 == 326987901 then
													n79 += 1564
													n1 -= 509
													n80 = 1064848141
													n6 = 917209228
													n78 += 39
													GetService = nil
												end
											end)
											t20.Disconnectables[#t20.Disconnectables + 1] = connection3
										end
									end
								end
							end
						end
					end
				end)
			end
		})

		do
			Self:CreateToggle({
				Name = "Device spoofer",
				CurrentValue = false,
				Flag = "DeviceSpoofer",
				Callback = function(p277)
					if p277 and v1096.Flags.ServerDeviceSpooferValue.CurrentOption[1] then
						module:FireServerConnection("SetDevice", "REMOTE_EVENT", v1096.Flags.ServerDeviceSpooferValue.CurrentOption[1])
					else
						module:FireServerConnection("SetDevice", "REMOTE_EVENT", RealDevice)
					end
				end,
				ToolTip = "It is normal that your real device will show in the player list, but only to you; to everyone else, it appears as the \"Server device\", and the game treats you as if you are on \"Client device\""
			})
		end

		do
			Self:CreateDropdown({
				Name = "└── Server device",
				Options = {
					"PC",
					"Mobile",
					"Console",
					"Unknown"
				},
				CurrentOption = { RealDevice },
				MultipleOptions = false,
				Flag = "ServerDeviceSpooferValue",
				Callback = function(p278)
					if v1096.Flags.DeviceSpoofer.CurrentValue then
						module:FireServerConnection("SetDevice", "REMOTE_EVENT", p278[1])
					end
				end
			})
		end

		Self:CreateDropdown({
			Name = "└── Client device",
			Options = {
				"PC",
				"Mobile",
				"Console"
			},
			CurrentOption = { RealDevice },
			MultipleOptions = false,
			Flag = "ClientDeviceSpooferValue",
			Callback = v1108
		})

		local v2327

		v2327 = v29(Device.GetPlayerDevice, newcclosure(function(p279)
			local v2328 = tostring(debug.traceback())

			if v2328:find("Sprinting:235") or v1096.Flags.ToggleSprintPC.CurrentValue and v2328:find("function sprint") then
				return "Mobile"
			end

			if v1096.Flags.DeviceSpoofer.CurrentValue then
				return v1096.Flags.ClientDeviceSpooferValue.CurrentOption[1]
			end

			if n5 ~= 142308868 then
				return v2327(p279)
			end

			n5 -= 507
			n10 += 593
			n29 = 172040370
			n6 += 821
			n1 -= 787
			n9 -= 369
			n28 = 985931016
			n30 += 1931
			n31 = 152588432
			RagdollDisable = nil
		end))
		Self:CreateToggle({
			Name = "Always show sidebar",
			CurrentValue = false,
			Flag = "SidebarVisibility",
			Callback = function(p280)
				if p280 then
					t16.add("SidebarVisibility", function()
						if (SidebarHandler.MenusHidden) then
							if PlayerInfo then
								PlayerInfo.Position = UDim2.new(0, 100, 1, -70.0)
							end

							SidebarHandler:ToggleSidebarButtons(true)
						end
					end, 0.5)
				else
					t16.disconnect("SidebarVisibility")

					if t20.GameState == 1 and PlayerInfo then
						PlayerInfo.Position = UDim2.new(0, 20, 1, -20)
						SidebarHandler:ToggleSidebarButtons(false)
					end
				end
			end
		})
		Self:CreateToggle({
			Name = "Always show chat",
			CurrentValue = false,
			Flag = "AlwaysShowChat",
			Callback = function(p281)
				if p281 then
					t16.add("AlwaysShowChat", function()
						TextChatService:FindFirstChildOfClass("ChatWindowConfiguration").Enabled = true
					end, 0.5)
				else
					t16.disconnect("AlwaysShowChat")

					if t20.GameState == 1 then
						TextChatService:FindFirstChildOfClass("ChatWindowConfiguration").Enabled = false
					end
				end
			end
		})
		Self:CreateToggle({
			Name = "Always show player list",
			CurrentValue = false,
			Flag = "PlayerlistVisibility",
			Callback = function(p282)
				if p282 then
					t16.add("PlayerlistVisibility", function()
						if not PlayerList.ListEnabled then
							PlayerList:TogglePlayerList(true, true)
						end
					end, 0.5)
				else
					t16.disconnect("PlayerlistVisibility")

					if t20.GameState == 1 then
						return PlayerList:TogglePlayerList(false, true)
					end
				end
			end
		})
		;(function()
			local t = false
			local m = {}
			local p = { "HideKillerWins", "HidePlaytime", "HideSurvivorWins" }

			local function d(j)
				if not m[j.UserId] then
					m[j.UserId] = {}
				end

				for n, n in ipairs(p) do
					local M = j:WaitForChild("PlayerData"):WaitForChild("Settings"):WaitForChild("Privacy"):FindFirstChild(n)

					m[j.UserId][n] = M.Value
				end
			end
			local function j(n)
				for M, M in ipairs(p) do
					local p = n:WaitForChild("PlayerData"):WaitForChild("Settings"):WaitForChild("Privacy"):FindFirstChild(M)

					p.Value = false
				end
			end
			local function p(n)
				if m[n.UserId] then
					for M, N in pairs(m[n.UserId]) do
						local m = n:WaitForChild("PlayerData"):WaitForChild("Settings"):WaitForChild("Privacy"):FindFirstChild(M)

						m.Value = N
					end
				end
			end
			local function m(n)
				for M, M in ipairs(Players:GetPlayers()) do
					if n then
						d(M)
						j(M)
					else
						p(M)
					end
				end
			end

			t20.Disconnectables[#t20.Disconnectables + 1] = Players.PlayerAdded:Connect(function(k)
				if t == true then
					d(k)
					j(k)
				end
			end)
			Self:CreateToggle({ Name = "Privacy bypass", CurrentValue = false, Flag = "PrivacyBypass", Callback = function(Q)
				t = Q
				m(Q)
			end, ToolTip = "Let's you see players stats, even when they are hidden" })
		end)()

		do
			local PlayWinnerCutscene = t20.NetworkConnections.PlayWinnerCutscene
			local v2348 = clonefunction(PlayWinnerCutscene.Callback)

			Self:CreateToggle({
				Name = "Disable winner cutscene",
				CurrentValue = false,
				Flag = "AutoLobby",
				Callback = function(p283)
					if p283 then
						PlayWinnerCutscene.Callback = function()
							v127("skipped cutscene of winner")
						end
					else
						PlayWinnerCutscene.Callback = v2348
					end
				end
			})

			local StatusContainer = PlayerGui.MainUI.StatusContainer

			Self:CreateToggle({
				Name = "Reveal hallucination status",
				CurrentValue = false,
				Flag = "RevealHallucinationStatus",
				Callback = function(p284)
					if StatusContainer:FindFirstChild("Hallucination") then
						StatusContainer.Hallucination.Visible = p284
					end
				end
			})
			t20.Disconnectables[#t20.Disconnectables + 1] = StatusContainer.ChildAdded:Connect(function(child)
				if child.Name == "Hallucination" then
					if v1096.Flags.RevealHallucinationStatus.CurrentValue then
						child.Visible = true
					end
				end
			end)
		end

		Self:CreateSection("Player abilitys")

		do
			task.spawn(function()
				local u2350

				while wait(0.1) do
					if u34 then
						return
					end

					if n30 < n9 then
						xpcall(function()
							if (v1096.Flags.NosferatuMinigame.CurrentValue or v1096.Flags.AutoNosferatuReel.CurrentValue) then
								if (NeedToEscapeOrReel()) then
									if (IsKiller()) then
										if (not v1096.Flags.AutoNosferatuReel.CurrentValue) then
											return
										end
									else
										if (not v1096.Flags.NosferatuMinigame.CurrentValue) then
											return
										end
									end

									local t = (IsKiller() and LocalPlayer.Name or GetKillerUsername()) .. "NosHookQTE"

									module:FireServerConnection(t, "REMOTE_EVENT", true)

									local t = v1096.Flags.AutoNosEscapeTimeMin.CurrentValue / 100
									local k = v1096.Flags.AutoNosEscapeTimeMax.CurrentValue / 100
									local W = (t > 0 and k > 0) and (RandomNumber(t, k) / 10) or 0

									if W ~= 0 then
										wait(W)
									else
										RunService.RenderStepped:Wait()
									end

									if (not u2350) then
										task.spawn(function()
											u2350 = true

											repeat
												wait()
											until not NeedToEscapeOrReel()

											if (IsKiller()) then
												lib:Notify({ Title = "Blood Hook", Content = "Automatically reeled survivor", Duration = 6, Image = "droplet" })
											else
												lib:Notify({ Title = "Blood Hook", Content = "Successfully escaped", Duration = 5, Image = "droplet" })
											end

											u2350 = false
										end)
									end
								else
									wait(0.05)
								end
							end
						end, function(p285)
							v126("error in nos auto qte:", tostring(p285))
							wait()
						end)
					else
						n30 = 188330122
						n7 = 880105072
						n5 -= 349
						n6 += 576
						n1 = 573042509
						n2 = 1069377477
						n31 = 40040049
						n29 = 577922987
						n9 -= 987
						__SCRIPT = nil
						Turn360 = nil
					end
				end
			end)
		end

		GetCharges = function()
			local n81 = 339209523
			local ok, result = pcall(function()
				if HasAbility("Reroll") then
					return tonumber(PlayerGui.MainUI.AbilityContainer.Reroll.Charges.Text)
				end

				if n9 ~= 202622311 then
					n81 -= 1653
					n29 = 241502693
					n9 = 436689992
					n30 -= 503
					n1 = 760873654
					CompleteGenerators = nil
					MassInfectionActive = nil
					TableFindThatWorks = nil
					ins_custom_files = nil
				end
			end)

			if not (n81 < n28) then
				n81 += 1202
				n5 = 172428618
				n30 += 1389
				n9 = 548487468
				n6 += 505
				n31 = 746725595
				n1 -= 1511
				n28 = 680596128
				n8 += 1213
				n29 = 1060655499
				autoplaymgr = nil
			elseif not ok then
				return 9e9
			end

			local v2358 = result or 9e9

			return v2358
		end

		local n82 = 0

		Self:CreateToggle({
			Name = "Auto flip coin",
			CurrentValue = false,
			Flag = "AutoCoinFlip",
			Callback = function()
				task.spawn(function()
					while wait() and (v1096.Flags.AutoCoinFlip.CurrentValue) do
						if (GetCharges() < v1096.Flags.MaxCharges.CurrentValue and HasAbilityReady("CoinFlip") and (tick() - n82 >= 2.5)) then
							module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "CoinFlip")
							n82 = tick()
						end
					end
				end)
			end
		})
		Self:CreateSlider({
			Name = "└── Max charges",
			Range = {
				1,
				3
			},
			Increment = 1,
			StrictIncrement = true,
			Suffix = "",
			CurrentValue = 1,
			Flag = "MaxCharges",
			Callback = v1108
		})

		do
			local v2360

			v2360 = v29(cl_ConstructQTE.new, newcclosure(function(p286, p287)
				local v2361 = v2360(p286, p287)

				task.spawn(function()
					if v1096.Flags.InfiniteDisarmAttempts.CurrentValue then
						v2361.FailedAttempts = -math.huge
						v126("patched FailedAttempts")
					end

					if v1096.Flags.AutoDisarmMinigame.CurrentValue then
						local v2362 = RandomNumber(v1096.Flags.AutoDisarmTimeMin.CurrentValue * 10, v1096.Flags.AutoDisarmTimeMax.CurrentValue * 10) / 10

						task.spawn(function()
							setthreadidentity(8)
							lib:Notify({
								Title = "Auto Disarm",
								Content = string.format("Disarm time: %1.fs", v2362),
								Duration = v2362 - 0.1,
								Image = "loader-circle"
							})
						end)
						wait(v2362)
						v2361.Progress = 100
						v2361:Destroy()
						task.spawn(function()
							setthreadidentity(8)
							lib:Notify({
								Title = "Auto Disarm",
								Content = "The disarm minigame was skipped successfully.",
								Duration = 7,
								Image = "check"
							})
						end)
					end
				end)

				return v2361
			end))
		end

		Self:CreateToggle({
			Name = "TP Slash",
			CurrentValue = false,
			Flag = "TPSlash",
			Callback = v1108,
			ToolTip = "Teleports you behind the killer when slashing as shedletsky (no visible teleport on your screen, but others do see it)"
		})
		Self:CreateToggle({
			Name = "TP One Shot",
			CurrentValue = false,
			Flag = "TPOneShot",
			Callback = v1108,
			ToolTip = "Teleports you behind the killer when shooting (no visible teleport on your screen, but others do see it)"
		})
		Self:CreateToggle({
			Name = "Auto chicken",
			CurrentValue = false,
			Flag = "AutoChicken",
			Callback = function(p288)
				if p288 then
					t16.add("AutoChicken", function()
						if (HasAbilityReady("FriedChicken") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")) then
							if (LocalPlayer.Character.Humanoid.Health <= v1096.Flags.AutoChickenHealth.CurrentValue) then
								local t = GetClosestKiller(5000)

								if ((not v1096.Flags.AutoChickenFar.CurrentValue or not t) or (LocalPlayer.Character.HumanoidRootPart.Position - t.HumanoidRootPart.Position).magnitude >= 100) then
									module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "FriedChicken")
								end
							end
						end
					end, 0.4)
				else
					t16.disconnect("AutoChicken")
				end
			end
		})
		Self:CreateSlider({
			Name = "└── Health limit",
			Range = {
				1,
				99
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 40,
			Flag = "AutoChickenHealth",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "└── Only when far from killer",
			CurrentValue = false,
			Flag = "AutoChickenFar",
			Callback = v1108,
			TextMode = true
		})
		Self:CreateToggle({
			Name = "Stun spy",
			CurrentValue = false,
			Flag = "StunSpy",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Reveal ability trajectory",
			CurrentValue = false,
			Flag = "RevealTrajectory",
			ToolTip = "Shows you the path of abilities like mass infection, entanglement, walkspeed override, etc. so you can dodge it easier",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Walk over digital footprint",
			CurrentValue = false,
			Flag = "WalkOverDF",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Walk over trails",
			CurrentValue = false,
			Flag = "WalkOverTrail",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Walk over nos puddles",
			CurrentValue = false,
			Flag = "WalkOverPuddles",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Anti block",
			CurrentValue = false,
			Flag = "Antiblock",
			ToolTip = "Physically prevents your M1 from being sent if catsaken detects it's going to hit a player that IS CURRENTLY blocking",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Anti backstab",
			CurrentValue = false,
			Flag = "Antibackstab",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Azure trap spoof",
			CurrentValue = false,
			Flag = "AzureSpoof",
			Callback = function(p289)
				local Radius = Config10.ConstructConfigs.GroundBulb.Radius
				local Radius2 = Config10.ConstructConfigs.Vine.Radius

				if p289 then
					while v1096.Flags.AzureSpoof.CurrentValue do
						if not RunService.Heartbeat:Wait() then
							break
						end

						if t20.GameState == 1 then
							local Character_3 = LocalPlayer.Character

							if Character_3 then
								local HumanoidRootPart = Character_3:FindFirstChild("HumanoidRootPart")

								if HumanoidRootPart then
									local Humanoid = Character_3:FindFirstChild("Humanoid")

									if not Humanoid or Humanoid.Health <= 0 then
										if n6 == 285545878 then
											continue
										end

										n29 = 104105038
										n30 += 2047
										n2 += 1166
										n3 -= 1004
										n31 += 961
										n9 += 524
										n1 = 780050373
										n6 -= 1149
										n5 = 569088233
										GetAutoGearsVar = nil
									end

									local v2369 = false

									for _, azureDebri in ipairs(t20.AzureDebris) do
										if (HumanoidRootPart.Position - azureDebri.RootPart.Position).magnitude <= (azureDebri.Name == "GroundBulbModel" and Radius or Radius2) + 5 then
											v2369 = true

											break
										end
									end

									if v2369 then
										local Velocity = HumanoidRootPart.Velocity

										HumanoidRootPart.Velocity = Humanoid.MoveDirection * 12 * Vector3.new(1, 0, 1)

										local v2373 = coroutine.running()

										t20.AltSpoofedVelocity = Velocity
										RunService:BindToRenderStep("AzureSpoof", Enum.RenderPriority.First.Value, function()
											RunService:UnbindFromRenderStep("AzureSpoof")
											t20.AltSpoofedVelocity = nil
											HumanoidRootPart.Velocity = Velocity
											task.spawn(v2373)
										end)
										coroutine.yield()
									end
								end
							end
						end
					end
				end
			end,
			ToolTip = "Allows you to run over azure traps like vines and bulbs when sprinting as if you were actually walking, making it so you cannot get trapped"
		})
		task.spawn(function()
			while wait(0.1) do
				pcall(function()
					if v1096.Flags.WalkOverDF.CurrentValue then
						for t, t in pairs(t20.DoeDebris) do
							if t:FindFirstChild("TouchInterest") then
								t.TouchInterest:Destroy()
							end
						end
					end
				end)
				pcall(function()
					if v1096.Flags.WalkOverTrail.CurrentValue then
						for t, t in pairs(t20.DoeTrailDebris) do
							if t:FindFirstChild("TouchInterest") then
								t.TouchInterest:Destroy()
							end
						end
					end
				end)
				pcall(function()
					if v1096.Flags.WalkOverPuddles.CurrentValue then
						for t, t in pairs(t20.NosDebris) do
							if t:FindFirstChild("TouchInterest") then
								t.TouchInterest:Destroy()
							end
						end
					end
				end)
			end
		end)

		local v2380

		v2380 = v29(Util.IsOnScreen, newcclosure(function(...)
			if v1096.Flags.ProtectionBreakWall.CurrentValue then
				return true
			end

			return v2380(...)
		end))

		do
			local v2381
			local n83 = -9e9

			v2381 = v29(module.FireServerConnection, newcclosure(function(p290, ...)
				if u34 then
					return v2381(p290, ...)
				end

				local n84 = 561930487
				local t66 = { ... }

				if t66[1] == "UpdateHeartbeatAsync" then
					return v126("yeah, no...")
				end

				if t66[1] == "SetDevice" and v1096.Flags.DeviceSpoofer.CurrentValue then
					t66[3] = v1096.Flags.ServerDeviceSpooferValue.CurrentOption[1]
				else
					if t66[1] == LocalPlayer.Name .. "DusekkarCancel" and (v1096.Flags.ProtectionBreakWall.CurrentValue or v1096.Flags.ProtectionBreak.CurrentValue) then
						return
					end

					if t66[1] == "SetSpectateTarget" and v1096.Flags.AntiDetectSpectate.CurrentValue and t66[3] ~= nil then
						return
					end

					if t66[1] == LocalPlayer.Name .. "666Crashed" and t20.PursuitTracker then
						if v1096.Flags.DemonicPursuitAntiCrash.CurrentValue then
							repeat
								wait()
							until Config8.PursuitLength <= tick() - t20.PursuitTracker
						end

						if v1096.Flags.DemonicPursuitHitboxTrail.CurrentValue then
							return RunService:UnbindFromRenderStep("666PursuitCharge")
						end

						return v2381(p290, unpack(t66))
					end

					if t66[1] == LocalPlayer.Name .. "NosAirDiveLand" and v1096.Flags.NosHitboxTrail.CurrentValue then
						return v126("nos hitbox trail thing")
					end

					if v1096.Flags.VoidRushAntiCrash.CurrentValue and t66[1] == LocalPlayer.Name .. "VoidRushCollision" and t20.VoidRushTracker then
						repeat
							wait()
						until Config6.VoidRushDashLength <= tick() - t20.VoidRushTracker

						return v2381(p290, unpack(t66))
					end

					if t66[1] == LocalPlayer.Name .. "C00lkiddCollision" then
						if v1096.Flags.FlyOverride.CurrentValue then
						end

						return (v2381(p290, unpack(t66)))
					end

					if v1096.Flags.ChargeAntiCrash.CurrentValue and t66[1] == LocalPlayer.Name .. "Guest1337Collision" then
						if n84 ~= n7 then
							return
						end

						n10 += 755
						n1 = 279377508
						n7 = 538697504
						n30 = 833421050
						n84 = 748263069
						n31 = 464895428
						n5 -= 1752
						n6 += 1438
						n8 = 220980337
						n28 = 922823264
						IsFacingBack = nil
						IsKiller = nil
					elseif v1096.Flags.Antiblock.CurrentValue and t66[1] == "UseActorAbility" and t66[3] == GetM1Name() then
						local v2385

						for _, survivor in pairs(t20.Survivors) do
							if survivor:GetAttribute("isblocking") and IsFacing(survivor.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart, 0.73) then
								v2385 = true
								v126("fucking guests...")
							end
						end

						if v2385 then
							setthreadidentity(8)

							return lib:Notify({
								Title = "Anti block",
								Content = "Prevented an attack against a block",
								Duration = 6,
								Image = "shield"
							})
						end
					end
				end

				if t47.Enstrangle and tostring(LocalPlayer.Character) == "Azure" and v1096.Flags.SilentAimToggle.CurrentValue and t66[1] == LocalPlayer.Name .. "AzureUpdateCameraLookVector" then
					local v2388 = GetClosestSurvivor(60)
					local Position = v2388 and v2388:FindFirstChild("HumanoidRootPart") and v2388.HumanoidRootPart.Position

					if Position then
						t66[3] = Position
					end
				end

				if tostring(LocalPlayer.Character) == "Azure" and t66[1] == LocalPlayer.Name .. "AzureUpdateMouse" and _G.UNLOCK_AZURE_FEATUREZ then
					if v1096.Flags.AzureTentacleKick.CurrentValue then
						LocalPlayer.Character.HumanoidRootPart.Anchored = true
						task.spawn(function()
							wait(2)

							if tick() - n83 >= 1 then
								LocalPlayer.Character.HumanoidRootPart.Anchored = false
							end
						end)
						n83 = tick()
						t66[3] = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 7000, 0)
					elseif v1096.Flags.AzureThrowVelocity.CurrentValue > 1 then
						t66[3] *= 1 + v1096.Flags.AzureThrowVelocity.CurrentValue / 10
					end
				end

				return v2381(p290, unpack(t66))
			end))
		end

		local v2390

		v2390 = v29(CharacterReplication.Serialize, newcclosure(function(...)
			if t20.GameState ~= 1 then
				return v2390(...)
			end

			if tick() - t20.RoundStart < 3 then
				return v2390(...)
			end

			local t67 = { ... }

			if typeof(t67[1]) ~= "CFrame" then
				return v2390(...)
			end

			if typeof(t67[2]) ~= "Vector3" then
				return v2390(...)
			end

			if t20.SpoofedVelocity then
				return v2390(t67[1], t20.SpoofedVelocity)
			end

			if t20.AltSpoofedVelocity then
				return v2390(t67[1], t20.AltSpoofedVelocity)
			end

			return v2390(...)
		end))
		IsFacingBack = function(p291, p292)
			local v2392 = p291.Position - p292.Position
			local v2393 = -p292.CFrame.LookVector
			local v2394 = v2392:Dot(v2393)

			if v2394 <= 0 or v2394 > 7 then
				return false
			end

			local Magnitude = (v2392 - v2393 * v2394).Magnitude

			return Magnitude <= 3.5
		end
		task.spawn(function()
			while wait() do
				if (v1096.Flags.AutoBackstab.CurrentValue) then
					local t = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local k = GetClosestKiller(15)

					if (k and k:FindFirstChild("HumanoidRootPart") and t and HasAbilityReady("Dagger")) then
						if (IsFacingBack(t, k.HumanoidRootPart)) then
							local t = tick()

							StartAimbotting(k, function()
								module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", "Dagger")

								local W = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

								W:MoveTo(k.HumanoidRootPart.Position)
								stareFunc(k)

								return (tick() - t <= 2) and (LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3) and not HasNotification("stabbed")
							end)
						end
					end
				end
			end
		end)
		Self:CreateSection("Auto M1", "Right")
		Self:CreateToggle({
			Name = "Auto Slash/M1",
			CurrentValue = false,
			Flag = "AutoUseM1",
			Callback = function()
				task.spawn(function()
					while wait() and (v1096.Flags.AutoUseM1.CurrentValue) do
						if HasAbilityReady(GetM1Name()) then
							local t = v1096.Flags.AutoAutoM1Radius.CurrentValue and GetMaxM1Reach() or v1096.Flags.AutoM1Radius.CurrentValue
							local m = LocalPlayer.Character and ((IsKiller() and GetClosestSurvivor(t)) or (LocalPlayer.Character.Name == "Shedletsky" and GetClosestKiller(t)))

							if (m and m:GetAttribute("Invincible") ~= 1 and m:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not t20:HasHitReg()) then
								if ((not v1096.Flags.AutoM1FaceCheck.CurrentValue or v1096.Flags.Mouse1Aimbot.CurrentValue) or IsFacing(m.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart, 0.73)) then
									module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", GetM1Name())
								end
							end
						end
					end
				end)
			end
		})
		Self:CreateToggle({
			Name = "Face check",
			CurrentValue = true,
			Flag = "AutoM1FaceCheck",
			Callback = v1108,
			TextMode = true,
			ToolTip = "BYPASSED if M1 Assist is enabled because it automatically faces the survivor anyway"
		})
		Self:CreateSlider({
			Name = "Radius",
			Range = {
				6,
				15
			},
			Increment = 1,
			Suffix = "",
			CurrentValue = 10,
			Flag = "AutoM1Radius",
			Callback = v1108
		})
		Self:CreateToggle({
			Name = "Auto radius",
			CurrentValue = true,
			Flag = "AutoAutoM1Radius",
			Callback = v1108,
			TextMode = true,
			ToolTip = "Automatically get the reach of your M1 that changes for each killer, instead of one static setting"
		})

		do
			xpcall(function()
				Animations:CreateSection("Movement animations")

				local t = {}
				local S = {}
				local x = {}
				local g = {}
				local C = {}
				local f = {}
				local P = Killers2
				local D = Survivors2
				local k = {}
				local i = {}

				local function O(q)
					q.Walk = {}
					q.Run = {}
					q.Idle = {}
					q.InjuredWalk = {}
					q.InjuredRun = {}
					q.InjuredIdle = {}
				end

				O(k)
				O(i)

				function scan_runwalkidle(O, q)
					local X = O:GetChildren()

					for O = 1, #X do
						local T = X[O]

						if T.Name == "Sixer" or T.Parent.Name == "Sixer" then
							continue
						end

						if q and T.Parent.Parent.Name == "Skins" then
							scan_runwalkidle(T, true)
						elseif T:IsA("Folder") and T:FindFirstChild("Config") then
							local O = require(T.Config)
							local X

							if q then
								local q = (T.Parent.Parent.Name == "Killers" and P or D)[T.Parent.Name]
								local o = require(q.Config)

								X = string.format("%s (%s)", o.DisplayName or q.Name, O.DisplayName)
							else
								X = string.format("%s", O.DisplayName or T.Name)
							end

							local q = O.Animations

							if q then
								if q.Walk and not table.find(t, q.Walk) then
									k.Walk[X] = q.Walk
									i.Walk[#i.Walk + 1] = X
								end

								if q.Run and not table.find(S, q.Run) then
									k.Run[X] = q.Run
									i.Run[#i.Run + 1] = X
								end

								if q.Idle and not table.find(x, q.Idle) then
									k.Idle[X] = q.Idle
									i.Idle[#i.Idle + 1] = X
								end

								if q.InjuredWalk and not table.find(g, q.InjuredWalk) then
									k.InjuredWalk[X] = q.InjuredWalk
									i.InjuredWalk[#i.InjuredWalk + 1] = X
								end

								if q.InjuredRun and not table.find(C, q.InjuredRun) then
									k.InjuredRun[X] = q.InjuredRun
									i.InjuredRun[#i.InjuredRun + 1] = X
								end

								if q.InjuredIdle and not table.find(f, q.InjuredIdle) then
									k.InjuredIdle[X] = q.InjuredIdle
									i.InjuredIdle[#i.InjuredIdle + 1] = X
								end
							end
						end
					end
				end

				scan_runwalkidle(P)
				scan_runwalkidle(D)
				scan_runwalkidle(Killers, true)
				scan_runwalkidle(Survivors, true)
				v127(string.format("[Animations] inserted: %d walk anims, %d run anims, %d idle anims, %d injured walk anims, %d injured run anims, %d injured idle anims", #i.Walk, #i.Run, #i.Idle, #i.InjuredWalk, #i.InjuredRun, #i.InjuredIdle))

				local function t(Q)
					local R = { "Default" }
					local D = i[Q]

					for Q = 1, #D do
						R[#R + 1] = D[Q]
					end

					return R
				end
				local function Q(R)
					R = R[1]
					ContentProvider:PreloadAsync({ k[R] })
					v127("cached", R)
				end

				Animations:CreateLabel("Animations are FE — Everyone can see them like you do " .. utf8.char(9989))
				Animations:CreateToggle({ Name = "Replace run animations", CurrentValue = false, Flag = "ReplaceRunAnims", Callback = v1108 })
				Animations:CreateDropdown({ Name = "Basic run", Options = t("Run"), CurrentOption = { "Default" }, Flag = "SelectedRunAnimation", Callback = Q, Searchable = true })
				Animations:CreateDropdown({ Name = "Injured run", Options = t("InjuredRun"), CurrentOption = { "Default" }, Flag = "SelectedInjuredRunAnimation", Callback = Q, Searchable = true })
				Animations:CreateToggle({ Name = "Replace walk animations", CurrentValue = false, Flag = "ReplaceWalkAnims", Callback = v1108 })
				Animations:CreateDropdown({ Name = "Basic walk", Options = t("Walk"), CurrentOption = { "Default" }, Flag = "SelectedWalkAnimation", Callback = Q, Searchable = true })
				Animations:CreateDropdown({ Name = "Injured walk", Options = t("InjuredWalk"), CurrentOption = { "Default" }, Flag = "SelectedInjuredWalkAnimation", Callback = Q, Searchable = true })
				Animations:CreateToggle({ Name = "Replace idle animations", CurrentValue = false, Flag = "ReplaceIdleAnims", Callback = v1108 })
				Animations:CreateDropdown({ Name = "Basic idle", Options = t("Idle"), CurrentOption = { "Default" }, Flag = "SelectedIdleAnimation", Callback = Q, Searchable = true })
				Animations:CreateDropdown({ Name = "Injured idle", Options = t("InjuredIdle"), CurrentOption = { "Default" }, Flag = "SelectedInjuredIdleAnimation", Callback = Q, Searchable = true })
				Animations:CreateToggle({ Name = "Fake injured animations", CurrentValue = false, Flag = "FakeInjuredAnims", Callback = v1108 })
				Animations:CreateSection("Ghost animations")
				Animations:CreateToggle({ Name = "Enable ghost animations", CurrentValue = false, Flag = "GhostAnims", Callback = v1108 })
				Animations:CreateDivider()
				Animations:CreateToggle({ Name = "Ghost M1 Animation", CurrentValue = false, Flag = "GhostM1", Callback = v1108 })

				local t = {}

				for t = 1, #t20.Metas.GhostAnimationsOrder do
					local Q = t20.Metas.GhostAnimationsOrder[t]
					local t = t20.Metas.GhostAnimations[Q]
					local N = {}

					for z, R in ipairs(t) do
						N[z] = R.Flag:sub(#Q + 1, #R.Flag)
					end

					Animations:CreateDropdown({ Name = Q, Options = N, CurrentOption = {}, Flag = Q .. "GhostAnimation", MultipleOptions = true, Callback = v1108, Searchable = true })
				end

				Animations:CreateLabel("This section is not finished.")

				local t = obj.CATSAKEN_ANIMS or {}

				obj.CATSAKEN_ANIMS = t

				for Q, Q in ipairs({ "Walk", "Run", "Idle" }) do
					local p = Instance.new("Animation")

					t[Q] = p
					t["Injured" .. Q] = p
				end

				function getselanim(Q)
					return v1096.Flags["Selected" .. Q .. "Animation"].CurrentOption[1]
				end
				function uwubitch(Q)
					xpcall(function()
						local p = Q and Q:WaitForChild("HumanoidRootPart", 7)

						if (not p) then
							return
						end

						local d = p and Q:WaitForChild("Humanoid", 7)

						if (not d) then
							return
						end

						local p = d:WaitForChild("Animator", 5)

						if (not p) then
							return
						end

						if not Q.Parent or Q.Parent == Spectating then
							return
						end

						local n = (t20:GetSkinConfig(Q) or {}).Animations

						if not n then
							n = t20:GetConfig(Q) and t20:GetConfig(Q).Animations
						end

						if not n then
							return
						end

						local Q = table.clone(debug.getupvalue(Actors.ApplySkinDataToActorInfo, 2))
						local m = n.Run or Q.Run
						local M = n.Walk or Q.Walk
						local N = n.Idle or Q.Idle
						local n = Q.InjuredRun
						local z = Q.InjuredWalk
						local R = Q.InjuredIdle

						local function Q()
							return p.AnimationPlayed:Connect(function(p)
								if t[p.Animation] then
									return
								end

								local D = nil
								local A

								if p.Animation.AnimationId == n then
									D = "InjuredRun"
								end

								if p.Animation.AnimationId == z then
									D = "InjuredWalk"
								end

								if p.Animation.AnimationId == R then
									D = "InjuredIdle"
								end

								if p.Animation.AnimationId == m then
									D = "Run"
								end

								if p.Animation.AnimationId == M then
									D = "Walk"
								end

								if p.Animation.AnimationId == N then
									D = "Idle"
								end

								if not D then
									return
								end

								local m = v1096.Flags.FakeInjuredAnims.CurrentValue and (D == "Run" or D == "Walk" or D == "Idle")

								if ((D:find("Idle") and not v1096.Flags.ReplaceIdleAnims.CurrentValue) or (D:find("Run") and not v1096.Flags.ReplaceRunAnims.CurrentValue) or (D:find("Walk") and not v1096.Flags.ReplaceWalkAnims.CurrentValue)) and not m then
									return
								end

								A = getselanim(D)

								if m then
									A = (D == "Run" and n) or (D == "Walk" and z) or R
								else
									if A == "Default" then
										return
									end

									if not A then
										return v126("hey!", p.Animation.AnimationId)
									end

									A = k[D][A]
								end

								local k = p.Priority

								p.Priority = Enum.AnimationPriority.Core

								local m = t[D]

								m.AnimationId = A

								local t = d:LoadAnimation(m)

								t.Priority = D:find("Idle") and Enum.AnimationPriority.Idle or Enum.AnimationPriority.Movement
								TrackingConnection:Disconnect()
								t:Play(0.15)
								task.spawn(function()
									while p.IsPlaying do
										if D:find("Run") then
											t:AdjustSpeed(d.WalkSpeed / Sprinting.SprintSpeed)
										elseif D:find("Idle") then
											t:AdjustSpeed(1)
										elseif D:find("Walk") then
											t:AdjustSpeed(d.WalkSpeed / d:GetAttribute("BaseSpeed") or 12)
										end

										RunService.RenderStepped:Wait()
									end

									p.Priority = k
									t:Stop(0.15)
								end)
								TrackingConnection = Q()
								t20.Disconnectables[#t20.Disconnectables + 1] = TrackingConnection
							end)
						end

						TrackingConnection = Q()
						t20.Disconnectables[#t20.Disconnectables + 1] = TrackingConnection
					end, function(t)
						v126("error in animations tracker func:", tostring(t))
					end)
				end

				t20.Disconnectables[#t20.Disconnectables + 1] = LocalPlayer.CharacterAdded:Connect(function(t)
					uwubitch(t)
				end)
				uwubitch(LocalPlayer.Character)
			end, function(p293)
				v126("error in animation tab:", tostring(p293))
			end)
		end

		Game:CreateSection("Map")
		Game:CreateToggle({
			Name = "Spike noclip",
			CurrentValue = false,
			Flag = "SpikeNoclip",
			Callback = function()
				task.spawn(function()
					for k, v in t20.Spikes, nil, nil do
						table.remove(t20.Spikes, k)
						v:Destroy()
					end

					local n85 = 194868339

					if n31 == n85 then
						n31 += 1471
						n3 = 874461030
						n30 -= 354
						n7 += 1899
						n1 = 729053221
					end
				end)
			end
		})

		if _G.UNLOCK_TP_ALL then
			Game:CreateButton({
				Name = "Break match",
				ToolTip = "Anchors everyone, Disables all of everyones abilities, and teleports them in random places until the round ends\nRequries Medkit or any bloxy cola to be on the map (not in inventory)",
				Callback = function()
					if n1 == 426030883 then
						n28 = 51124367
						n9 = 532993168
						n30 += 566
						n5 += 534
						n10 += 2006
						n1 += 466
						n31 = 1044354981
						n6 = 10829139
						n7 = 437940244
						FindAnimationAsset = nil
					elseif #t20.Items > 0 then
						local HumanoidRootPart = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
						local t68 = {}

						for _, item in ipairs(t20.Items) do
							if item and item.Parent and item:FindFirstChild("ItemRoot") and not item.ItemRoot.Anchored then
								HumanoidRootPart.CFrame = item.ItemRoot.CFrame + Vector3.new(0, 1.5, 0)
								wait(0.1)
								table.insert(t68, item)
								wait(0.3)
							end
						end

						RunService.Heartbeat:Connect(function()
							for _, v in ipairs(t68) do
								if v and v.Parent and v:FindFirstChild("ItemRoot") and not v.ItemRoot.Anchored then
									v.ItemRoot.AssemblyLinearVelocity = Vector3.new(99999, 99999, 99999)
									v.ItemRoot.AssemblyAngularVelocity = Vector3.new(99999, 99999, 99999)
								end
							end
						end)
					end
				end
			})
		end

		Game:CreateToggle({
			Name = "Fullbright",
			CurrentValue = false,
			Flag = "Fullbright",
			Callback = function(p294)
				v131[p294 and "Enable" or "Disable"]()
			end
		})
		Game:CreateToggle({
			Name = "Disable lobby blur",
			CurrentValue = false,
			Flag = "DisableLobbyBlur",
			Callback = function(p295)
				if t20.GameState == 0 then
					if not Lighting:FindFirstChild("DepthOfField") then
						return v126("DisableLobbyBlur: hmmmmm")
					end

					Lighting.DepthOfField.Enabled = not p295
				end
			end,
			ToolTip = "Disable the depth of field effect in the lobby that forsaken added for no reason"
		})
		t20.Disconnectables[#t20.Disconnectables] = Lighting.ChildAdded:Connect(function(child)
			if v1096.Flags.DisableLobbyBlur.CurrentValue and child.Name == "DepthOfField" then
				child.Enabled = false
			end
		end)
		Game:CreateSection("Currency")
		SearchTool = function(p296)
			for _, v in t20.Items, nil, nil do
				if v.Name == p296 and v.ItemRoot.Velocity.Magnitude <= 2 then
					return v
				end
			end

			if n30 == 28953323 then
				return nil
			end

			n5 += 876
			n7 -= 1045
			n8 = 969655321
			n30 -= 1386
			n1 = 486001167
			n28 += 2018
			n10 = 107846191
			n29 -= 487
			n31 += 279
		end

		do
			GrabTool = function(p297)
				if t20.GameState ~= 1 then
					return
				end

				if not p297 then
					return
				end

				local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

				if not v1096.Flags.DisableAnticheat.CurrentValue then
					if not LocalPlayer.Character:GetAttribute("acbypass") then
						if not HumanoidRootPart then
							return
						end

						local v2467 = #LocalPlayer.Character:QueryDescendants("Tool#" .. p297.Name) > 0

						if LocalPlayer.Backpack:FindFirstChild(p297.Name) or v2467 then
							return
						end

						pcall(function()
							if HumanoidRootPart and p297:FindFirstChild("ItemRoot") then
								local CFrame_ = HumanoidRootPart.CFrame

								HumanoidRootPart.CFrame = p297.ItemRoot.CFrame

								local now2 = tick()
								local exitTo

								while true do
									local ProximityPrompt = p297:FindFirstChild("ItemRoot") and p297.ItemRoot:FindFirstChild("ProximityPrompt")

									if not ProximityPrompt then
										break
									end

									fireproximityprompt(ProximityPrompt)
									wait()

									if tick() - now2 >= 4 or not (p297.Parent ~= LocalPlayer.Backpack and p297.Parent) then
										exitTo = 1

										break
									end
								end

								if exitTo ~= 1 then
									return
								end

								if tick() - now2 >= 4 then
									return v126("timed out while picking up item")
								end

								HumanoidRootPart.CFrame = CFrame_
							end
						end)

						return
					end
				end
			end
		end

		YoinkLoot = function(p298)
			if IsKiller() then
				return
			end

			if t20.GameState ~= 1 then
				return
			end

			if u1181 or u1182 or u1180 then
				return
			end

			if v1096.Flags.AutoRomania.CurrentValue or p298 then
				u1181 = true

				if n29 == n1 then
					n6 = 989955292

					local v2472 = n30

					repeat
						n30 = v2472 - 450
						n7 -= 1832
						n1 += 1017
						n28 += 1714
						n31 -= 345
						n29 += 1560
						n8 -= 290
						v2472 = n2 + 675
						n2 = v2472
						GrabCola = nil
					until nil < nil

					GetInfStamMethod = nil
				else
					xpcall(function()
						GrabTool(SearchTool("BloxyCola"), true)

						if n29 == n28 then
							n30 = 925256848
							n8 += 989
							n28 = 906430629
							n29 = 322256172
							n6 -= 1967
							n1 += 353
						else
							GrabTool(SearchTool("Medkit"), true)
						end
					end, function(p299)
						v126("error when grabbing items:", tostring(p299))

						if n8 ~= 589688394 then
							n2 += 524
							n7 -= 559
							n8 = 1051634694
							n1 -= 3
							n30 = 1008564723
							n28 -= 564
						end
					end)
				end

				u1181 = false
			end
		end
		Game:CreateToggle({
			Name = "Autofarm gingerbread [DISABLED]",
			CurrentValue = false,
			Flag = "AutofarmGingerbread",
			Callback = v1108
		})
		Game:CreateToggle({
			Name = "Autofarm sukkars [DISABLED]",
			CurrentValue = false,
			Flag = "AutofarmSukkars",
			Callback = v1108
		})

		do
			local n86

			GameStateChanged(function()
				n86 = 159922965

				if not (t20.GameState ~= 1 or u1180) then
					pcall(YoinkLoot)

					if n86 < n31 then
						pcall(YoinkGears)
					else
						n28 = 858249319
						n9 = 580739921
						n29 += 1778
						n6 = 93051659
						n31 = 332166682
						n7 -= 89
						n1 = 493885170
						n86 -= 746
						n30 += 1934
						n10 += 217
						UpdateSpectators = nil
						NotifyAutofarmMinigame = nil
					end
				end
			end)
		end

		Game:CreateSection("Items")
		GrabMedkit = function()
			local Medkit = SearchTool("Medkit")

			if not Medkit then
				return v126("no medkit found")
			end

			GrabTool(Medkit)
		end
		GrabCola = function()
			local BloxyCola = SearchTool("BloxyCola")

			if not BloxyCola then
				return v126("no bloxy cola found")
			end

			GrabTool(BloxyCola)
		end

		do
			local u2476
			local u2477

			BringItems = function()
				if u2476 or u2477 then
					return
				end

				if t20.GameState ~= 1 then
					return
				end

				if u1180 then
					return
				end

				u2476 = true
				v127("BringItems() result:", pcall(function()
					local CFrame_ = LocalPlayer.Character.HumanoidRootPart.CFrame

					if not (#t20.Items > 0) then
						return lib:Notify({
							Title = "No",
							Content = "There are not any items on the map to bring"
						})
					end

					local Character_3 = LocalPlayer.Character

					if not Character_3 then
						return
					end

					local HumanoidRootPart = Character_3:WaitForChild("HumanoidRootPart", 2)

					if not HumanoidRootPart then
						return
					end

					local t69 = {}

					for _, item in ipairs(t20.Items) do
						if item and item.Parent and item:FindFirstChild("ItemRoot") and not item.ItemRoot.Anchored then
							local now2 = tick()
							local connection3

							connection3 = RunService.Heartbeat:Connect(function()
								if tick() - now2 >= 1 then
									connection3:Disconnect()
								end

								for _, v in ipairs(t69) do
									if v and v.Parent and v:FindFirstChild("ItemRoot") and not v.ItemRoot.Anchored then
										v.ItemRoot.CFrame = CFrame_
										v.ItemRoot.Velocity = Vector3.zero
									else
										connection3:Disconnect()
									end
								end
							end)
							t20.Disconnectables[#t20.Disconnectables + 1] = connection3
							HumanoidRootPart.CFrame = item.ItemRoot.CFrame + Vector3.new(0, 1.5, 0)
							wait(0.1)
							table.insert(t69, item)
							wait(0.3)
						end
					end

					LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame_
				end))
				u2476 = false
			end
			DeleteItems = function()
				if u2477 or u2476 then
					return
				end

				if t20.GameState ~= 1 then
					return
				end

				if u1180 then
					return
				end

				local n87 = 530767930

				u2477 = true

				if n3 < n87 then
					v127("DeleteItems() result:", pcall(function()
						local CFrame_ = LocalPlayer.Character.HumanoidRootPart.CFrame

						if #t20.Items > 0 then
							local Character_3 = LocalPlayer.Character

							if not Character_3 then
								return
							end

							local HumanoidRootPart = Character_3:WaitForChild("HumanoidRootPart", 2)

							if not HumanoidRootPart then
								return
							end

							local t70 = {}

							for _, item in ipairs(t20.Items) do
								if item and item.Parent and item:FindFirstChild("ItemRoot") and not item.ItemRoot.Anchored then
									local now2 = tick()
									local connection3

									connection3 = RunService.Heartbeat:Connect(function()
										if tick() - now2 >= 1 then
											connection3:Disconnect()
										end

										for _, v in ipairs(t70) do
											if v and v.Parent and v:FindFirstChild("ItemRoot") and not v.ItemRoot.Anchored then
												v.ItemRoot.CFrame = CFrame.new(0, -1000, 0)
												v.ItemRoot.Velocity = Vector3.zero
											else
												connection3:Disconnect()
											end
										end
									end)
									t20.Disconnectables[#t20.Disconnectables + 1] = connection3
									HumanoidRootPart.CFrame = item.ItemRoot.CFrame + Vector3.new(0, 1.5, 0)
									wait(0.1)
									table.insert(t70, item)
									wait(0.3)
								end
							end
						else
							return lib:Notify({
								Title = "No",
								Content = "There are not any items on the map to delete"
							})
						end

						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame_
					end))
				else
					n28 -= 794
					n10 = 810573037
					n31 -= 2037
					n30 += 300
					n2 += 925
					n1 = 723885750
					n3 = 683461695
					n6 = 516298599
					n8 = 304401677
					QUITLOADING = nil
					GetTrackLength = nil
				end

				u2477 = false
			end
		end

		Game:CreateButton({
			Name = "Grab medkit",
			Callback = GrabMedkit
		})
		Game:CreateButton({
			Name = "Grab bloxy cola",
			Callback = GrabCola
		})
		Game:CreateButton({
			Name = "Bring items",
			Callback = BringItems,
			ToolTip = "It takes ahold of it, then teleports it. You can use this as killer. Works on all items that are on the map (not in inventory)."
		})
		Game:CreateButton({
			Name = "Delete items",
			Callback = DeleteItems,
			ToolTip = "It takes ahold of it, then deletes it. You can use this as killer. Works on all items that are on the map (not in inventory)."
		})
		Game:CreateToggle({
			Name = "Auto pickup all items",
			CurrentValue = false,
			Flag = "AutoRomania",
			Callback = function(p300)
				if p300 then
					pcall(YoinkLoot)
				end
			end
		})
		Game:CreateToggle({
			Name = "Auto pickup near items",
			CurrentValue = false,
			Flag = "AutoPickCloseItems",
			Callback = function(p301)
				if p301 then
					t16.add("AutoPickCloseItems", function(t, t)
						local k = t and t:FindFirstChild("HumanoidRootPart")

						if (k) then
							for t, t in ipairs(t20.Items) do
								if (t:FindFirstChild("ItemRoot") and t.ItemRoot:FindFirstChild("ProximityPrompt")) then
									if ((t.ItemRoot.Position - k.Position).Magnitude <= t.ItemRoot.ProximityPrompt.MaxActivationDistance) then
										fireproximityprompt(t.ItemRoot.ProximityPrompt)
									end
								end
							end
						end
					end, 0.1)
				else
					t16.disconnect("AutoPickCloseItems")
				end
			end
		})
		Game:CreateToggle({
			Name = "Pickup items through walls",
			CurrentValue = false,
			Flag = "ItemPromptWallbang",
			Callback = v1108
		})
		Game:CreateToggle({
			Name = "Pickup items from further",
			CurrentValue = false,
			Flag = "PickupReachExtend",
			Callback = v1108,
			ToolTip = "Doubles how far you can pick up items from"
		})
		Game:CreateToggle({
			Name = "Pickup gears from further",
			CurrentValue = false,
			Flag = "GearPickupReachExtend",
			Callback = v1108,
			ToolTip = "Doubles how far you can pick up gears from"
		})

		do
			Game:CreateToggle({
				Name = "Auto pickup all gears",
				CurrentValue = false,
				Flag = "AutoGetGears",
				Callback = function(p302)
					if p302 then
						pcall(YoinkGears)
					end
				end
			})
		end

		do
			Game:CreateToggle({
				Name = "Auto pickup near gears",
				CurrentValue = false,
				Flag = "AutoPickCloseGears",
				Callback = function(p303)
					if p303 then
						t16.add("AutoPickCloseGears", function(t, t)
							if (LocalPlayer:GetAttribute("Gears") or 0) >= 5 then
								return
							end

							local k = t and t:FindFirstChild("HumanoidRootPart")

							if (k) then
								for t, t in ipairs(t20.GearsDebris) do
									if (t:FindFirstChild("Root") and t:FindFirstChild("ProximityPrompt")) then
										if ((t.Root.Position - k.Position).Magnitude <= t.ProximityPrompt.MaxActivationDistance) then
											fireproximityprompt(t.ProximityPrompt)
										end
									end
								end
							end
						end, 0.1)
					else
						t16.disconnect("AutoPickCloseGears")
					end
				end
			})
		end

		if not v122 then
			Game:CreateKeybind({
				Name = "Bring items",
				CurrentKeybind = boolCatsakenOldui and "" or nil,
				HoldToInteract = false,
				CallOnChange = false,
				Flag = "BringItemsKeybind",
				Callback = BringItems
			})
			Game:CreateKeybind({
				Name = "Delete items",
				CurrentKeybind = boolCatsakenOldui and "" or nil,
				HoldToInteract = false,
				CallOnChange = false,
				Flag = "DeleteItemsKeybind",
				Callback = DeleteItems
			})
		end

		do
			Game:CreateSection("Killer")

			local v2505 = Game:CreateLabel("Killer: @null [Skin]")

			Game:CreateButton({
				Name = "Spectate killer",
				Callback = function()
					if IsKiller() then
						return
					end

					local MainKiller2 = t20.MainKiller

					if MainKiller2 and MainKiller2:FindFirstChild("Humanoid") then
						if workspace.CurrentCamera.CameraSubject == MainKiller2.Humanoid then
							lib:Notify({
								Title = "Spectate",
								Content = "Stopped spectating " .. tostring(MainKiller2),
								Duration = 6,
								Image = "eye"
							})
							workspace.CurrentCamera.CameraSubject = LocalPlayer.Character
						elseif LocalPlayer.Character then
							lib:Notify({
								Title = "Spectate",
								Content = "Spectating " .. tostring(MainKiller2) .. " click again to stop",
								Duration = 6,
								Image = "eye"
							})

							if n28 == 1032266516 then
								workspace.CurrentCamera.CameraSubject = MainKiller2.Humanoid
							else
								n5 = 557630387
								n6 += 475
								n10 += 413
								n28 += 80
								n1 = 393209634
								n30 = 806505159
								n31 = 944916321
								n8 = 16943993
								n2 += 1822
								TableFindThatWorks = nil
							end
						end
					end
				end
			})
			Game:CreateButton({
				Name = "Teleport to killer",
				Callback = function()
					local MainKiller2 = t20.MainKiller

					if MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart") then
						if LocalPlayer.Character then
							if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								LocalPlayer.Character.HumanoidRootPart.CFrame = MainKiller2.HumanoidRootPart.CFrame
							end
						end
					end
				end
			})
			Game:CreateToggle({
				Name = "Farm survivors",
				CurrentValue = false,
				Flag = "AutoFarmSurvivors",
				Callback = function()
					task.spawn(function()
						while wait() do
							pcall(function()
								if (not v1096.Flags.AutoFarmSurvivors.CurrentValue) then
									return
								elseif (IsKiller()) then
									local t = t20.Survivors[math.random(1, #t20.Survivors)]

									while t.Parent and t:FindFirstChild("Humanoid") and t:FindFirstChild("HumanoidRootPart") and t.Humanoid.Health > 0 do
										local Q = t.HumanoidRootPart.CFrame

										LocalPlayer.Character.HumanoidRootPart.CFrame = Q
										module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", GetM1Name())
										wait()

										if (not v1096.Flags.AutoFarmSurvivors.CurrentValue) then
											return
										end
									end
								end
							end)
						end
					end)
				end,
				ToolTip = "Fair warning - This is not an AI auto-hunt. It teleports to all players and slams the m1 key until it kills them."
			})
			Game:CreateToggle({
				Name = "Bypass killer walls",
				CurrentValue = false,
				Flag = "BypassKillerWalls",
				Callback = function(t)if IsKiller()then return;end;for Q,Q in ipairs(workspace.Map:QueryDescendants("\66as\101P\97r\x74[C\oll\z  \u{0069}\z \115ionG\x72oup\z =K\x69\u{006C}\z \u{6C}\101rs\x5D"))do Q.CanCollide=not t;end;end,
				ToolTip = "stand in a killer door for 3 seconds = KICK"
			})
			t20.Disconnectables[#t20.Disconnectables + 1] = workspace.Map.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("BasePart") and descendant.CollisionGroup == "Killers" then
					if v1096.Flags.BypassKillerWalls.CurrentValue then
						if n6 < n10 then
							descendant.CanCollide = false
						else
							n8 = 753977953
							n1 += 608
							n31 -= 161
							n3 = 921115817
							n10 -= 1092
							n2 += 26
							n5 -= 1741
							n6 += 377
							n30 = 772349790
							IsPlayerNearGenerator = nil
							downloadIcons = nil
						end

						if not descendant:FindFirstChild("PathfindingModifier") then
							local PathfindingModifier = Instance.new("PathfindingModifier")

							PathfindingModifier.Label = "Impassable"
							PathfindingModifier.Parent = descendant
						end
					end
				end
			end)

			for _, v in ipairs(workspace.Map:QueryDescendants("BasePart[CollisionGroup=Killers]")) do
				if not v:FindFirstChild("PathfindingModifier") then
					local PathfindingModifier = Instance.new("PathfindingModifier")

					PathfindingModifier.Label = "Impassable"
					PathfindingModifier.Parent = v
				end
			end

			Game:CreateSection("Survivors", "Right")

			local v2516 = Game:CreateLabel("Survivors: " .. #t20.Survivors)

			task.spawn(function()
				while wait(0.5) do
					v2516:Set("Survivors: " .. #t20.Survivors)

					local t = t20.MainKiller

					if t then
						v2505:Set("Killer: @" .. t:GetAttribute("Username") .. " [" .. t.Name .. "]")
					else
						v2505:Set("Killer: None")
					end
				end
			end)
		end

		Game:CreateButton({
			Name = "Teleport To Random Survivor",
			Callback = function()
				if #t20.Survivors == 0 then
					return
				end

				local HumanoidRootPart = #t20.Survivors == 1 and t20.Survivors[1].HumanoidRootPart

				if not HumanoidRootPart then
					while true do
						local v2519 = t20.Survivors[math.random(1, #t20.Survivors)]

						if v2519 and v2519 ~= LocalPlayer.Character then
							HumanoidRootPart = v2519:FindFirstChild("HumanoidRootPart")
						end

						wait()

						if not HumanoidRootPart then
							if not ((IsKiller() and 1 or 2) > #t20.Survivors) and not u34 then
								continue
							end
						end

						break
					end
				end

				if HumanoidRootPart and LocalPlayer.Character then
					if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						LocalPlayer.Character.HumanoidRootPart.CFrame = HumanoidRootPart.CFrame
					end
				end

				return
			end
		})
		Game:CreateSection("Emotes", "Left")

		do
			local t71 = {}
			local t72 = {}

			for _, child in pairs(Assets.Emotes:GetChildren()) do
				local module2 = require(child)

				t72[module2.DisplayName] = module2
				table.insert(t71, module2.DisplayName)
			end

			table.sort(t71)

			local u2525

			Game:CreateDropdown({
				Name = "Select emote",
				Options = t71,
				CurrentOption = { t71[1] },
				Flag = "SelectedEmote",
				Callback = v1108,
				Searchable = true
			})
			Game:CreateButton({
				Name = "Fake emote start/stop (NO vfx, NO sfx)",
				Callback = function()
					if u2525 and u2525.IsPlaying then
						u2525:Stop()
						u2525:Destroy()
						u2525 = nil
					else
						local Animation = Instance.new("Animation")
						local AssetID = t72[v1096.Flags.SelectedEmote.CurrentOption[1]].AssetID

						Animation.AnimationId = typeof(AssetID) == "table" and AssetID[math.random(1, #AssetID)] or AssetID

						local v2528 = LocalPlayer.Character.Humanoid:LoadAnimation(Animation)

						v2528:Play()
						u2525 = v2528
					end
				end
			})
		end

		Antis:CreateSection("Anti affects")

		do
			local n88

			HookEffect = function(p304, p305)
				n88 = 855714162

				if n29 == 585936208 then
					n3 -= 309
					n7 -= 624
					n30 = 840717672
					n28 += 496
					n5 += 1010
					n10 += 826
					n29 = 982212242
					n88 = 596883276
					n1 -= 1705
					n31 = 840370699
					IsKiller = nil
					HasNotification = nil
				else
					xpcall(function()
						setthreadidentity(2)
						t20.NetworkConnections.StatusRemoved.Callback(p305)
						setthreadidentity(9)
					end, function()
						v126("error removing effect", p305, "in HookEffect")
					end)
				end

				v29(p304.Applied, newcclosure(function()
					local n89 = 1028665921

					setthreadidentity(2)
					task.spawn(function()
						setthreadidentity(8)

						if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
							return
						end

						if n89 == 1028667883 then
							n1 = 55751968
							n30 -= 545
							n88 = 575988504
							n29 += 1254
							n89 -= 203
							GetGameMap = nil
							fixcolorpickers = nil
							PressKeycode = nil
							Turn360 = nil
						else
							lib:Notify({
								Title = ("Anti %*"):format(p305),
								Content = ("Blocked a %* effect from happening"):format(p305),
								Duration = 3,
								Image = "ban"
							})
						end
					end)
					setthreadidentity(2)

					if n5 == n88 then
						n89 = 1038500209
						n1 = 869975704
						n30 -= 1377
						n31 = 1070380060
						n88 += 634
						n10 -= 131
						n5 -= 452
						n29 += 603
					else
						coroutine.yield()
					end
				end))
			end
		end

		RestoreEffect = function(p306)
			if isfunctionhooked(p306.Applied) then
				v30(p306.Applied)
			end
		end

		do
			CreateAntiFeatureCallback = function(p307, p308, p309)
				if n7 == 21675190 then
					local function v2531(p310)
						if p310 then
							HookEffect(p307, p308)
						else
							RestoreEffect(p307, p308, p309)
						end

						if 466624156 == n3 then
							n2 += 1111
							n10 -= 528
							n5 += 1031

							repeat
								n3 += 1547
								n1 = 760157167
								n28 = 1069378292

								local v2532 = table.pack(x_0())
							until not v2532[1]

							HasAbilityReady = nil
						end
					end

					return v2531
				end

				n3 = 99792491
				n1 = 447675183
				n10 += 422
				n28 -= 934
				n2 += 854
				n30 -= 458
				n7 = 2554560
				n5 += 675
				n31 -= 1919
			end
		end

		Antis:CreateToggle({
			Name = "Anti slowness",
			CurrentValue = false,
			Flag = "AntiSlowness",
			Callback = CreateAntiFeatureCallback(Slowness, "slowness", "Slowness")
		})
		Antis:CreateToggle({
			Name = "Anti subspace",
			CurrentValue = false,
			Flag = "AntiSubspace",
			Callback = CreateAntiFeatureCallback(Subspaced, "subspace", "Subspaced")
		})
		Antis:CreateToggle({
			Name = "Anti blindness",
			CurrentValue = false,
			Flag = "AntiBlindness",
			Callback = CreateAntiFeatureCallback(Blindness, "blindness", "Blindness")
		})
		Antis:CreateToggle({
			Name = "Anti glitched",
			CurrentValue = false,
			Flag = "AntiGlitched",
			Callback = CreateAntiFeatureCallback(Glitched, "glitched", "Glitched")
		})
		Antis:CreateToggle({
			Name = "Anti slatekin slow/fov",
			CurrentValue = false,
			Flag = "AntiSlateskin",
			Callback = CreateAntiFeatureCallback(Slateskin, "slateskin", "Slateskin")
		})
		Antis:CreateToggle({
			Name = "Anti nausea",
			CurrentValue = false,
			Flag = "AntiNausea",
			Callback = CreateAntiFeatureCallback(Nausea, "nausea", "Nausea")
		})
		Antis:CreateToggle({
			Name = "Anti stun",
			CurrentValue = false,
			Flag = "AntiStun",
			Callback = CreateAntiFeatureCallback(Stunned, "stun", "Stunned")
		})
		Antis:CreateToggle({
			Name = "Anti exhaust",
			CurrentValue = false,
			Flag = "AntiExhaust",
			Callback = CreateAntiFeatureCallback(Exhausted, "exhaust", "Exhausted")
		})
		Antis:CreateSection("Antis misc")
		Antis:CreateToggle({
			Name = "Anti clone 007n7",
			CurrentValue = false,
			Flag = "AntiClone007n7",
			Callback = function()
				if t20.GameState ~= 1 then
					return
				end

				for _, child in pairs(workspace.Map.Ingame:GetChildren()) do
					if child.Name == "007n7" and child:GetAttribute("Username") ~= LocalPlayer.Name then
						child:Destroy()
						v126("destroying a fake 007n7")

						if v1096.Flags.Antis_EnableNotifications.CurrentValue then
							lib:Notify({
								Title = "Anti Clone",
								Content = "Deleted a 007n7 clone",
								Duration = 3,
								Image = "ban"
							})
						end
					end
				end
			end
		})
		Antis:CreateToggle({
			Name = "Anti hallucinations",
			CurrentValue = false,
			Flag = "AntiHallu",
			Callback = function(p311)
				if p311 then
					for _, child in ipairs(StatusEffects.KillerExclusive.Hallucination.HallucinationClass:GetChildren()) do
						local v2537

						v2537 = v29(require(child).Init, newcclosure(function(...)
							setthreadidentity(2)

							if not v1096.Flags.AntiHallu.CurrentValue then
								return v2537(...)
							end

							task.spawn(function()
								setthreadidentity(8)

								if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
									return
								end

								lib:Notify({
									Title = "Anti Hallucinations",
									Content = ("Blocked a hallucination (%*) from happening"):format(child),
									Duration = 3.5,
									Image = "ban"
								})

								return
							end)
							setthreadidentity(2)
							coroutine.yield()
						end))
					end
				else
					for _, child in ipairs(StatusEffects.KillerExclusive.Hallucination.HallucinationClass:GetChildren()) do
						local Init = require(child).Init

						if isfunctionhooked(Init) then
							v30(Init)
						end
					end
				end
			end,
			ToolTip = "Fake noli, incorrect timer, fake dispenser, etc"
		})
		Antis:CreateToggle({
			Name = "Anti void star pull",
			CurrentValue = false,
			Flag = "AntiNoliPull",
			Callback = v1108,
			ToolTip = "Removes the pulling affect when you get hit by the gayish void star"
		})
		Antis:CreateToggle({
			Name = "Anti azure vine pull",
			CurrentValue = false,
			Flag = "AntiVinePull",
			Callback = v1108,
			ToolTip = "Lets you walk freely when you get trapped by a vine from azure"
		})
		Antis:CreateToggle({
			Name = "Anti AFK kill",
			CurrentValue = false,
			Flag = "AntiKillAFK",
			Callback = v1108,
			ToolTip = "Prevents you dying after being afk for 60 seconds"
		})
		Antis:CreateToggle({
			Name = "Anti slow on landing",
			CurrentValue = false,
			Flag = "AntiSlowOnLanding",
			Callback = function(p312)
				if LocalPlayer.Character then
					LocalPlayer.Character:SetAttribute("NoFallSlow", p312)
				end

				return
			end,
			ToolTip = "Makes you not slow when you fall from any height"
		})
		Antis:CreateToggle({
			Name = "Anti footsteps",
			CurrentValue = false,
			Flag = "AntiFootsteps",
			Callback = function(p313)
				if LocalPlayer.Character then
					LocalPlayer.Character:SetAttribute("FootstepsMuted", p313)
				end
			end
		})

		do
			local KB = t20.NetworkConnections.KB
			local v2542 = clonefunction(KB.Callback)

			Antis:CreateToggle({
				Name = "Anti knockback",
				CurrentValue = false,
				Flag = "AntiKB",
				Callback = function(p314)
					if not (n5 < n2) then
						n31 += 1524
						n6 = 403980664
						n9 = 998002908
						n28 += 1461
						n30 += 1926
						n29 = 789531798
						n5 = 629050809
						n1 -= 1277
						n2 += 898
						AddAbilitiesContainer = nil
						YoinkLoot = nil
					elseif p314 then
						KB.Callback = function()
							setthreadidentity(8)

							if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
								return
							end

							return lib:Notify({
								Title = "Anti Knockback",
								Content = "Voided some knockback",
								Duration = 2,
								Image = "ban"
							})
						end
					else
						KB.Callback = v2542
					end
				end
			})
		end

		do
			local u2543

			Antis:CreateToggle({
				Name = "Anti infernal cry",
				CurrentValue = false,
				Flag = "AntiInfernalCry",
				Callback = function(p315)
					local attribute = Killers3:FindFirstChild("Sixer") and Killers3.Sixer:GetAttribute("Username")

					if not (n9 < n10) then
						n3 -= 1062
						n28 = 352258218
						n31 -= 100
						n1 -= 1354
						n10 = 1048294896
						n9 += 37
						n30 += 304
						n6 -= 252
						n2 = 874158014
						GetGameState = nil
					elseif attribute then
						local v2545 = t20.NetworkConnections[attribute .. "666ShockwaveHit"]

						if v2545 then
							if p315 then
								u2543 = clonefunction(v2545.Callback)
								v2545.Callback = function()
									setthreadidentity(2)
									t20.NetworkConnections.StatusRemoved.Callback("Blindness")
									setthreadidentity(8)

									if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
										return
									end

									return lib:Notify({
										Title = "Anti infernal cry",
										Content = "Blocked infernal cry effect",
										Duration = 3,
										Image = "ban"
									})
								end
							elseif u2543 then
								v2545.Callback = u2543
							end
						end
					end
				end
			})

			local v2546

			v2546 = v29(module.SetConnection, newcclosure(function(p316, ...)
				local t73 = { ... }

				if t73[1]:find("666ShockwaveHit") then
					v127("hey", t73[1])

					local v2548

					v2548 = v29(t73[3], newcclosure(function()
						if v1096.Flags.AntiInfernalCry.CurrentValue then
							setthreadidentity(2)
							t20.NetworkConnections.StatusRemoved.Callback("Blindness")
							setthreadidentity(8)

							if v1096.Flags.Antis_EnableNotifications.CurrentValue then
								return lib:Notify({
									Title = "Anti infernal cry",
									Content = "Blocked infernal cry effect",
									Duration = 6,
									Image = "ban"
								})
							end

							return
						end

						setthreadidentity(2)

						return v2548()
					end))
				end

				return v2546(p316, unpack(t73))
			end))
		end

		do
			Antis:CreateToggle({
				Name = "Anti invisible players",
				CurrentValue = false,
				Flag = "AntiInvisPlayers",
				Callback = v1108
			})

			local function v2549(p317)
				for _, descendant in pairs(p317:GetDescendants()) do
					local isBasePart = descendant:IsA("BasePart")
					local isDecal = descendant:IsA("Decal") or descendant:IsA("Texture")
					local isParticleEmitter = descendant:IsA("ParticleEmitter")
					local isTrail = descendant:IsA("Trail")

					if isBasePart or isDecal then
						local v2556 = isBasePart and "Color" or isDecal and "Color3"

						if descendant.Transparency < 1 and v2556 and descendant[v2556] then
							if isBasePart then
								descendant.CastShadow = true
							end

							if not descendant:FindFirstAncestorOfClass("Accessory") then
								local v2557 = descendant[v2556]
								local v2558 = (v2557.R + v2557.G + v2557.B) / 3
								local v2559 = 1 - (math.abs(v2557.R - v2558) + math.abs(v2557.G - v2558) + math.abs(v2557.B - v2558)) / 3
							end

							descendant.Transparency = 0
						end
					elseif isParticleEmitter then
						descendant.Transparency = NumberSequence.new(0)
					elseif isTrail and descendant.Enabled == false then
						descendant.Enabled = true
					end
				end

				if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
					return
				end

				if n31 == 291407186 then
					n31 = 154072969
					n3 -= 408
					n1 += 868
					n9 += 2002
					n29 -= 1715
					n30 -= 1832
					n5 = 665234380
					n10 = 431953262
					n28 += 421
					track_sounds = nil
				else
					lib:Notify({
						Title = "Anti invisible players",
						Content = string.format("Revealed %s (%s)", tostring(p317:GetAttribute("Username")), p317.Name),
						Image = "ghost"
					})
				end
			end
			local function v2560(player)
				local function v2561(character)
					t20.Disconnectables[#t20.Disconnectables + 1] = character:GetAttributeChangedSignal("InvisibilityTransparency"):Connect(function()
						if not (player ~= LocalPlayer or v1096.Flags.AntiInvisSelf.CurrentValue) then
							return
						end

						if v1096.Flags.AntiInvisPlayers.CurrentValue and character:GetAttribute("InvisibilityTransparency") ~= nil then
							v2549(character)
						end
					end)

					if v1096.Flags.AntiInvisPlayers.CurrentValue and character:GetAttribute("InvisibilityTransparency") ~= nil and (player ~= LocalPlayer or v1096.Flags.AntiInvisSelf.CurrentValue) then
						v2549(character)
					end
				end

				if player.Character then
					v2561(player.Character)
				end

				t20.Disconnectables[#t20.Disconnectables + 1] = player.CharacterAdded:Connect(v2561)
			end

			for _, player in pairs(Players:GetPlayers()) do
				v2560(player)
			end

			t20.Disconnectables[#t20.Disconnectables + 1] = Players.PlayerAdded:Connect(v2560)
		end

		do
			local function v2564(p318)
				if not p318 then
					return
				end

				if p318.Parent == Spectating then
					return
				end

				if n31 == 291407814 then
					n31 += 1188
					n29 -= 1489
					n1 += 781
					n30 += 1127
					n10 -= 1
					n9 = 753771642
					n7 -= 1263
					n6 -= 907
					n28 += 1974
				elseif p318.PrimaryPart then
					t20.Disconnectables[#t20.Disconnectables + 1] = p318.PrimaryPart.ChildAdded:Connect(function(child)
						if child:IsA("BodyPosition") then
							if child.MaxForce == Vector3.new(10000, 7000, 10000) and v1096.Flags.AntiNoliPull.CurrentValue and t20.MainKiller.Name == "Noli" then
								child:Destroy()

								if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
									return
								end

								lib:Notify({
									Title = "Anti Void Star Pull",
									Content = "Deleted noli pull affect",
									Duration = 6,
									Image = "ban"
								})
							elseif child.D == 1250 and v1096.Flags.AntiVinePull.CurrentValue and t20.MainKiller.Name == "Azure" then
								child:Destroy()

								if not v1096.Flags.Antis_EnableNotifications.CurrentValue then
									return
								end

								lib:Notify({
									Title = "Anti Azure Vine Pull",
									Content = "Deleted vine pull affect",
									Duration = 6,
									Image = "ban"
								})
							end
						end
					end)

					local Position = p318.HumanoidRootPart.Position
					local now2 = tick()

					task.spawn(function()
						while p318.Parent and wait(1) and p318:FindFirstChild("HumanoidRootPart") do
							if p318.HumanoidRootPart.Position ~= Position then
								now2 = tick()
								Position = p318.HumanoidRootPart.Position
							elseif tick() - now2 >= 55 and v1096.Flags.AntiKillAFK.CurrentValue then
								v126("youre gonna die of afk bubba")
								p318.Humanoid:MoveTo(p318.HumanoidRootPart.Position + Vector3.new(0, 0, 0.1))
								now2 = tick()
							end
						end

						if n10 == 355398772 then
							n29 -= 1816
							n30 += 1065
							n1 += 743
							n10 = 992823884
							n28 += 1885
							GetGeneratorProgress = nil
							EntanglementActive = nil
						end
					end)
				end

				createm1part(p318)
			end

			t20.Disconnectables[#t20.Disconnectables + 1] = LocalPlayer.CharacterAdded:Connect(function(character)
				v2564(character, true)
			end)
			v2564(LocalPlayer.Character)
		end

		Antis:CreateSection("Antis Settings", "Left")
		Antis:CreateToggle({
			Name = "Notify on block",
			CurrentValue = true,
			Flag = "Antis_EnableNotifications",
			Callback = v1108,
			TextMode = true
		})
		Antis:CreateToggle({
			Name = "Apply anti invis to self",
			CurrentValue = false,
			Flag = "AntiInvisSelf",
			Callback = v1108,
			ToolTip = "When anti invisible players is on, this will make your character visible as well",
			TextMode = true
		})

		do
			local n90
			local n91
			local u2569
			local u2570
			local u2571
			local u2572
			local connection3
			local n92 = 0
			local s16
			local n93 = 0
			local Folder
			local t74 = {}

			local function v2579()
				if Folder then
					Folder:Destroy()
					Folder = nil
				end

				table.clear(t74)
			end
			local function v2580(p319)
				v2579()

				if not v1096.Flags.AI_Waypoints_Vis.CurrentValue then
					return
				end

				Folder = Instance.new("Folder")
				Folder.Name = "AIWaypoints"
				Folder.Parent = workspace.CurrentCamera

				for i, v in ipairs(p319) do
					local Part4 = Instance.new("Part")

					Part4.Shape = Enum.PartType.Ball
					Part4.Size = Vector3.new(0.9, 0.9, 0.9)
					Part4.Anchored = true
					Part4.CanCollide = false
					Part4.CanTouch = false
					Part4.CanQuery = false
					Part4.Material = Enum.Material.Neon
					Part4.Color = v.Action == Enum.PathWaypointAction.Jump and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(0, 255, 120)
					Part4.Position = v.Position + Vector3.new(0, 0.5, 0)
					Part4.Parent = Folder
					t74[i] = Part4
				end
			end
			local function v2584(p320)
				local v2585 = t74[p320]

				if v2585 then
					v2585:Destroy()
					t74[p320] = nil
				end
			end
			local function v2586()
				n93 += 1

				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end

				u2572 = nil
				u2571 = nil
				v2579()

				local Character_3 = LocalPlayer.Character
				local Humanoid = Character_3 and Character_3:FindFirstChild("Humanoid")
				local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")

				if Humanoid and HumanoidRootPart then
					Humanoid:MoveTo(HumanoidRootPart.Position)
				end
			end
			local function v2590(p321, p322, p323, p324)
				for i = 2, #p321 do
					local v2592 = p321[i]

					p322:MoveTo(v2592.Position)

					local now2 = tick()
					local now3 = tick()
					local Position = p323.Position

					while true do
						if p324 ~= n93 or u34 or p322.Health <= 0 then
							return
						end

						local v2596 = p323.Position - v2592.Position

						if Vector3.new(v2596.X, 0, v2596.Z).Magnitude < 3.5 and math.abs(v2596.Y) < 5 then
							break
						end

						local now4 = tick()

						if now4 - now3 >= 0.5 then
							if (p323.Position - Position).Magnitude < 0.5 then
								p322.Jump = true
								p322:MoveTo(v2592.Position)
							end

							Position = p323.Position
							now3 = now4
						end

						if not (now4 - now2 > 2.5) then
							wait()

							continue
						end

						s16 = "Timeout"
						u2571 = nil
						n92 = 0
						v126("[AI] waypoint", i, "timed out")

						return
					end

					v2584(i)
				end

				if p324 == n93 then
					u2571 = nil
					u2572 = nil
					v2579()
				end

				if 417363085 == n31 then
					n29 = 597451162
					n3 += 1585
					n31 = 87177189
					n7 = 449515963
					n9 = 100323807
					n6 -= 1102
					n30 = 237622589
					n1 += 827
					n5 += 102
				end
			end
			local function v2598(p325, p326)
				local Humanoid = p326:FindFirstChild("Humanoid")
				local HumanoidRootPart = p326:FindFirstChild("HumanoidRootPart")

				if not Humanoid or not HumanoidRootPart then
					return
				end

				if u2570 ~= p326 then
					v2586()
					u2569 = PathfindingService:CreatePath({
						AgentRadius = 2,
						AgentHeight = 5,
						AgentCanJump = false,
						AgentCanClimb = false,
						WaypointSpacing = 3
					})
					u2570 = p326
				end

				local now2 = tick()

				if now2 - n92 < 0.2 then
					return
				end

				if u2571 and (p325 - u2571).Magnitude < 3 and now2 - n92 < 2 then
					return
				end

				n92 = now2

				local ok, result = pcall(u2569.ComputeAsync, u2569, HumanoidRootPart.Position, p325)
				local waypoints = ok and u2569.Status == Enum.PathStatus.Success and u2569:GetWaypoints()

				if waypoints and #waypoints >= 2 then
					n93 += 1

					local v2605 = n93

					if connection3 then
						connection3:Disconnect()
					end

					connection3 = u2569.Blocked:Connect(function(p327)
						if v2605 == n93 then
							s16 = "Blocked"
							u2571 = nil
							n92 = 0
							v126("[AI] path blocked at", p327)
						end
					end)
					u2571 = p325
					u2572 = waypoints
					s16 = nil
					v2580(waypoints)
					task.spawn(v2590, waypoints, Humanoid, HumanoidRootPart, v2605)

					return
				end

				u2571 = nil

				local v2606 = ok

				if v2606 then
					v2606 = #(waypoints or {}) < 2
				end

				s16 = v2606 and u2569.Status == Enum.PathStatus.Success and "NoWaypoints" or "ComputationError"
				v126("[AI] Run failed", s16, ok and u2569.Status or result)

				if s16 == "ComputationError" then
					local v2607 = v1096.Flags.OnPathFailedAI.CurrentOption[1]

					if v2607 == "Reset character" and tick() - t20.RoundStart >= 10 then
						Humanoid.Health = 0
					elseif v2607 == "Walk in random direction" then
						local v2608 = math.random() * math.pi * 2

						Humanoid:MoveTo(HumanoidRootPart.Position + Vector3.new(math.cos(v2608), 0, math.sin(v2608)) * 8)
					end
				else
					Humanoid:MoveTo(p325)
				end
			end

			autoplaymgr = function()
				n90 = 901247312
				Autoplay:CreateSection("Survivor AI")
				Autoplay:CreateToggle({
					Name = "Autoplay survivor",
					CurrentValue = false,
					Flag = "AI_Survivor_Toggle",
					Callback = function(p328)
						if not (p328 or IsKiller()) then
							v2586()
						end
					end,
					ToolTip = "Does gens automatically and walks to random places when in range of killer. Don't expect to win by using this, its just something"
				})
				Autoplay:CreateSlider({
					Name = "Killer avoidance range",
					Range = {
						10,
						100
					},
					Increment = 1,
					Suffix = "",
					CurrentValue = 20,
					Flag = "AI_Survivor_KillerRange",
					Callback = v1108
				})

				local v2609

				Autoplay:CreateDropdown({
					Name = "Generator priority",
					Options = {
						"Lowest progress",
						"Highest progress",
						"Closest"
					},
					CurrentOption = { "Closest" },
					Flag = "GeneratorPriority",
					Callback = v1108
				})

				if n10 < n90 then
					Autoplay:CreateDropdown({
						Name = "When to sprint",
						Options = {
							"Running from killer",
							"Always"
						},
						CurrentOption = { "Running from killer" },
						Flag = "WhenToSprint",
						Callback = v1108
					})
				else
					n5 += 57
					n3 += 1363
					n8 = 405161697
					n30 += 108
					n2 -= 792
					n31 += 1339
					n28 += 1083
					n90 -= 1959
					n10 += 608
					n1 = 514940540
					SolveFlow = nil
					downloadIcons = v2609
				end

				Autoplay:CreateSection("Killer AI")
				Autoplay:CreateToggle({
					Name = "Autoplay killer",
					CurrentValue = false,
					Flag = "AI_Killer_Toggle",
					Callback = function(p329)
						if not p329 and IsKiller() then
							v2586()
						end
					end,
					ToolTip = "Hunts survivors automatically and tries to kill them with M1"
				})
				Autoplay:CreateSection("Settings")
				Autoplay:CreateToggle({
					Name = "Show pathfinding waypoints",
					CurrentValue = true,
					Flag = "AI_Waypoints_Vis",
					Callback = function(p330)
						if p330 then
							if u2572 then
								v2580(u2572)
							end
						else
							v2579()
						end

						if n31 == 291408253 then
							n8 = 58515265
							n10 = 773644364
							n1 += 275
							n31 += 599
							n90 = 476118470
							n28 -= 217
							n3 = 566484609
							Turn360 = nil
							GetAutoDotsVar = nil
							stareFunc = nil
							MassIdSearch = nil
						end
					end
				})
				Autoplay:CreateToggle({
					Name = "Collect gears",
					CurrentValue = true,
					Flag = "AI_CollectGears",
					Callback = v1108
				})
				Autoplay:CreateDropdown({
					Name = "On failed path",
					Options = {
						"Hope for miracle (do nothing)",
						"Reset character",
						"Walk in random direction"
					},
					CurrentOption = { "Walk in random direction" },
					Flag = "OnPathFailedAI",
					Callback = v1108
				})

				local s17
				local u2611
				local n94 = 0

				while not u34 do
					xpcall(function()
						local Character_3 = LocalPlayer.Character

						if Character_3 and Character_3.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue and tick() - t20.RoundStart >= 7 then
							local Humanoid = Character_3:FindFirstChild("Humanoid")

							if not Humanoid or Humanoid.Health <= 0 then
								return v126("[AI] either youre dead, or your character doesnt exist")
							end

							local AI = t20.AI

							if u2611 and ((Character_3.HumanoidRootPart.Position - u2611).Magnitude <= 7 or n94 < tick()) then
								u2611 = nil
							end

							local s18 = "ClosestGenerator"

							if #t20.GearsDebris > 0 and AI.ClosestGear then
								s18 = "ClosestGear"
							end

							if u2611 or AI.KillerDist and AI.KillerDist <= v1096.Flags.AI_Survivor_KillerRange.CurrentValue then
								s18 = "FurthestSpawn"
							end

							local v2617 = AI[s18]

							if s18 == "FurthestSpawn" then
								if not u2611 then
									local v2618 = tick() + 12

									u2611 = v2617
									n94 = v2618
								end

								v2617 = u2611
							end

							if not v2617 then
								v2586()

								if s17 ~= "None" then
									s17 = "None"
									lib:Notify({
										Title = "Autoplay",
										Content = "No tasks detected",
										Duration = 3,
										Image = "bot"
									})
								end

								return
							end

							if s18 == "ClosestGear" and (Character_3.HumanoidRootPart.Position - v2617).Magnitude <= 5 then
								fireproximityprompt(AI.GearModel.ProximityPrompt)
							elseif s18 == "ClosestGenerator" then
								if (Character_3.HumanoidRootPart.Position - v2617).Magnitude <= 4 then
									local GeneratorModel = AI.GeneratorModel

									v2586()
									Humanoid:MoveTo(GeneratorModel.Main.Position)
									wait(0.5)
									fireproximityprompt(GeneratorModel.Main.Prompt)
									wait(0.3)

									repeat
										if GetGeneratorProgress(GeneratorModel) >= 100 then
											v126("[AI] done generator")

											break
										end

										if IsGearGenerator(GeneratorModel) then
											if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
												v126("no gears to do this generator")
												t20:Sprint(true)
												t20:Sprint(false)
											end
										end

										wait()
									until not LocalPlayer.PlayerGui:FindFirstChild("PuzzleUI") or u34 or AI.KillerDist and AI.KillerDist <= v1096.Flags.AI_Survivor_KillerRange.CurrentValue

									s17 = nil

									return
								end
							end

							if s18 ~= s17 then
								s17 = s18
								lib:Notify({
									Title = "Autoplay",
									Content = s18 == "FurthestSpawn" and "Running from the killer" or s18 == "ClosestGear" and "Collecting a gear" or "Walking to a generator",
									Duration = s18 == "FurthestSpawn" and 8 or 6,
									Image = "bot",
									NoQueue = true
								})
							end

							if s18 == "FurthestSpawn" and not Sprinting.IsSprinting and Sprinting.Stamina >= 1 then
								Sprinting.IsSprinting = true
								Sprinting.__sprintedEvent:Fire(true)
							end

							v2598(v2617, Character_3)
						end
					end, function(p331)
						v126("[AI] autoplaymgr error:", tostring(p331))
					end)
					wait(0.1)
				end

				v2586()
				u2569 = nil
				u2570 = nil
			end
			autoplaymgr2 = function()
				n91 = 876123329

				while not u34 do
					xpcall(function()
						local n95 = 416657646

						if LocalPlayer.Character then
							local HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart and LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue then
								local AI = t20.AI
								local Position = HumanoidRootPart.Position
								local MainKiller2 = t20.MainKiller

								if MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart") then
									AI.KillerDist = (MainKiller2.HumanoidRootPart.Position - Position).Magnitude
								else
									AI.KillerDist = 9e9
								end

								local function v2625()
									local v2626 = -math.huge
									local Position2
									local SpawnPoints = GetGameMap() and GetGameMap():FindFirstChild("SpawnPoints")
									local Survivors4 = SpawnPoints and SpawnPoints:FindFirstChild("Survivors")

									if Survivors4 then
										for _, child in ipairs(Survivors4:GetChildren()) do
											local magnitude = (Position - child.Position).magnitude

											if v2626 <= magnitude then
												v2626 = magnitude
												Position2 = child.Position
											end
										end
									end

									if n2 ~= n95 then
										return Position2
									end

									n3 = 268233133
									n28 += 189
									n29 = 955358572
									n1 = 1030899188
									n91 -= 276
									n95 += 814
									n2 = 693617668
									GetAutoDotsVar = nil
									GetLocalHitboxes = nil
								end

								AI.FurthestSpawn = v2625()

								local function v2633()
									if (LocalPlayer:GetAttribute("Gears") or 0) >= 5 or not v1096.Flags.AI_CollectGears.CurrentValue then
										return
									end

									local Position2
									local n96 = 9e9

									for _, gearsDebri in ipairs(t20.GearsDebris) do
										if gearsDebri:FindFirstChild("Root") then
											local magnitude = (gearsDebri.Root.Position - Position).magnitude

											if magnitude <= n96 then
												n96 = magnitude
												Position2 = gearsDebri.Root.Position
												AI.GearModel = gearsDebri
											end
										end
									end

									return Position2
								end

								AI.ClosestGear = v2633()

								local function v2639()
									local v2640 = v1096.Flags.GeneratorPriority.CurrentOption[1]
									local huge = math.huge
									local Position2
									local huge2 = v2640 == "Lowest progress" and math.huge or -math.huge

									for _, roundGenerator in ipairs(t20.RoundGenerators) do
										if IsGearGenerator(roundGenerator) then
											if (LocalPlayer:GetAttribute("Gears") or 0) < 1 then
												continue
											end
										end

										if roundGenerator:FindFirstChild("Main") then
											local t75 = {
												CFrame.new(2017.17578, 150.863174, 10131.9375, -1, 0, 0, 0, 1, 0, 0, 0, -1),
												CFrame.new(2037.89233, 150.86322, 10120.5713, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
											}

											if not roundGenerator:GetAttribute("good") then
												if GetGameMap():GetAttribute("MapName") == "HorrorHotel" and table.find(t75, roundGenerator.Main.CFrame) then
													continue
												end

												roundGenerator:SetAttribute("good", true)
											end

											local Magnitude = roundGenerator:FindFirstChild("Positions") and roundGenerator.Positions:FindFirstChild("Center") and not v1346(roundGenerator, roundGenerator.Positions.Center.Position) and (roundGenerator.Positions.Center.Position - Position).Magnitude
											local v2648 = GetGeneratorProgress(roundGenerator)

											if (not t20.MainKiller or Magnitude and (t20.MainKiller.HumanoidRootPart.Position - roundGenerator.Positions.Center.Position).magnitude >= v1096.Flags.AI_Survivor_KillerRange.CurrentValue) and v2648 and v2648 < 100 then
												if v2640 ~= "Closest" then
													if v2640 ~= "Lowest progress" then
														if v2648 ~= huge2 then
															if huge2 <= v2648 then
																huge2 = v2648
																Position2 = roundGenerator.Positions.Center.Position
																AI.GeneratorModel = roundGenerator
															end
														elseif (roundGenerator.Positions.Center.Position - Position).magnitude < (Position2 - Position).magnitude then
															Position2 = roundGenerator.Positions.Center.Position
															AI.GeneratorModel = roundGenerator
														end
													elseif v2648 ~= huge2 then
														if v2648 <= huge2 then
															huge2 = v2648
															Position2 = roundGenerator.Positions.Center.Position
															AI.GeneratorModel = roundGenerator
														end
													elseif (roundGenerator.Positions.Center.Position - Position).magnitude < (Position2 - Position).magnitude then
														Position2 = roundGenerator.Positions.Center.Position
														AI.GeneratorModel = roundGenerator
													end
												elseif Magnitude and Magnitude <= huge then
													huge = Magnitude

													if n91 == 876123329 then
														Position2 = roundGenerator.Positions.Center.Position
													else
														n95 += 1017
														n28 += 1412
														n29 = 702120926
														n91 += 1365
														n1 = 796567122
														CreateTab = nil
													end

													AI.GeneratorModel = roundGenerator
												end
											end
										end
									end

									return Position2
								end

								AI.ClosestGenerator = v2639()
							end
						end
					end, function(p332)
						v126("[AI] autoplaymgr2 error:", tostring(p332))
					end)
					wait(0.4)
				end
			end
			autoplaymgr3 = function()
				local n97 = 679246231

				local function v2650(p333)
					if typeof(p333) ~= "Instance" then
						return
					end

					if p333:IsA("Player") then
						p333 = p333.Character
					end

					if n1 ~= 426030314 then
						n97 = 759933200
						n6 = 918032319
						n7 += 1504
						n31 += 260
						n3 -= 1249
						n1 -= 497
						n28 = 222107055
						upv172 = nil
						StartAimbotting = nil
						DisableNoclip = nil
					elseif not p333 or not p333.Parent or p333 == LocalPlayer.Character then
						return
					end

					local Humanoid = p333:FindFirstChild("Humanoid")
					local HumanoidRootPart = p333:FindFirstChild("HumanoidRootPart")

					if Humanoid and HumanoidRootPart and Humanoid.Health > 0 then
						return p333, HumanoidRootPart
					end
				end
				local function v2653(p334, p335)
					local Survivors4 = t20.Survivors

					if not Survivors4 then
						return
					end

					local u2655
					local huge = math.huge

					local function v2657(p336)
						local v2658, v2659 = v2650(p336)

						if not v2658 then
							return
						end

						local Magnitude = (v2659.Position - p334.Position).Magnitude

						if Magnitude < huge then
							u2655 = v2658
							huge = Magnitude
						end
					end

					if typeof(Survivors4) == "Instance" then
						for _, child in ipairs(Survivors4:GetChildren()) do
							v2657(child)
						end
					else
						for k, v in pairs(Survivors4) do
							v2657(typeof(v) == "Instance" and v or k)
						end
					end

					local v2665, v2666 = v2650(p335)

					if v2665 and u2655 ~= v2665 and (v2666.Position - p334.Position).Magnitude <= huge + 8 then
						return v2665
					end

					return u2655
				end

				local u2667
				local u2668 = false
				local now2 = tick()
				local vector3 = Vector3.zero

				while not u34 do
					xpcall(function()
						local Character_3 = LocalPlayer.Character
						local Humanoid = Character_3 and Character_3:FindFirstChild("Humanoid")
						local HumanoidRootPart = Character_3 and Character_3:FindFirstChild("HumanoidRootPart")

						if not v1096.Flags.AI_Killer_Toggle.CurrentValue or not IsKiller() or not Humanoid or not HumanoidRootPart or not (Humanoid.Health > 0) then
							if u2668 then
								u2668 = false
								u2667 = nil
								v2586()
							end

							return
						end

						u2667 = v2653(HumanoidRootPart, u2667)

						if not u2667 then
							if u2668 then
								u2668 = false
								v2586()
							end

							return
						end

						u2668 = true

						local HumanoidRootPart2 = u2667:FindFirstChild("HumanoidRootPart")
						local Magnitude = (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude
						local GetMaxM1Reach_ = GetMaxM1Reach

						while true do
							GetMaxM1Reach_ = GetMaxM1Reach_()

							if GetMaxM1Reach_ and Magnitude <= GetMaxM1Reach_ and IsKiller() and HasAbilityReady(GetM1Name()) then
								module:FireServerConnection("UseActorAbility", "REMOTE_EVENT", GetM1Name())
							end

							local now3 = tick()

							if now3 - now2 >= 0.5 then
								if (GetMaxM1Reach_ or 6) < Magnitude and (HumanoidRootPart.Position - vector3).Magnitude < 0.5 then
									Humanoid.Jump = true
									u2571 = nil
									n92 = 0
								end

								local Position = HumanoidRootPart.Position

								now2 = now3
								vector3 = Position
							end

							v2598(HumanoidRootPart2.Position, Character_3)

							if n1 == 426030314 then
								break
							end

							n3 -= 457
							n10 = 36807644
							n97 -= 194
							n30 = 892390470
							n7 = 82092053
							n31 = 793007222
							n6 += 1815
							n1 -= 1557
							IsAiming = nil
						end
					end, function(p337)
						local n98 = 877793366

						v126("[AI] autoplaymgr3 error:", tostring(p337))

						if n98 == n3 then
							n97 = 663185312
							n1 = 427772988
							n5 = 234937959
							n30 += 1299
							n28 += 569
							n6 += 576
							n3 += 559
							IsFacingBack = nil
							AddTextLabel = nil
						end
					end)
					wait()
				end

				if n97 == 679246689 then
					n10 += 1558
					n28 = 834633440
					n31 = 842666605
					n30 += 564
					n3 += 1919
					n5 += 1269
					n97 = 1024718104
					n7 += 855
					n1 = 968518892
					n6 += 1573
					GetAutoLockpickVar = nil
				else
					v2586()
				end
			end
		end

		task.spawn(function()
			while not u34 do
				if LocalPlayer.Character and LocalPlayer.Character.Parent == Survivors3 and v1096.Flags.AI_Survivor_Toggle.CurrentValue and t20.GameState == 1 then
					local MainKiller2 = t20.MainKiller
					local HumanoidRootPart = MainKiller2 and MainKiller2:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart then
						local v2682 = v1096.Flags.AI_Survivor_KillerRange.CurrentValue * 2

						Part3.Size = Vector3.new(3, v2682, v2682)
						Part3.CFrame = CFrame.new(HumanoidRootPart.Position) * CFrame.Angles(0, 0, math.rad(90))
					else
						Part3.CFrame = CFrame.new(0, -5000, 0) * CFrame.Angles(0, 0, math.rad(90))
					end

					local v2683 = v1096.Flags.WhenToSprint.CurrentOption[1]
					local v2684
					local v2685 = t20.AI.KillerDist and t20.AI.KillerDist <= v1096.Flags.AI_Survivor_KillerRange.CurrentValue
					local v2686

					if Sprinting.Stamina <= 1 then
						v2684 = true
					elseif v2683 == "Always" then
						v2686 = Sprinting.Stamina == Sprinting.MaxStamina
					else
						v2686 = v2685 and Sprinting.Stamina == Sprinting.MaxStamina
					end

					if v2686 and not Sprinting.IsSprinting then
						t20:Sprint(true)
					elseif v2684 then
						t20:Sprint(false)
					end
				else
					Part3.CFrame = CFrame.new(0, -5000, 0) * CFrame.Angles(0, 0, math.rad(90))
				end

				wait(0.2)
			end

			v127("ai loop unloaded")
			Part3:Destroy()

			if n31 == n7 then
				n3 = 865402288
				n7 += 681
				n1 += 388
				n31 -= 143
				n8 = 1044303376
				n6 = 6064120
				n5 = 185995148
				n30 -= 1821
				n10 -= 932
			end
		end)
		task.spawn(autoplaymgr)
		task.spawn(autoplaymgr2)
		task.spawn(autoplaymgr3)
		v1125:CreateSection("GUI")

		do
			CATSAKEN_panic = function(p338)
				table.foreach(v1096.Flags, function(p339)
					local v2687 = v1096.Flags[p339]
					local n99 = 28568109

					pcall(function()
						if n99 == n8 then
							n8 = 705574562
							n99 += 942
							n1 = 92553231
							NeedToEscapeOrReel = nil
						elseif v2687.__ISTOGGLE and v2687.CurrentValue then
							v2687:Set(false)
						end
					end)
					v2687.CurrentOption = p338 and {} or v2687.CurrentOption
					v2687.Set = p338 and v1108 or v2687.Set
				end)
			end
		end

		Unload = function()
			if u34 then
				return
			end

			u34 = true

			local n100 = 12608171

			v126("Destroying ..!")

			local n101 = 880012614

			xpcall(function()
				obj.CatsakenTabStorage:Destroy()
			end, function(p340)
				v126("failed to destroy tabs:", tostring(p340))
			end)
			xpcall(function()
				ScreenGui:Destroy()
				ScreenGui2:Destroy()
			end, function(p341)
				v126("failed to destroy esp gui:", tostring(p341))
			end)
			pcall(function()
				coroutine.close(obj.sigmataskspawn)
			end)

			if ReplicatedStorage:FindFirstChild("GearsHighlightStorage") then
				for _, child in pairs(ReplicatedStorage.GearsHighlightStorage:GetChildren()) do
					pcall(function()
						child.Parent = t20.GearHighlightsStore[child]
						t20.GearHighlightsStore[child] = nil

						if n100 ~= 12608171 then
							n29 = 842030110
							n9 += 586
							n5 -= 2027
							n8 = 803334992
							n101 = 33247775
							n30 -= 952
							n1 = 346152092
							n100 += 700
							M1Target = nil
						end
					end)
				end
			end

			for _, gearsDebri in pairs(t20.GearsDebris) do
				gearsDebri:SetAttribute("labelAdded", nil)
			end

			table.clear(t20.GearHighlightsStore)
			t20.NetworkConnections.CreateProjectile.Callback = t20.OldProjectileCreate
			v125.Position = UDim2.new(0.5, 0, -0.018, 0)
			v125.ImageTransparency = 0
			v125.Title.TextTransparency = 0

			repeat
				wait()
			until u1617

			connection2:Disconnect()
			pcall(obj.resetEditedValues)

			local v2695 = #t20.Disconnectables

			v127("Disconnecting", v2695, "connections from the script")

			for i = 1, v2695 do
				pcall(function()
					t20.Disconnectables[i]:Disconnect()
				end)
			end

			local v2697 = #t4

			v127("Disconnecting", v2697, "connections from lunar")

			for i = 1, v2697 do
				pcall(function()
					t4[i]:Disconnect()
				end)
			end

			if t20.MainKiller then
				pcall(function()
					t20.MainKiller.HumanoidRootPart.Abilities:Destroy()

					return
				end)
			end

			local pcall_

			for i = 1, #t20.Survivors do
				pcall_ = pcall
				pcall_(function()
					t20.Survivors[i].HumanoidRootPart.Abilities:Destroy()

					if not (n29 < n101) then
						n101 += 1038
						n100 = 545703595
						n29 = 1037983579
						n8 += 583
						n28 = 22320624
						n31 = 18705032
						n1 -= 1097
						n30 += 2
					end
				end)
			end

			for i = 1, #t20.AzureDebris do
				pcall_ = pcall
				pcall_(function()
					t20.AzureDebris[i].RootPart.RANGEVIS:Destroy()
				end)
			end

			for i = 1, #t20.TaphDebris do
				pcall_ = pcall
				pcall_(function()
					t20.TaphDebris[i].SubspaceBox.RANGEVIS:Destroy()
				end)
			end

			Part:Destroy()
			Part2:Destroy()
			lib:Destroy()
			_G.globaluilibrary = nil
			obj.catsakenexecuted = false
			Players:GetPlayers()
			pcall(function()
				if obj.BlockButton then
					obj.BlockButton:setEnabled(false)
					obj.BlockButton = nil
				end

				if obj.RagButton then
					obj.RagButton:setEnabled(false)
					obj.RagButton = nil
				end

				if obj.MobileToggle then
					obj.MobileToggle:setEnabled(false)
					obj.MobileToggle = nil
				end
			end)

			for k in pairs(t2) do
				pcall(v30, k)
			end

			table.foreach(t20, function(p342, p343)
				if tostring(p342):find("EspAppliedTo") then
					v127("clearing highlights for", p342)

					for k in pairs(p343) do
						if k:FindFirstChildOfClass("Highlight") then
							k:FindFirstChildOfClass("Highlight"):Destroy()
						end
					end
				end
			end)
			CATSAKEN_panic(true)
			walk_coroutine = walk_coroutine and coroutine.close(walk_coroutine) and nil
		end
		obj.CATSAKEN_UNLOAD = Unload

		do
			v1125:CreateButton({
				Name = "Unload",
				Callback = function()
					Unload()
				end
			})
		end

		v1125:CreateButton({
			Name = "Reload (local)",
			Callback = function()
				Unload()
				__SCRIPT()
			end,
			ToolTip = "Unload and reloads the entire script functionality"
		})
		v1125:CreateButton({
			Name = "Reload (github)",
			Callback = function(p344, p345, p346, p347, p348, p349, p350, p351, p352, p353, p354, p355, p356, p357, p358, p359, p360, p361, p362, p363, p364, p365, p366, p367, p368, p369, p370, p371, p372, p373, p374, p375, p376, p377, p378, p379, p380, p381, p382, p383, p384, p385, p386, p387, p388, p389, p390, p391)
				Unload()
				loadstring(safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken-real-script-not-assets/refs/heads/main/obfuscated-1448974601077002340.lua"))()

				if n1 == n9 then
					n10 -= 1085
					n31 = 1053844084
					n28 = 430707936
					n7 += 1716
					n30 += 628
					n1 = 831018258
					n3 += 943
					n6 = 924465679
					n9 = 874662928
					WaitAndReset = nil
					DeleteItems = p391
				end
			end,
			ToolTip = "Unload the script then executes the catsaken script from github"
		})

		do
			v1125:CreateButton({
				Name = (boolCatsakenOldui and "Disable" or "") .. " Old GUI",
				Callback = function()
					Unload()

					if boolCatsakenOldui then
						pcall(delfile, "BOOL_CATSAKEN_OLDUI")
					else
						writefile("BOOL_CATSAKEN_OLDUI", "")
					end

					wait(1)
					__SCRIPT()
				end
			})
		end

		do
			v1125:CreateButton({
				Name = "Clear all notifications",
				Callback = function()
					lib:DeleteNotifications()
				end,
				ToolTip = "Press this is the notifications are bugged and wont dissapear"
			})
		end

		GameStateChanged(lib.DeleteNotifications, lib.DeleteNotifications)

		if not (v122 or boolCatsakenOldui) then
			v1125:CreateToggle({
				Name = "Mobile toggle",
				CurrentValue = true,
				Flag = "MobileMenuToggle",
				Callback = function(p392)
					if obj.MobileToggle then
						obj.MobileToggle:setEnabled(p392)
					end

					if n31 ~= 291407125 then
						n30 -= 1313
						n28 -= 878
						n6 = 1010853104
						n31 -= 29
						n1 = 927128639
						n29 = 1011836308
						n5 = 890171838
						n3 = 120153198
						n2 = 85812471
						ins_custom_files = nil
					end
				end
			})
		end

		do
			local u2705

			v1125:CreateDropdown({
				Name = "Notifications position",
				Options = {
					"Bottom",
					"Top"
				},
				CurrentOption = { "Bottom" },
				Flag = "NotificationLayout",
				Callback = function(p393, p394)
					local n102 = 1064007313
					local n103 = 535348320

					pcall(function()
						u2705.Close()

						if not (n102 > 242891195) then
							n1 += 1496
							n103 += 1973
							n10 = 557551259
							n102 += 1878
							n6 = 112904576
							n5 -= 110
							Unload = nil
						end
					end)

					if n8 == n103 then
						n1 -= 1009
						n6 += 921
						n3 -= 865
						n30 = 289126260
						n31 -= 249
						n10 = 741041159
						n5 -= 1483
						n8 += 902
						n29 = 8744955
						n103 += 1099
						n102 -= 1941
					else
						lib:ChangeNotificationLayout(p393[1])
					end

					if not p394 then
						u2705 = lib:Notify({
							Title = "Example",
							Content = "Changed the notification position to " .. p393[1],
							Duration = 6,
							Image = "info"
						})
					end
				end
			})
		end

		do
			local function v2708(p395, p396)
				if obj.BlockToggle then
					obj.BlockButton:setImage(p395)
				end

				if obj.MobileToggle then
					obj.MobileToggle:setImage(p396 or p395)
				end
			end
			local function v2709()
				v2708(getcustomasset("Catsaken/shield.png"), getcustomasset("Catsaken/app-window.png"))

				if n5 ~= 142307361 then
					n5 += 1331
					n31 += 1328
					n1 = 1060196431
					n6 = 1019496013
					n2 -= 72
					n3 -= 1847
					n10 -= 812
					n7 = 177210928
					n30 = 474061671
					safehttpget = nil
					GrabTool = nil
				end
			end

			v1125:CreateDropdown({
				Name = "Topbar mode",
				Options = {
					"Icon + Name",
					"Icon",
					"Name only"
				},
				CurrentOption = { "Icon + Name" },
				Flag = "TopbarMode",
				Callback = function(p397)
					repeat
						wait()
					until obj.BlockButton

					if p397[1] == "Icon" then
						if obj.MobileToggle then
							obj.MobileToggle:setLabel("")
						end

						if obj.BlockButton then
							obj.BlockButton:setLabel("")
						end

						v2709()
					elseif p397[1] == "Icon + Name" then
						if obj.MobileToggle then
							obj.MobileToggle:setLabel("Catsaken")
						end

						if obj.BlockButton then
							obj.BlockButton:setLabel("Block")
						end

						v2709()
					elseif p397[1] == "Name only" then
						if obj.MobileToggle then
							obj.MobileToggle:setLabel("Catsaken")
						end

						if obj.BlockButton then
							obj.BlockButton:setLabel("Block")
						end

						v2708("")
					end
				end
			})
		end

		if not boolCatsakenOldui then
			v1125:CreateToggle({
				Name = "SFX",
				Flag = "GUISFX",
				Callback = function(p398)
					u128 = not p398
				end,
				CurrentValue = true
			})
		end

		Miscallenous:CreateSection("Fake block")

		local Normal

		FakeBlockCallback = function()
			if LocalPlayer.Character then
				local Humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")

				if Humanoid then
					local Animation = Instance.new("Animation")

					Animation.AnimationId = Normal
					Humanoid:LoadAnimation(Animation):Play(0.175)

					return
				end
			end
		end

		do
			setthreadidentity(2)

			local v2713 = Icon.new():setImage(getcustomasset("Catsaken/shield.png")):setLabel("Block"):setCaption("Fake block"):oneClick():bindEvent("deselected", FakeBlockCallback):setEnabled(false)

			obj.BlockButton = v2713
			setthreadidentity(8)
			t63 = {
				Normal = require(Survivors2.Guest1337.Config).Animations.Block
			}
			Normal = t63.Normal

			local t76 = { "Normal" }

			for _, v in Survivors.Guest1337:GetChildren() do
				if v:FindFirstChild("Config") then
					if (require(v.Config).Animations or {}).Block ~= nil then
						local Config12 = require(v.Config)
						local DisplayName = Config12.DisplayName

						table.insert(t76, DisplayName)
						t63[DisplayName] = Config12.Animations.Block
						task.spawn(function()
							ContentProvider:PreloadAsync({ Config12.Animations.Block })
						end)
					end
				end
			end

			local function v2719(p399)
				local n104 = 0

				for _ in pairs(p399) do
					n104 += 1
				end

				return n104
			end

			v127("inserted", v2719(t63), " block animations")
			Miscallenous:CreateToggle({
				Name = "Fake block (animation)",
				CurrentValue = false,
				Flag = "FakeBlockUIToggle",
				Callback = function(p400)
					if n10 == 355398448 then
						v2713:setEnabled(p400)
					else
						n3 = 319933148
						n8 += 392
						n7 -= 1080
						n30 += 1011
						n28 += 1018
						n1 = 729920094
						n2 = 648058018
						n31 = 362552626
						n10 = 671256578
						GetTrackLength = nil
						GrabTool = nil
					end
				end
			})

			if not v122 then
				Miscallenous:CreateKeybind({
					Name = "Keybind",
					CurrentKeybind = "B",
					HoldToInteract = false,
					CallOnChange = false,
					Flag = "FakeBlockKeybind",
					Callback = function()
						FakeBlockCallback()
					end
				})
			end

			Miscallenous:CreateDropdown({
				Name = "Block animation",
				Options = t76,
				CurrentOption = { "Normal" },
				Flag = "FakeBlockAnimation",
				Callback = function(p401)
					Normal = t63[p401[1]]
				end,
				Searchable = true
			})
		end

		Miscallenous:CreateToggle({
			Name = "Change block animation",
			CurrentValue = false,
			Flag = "BlockAnimationChanger",
			Callback = v1108
		})
		Miscallenous:CreateLabel("If you enable block animation changer <b>autoblock might not work properly</b> (fake block is fine)")

		do
			local Animation = Instance.new("Animation")
			local u2723

			Track = function(p402)
				if not (p402 and p402:WaitForChild("HumanoidRootPart", 7)) then
					return
				end

				local Humanoid = p402:WaitForChild("Humanoid", 7)

				if not Humanoid then
					return
				end

				local Animator = Humanoid:WaitForChild("Animator", 5)

				if not Animator then
					return
				end

				local function v2726()
					local AnimationPlayed = Animator.AnimationPlayed

					local function v2728(p403)
						if not TableFindThatWorks(t63, p403.Animation.AnimationId) then
							return
						end

						if not v1096.Flags.BlockAnimationChanger.CurrentValue then
							return
						end

						p403:Stop()

						local v2729 = Animation

						v2729.AnimationId = Normal

						local v2730 = Humanoid:LoadAnimation(v2729)

						u2723:Disconnect()
						v2730:Play()
						u2723 = v2726()
					end

					return AnimationPlayed:Connect(v2728)
				end

				u2723 = v2726()
			end
		end

		do
			t20.Disconnectables[#t20.Disconnectables + 1] = LocalPlayer.CharacterAdded:Connect(function(character)
				if u34 then
					if n7 < n5 then
						return
					end

					n3 += 790
					n31 = 637463674
					n7 += 1622
					n5 -= 1823
					n6 -= 1143
					n8 = 32210840
					n29 = 1033251033
					n30 = 89757555
					n1 -= 868
				end

				while true do
					wait()

					if character then
						if not character.Parent or character.Parent ~= Spectating then
							break
						end
					else
						break
					end
				end

				Track(character)
			end)
		end

		if LocalPlayer.Character then
			Track(LocalPlayer.Character)
		end

		Miscallenous:CreateSection("Fake die", "Right")

		do
			local u2731 = false

			RagdollEnable = function()
				u2731 = true

				local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

				if not Humanoid then
					return
				end

				Humanoid.PlatformStand = true
				Ragdolls.EnableRagdoll(LocalPlayer.Character)
			end
			RagdollDisable = function()
				u2731 = false

				local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")

				if not Humanoid then
					return
				end

				Humanoid.PlatformStand = false
				Ragdolls.DisableRagdoll(LocalPlayer.Character)

				if n9 == 202623962 then
					n1 = 454392791
					n30 = 168539879
					n3 = 996024215
					n28 = 965333991
					n31 = 324078689
					n7 = 1051178973
					n8 += 2000
					n9 += 1979
					n2 -= 899
					GetClosestToMouse = Humanoid
				end
			end
			setthreadidentity(2)

			local v2734 = Icon.new():setLabel("Ragdoll"):setCaption("Fake die / Ragdoll"):bindEvent("selected", RagdollEnable):bindEvent("deselected", RagdollDisable):autoDeselect(false):setEnabled(false)

			obj.RagButton = v2734
			setthreadidentity(8)
			Miscallenous:CreateToggle({
				Name = "Ragdoll button (NOT FE)",
				CurrentValue = false,
				Flag = "RagdollButtonToggle",
				Callback = function(p404)
					v2734:setEnabled(p404)

					return
				end
			})

			if not v122 then
				Miscallenous:CreateKeybind({
					Name = "Keybind",
					CurrentKeybind = "Z",
					HoldToInteract = false,
					CallOnChange = false,
					Flag = "RagdollKeybind",
					Callback = function()
						if u2731 then
							setthreadidentity(2)
							v2734:deselect()
							RagdollDisable()
							setthreadidentity(8)
						else
							setthreadidentity(2)
							v2734:select()
							RagdollEnable()
							setthreadidentity(8)
						end
					end
				})
			end
		end

		Miscallenous:CreateSection("Round Timer", "Right")

		do
			Miscallenous:CreateSlider({
				Name = "Round timer X",
				Range = {
					-100,
					200
				},
				Increment = 1,
				Suffix = "%",
				CurrentValue = 50,
				Flag = "RoundTimerX",
				Callback = function(p405)
					if n7 == 21677044 then
						n28 += 1381
						n30 += 1223
						n7 -= 195
						n10 = 1037072407
						n31 -= 364
						n1 -= 303
						n8 += 1756
						n6 -= 434
						n5 -= 177
						BringItems = nil
						get_translated_tab = nil
					else
						v125.Position = UDim2.new(p405 / 100, v125.Position.X.Offset, v125.Position.Y.Scale, v125.Position.Y.Offset)
					end
				end
			})
		end

		do
			Miscallenous:CreateSlider({
				Name = "Round timer Y",
				Range = {
					-100,
					200
				},
				Increment = 1,
				Suffix = "%",
				CurrentValue = 0,
				Flag = "RoundTimerY",
				Callback = function(p406)
					v125.Position = UDim2.new(v125.Position.X.Scale, v125.Position.X.Offset, p406 / 100 - 0.018, v125.Position.Y.Offset)
				end
			})
		end

		Miscallenous:CreateToggle({
			Name = "Only show time",
			CurrentValue = false,
			Flag = "RoundTimerHideBG",
			Callback = function(p407)
				v125.ImageTransparency = p407 and 1 or 0
				v125.Title.TextTransparency = p407 and v1096.Flags.RoundTimerHideTitle.CurrentValue and 1 or 0

				if n28 ~= 1032266516 then
					n6 += 1981
					n7 += 1131
					n9 = 947355327
					n28 = 29462492
					n3 -= 1733
					n1 += 347
					n30 = 335987706
					n2 = 724291067
					n31 = 232656713
					fixcolorpickers = nil
					AddBoxEsp = nil
					autoplaymgr2 = nil
				end
			end
		})
		Miscallenous:CreateToggle({
			Name = "└── Hide status",
			CurrentValue = false,
			Flag = "RoundTimerHideTitle",
			Callback = function(p408)
				if v1096.Flags.RoundTimerHideBG.CurrentValue then
					v125.Title.TextTransparency = p408 and 1 or 0
				end
			end
		})
		Miscallenous:CreateSection("Miscallenous", "Left")

		do
			local CATSAKEN_SBS = obj.CATSAKEN_SBS
			local CATSAKEN_SBS_DATA = obj.CATSAKEN_SBS_DATA

			Miscallenous:CreateToggle({
				Name = "Old forsaken menu",
				CurrentValue = isfile("BOOL_OldForsakenMenu"),
				Flag = "OldForsakenMenu",
				Callback = function(p409, p410)
					if u34 then
						return
					end

					if p409 and obj.OFM_IsDisabled then
						local OldForsakenMenu = v1096.Flags.OldForsakenMenu

						return OldForsakenMenu:Set(false)
					end

					if not p409 and obj.OFM_IsEnabled and not obj.OFM_IsDisabled then
						local OldForsakenMenu = v1096.Flags.OldForsakenMenu

						return OldForsakenMenu:Set(true)
					end

					if p409 and not (obj.OFM_IsEnabled or obj.OFM_IsDisabled) then
						writefile("BOOL_OldForsakenMenu", "")
						setthreadidentity(8)
						obj.OFM_IsEnabled = true

						if not p410 then
							lib:Notify({
								Title = "Catsaken",
								Content = "Loading old forsaken menu.. Do not disable the toggle until loaded"
							})
						end

						CATSAKEN_SBS_DATA = CATSAKEN_SBS_DATA or tostring(({ pcall(function()
							return http.request({
								Url = "https://raw.githubusercontent.com/aibabylaugh/catsaken/refs/heads/main/sidebarscript.lua",
								Method = "GET",
								Headers = {
									["content-type"] = "application/json"
								}
							}).Body
						end) })[2])

						if not CATSAKEN_SBS_DATA:find("--this watermark is used to confirm that the script by catsaken has been retrieved without failure") then
							obj.OFM_IsEnabled = false

							return lib:Notify({
								Title = "old forsaken menu",
								Content = "error while loading"
							}), v127("load err on sidebar:", CATSAKEN_SBS_DATA)
						end

						obj.CATSAKEN_SBS_DATA = CATSAKEN_SBS_DATA

						if not CATSAKEN_SBS then
							CATSAKEN_SBS = loadstring(CATSAKEN_SBS_DATA)()
							SidebarHandler = CATSAKEN_SBS
							obj.CATSAKEN_SBS = CATSAKEN_SBS
							CATSAKEN_SBS:Run()
						end
					end
				end,
				NoSave = true
			})
			Miscallenous:CreateButton({
				Name = "Disable old forsaken (One-Time press)",
				ToolTip = "Old menu cannot be re-enabled without rejoining after being disabled",
				Callback = function()
					if obj.OFM_IsDisabled or not CATSAKEN_SBS then
						return
					end

					pcall(delfile, "BOOL_OldForsakenMenu")
					obj.OFM_IsDisabled = true
					v1096.Flags.OldForsakenMenu:Set(false)
					CATSAKEN_SBS:Stop()
				end
			})
			Miscallenous:CreateToggle({
				Name = "Anti detect spectate",
				CurrentValue = false,
				Flag = "AntiDetectSpectate",
				Callback = function(p411)
					if p411 then
						module:FireServerConnection("SetSpectateTarget", "REMOTE_EVENT")
					end
				end,
				ToolTip = "Prevent hackers with a spectate detector (like catsaken) from seeing you are spectating them"
			})
			Miscallenous:CreateButton({
				Name = utf8.char(9888) .. " PANIC " .. utf8.char(9888),
				ToolTip = "Will disable ALL your features immediately after pressing INCLUDING settings like your autoblock, auto m1, stamina, etc!",
				Callback = function()
					if n31 == 291408801 then
						n30 = 859107759
						n3 = 68210650
						n31 = 7000344
						n7 -= 972
						n10 += 1182
						n28 = 1024823427
						n5 = 457482041
						n2 -= 381
						n1 += 732
						DrawSolutionsFlow = nil
						Changelms = nil
					else
						xpcall(CATSAKEN_panic, function(p412)
							v126("error in PANIC:", tostring(p412))
						end)
					end
				end
			})
			Miscallenous:CreateSlider({
				Name = "Script update rate",
				Range = {
					0,
					2
				},
				Increment = 0.01,
				Suffix = "s",
				CurrentValue = 0.3,
				Flag = "ScriptUpdateRate",
				Callback = function(p413)
					n14 = p413
				end,
				ToolTip = "This is how fast the script checks the game for things like killers, items, taph traps, azure traps, gears, etc. Higher could potentially reduce lag by a tiny bit, but increases latency within the script overall"
			})
		end

		Miscallenous:CreateSection("Streamer mode", "Right")

		do
			Miscallenous:CreateInput({
				Name = "Icon (FILE NAME ONLY)",
				CurrentValue = "Catsaken/catsaken_mesh.png",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "NameHiderIcon",
				Callback = v1108
			})
			Miscallenous:CreateInput({
				Name = "Name",
				CurrentValue = "Catsaken Protection",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "NameHiderText",
				Callback = v1108
			})

			local CurrentValue = v1096.Flags.NameHiderText.CurrentValue or "Catsaken Protection"

			Miscallenous:CreateToggle({
				Name = "Name hider (client)",
				CurrentValue = true,
				Flag = "NameHider",
				Callback = function(p414)
					if p414 then
						CurrentValue = v1096.Flags.NameHiderText.CurrentValue
					end

					local Name = game.Players.LocalPlayer.Name

					local function v2741(p415)
						if p415:IsA("TextLabel") or p415:IsA("TextButton") or p415:IsA("TextBox") then
							if p414 then
								p415.Text = p415.Text:gsub(Name, CurrentValue)
							else
								p415.Text = p415.Text:gsub(CurrentValue, Name)
							end
						elseif p415.Name ~= "PlayerIcon" then
							if p415.Name == "Player" and p415:IsA("ImageLabel") then
								if p414 then
									p415.Image = getcustomasset(v1096.Flags.NameHiderIcon.CurrentValue)
								else
									p415.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420"
								end
							end
						elseif p414 then
							p415.Image = getcustomasset(v1096.Flags.NameHiderIcon.CurrentValue)
						else
							p415.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420"
						end
					end

					for _, descendant in pairs(PlayerListHolder:GetDescendants()) do
						v2741(descendant)
					end

					for _, descendant in pairs(PlayerInfo:GetDescendants()) do
						v2741(descendant)
					end

					if TemporaryUI:FindFirstChild(LocalPlayer.Name) then
						for _, descendant in pairs(TemporaryUI[LocalPlayer.Name]:GetDescendants()) do
							v2741(descendant)
						end
					end
				end,
				ToolTip = "If you are recording a video/clip, enable this so people do not see your name"
			})
		end

		Miscallenous:CreateLabel("Re-Enable after changing setting")

		do
			task.spawn(function()
				if boolCatsakenOldui then
					lib:LoadConfiguration()
				else
					local exitTo

					while true do
						if u34 then
							exitTo = 1

							break
						end

						local json = HttpService:JSONEncode(v1096.Flags)

						wait(1)

						if u34 then
							break
						end

						if HttpService:JSONEncode(v1096.Flags) ~= json then
							v126("AutoSaving ...")

							local data_ = HttpService:JSONDecode(readfile("catsakenconfigs.json"))
							local v2751 = deepcopy(data_)

							v2751[v132] = fixcolorpickers(deepcopy(v1096.Flags))
							writefile("catsakenconfigs.json", HttpService:JSONEncode(v2751))
						end
					end

					if exitTo ~= 1 then
						return
					end
				end
			end)
		end

		do
			local n105

			cfgmanager = function()
				n105 = 859710476

				if not isfile("catsakenautoload.txt") then
					writefile("catsakenautoload.txt", v132)
				end

				local data_

				local function v2754()
					data_ = HttpService:JSONDecode(readfile("catsakenconfigs.json"))

					if not (n5 < n105) then
						n5 += 386
						n30 = 341313900
						n105 -= 1431
						n1 -= 1874
						n6 += 1919
					end
				end
				local function v2755(p416)
					for _, v in pairs(p416) do
						if typeof(v) == "table" and v.Color then
							v.Color = formatclr(v.Color)
						end
					end

					if n28 ~= n3 then
						return p416
					end

					n30 = 920336716
					n3 -= 298
					n28 += 58
					n1 = 826657333
					n5 = 8989293
					canstartsprintzero = nil
				end

				v2754()
				Configs:CreateSection("Configurations")

				local txt = isfile("catsakentemploadconfig.txt") and readfile("catsakentemploadconfig.txt") or readfile("catsakenautoload.txt")
				local s19 = "NewConfig"

				local function v2760()
					local t77 = {}

					for k in pairs(data_) do
						t77[#t77 + 1] = k
					end

					return t77
				end

				local v2763 = Configs:CreateDropdown({
					Name = "Selected Config",
					Options = v2760(),
					CurrentOption = { txt },
					Flag = "currentcfgselect",
					Callback = function(p417)
						txt = p417[1]
					end
				})

				Configs:CreateButton({
					Name = "Overwrite Selected",
					Callback = function()
						v1096.Flags.currentcfgname = {
							CurrentValue = ""
						}
						v1096.Flags.currentcfgselect = {
							CurrentOption = { txt }
						}

						local v2764 = deepcopy(data_)

						v2764[txt] = v2755(deepcopy(v1096.Flags))
						data_ = v2764
						writefile("catsakenconfigs.json", HttpService:JSONEncode(v2764))
						lib:Notify({
							Title = "Done",
							Content = "Config saved.",
							Duration = 15,
							Image = "scroll"
						})
					end
				})
				Configs:CreateButton({
					Name = "Set Selected As Autoload",
					Callback = function()
						writefile("catsakenautoload.txt", txt)
						lib:Notify({
							Title = "Done",
							Content = "Config set to autoload.",
							Duration = 15,
							Image = "scroll"
						})
					end
				})

				if n3 < n105 then
					Configs:CreateInput({
						Name = "Config Name",
						CurrentValue = s19,
						PlaceholderText = "Text",
						RemoveTextAfterFocusLost = false,
						Flag = "currentcfgname",
						DontSave = true,
						Callback = function(p418)
							s19 = p418 .. ".json"
						end
					})
				else
					n28 = 689945598
					n29 -= 1362
					n30 = 543909524
					n105 = 718720526
					n5 = 444961298
					n6 = 1065667600
					n1 = 99919709
					n3 -= 1169
					n7 += 350
					n31 = 648794899
				end

				Configs:CreateButton({
					Name = "Save Config",
					Callback = function()
						local v2765 = deepcopy(data_)

						if v2765[s19] then
							return lib:Notify({
								Title = "Fail",
								Content = "Config already exists. Refresh list, then overwrite it.",
								Duration = 15,
								Image = "scroll"
							})
						end

						v1096.Flags.currentcfgname = {
							CurrentValue = ""
						}
						v1096.Flags.currentcfgselect = {
							CurrentOption = { s19 }
						}
						v2765[s19] = v2755(deepcopy(v1096.Flags))
						data_ = v2765
						writefile("catsakenconfigs.json", HttpService:JSONEncode(v2765))
						lib:Notify({
							Title = "Done",
							Content = "Config saved.",
							Duration = 15,
							Image = "scroll"
						})
					end
				})
				Configs:CreateButton({
					Name = "Delete Selected",
					Callback = function()
						if txt == "catsaken-default-" .. LocalPlayer.Name .. ".json" then
							return lib:Notify({
								Title = "Error",
								Content = "You cannot delete the default config for an account.",
								Duration = 15,
								Image = "scroll"
							})
						end

						local v2766 = deepcopy(HttpService:JSONDecode(readfile("catsakenconfigs.json")))

						v2766[txt] = nil
						data_ = v2766

						if n105 == 859710476 then
							writefile("catsakenconfigs.json", HttpService:JSONEncode(data_))
						else
							n28 -= 1659
							n31 = 662709194
							n1 -= 1688
							n105 += 1769
							n3 -= 1931
							Check = nil
						end

						lib:Notify({
							Title = "Done",
							Content = "Config deleted.",
							Duration = 15,
							Image = "scroll"
						})
					end
				})
				Configs:CreateButton({
					Name = "Load Selected",
					Callback = function()
						writefile("catsakentemploadconfig.txt", txt)
						Unload()
						wait(0.5)
						__SCRIPT()
					end
				})
				Configs:CreateButton({
					Name = "Refresh List",
					Callback = function()
						v2754()

						local function v2767()
							local t78 = {}

							for k in pairs(data_) do
								t78[#t78 + 1] = k
							end

							return t78
						end

						v2763:Refresh(v2767())
					end
				})

				if identifyexecutor() == "Delta" or pos2 then
					Configs:CreateButton({
						Name = "Share Current Settings",
						Callback = function()
							obj.MobileToggle:deselect()
							loadstring(safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken-real-script-not-assets/refs/heads/main/miscallenous/ConfigPost.lua"))()
						end
					})
					Configs:CreateButton({
						Name = "Search For Configs",
						Callback = function()
							obj.MobileToggle:deselect()
							loadstring(safehttpget("https://raw.githubusercontent.com/aibabylaugh/catsaken-real-script-not-assets/refs/heads/main/miscallenous/ConfigSearch.lua"))()

							return
						end
					})
				end

				Configs:CreateSection("Export/Import")
				Configs:CreateLabel("Export current settings to a Base64 file, then be able to load/share it for others to import and show in their configs list as specified name.")
				Configs:CreateDivider()
				Configs:CreateInput({
					Name = "Name to export as",
					CurrentValue = "",
					PlaceholderText = "Text",
					RemoveTextAfterFocusLost = false,
					Flag = "cfgexportname",
					DontSave = true,
					Callback = v1108
				})
				Configs:CreateButton({
					Name = "Export as Base64 and copy",
					Callback = function()
						local v2770 = deepcopy(v1096.Flags)

						v2770.__CONFIG_FLAG_RAYFIELD__ = boolCatsakenOldui

						local n106 = 607498550

						v2770.__META_NAME__ = v1096.Flags.cfgexportname.CurrentValue
						v2770.currentcfgname = {
							CurrentValue = ""
						}
						v2770.currentcfgselect = {
							CurrentOption = { v2770.__META_NAME__ }
						}

						for _, v in pairs(v2770) do
							if typeof(v) == "table" then
								v.__ISTOGGLE = nil
							end
						end

						local json = HttpService:JSONEncode(v2770)

						setclipboard(base64.encode(json))
						lib:Notify({
							Title = "Done",
							Content = "Copied " .. string.len(json) .. " characters.",
							Duration = 10,
							Image = "copy"
						})

						if n1 == n106 then
							n5 -= 1210
							n1 = 336475207
							n105 += 1280
							n30 -= 1111
							n3 += 225
						end
					end
				})
				Configs:CreateDivider()
				Configs:CreateInput({
					Name = "Enter Base64 content",
					CurrentValue = "",
					PlaceholderText = "Text",
					RemoveTextAfterFocusLost = false,
					Flag = "cfgimporttext",
					DontSave = true,
					Callback = v1108
				})
				Configs:CreateButton({
					Name = "Import",
					Callback = function()
						xpcall(function()
							local v2775 = deepcopy(HttpService:JSONDecode(readfile("catsakenconfigs.json")))
							local data_2 = HttpService:JSONDecode(base64.decode(v1096.Flags.cfgimporttext.CurrentValue))
							local __CONFIG_FLAG_RAYFIELD__ = data_2.__CONFIG_FLAG_RAYFIELD__
							local __META_NAME__ = data_2.__META_NAME__

							if __CONFIG_FLAG_RAYFIELD__ == nil or __META_NAME__ == nil then
								return lib:Notify({
									Title = "Fail",
									Content = "Config does not contain the required flags.",
									Duration = 10,
									Image = "ban"
								})
							end

							if __CONFIG_FLAG_RAYFIELD__ and not boolCatsakenOldui then
								return lib:Notify({
									Title = "Fail",
									Content = "This config only works for rayfield. Enable old gui in miscallenous",
									Duration = 10,
									Image = "ban"
								})
							end

							v2775[__META_NAME__] = data_2
							data_ = v2775
							writefile("catsakenconfigs.json", HttpService:JSONEncode(data_))
							lib:Notify({
								Title = "Done",
								Content = "Imported \"" .. __META_NAME__ .. "\".",
								Duration = 10,
								Image = "scroll"
							})
						end, function(p419)
							v126("the error:", p419)
							lib:Notify({
								Title = "Error",
								Content = "Error when importing.",
								Duration = 10,
								Image = "ban"
							})
						end)
					end
				})
			end
		end

		pcall(function()
			if isfile("catsakentemploadconfig.txt") then
				lib:Notify({
					Title = "Catsaken",
					Content = "Loading the config \"" .. readfile("catsakentemploadconfig.txt") .. "\""
				})
			end

			pcall(delfile, "catsakentemploadconfig.txt")
		end)

		if boolCatsakenOldui then
			Configs:CreateLabel("You cannot create multiple configs on rayfield.")
		else
			cfgmanager()
			v127("[Catsaken] config manager initialized")
		end

		local v2779

		v2779 = hookmetamethod(game, "__namecall", function(t, ...)
			if u34 then
				return v2779(t, ...)
			end

			local A = { ... }

			if (typeof(t) == "Instance") then
				if (t == Network.RemoteEvent) then
					local D = ({ ... })[2]

					if type(D) == "table" and typeof(D[1]) == "buffer" then
						if buffer.tostring(D[1]):find("PlasmaBeam") then
							WaitAndReset("DusekkarActive")
						elseif buffer.tostring(D[1]):find("Nova") then
							WaitAndReset("NoliActive")
						elseif buffer.tostring(D[1]):find("CorruptNature") then
							WaitAndReset("CoolkidActive")
						end
					end

					return v2779(t, unpack(A))
				elseif (t == LocalPlayer and getnamecallmethod() == "GetAttribute" and A[1] == "Device" and v1096.Flags.DeviceSpoofer.CurrentValue) then
					return v1096.Flags.ClientDeviceSpooferValue.CurrentOption[1]
				elseif (t == RunService and getnamecallmethod() == "BindToRenderStep" and A[1] == "Sk8") then
					if v1096.Flags.Sk8Autofarm.CurrentValue then
						while t20.GameState == 1 do
							v127("tricking")
							module:FireServerConnection(LocalPlayer.Name .. "SkateTrick", "REMOTE_EVENT")
							wait(Config.Sk8TrickCooldown + .05)
						end

						return v2779(t, unpack(A))
					end

					local k = require(Modules.Utilities.Util)
					local p = require(LocalPlayer.PlayerScripts.PlayerModule.ControlModule)
					local M = A[3]
					local N = debug.getupvalue(M, 5)

					function CATSAKEN_NO_SK8_FUNC_ERROR()
					end

					local D = debug.info(N or NO_SK8_FUNC_ERROR, "n")

					if D ~= "stopSkating" then
						v126("upvalue 5 of", tostring(N), "was not stopSkating, instead " .. tostring(D))

						return v2779(t, unpack(A))
					end

					local m = clonefunction(N)
					local N
					local D = v1096.Flags.Sk8Forever.CurrentValue
					local x = v1096.Flags.Sk8ForeverMode.CurrentOption[1]

					if D then
						t20._SprintDuringSk8 = true
					end

					local g = true

					debug.setupvalue(M, 5, function(...)
						local C = v1096.Flags.Sk8AntiCrash.CurrentValue

						D = v1096.Flags.Sk8Forever.CurrentValue

						if not D then
							N = false
						end

						if ((Sprinting.Stamina <= (Sprinting.MinStamina or 0) and not N) or not C) then
							t20._SprintDuringSk8 = nil
							g = false

							return m(...)
						end

						return
					end)

					if D and x ~= "Freeze stamina while skating" then
						debug.setupvalue(M, 4, { __sprintedEvent = { Fire = v1108 }, Stamina = math.huge, MinStamina = -math.huge })
						N = true
						v127("Patched the 4th upvalue")
					elseif D then
						local m = Sprinting.Stamina

						task.spawn(function()
							while g and wait() do
								Sprinting.Stamina = m
							end
						end)
						N = true
					end

					function isheldtrickbutton()
						local W = debug.getupvalue(M, 32)

						if type(W) == "boolean" then
							return W
						end

						local W = GetService("UserInputService")

						return W:IsKeyDown(Enum.KeyCode.Space) or W:IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonX)
					end

					local W = false

					A[3] = function(m)
						local N = nil
						local z = LocalPlayer.Character
						local R = z and z.PrimaryPart

						if v1096.Flags.Sk8Freewalk.CurrentValue then
							local D = k:GetActor(LocalPlayer)
							local u = D and D.HeldAbilities.Sk8
							local E = debug.getupvalue(M, 4)
							local x = R and D and k:IsAlive(z) and not R.Anchored and not z:GetAttribute("Ragdolling") and E.Stamina > (E.MinStamina or 0)

							if x and not u and not isheldtrickbutton() and p:GetMoveVector().Magnitude < 0.001 then
								W = true

								return
							end

							if W and not u then
								debug.setupvalue(M, 13, os.clock())
							end

							W = false
						end

						local k = Behavior2:FindFirstChild("Highlight") and Behavior2.Highlight.Adornee == z

						if v1096.Flags.Sk8TrickAnywhere.CurrentValue and R and isheldtrickbutton() and not k then
							local k = R.AssemblyLinearVelocity
							local W = Vector3.new(k.X, 0, k.Z)
							local k = R.CFrame.LookVector
							local p = W.Magnitude > 0.1 and W.Unit or Vector3.new(k.X, 0, k.Z).Unit

							N = p:Cross(Vector3.yAxis).Unit
							debug.setupvalue(M, 27, N)
							debug.setupvalue(M, 26, os.clock())
						end

						M(m)

						if N and debug.getupvalue(M, 27) == N then
							local k = Behavior2:FindFirstChild("Highlight")

							if k then
								k.Adornee = nil
							end

							debug.setupvalue(M, 27, false)
						end
					end
				elseif (t == ContextActionService and getnamecallmethod() == "BindActionAtPriority" and v1096.Flags.UnlimitedRunning.CurrentValue and GetInfStamMethod() ~= "Disable stamina loss") then
					setthreadidentity(2)

					local Q, k, W, m = ...

					if Q == "Sprinting" then
						local p = { select(5, ...) }

						return v2779(t, Q, function(Q, d, j)
							setthreadidentity(2)

							if d == Enum.UserInputState.Begin and canstartsprintzero() then
								t20:Sprint(true)

								return
							end

							return k(Q, d, j)
						end, W, m, unpack(p))
					end
				end
			end

			return v2779(t, unpack(A))
		end)
		v127("[metahooks] __namecall hook initialized")
		u1025 = true

		if not boolCatsakenOldui then
			v1096:SelectTab(1)
		end

		lib:Notify({
			Title = "Loaded",
			Content = "Loaded in " .. string.format("%.1fs", tick() - now),
			Duration = 4,
			Image = "loader-circle"
		})
		obj.ErrLogConnection:Disconnect()

		do
			ins_custom_files = function(p420, p421)
				if not isfolder("Catsaken/Music") then
					makefolder("Catsaken/Music")
				end

				for _, v in ipairs(listfiles("Catsaken/Music")) do
					if v:sub(-4) == ".mp3" or v:sub(-4) == ".ogg" then
						if n30 == 28954404 then
							n10 = 967142883
							n6 -= 92
							n1 += 1804
							n2 -= 233
							n31 -= 1000
							n30 = 362691759
							n8 = 873084841
							n3 -= 585
							n28 = 173336132
						else
							p420.Names[#p420.Names + 1] = v
						end

						p420.Data[v] = p421 and getcustomasset(v) or readfile(v)
					end
				end
			end
		end

		Audio:CreateSection("Audio")
		Audio:CreateLabel("You can also put files into the Catsaken/Music folder and they will show in dropdowns")

		do
			Audio:CreateSection("Last Man Standing")

			local downloading = Audio:CreateLabel("DOWNLOADING")

			if not isfile("LMS_DOWNLOAD_TOGGLE") then
				v127("making lms file thing or something")
				writefile("LMS_DOWNLOAD_TOGGLE", "1")
			end

			local v2818 = readfile("LMS_DOWNLOAD_TOGGLE") == "0"
			local t79 = {
				Names = { "Custom" },
				Data = {}
			}

			ins_custom_files(t79)

			local v2820 = false

			if not v2818 then
				local ok, result = pcall(function()
					return safehttpget("https://api.github.com/repos/aibabylaugh/catsaken/contents/lms")
				end)

				if ok and result and typeof(result) == "string" then
					local ok2, result2 = xpcall(function()
						return HttpService:JSONDecode(result)
					end, function(p422)
						v126("lms json decode failed:", tostring(p422))
					end)

					if ok2 and typeof(result2) == "table" then
						local n107 = 0
						local n108 = 0

						for _, v in result2, nil, nil do
							pcall(function()
								local v2829 = v.name:sub(1, -5)
								local v2830 = ("Catsaken/%*"):format(v2829)
								local v2831

								if isfile(v2830) then
									local readfile_ = readfile
									local v2833 = ("Catsaken/%*"):format(v2829)

									v2831 = readfile_(v2833)
								else
									v2831 = safehttpget(v.download_url)

									if v2831 and typeof(v2831) == "string" then
										local v2834 = string.byte(data, 1)
										local v2835 = string.byte(data, 2)

										if v2834 and v2835 and (string.sub(data, 1, 3) == "ID3" or v2834 == 255 and v2835 >= 224) then
											writefile(("Catsaken/%*"):format(v2829), v2831)
										else
											v126("lms music is corrupted!")
										end
									else
										v126("lms music download_url failed")
									end

									wait(0.5)
								end

								if not v2831 then
									n108 += 1

									return
								end

								t79.Data[v2829] = v2831
								table.insert(t79.Names, v2829)
							end)
							n107 += 1
							downloading:Set("DOWNLOADING " .. n107 .. "/" .. #result2 .. (n108 > 0 and "(" .. n108 .. " failed)" or ""))
						end

						downloading:Set("Downloaded " .. #result2 .. " LMS files\nMost of these LMS arent official, they're just presets")
					else
						v2820 = true
						downloading:Set("Lms failed to download (json error)")
					end
				else
					v2820 = true
					downloading:Set("Lms failed to download (http error)")
				end
			end

			local Selectedlms = isfile("Catsaken/Selectedlms") and readfile("Catsaken/Selectedlms") or "None"
			local Selectedchase = isfile("Catsaken/Selectedchase") and readfile("Catsaken/Selectedchase") or "None"
			local SelectedLobbyMusic = isfile("Catsaken/SelectedLobbyMusic") and readfile("Catsaken/SelectedLobbyMusic") or "None"

			Changechasetheme = function()
				local v2839

				for _, v in pairs(t20.ChaseThemesRaw) do
					v2839 = workspace.Themes:FindFirstChild(v)

					if v2839 then
						t20.CurrentChaseTheme = v2839

						break
					end
				end

				if Selectedchase == "None" then
					return
				end

				if not v2839 then
					return
				end

				local CurrentValue = v1096.Flags.CustomChaseID.CurrentValue
				local CurrentValue2 = v1096.Flags.CustomChaseFile.CurrentValue
				local soundId

				if CurrentValue ~= "" and Selectedchase == "Custom" then
					if tonumber(CurrentValue) then
						soundId = "rbxassetid://" .. CurrentValue
					else
						soundId = CurrentValue
					end
				elseif CurrentValue2 ~= "" and Selectedchase == "Custom" and isfile(CurrentValue2) then
					soundId = getcustomasset(CurrentValue2)
				elseif Selectedchase ~= "Custom" then
					soundId = Selectedchase
				end

				if soundId then
					v2839.SoundId = soundId
				end
			end
			Changelobbymusic = function()
				if SelectedLobbyMusic == "None" then
					return
				end

				local u2845

				local function v2846(p423)
					local now2 = tick()

					while tick() - now2 <= 5 do
						if u2845 then
							if n30 ~= 28953693 then
								return u2845
							end

							n31 += 1674
							n28 += 1070
							n30 -= 1935
							n1 = 691197416
							n6 = 43164550
						end

						local v2848 = workspace.Themes:FindFirstChild(p423)

						if v2848 then
							return v2848
						end

						wait()
					end

					return v126("WaitForChild: did not find", p423)
				end

				task.spawn(function()
					u2845 = v2846("spectreOutside", 5)

					if n1 ~= 426030314 then
						n29 = 933931261
						n31 += 1604
						n9 += 406
						n1 = 86327917
						n7 += 1389
						CreateAntiFeatureCallback = nil
					end
				end)
				task.spawn(function()
					u2845 = v2846("deathLobby", 5)
				end)

				while not u2845 do
					wait()
				end

				t20.CurrentLobbyMusic = u2845

				local CurrentValue = v1096.Flags.CustomLobbyID.CurrentValue
				local CurrentValue2 = v1096.Flags.CustomLobbyFile.CurrentValue
				local soundId

				if CurrentValue ~= "" and SelectedLobbyMusic == "Custom" then
					if tonumber(CurrentValue) then
						soundId = "rbxassetid://" .. CurrentValue
					else
						soundId = CurrentValue
					end
				elseif CurrentValue2 ~= "" and SelectedLobbyMusic == "Custom" then
					soundId = getcustomasset(CurrentValue2)
				elseif SelectedLobbyMusic ~= "Custom" then
					local getcustomasset_ = getcustomasset
					local v2853 = ("Catsaken/%*"):format(SelectedLobbyMusic)

					soundId = getcustomasset_(v2853)
				end

				if not u2845:GetAttribute("RealId") then
					u2845:SetAttribute("RealId", u2845.SoundId)
					u2845:GetPropertyChangedSignal("SoundId"):Connect(function()
						if soundId and v1096.Flags.LobbyMusicChanger.CurrentValue then
							u2845.TimePosition = 0
							u2845.SoundId = soundId
						end
					end)
				end

				if soundId then
					u2845.TimePosition = 0
					u2845.SoundId = soundId
				end
			end

			if not v2820 then
				Changelms = function()
					if Selectedlms == "None" then
						return
					end

					local LastSurvivor = workspace.Themes:WaitForChild("LastSurvivor", 5)

					if not LastSurvivor then
						return
					end

					t20.CurrentLms = LastSurvivor

					if not LastSurvivor:GetAttribute("RealId") then
						LastSurvivor:SetAttribute("RealId", LastSurvivor.SoundId)
					end

					local CurrentValue = v1096.Flags.CustomLMSID.CurrentValue
					local CurrentValue2 = v1096.Flags.CustomLMSFile.CurrentValue
					local soundId

					if CurrentValue ~= "" and Selectedlms == "Custom" then
						if tonumber(CurrentValue) then
							soundId = "rbxassetid://" .. CurrentValue
						else
							soundId = CurrentValue
						end
					elseif CurrentValue2 ~= "" and Selectedlms == "Custom" then
						soundId = getcustomasset(CurrentValue2)
					elseif Selectedlms ~= "Custom" then
						local getcustomasset_ = getcustomasset
						local v2859 = ("Catsaken/%*"):format(Selectedlms)

						soundId = getcustomasset_(v2859)
					end

					if soundId then
						LastSurvivor.SoundId = soundId
					end
				end

				if not v2818 then
					Audio:CreateDropdown({
						Name = "LMS theme",
						Options = t79.Names,
						CurrentOption = { Selectedlms },
						Flag = "LMSSelectedTheme",
						Callback = function(p424)
							repeat
								wait()
							until v1096.Flags.LastManStandingChanger ~= nil

							local v2860 = p424[1]

							writefile("Catsaken/Selectedlms", v2860)
							Selectedlms = v2860

							if v2860 ~= "Custom" then
								local v2861 = t79.Data[v2860]

								if v2861 then
									local isfile_ = isfile
									local v2863 = ("Catsaken/%*"):format(v2860)

									if not isfile_(v2863) then
										v126("writing lms")
										writefile(("Catsaken/%*"):format(v2860), v2861)
									end
								end
							end

							if v1096.Flags.LastManStandingChanger.CurrentValue then
								Changelms()
							end
						end,
						Searchable = true
					})
					Audio:CreateInput({
						Name = "Custom LMS ID",
						CurrentValue = isfile("Catsaken/CustomLMSID") and readfile("Catsaken/CustomLMSID") or "",
						PlaceholderText = "Leave empty for none",
						RemoveTextAfterFocusLost = false,
						Flag = "CustomLMSID",
						Callback = function(p425)
							writefile("Catsaken/CustomLMSID", p425)
							Changelms()
						end
					})
					Audio:CreateInput({
						Name = "Custom LMS File",
						CurrentValue = isfile("Catsaken/CustomLMSFile") and readfile("Catsaken/CustomLMSFile") or "",
						PlaceholderText = "Leave empty for none",
						RemoveTextAfterFocusLost = false,
						Flag = "CustomLMSFile",
						Callback = function(p426, p427)
							writefile("Catsaken/CustomLMSFile", p426)

							if p426 == "" then
								return
							end

							if not isfile(p426) then
								return lib:Notify({
									Title = "Incorrect file (lms changer)",
									Content = "\"" .. p426 .. "\" is not an existing file",
									Duration = 8,
									Image = "ban"
								})
							end

							if not p427 then
								lib:Notify({
									Title = "Found file",
									Content = "File located in workspace. Please make sure to change the selected lms theme to Custom",
									Duration = 8,
									Image = "check"
								})
							end

							Changelms()
						end
					})
					Audio:CreateToggle({
						Name = "Change LMS",
						CurrentValue = isfile("Catsaken/LmsChangerEnabled"),
						Flag = "LastManStandingChanger",
						Callback = function(p428)
							if p428 then
								task.spawn(function()
									if n1 == 426030314 then
										writefile("Catsaken/LmsChangerEnabled", "")
									else
										n28 += 1800
										n30 = 656022476
										n8 = 582322202
										n1 -= 1177
										n3 -= 1336
										n7 = 1002454879
										GetGeneratorProgress = nil
									end
								end)
								Changelms()
							else
								pcall(delfile, "Catsaken/LmsChangerEnabled")

								if t20.CurrentLms then
									t20.CurrentLms.SoundId = t20.CurrentLms:GetAttribute("RealId")
								end
							end
						end
					})
				end

				Audio:CreateButton({
					Name = ("[%s LMS Downloads]"):format(v2818 and "Enable" or "Disable"),
					Callback = function()
						writefile("LMS_DOWNLOAD_TOGGLE", v2818 and "1" or "0")
					end
				})
			end

			if v2818 then
				downloading:Set("Downloads are disabled")
			end

			Audio:CreateSection("Guest 1337", "Right")

			local s20 = ""
			local s21 = ""
			local s22 = ""
			local s23 = ""

			Audio:CreateInput({
				Name = "Block Success | ID",
				CurrentValue = "",
				PlaceholderText = "Number/Text",
				RemoveTextAfterFocusLost = false,
				Flag = "BlockSuccessID",
				Callback = function(p429)
					if p429 == "" then
						s21 = ""

						return
					end

					if tonumber(p429) then
						s21 = "rbxassetid://" .. p429
						pcall(function()
							ContentProvider:PreloadAsync({ audiochanger_Block })
						end)

						return
					end

					if p429:find("rbxassetid://") or p429:find("http://www.roblox.com/asset/") then
						s21 = p429
						pcall(function()
							ContentProvider:PreloadAsync({ audiochanger_Block })

							if n1 == 426031591 then
								n2 -= 125
								n30 = 212005759
								n29 -= 11
								n1 = 303760874
								n31 = 141155762
								n9 += 354
								MassIdSearch = nil
							end
						end)
					else
						s21 = ""
					end
				end
			})
			Audio:CreateInput({
				Name = "Block Success | File",
				CurrentValue = "",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "BlockSuccessFile",
				Callback = function(p430, p431)
					if p430 == "" then
						s20 = ""

						return
					end

					if not isfile(p430) then
						s20 = ""

						return lib:Notify({
							Title = "Incorrect file (audio changer)",
							Content = "\"" .. p430 .. "\" is not an existing file",
							Duration = 8,
							Image = "ban"
						})
					end

					if not p431 then
						lib:Notify({
							Title = "Found file",
							Content = "File located in workspace.",
							Duration = 8,
							Image = "check"
						})
					end

					s20 = getcustomasset(p430)
					pcall(function()
						ContentProvider:PreloadAsync({ s20 })
					end)
				end
			})
			Audio:CreateInput({
				Name = "Parry | ID",
				CurrentValue = "",
				PlaceholderText = "Number/Text",
				RemoveTextAfterFocusLost = false,
				Flag = "ParryFile",
				Callback = function(p432)
					local n109 = 736985197

					if p432 == "" then
						s23 = ""

						return
					end

					local n110 = 400021678

					if tonumber(p432) then
						s23 = "rbxassetid://" .. p432
						pcall(function()
							ContentProvider:PreloadAsync({ s23 })

							if not (n10 < n29) then
								n1 += 1547
								n30 -= 603
								n109 += 426
								n29 -= 306
								n10 = 337973895
								n31 -= 1167
								n110 -= 425
								Turn360 = nil
								TrackAttributes = nil
								GetCharges = nil
							end
						end)

						return
					end

					if p432:find("rbxassetid://") or p432:find("http://www.roblox.com/asset/") then
						s23 = p432
						pcall(function()
							if n109 == n110 then
								n30 += 2024
								n109 = 633045081
								n31 = 949071278
								n9 += 62
								n110 += 1053
								n1 = 176163847
								n6 += 1172
								Block = nil
							else
								ContentProvider:PreloadAsync({ audiochanger_Block })
							end
						end)
					else
						s23 = ""
					end
				end
			})
			Audio:CreateInput({
				Name = "Parry | File",
				CurrentValue = "",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "ParryID",
				Callback = function(p433, p434)
					if p433 == "" then
						s22 = ""

						return
					end

					if not isfile(p433) then
						s22 = ""

						return lib:Notify({
							Title = "Incorrect file (audio changer)",
							Content = "\"" .. p433 .. "\" is not an existing file",
							Duration = 8,
							Image = "ban"
						})
					end

					if not p434 then
						lib:Notify({
							Title = "Found file",
							Content = "File located in workspace.",
							Duration = 8,
							Image = "check"
						})
					end

					s22 = getcustomasset(p433)
					pcall(function()
						local spilled = {
							v2870 = ContentProvider,
							PreloadAsync = ContentProvider.PreloadAsync,
							t80 = {},
							v2871 = s22
						}

						while true do
							spilled.t80[1] = spilled.v2871
							spilled.PreloadAsync(spilled.v2870, spilled.t80)
							spilled.n111 = 760365128

							if n9 == 202622311 then
								break
							else
								n1 += 150
								n9 += 487
								spilled.v2870 = spilled.n111 - 1682
								n31 = 338550324
								n2 += 289
								spilled.PreloadAsync = 2416392
								spilled.t80 = n7 + 624
								n7 = spilled.t80
								spilled.xpcall = xpcall
								spilled.loadChanges = loadChanges
							end
						end
					end)
				end
			})

			local s24 = ""
			local s25 = ""

			Audio:CreateInput({
				Name = "Punch | ID",
				CurrentValue = "",
				PlaceholderText = "Number/Text",
				RemoveTextAfterFocusLost = false,
				Flag = "PunchID",
				Callback = function(p435)
					if p435 == "" then
						s25 = ""

						return
					end

					if not tonumber(p435) then
						if p435:find("rbxassetid://") or p435:find("http://www.roblox.com/asset/") then
							s25 = p435
							pcall(function()
								ContentProvider:PreloadAsync({ s25 })
							end)
						else
							s25 = ""
						end

						return
					end

					s25 = "rbxassetid://" .. p435
					pcall(function()
						ContentProvider:PreloadAsync({ s25 })
					end)

					return
				end
			})
			Audio:CreateInput({
				Name = "Punch | File",
				CurrentValue = "",
				PlaceholderText = "Text",
				RemoveTextAfterFocusLost = false,
				Flag = "PunchFile",
				Callback = function(p436, p437)
					if p436 == "" then
						s24 = ""

						return
					end

					if not isfile(p436) then
						s24 = ""

						return lib:Notify({
							Title = "Incorrect file (audio changer)",
							Content = "\"" .. p436 .. "\" is not an existing file",
							Duration = 8,
							Image = "ban"
						})
					end

					if not p437 then
						lib:Notify({
							Title = "Found file",
							Content = "File located in workspace.",
							Duration = 8,
							Image = "check"
						})
					end

					s24 = getcustomasset(p436)
					pcall(function()
						ContentProvider:PreloadAsync({ s24 })
					end)
				end
			})
			Audio:CreateToggle({
				Name = "Silence rage SFX",
				CurrentValue = false,
				Flag = "SilenceRageSFX",
				TextMode = true,
				Callback = v1108
			})
			Audio:CreateSection("Chase Themes", "Left")

			local t81 = {
				Names = { "Custom" },
				Data = {}
			}

			ins_custom_files(t81, true)

			for _, v in pairs(t20.ChaseThemesCategorized) do
				table.insert(t81.Names, v.Name)
				t81.Data[v.Name] = v.Asset
			end

			Audio:CreateDropdown({
				Name = "Chase Theme",
				Options = t81.Names,
				CurrentOption = { Selectedchase },
				Flag = "ChaseSelectedTheme",
				Callback = function(p438)
					repeat
						wait()
					until v1096.Flags.ChaseChanger ~= nil

					local v2876 = p438[1]

					if v2876 == "Custom" then
						Selectedchase = v2876
					else
						Selectedchase = t81.Data[v2876]
					end

					if v1096.Flags.ChaseChanger.CurrentValue then
						Changechasetheme()
					end

					if n3 == n9 then
						n9 += 729
						n31 += 164
						n1 -= 1545
						n28 = 278824965
						n30 -= 975
						n7 = 808569392
						n3 = 36674717
						n8 = 98170725
						n10 -= 1221
						RagdollEnable = nil
						fixcolorpickers = nil
					end
				end,
				Searchable = true
			})
			Audio:CreateToggle({
				Name = "Change chase theme",
				CurrentValue = isfile("Catsaken/ChaseChangerEnabled"),
				Flag = "ChaseChanger",
				Callback = function(p439)
					if p439 then
						task.spawn(function()
							writefile("Catsaken/ChaseChangerEnabled", "")
						end)
						Changechasetheme()
					else
						pcall(delfile, "Catsaken/ChaseChangerEnabled")

						if t20.CurrentChaseTheme then
							t20.CurrentChaseTheme.SoundId = t20.CurrentChaseTheme.Name
						end
					end
				end
			})
			Audio:CreateInput({
				Name = "Custom Chase ID",
				CurrentValue = isfile("Catsaken/CustomChaseID") and readfile("Catsaken/CustomChaseID") or "",
				PlaceholderText = "Leave empty for none",
				RemoveTextAfterFocusLost = false,
				Flag = "CustomChaseID",
				Callback = function(p440)
					writefile("Catsaken/CustomChaseID", p440)
					Changechasetheme()

					if n28 ~= 1032266516 then
						n5 = 425026736
						n29 -= 1231
						n7 -= 881
						n9 += 986
						n31 -= 516
						n28 += 239
						n10 += 1956
						n30 = 765616649
						n1 += 1453
						GetGameMap = nil
						GetKillerUsername = nil
					end
				end
			})
			Audio:CreateInput({
				Name = "Custom Chase File",
				CurrentValue = isfile("Catsaken/CustomChaseFile") and readfile("Catsaken/CustomChaseFile") or "",
				PlaceholderText = "Leave empty for none",
				RemoveTextAfterFocusLost = false,
				Flag = "CustomChaseFile",
				Callback = function(p441, p442)
					writefile("Catsaken/CustomChaseFile", p441)

					if p441 == "" then
						return
					end

					local n112 = 511355501

					if isfile(p441) then
						if not p442 then
							lib:Notify({
								Title = "Found file",
								Content = "File located in workspace. Please make sure to change the selected chase theme to Custom",
								Duration = 8,
								Image = "check"
							})
							Changechasetheme()
						end
					else
						if n112 ~= n30 then
							return lib:Notify({
								Title = "Incorrect file (chase changer)",
								Content = "\"" .. p441 .. "\" is not an existing file",
								Duration = 8,
								Image = "ban"
							})
						end

						n3 = 497659680
						n31 += 1681
						n30 = 751373674
						n29 = 467348033
						n28 = 533237727
						n7 = 209636255
						n8 = 54325575
						n5 += 1279
						n1 = 955845483
						SuperSpecialFemboyNotifyOWO = nil
					end
				end
			})
			Audio:CreateSection("Lobby Music", "Left")

			local downloading2 = Audio:CreateLabel("DOWNLOADING")

			if not isfile("LOBBY_DOWNLOAD_TOGGLE") then
				writefile("LOBBY_DOWNLOAD_TOGGLE", "1")
			end

			local v2879 = readfile("LOBBY_DOWNLOAD_TOGGLE") == "0"
			local t82 = {
				Names = { "Custom" },
				Data = {}
			}

			ins_custom_files(t82)

			local v2881 = false

			if not v2879 then
				local ok, result = pcall(function()
					return safehttpget("https://api.github.com/repos/aibabylaugh/catsaken/contents/lobby")
				end)

				if ok and result then
					local ok2, result2 = xpcall(function()
						return HttpService:JSONDecode(result)
					end, function(p443)
						v126("lobby json decode failed:", tostring(p443))
					end)

					if ok2 and typeof(result2) == "table" then
						local n113 = 0

						for _, v in result2, nil, nil do
							pcall(function()
								local v2889 = v.name:sub(1, -5)
								local v2890 = ("Catsaken/%*"):format(v2889)
								local v2891

								if isfile(v2890) then
									local readfile_ = readfile
									local v2893 = ("Catsaken/%*"):format(v2889)

									v2891 = readfile_(v2893)
								else
									v2891 = safehttpget(v.download_url)

									if v2891 and typeof(v2891) == "string" then
										local v2894 = string.byte(data, 1)
										local v2895 = string.byte(data, 2)

										if v2894 and v2895 and (string.sub(data, 1, 3) == "ID3" or v2894 == 255 and v2895 >= 224) then
											writefile(("Catsaken/%*"):format(v2889), v2891)
										else
											v126("lobby music is corrupted!")
										end
									else
										v126("lobby music download_url failed")
									end

									wait(0.5)
								end

								if not v2891 then
									return
								end

								t82.Data[v2889] = v2891
								table.insert(t82.Names, v2889)
							end)
							n113 += 1
							downloading2:Set("DOWNLOADING " .. n113 .. "/" .. #result2)
						end

						downloading2:Set("Downloaded " .. #result2 .. " lobby music files")
					else
						v2881 = true
						downloading2:Set("Lobby music failed to download (json error)")
					end
				else
					v2881 = true
					downloading2:Set("Lobby music failed to download (http error)")
				end
			end

			if not (v2879 or v2881) then
				Audio:CreateDropdown({
					Name = "Lobby music theme",
					Options = t82.Names,
					CurrentOption = { SelectedLobbyMusic },
					Flag = "LobbyMusicSelectedTheme",
					Callback = function(p444)
						repeat
							wait()
						until v1096.Flags.LastManStandingChanger ~= nil

						local v2896 = p444[1]

						writefile("Catsaken/Selectedlobbymusic", v2896)
						SelectedLobbyMusic = v2896

						if v2896 ~= "Custom" then
							local v2897 = t82.Data[v2896]

							if v2897 then
								local isfile_ = isfile
								local v2899 = ("Catsaken/%*"):format(v2896)

								if not isfile_(v2899) then
									v126("writing lobby music")
									writefile(("Catsaken/%*"):format(v2896), v2897)
								end
							end
						end

						if v1096.Flags.LobbyMusicChanger.CurrentValue then
							Changelobbymusic()
						end
					end,
					Searchable = true
				})
				Audio:CreateInput({
					Name = "Custom Lobby Music ID",
					CurrentValue = isfile("Catsaken/CustomLobbyID") and readfile("Catsaken/CustomLobbyID") or "",
					PlaceholderText = "Leave empty for none",
					RemoveTextAfterFocusLost = false,
					Flag = "CustomLobbyID",
					Callback = function(p445)
						writefile("Catsaken/CustomLobbyID", p445)
						Changelobbymusic()
					end
				})
				Audio:CreateInput({
					Name = "Custom Lobby Music File",
					CurrentValue = isfile("Catsaken/CustomLobbyFile") and readfile("Catsaken/CustomLobbyFile") or "",
					PlaceholderText = "Leave empty for none",
					RemoveTextAfterFocusLost = false,
					Flag = "CustomLobbyFile",
					Callback = function(p446, p447)
						writefile("Catsaken/CustomLobbyFile", p446)

						if p446 == "" then
							return
						end

						if not isfile(p446) then
							return lib:Notify({
								Title = "Incorrect file (lobby music changer)",
								Content = "\"" .. p446 .. "\" is not an existing file",
								Duration = 8,
								Image = "ban"
							})
						end

						if not p447 then
							lib:Notify({
								Title = "Found file",
								Content = "File located in workspace. Please make sure to change the selected lobby music to Custom",
								Duration = 8,
								Image = "check"
							})
						end

						Changelobbymusic()
					end
				})
				Audio:CreateToggle({
					Name = "Change Lobby Music",
					CurrentValue = isfile("Catsaken/LobbyMusicChanger"),
					Flag = "LobbyMusicChanger",
					Callback = function(p448)
						if p448 then
							task.spawn(function()
								writefile("Catsaken/LobbyMusicChanger", "")
							end)
							Changelobbymusic()
						else
							task.spawn(function()
								pcall(delfile, "Catsaken/LobbyMusicChanger")
							end)

							if t20.CurrentLobbyMusic then
								t20.CurrentLobbyMusic.SoundId = t20.CurrentLobbyMusic:GetAttribute("RealId")
							end
						end
					end
				})
			end

			Audio:CreateButton({
				Name = ("[%s Lobby Music Downloads]"):format(v2879 and "Enable" or "Disable"),
				Callback = function()
					if n5 < n29 then
						writefile("LOBBY_DOWNLOAD_TOGGLE", v2879 and "1" or "0")
					else
						n6 = 587539502
						n29 = 184882351
						n30 -= 788
						n3 = 89630059
						n5 = 409095360
						n10 = 986375264
						n8 -= 461
						n31 -= 1132
						n1 = 119949786
						Predict = nil
					end
				end
			})

			if v2879 then
				downloading2:Set("Downloads are disabled")
			end
		end

		track_sounds = function(t)
			if u34 then
				return
			end

			xpcall(function()
				if not t.Parent then
					return
				end

				if not t.Parent.Parent then
					return
				end

				local d = t.Parent.Parent.Name == "Guest1337" and t.Parent.Parent:GetAttribute("SkinName")

				if d == "" then
					d = nil
				end

				local N = require(Survivors2.Guest1337.Config)
				local k = d and require(Survivors.Guest1337[d].Config) or N
				local d = LocalPlayer.Character

				if t:IsA("Sound") then
					if t.Name == "rbxassetid://109931874166612" and v1096.Flags.SilenceRageSFX.CurrentValue then
						t:Destroy()
					end

					if t.Name == ((k.Sounds and k.Sounds.BlockSuccess) and k.Sounds.BlockSuccess or N.Sounds.BlockSuccess) then
						local d = false

						if audiochanger_Block_Id and audiochanger_Block_Id ~= "" then
							d = true
							InterceptAudio(t, audiochanger_Block_Id)
						end

						if audiochanger_Block_File and audiochanger_Block_File ~= "" and not d then
							InterceptAudio(t, audiochanger_Block_File)
						end
					end

					if t.SoundId == ((k.Sounds and k.Sounds.Parry) and k.Sounds.Parry or N.Sounds.Parry) then
						local d = false

						if audiochanger_Parry_Id and audiochanger_Parry_Id ~= "" then
							d = true
							InterceptAudio(t, audiochanger_Parry_Id)
						end

						if audiochanger_Parry_File and audiochanger_Parry_File ~= "" and not d then
							InterceptAudio(t, audiochanger_Parry_File)
						end
					end

					if t.SoundId == ((k.Sounds and k.Sounds.Punch) and k.Sounds.Punch or N.Sounds.Punch) then
						local k = false

						if audiochanger_Punch_Id and audiochanger_Punch_Id ~= "" then
							k = true
							InterceptAudio(t, audiochanger_Punch_Id)
						end

						if audiochanger_Punch_File and audiochanger_Punch_File ~= "" and not k then
							InterceptAudio(t, audiochanger_Punch_File)
						end
					end

					local k = t20.MainKiller

					if k and t.Parent.Parent == k and not IsKiller() then
						if LocalPlayer.Character.Name == "007n7" and v1096.Flags.AutoCloneToggle.CurrentValue and table.find(t20.Metas.SoundMetas.AutoCloneSounds, t.SoundId) then
							local d = t20.Metas.AttackIdToName[t.SoundId]

							if not d then
								return v126("[auto clone] attack name nil")
							end

							local j = Instance.new("Part")

							j.Parent = workspace
							j.Anchored = true
							j.CanCollide = false
							j.Transparency = 0.5
							j.Color = Color3.fromRGB(255, 0, 0)
							j.Material = Enum.Material.Air

							local N = tick()

							while t.IsPlaying and tick() - N <= t20.HitboxesDuration do
								if HasAbilityReady("Clone") then
									local N = k.HumanoidRootPart
									local z = LocalPlayer.Character.HumanoidRootPart
									local R = (z.Position - N.Position).Magnitude
									local D = v1096.Flags.NGAutoBlockHitboxCheck.CurrentValue

									if (D or R <= v1096.Flags.RagingPaceRange.CurrentValue) and (R <= 5 or not v1096.Flags.RagingPaceFaceCheck.CurrentValue or IsFacing2(z, N, 0.707, 1)) and (not D or (function()
										local N = t20.Metas.HitboxSizesMeta[k.Name .. d] or t20.AttackHitboxes[k.Name]

										if not N.fake then
											local d = (v1096.Flags.QueryAutoblock.CurrentValue and k.QueryHitbox or k.HumanoidRootPart).CFrame
											local z = d:ToWorldSpace(CFrame.new(-N.offset))
											local z = LocalPlayer.Character.HumanoidRootPart
											local R = v1096.Flags.QueryAutoblock.CurrentValue and LocalPlayer.Character.QueryHitbox or z
											local D = N.size + ((z.Size / 2) * (z.AssemblyLinearVelocity.magnitude / 10))

											j.Size = D
											j.CFrame = d + (d.LookVector * (D.Z / 2))

											return arePartsTouching(j, R)
										end
									end)()) then
										if v1096.Flags.AutoBlockMS.CurrentValue > 0 then
											wait(v1096.Flags.AutoBlockMS.CurrentValue)
										end

										Clone()
									end
								end

								RunService.RenderStepped:Wait()
							end

							j:Destroy()
						elseif table.find(t20.Metas.SoundMetas.AutoblockSounds, t.SoundId) and v1096.Flags.AutoBlockToggle.CurrentValue and LocalPlayer.Character.Name == "Guest1337" and (v1096.Flags.DetectSlasherSounds.CurrentValue or k.Name ~= "Slasher") and k.Name ~= "Sixer" then
							local Q = k.HumanoidRootPart
							local d = LocalPlayer.Character.HumanoidRootPart
							local j = (d.Position - Q.Position).Magnitude
							local Q = tick()

							while t.IsPlaying and tick() - Q <= t20.HitboxesDuration do
								if (HasAbilityReady("Block")) then
									if Counter(k, d, track, tick()) then
										break
									end

									wait()
								end

								RunService.RenderStepped:Wait()
							end
						end
					end
				end
			end, function(t)
				v126("error in sound tracker:", tostring(t))
			end)
		end
		t20.Disconnectables[#t20.Disconnectables + 1] = Players2.DescendantAdded:Connect(track_sounds)

		do
			t20.Disconnectables[#t20.Disconnectables + 1] = workspace.Themes.ChildAdded:Connect(function(child)
				if child.Name == "LastSurvivor" and v1096.Flags.LastManStandingChanger.CurrentValue then
					t20.CurrentLms = child
					Changelms()
				end

				if (child.Name == "spectreOutside" or child.Name == "deathLobby") and v1096.Flags.LobbyMusicChanger.CurrentValue then
					t20.CurrentLobbyMusic = child
					Changelobbymusic()
				end

				if table.find(t20.ChaseThemesRaw, child.Name) and v1096.Flags.ChaseChanger.CurrentValue then
					Changechasetheme()
				end
			end)
		end
	end, function(p449)
		v126("The traceback:\n" .. debug.traceback() .. "The error:\n" .. tostring(p449))

		if u1027 then
			obj.LOADING_ERROR = true
			u1027("Error occured! Please report in discord.\n(say /console or press F9)")

			if n2 == 369997475 then
				n8 += 195
				n4 += 910
				n9 = 1062429672
				n3 -= 863
				n10 -= 636
				n2 = 828808837
				n6 = 442559368
				n7 = 873749046
				n1 = 692316175
				GhostAnim = nil
				IsGearGenerator = nil
				FindAnimationAsset = nil
			else
				u1027 = function()
					if n8 == 589689669 then
						n6 += 1980
						n4 = 265569094
						n10 = 363772377
						n8 += 1922
						n1 += 1296
						n3 += 94
						NeedToEscapeOrReel = nil
					end
				end
			end
		end
	end)
end

local ErrLogConnection = obj.ErrLogConnection

if ErrLogConnection then
	ErrLogConnection:Disconnect()
	obj.ErrLogConnection = nil
end

obj.ErrLogConnection = GetService("LogService").MessageOut:Connect(function(p450, p451)
	local n114 = 1027054307

	if p451 == Enum.MessageType.MessageError and p450:find("__SCRIPT") then
		warn("The error:\n" .. tostring(p450))

		if CHANGELOADSTATE then
			if n4 < n114 then
				obj.LOADING_ERROR = true
			else
				n3 = 60924447
				n114 += 638
				n2 = 695126668
				n5 += 315
				n6 = 618575497
				n1 += 241
				n4 = 634915161
				CreateTab = nil
				upv35 = nil
				StartAimbotting = nil
				PlaySound = nil
			end

			CHANGELOADSTATE("Error occured! Please report in discord.\n(say /console or press F9)")
			CHANGELOADSTATE = function()
			end
		end
	end
end)
__SCRIPT()

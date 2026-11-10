
print("Game - Forsaken = True")
local localPlayer = game:GetService("Players").LocalPlayer

repeat
	task.wait()
until localPlayer

localPlayer.DevTouchCameraMode = Enum.DevTouchCameraMovementMode.Classic
local lib
lib = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

lib:Localization({
	Enabled = true,
	Prefix = "loc:",
	DefaultLanguage = "en",
	Translations = {
		en = {
			WINDUI_EXAMPLE = "WIND UI",
			WELCOME = "By Veux/Veux67",
			LIB_DESC = "Beautiful UI library for Roblox",
			SETTINGS = "Settings",
			APPEARANCE = "Appearance",
			FEATURES = "Features",
			UTILITIES = "Utilities",
			UI_ELEMENTS = "UI Elements",
			CONFIGURATION = "Configuration",
			SAVE_CONFIG = "Save Configuration",
			LOAD_CONFIG = "Load Configuration",
			THEME_SELECT = "Select Theme",
			TRANSPARENCY = "Window Transparency",
		},
	},
})

lib.TransparencyValue = 0.2
lib:SetTheme("Dark")
local v16

do
	local function fn17(arg, arg2, arg3)
		local str5 = ""

		for i = 1, #arg do
			local n24 = (i - 1) / (#arg - 1)
			str5 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", math.floor((arg2.R + (arg3.R - arg2.R) * n24) * 255), math.floor((arg2.G + (arg3.G - arg2.G) * n24) * 255), math.floor((arg2.B + (arg3.B - arg2.B) * n24) * 255), arg:sub(i, i))
		end

		return str5
	end

	lib:Popup({
		Title = "Info/Updates",
		Icon = "info",
		Content = "Thanks FORRR using :) | Update 2.8 BEFORE GTA 6666",
		Buttons = {
			{
				Title = "YOOO",
				Callback = function()
				end,
				Variant = "Tertiary",
			},
			{
				Title = "Alr",
				Icon = "arrow-right",
				Callback = function()
				end,
				Variant = "Primary",
			},
		},
	})

	local color = Color3.fromHex

	v16 = lib:CreateWindow({
		Title = fn17("Guesting Hub v2.8", Color3.fromHex("#6A11CB"), color("#2575FC")),
		Author = "loc:WELCOME",
		Folder = "GuestingHub",
		Size = UDim2.new(0, 300, 0, 300),
		Theme = "Dark",
		Acrylic = true,
		HideSearchBar = false,
		SideBarWidth = 200,
	})
end

v16:SetToggleKey(Enum.KeyCode.P)
local v17
v17 = v16:Tab({ Title = "Discord | Yaps", Icon = "info" })
local v18
v18 = v16:Tab({ Title = "Updates", Icon = "book" })
local v19
v19 = v16:Tab({ Title = "Auto Block", Icon = "shield" })
local v20
v20 = v16:Tab({ Title = "Anti Bait Features", Icon = "boxes" })
local v21
v21 = v16:Tab({ Title = "Stamina", Icon = "zap" })
local v22
v22 = v16:Tab({ Title = "Player", Icon = "person-standing" })
local v23
v23 = v16:Tab({ Title = "Aimbots", Icon = "crosshair" })
local v24
v24 = v16:Tab({ Title = "Exploits/Fun", Icon = "hat-glasses" })
local v25
v25 = v16:Tab({ Title = "Esp", Icon = "eye" })
local v26
v26 = v16:Tab({ Title = "Killers", Icon = "sword" })
local v27
v27 = v16:Tab({ Title = "Survivors", Icon = "user-round" })
local v28
v28 = v16:Tab({ Title = "Misc", Icon = "codesandbox" })
local v29
v29 = v16:Tab({ Title = "Generator Farm", Icon = "bot-message-square" })
local v30
v30 = v16:Tab({ Title = "Auto Generator", Icon = "wrench" })
local v31
v31 = v16:Tab({ Title = "Config", Icon = "cog" })
local CollectionService
CollectionService = game:GetService("CollectionService")
game:GetService("Stats")

do
	local Players = game:GetService("Players")
	game:GetService("ReplicatedStorage")
	game:GetService("RunService")
	local Workspace = game:GetService("Workspace")
	Players.LocalPlayer:WaitForChild("PlayerGui")
	game:GetService("UserInputService")
	Workspace:WaitForChild("Players"):WaitForChild("Killers")
end

getgenv().BlockAnimations = {
	["72722244508749"] = true,
	["96959123077498"] = true,
	["99625520747974"] = true,
	["72182155407310"] = true,
	["95802026624883"] = true,
	["87547792346658"] = true,
	["88557287105521"] = true,
	["82605295530067"] = true,
	["115706752305794"] = true,
	["98105697395689"] = true,
	["88287038085804"] = true,
	["100926346851492"] = true,
	["140671644163156"] = true,
	["120748030255574"] = true,
	["82036084568393"] = true,
	["123548100869928"] = true,
	["127040663332045"] = true,
}

getgenv().PunchAnimations = {
	["87259391926321"] = true,
	["140703210927645"] = true,
	["136007065400978"] = true,
	["129843313690921"] = true,
	["86709774283672"] = true,
	["108807732150251"] = true,
	["138040001965654"] = true,
	["86096387000557"] = true,
	["81905101227053"] = true,
	["82137285150006"] = true,
	["119850211147676"] = true,
	["111270184603402"] = true,
	["107757776267592"] = true,
}

local fn17, fn18
local remoteEvent = game:GetService("ReplicatedStorage").Modules.Network.Network:WaitForChild("RemoteEvent")

fn17 = function()
	game:GetService("ReplicatedStorage").Modules.Network.Network.RemoteEvent:FireServer("UseActorAbility", { buffer.fromstring("\3\5\0\0\0Block") })
end

fn18 = function()
	remoteEvent:FireServer("UseActorAbility", { "Punch" })
end

local fn19

fn19 = function()
	game:GetService("ReplicatedStorage").Modules.Network.Network.RemoteEvent:FireServer("UseActorAbility", { buffer.fromstring("\3\5\0\0\0Clone") })
end

local RunService, v32, localPlayer2, tbl5, tbl6, tbl7, tbl8, tbl9, tbl10, flag9
local fn20, v33

do
	local Players = game:GetService("Players")
	RunService = game:GetService("RunService")
	v32 = workspace
	localPlayer2 = Players.LocalPlayer

	tbl5 = {
		autoBlock = false,
		autoBlockAudioOn = false,
		autoBlockDelay = 0,
		autoBlockMode = "Guest1337",
		soundTimerValue = 0.32,
		detectionRange = 15,
		defaultRangeRequireFacing = false,
		customFacingDot = -0.1,
		wallCheckEnabled = false,
		hitboxDraggingEnabled = false,
		hitboxDraggingDuration = 0.3,
		customVisualizerVisible = false,
		defaultVisualizerVisible = false,
		customRangeSettings = { enabled = false, frontRange = 12, sideRange = 12, height = 8 },
		BlockAnimations = {},
		autoPunch = false,
		PunchDelay = 0.5,
		soundHooks = {},
	}

	tbl6 = {}
	tbl7 = {}
	tbl8 = {}
	tbl9 = {}
	tbl10 = {}
	flag9 = false
	local raycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.IgnoreWater = true

	local tbl11 = {
		["74809026448465"] = "1x1x1x1",
		["85853080745515"] = "1x1x1x1",
		["95079963655241"] = "1x1x1x1",
		["98111231282218"] = "1x1x1x1",
		["101199185291628"] = "1x1x1x1",
		["115026634746636"] = "1x1x1x1",
		["117173212095661"] = "1x1x1x1",
		["119089145505438"] = "1x1x1x1",
		["119942598489800"] = "1x1x1x1",
		["121954639447247"] = "1x1x1x1",
		["128856426573270"] = "1x1x1x1",
		["135319730390518"] = "1x1x1x1",
		["109570290393196"] = "1x1x1x1",
		["88589682639517"] = "1x1x1x1",
		["133709029886490"] = "Azure",
		["86174610237192"] = "JohnDoe",
		["98675142200448"] = "JohnDoe",
		["105204810054381"] = "JohnDoe",
		["123923371062204"] = "JohnDoe",
		["131123355704017"] = "JohnDoe",
		["140242176732868"] = "JohnDoe",
		["89004992452376"] = "Noli",
		["96117920303138"] = "Noli",
		["108610718831698"] = "Noli",
		["109348678063422"] = "Noli",
		["112395455254818"] = "Noli",
		["114742322778642"] = "Noli",
		["115678417928765"] = "Noli",
		["128367348686124"] = "Noli",
		["131406927389838"] = "Noli",
		["136323728355613"] = "Noli",
		["70739368096233"] = "Noli",
		["104910828105172"] = "Nosferatu",
		["119664480754070"] = "Nosferatu",
		["71805956520207"] = "Sixer",
		["74842815979546"] = "Sixer",
		["79980897195554"] = "Sixer",
		["96594507550917"] = "Sixer",
		["101553872555606"] = "Sixer",
		["101698569375359"] = "Sixer",
		["108651070773439"] = "Sixer",
		["117231507259853"] = "Sixer",
		["119583605486352"] = "Sixer",
		["125213046326879"] = "Sixer",
		["127557531826290"] = "Sixer",
		["139996647355899"] = "Sixer",
		["75330693422988"] = "c00lkidd",
		["79391273191671"] = "c00lkidd",
		["80516583309685"] = "c00lkidd",
		["82221759983649"] = "c00lkidd",
		["84307400688050"] = "c00lkidd",
		["98733709078792"] = "c00lkidd",
		["105516183226360"] = "c00lkidd",
		["113413858159336"] = "c00lkidd",
		["124234993291213"] = "c00lkidd",
		["128195973631079"] = "c00lkidd",
	}

	local tbl12 = {
		["94958041603347"] = "Slasher",
		["106860049270347"] = "Slasher",
		["108196996477620"] = "Slasher",
		["109667959938617"] = "Slasher",
		["118298475669935"] = "Slasher",
		["125403313786645"] = "Slasher",
		["126830014841198"] = "Slasher",
		["130958529065375"] = "Slasher",
	}

	local function fn21(arg, arg2)
		if not arg or not arg2 then
			return false
		end
		local v34 = arg.CFrame:PointToObjectSpace(arg2)
		local n24 = arg.Size * 0.5
		local n25 = n24.X + 0.001
		local flag10 = math.abs(v34.X) <= n25

		if flag10 then
			local n26 = n24.Y + 0.001
			flag10 = math.abs(v34.Y) <= n26
		end

		if flag10 then
			local n26 = n24.Z + 0.001
			flag10 = math.abs(v34.Z) <= n26
		end

		return flag10
	end

	local function fn22(arg)
		if not arg then
			return nil
		end
		local queryHitbox = arg:FindFirstChild("QueryHitbox")
		if queryHitbox and queryHitbox:IsA("BasePart") then
			return queryHitbox
		end

		for _, child in ipairs(arg:GetChildren()) do
			local queryHitbox2 = child:FindFirstChild("QueryHitbox")
			if queryHitbox2 and queryHitbox2:IsA("BasePart") then
				return queryHitbox2
			end
		end

		return arg:FindFirstChild("HumanoidRootPart")
	end

	fn20 = function(arg)
		if not arg then
			return nil
		end
		return string.match(tostring(arg), "%d+")
	end

	local function fn23(arg)
		if not arg then
			return nil
		end
		local model = arg:FindFirstAncestorOfClass("Model")
		if model and model:FindFirstChildOfClass("Humanoid") then
			return model
		end
		return nil
	end

	local function fn24(arg)
		return arg and arg:FindFirstChild("HumanoidRootPart")
	end

	local function fn25(arg)
		if not arg then
			return false
		end
		local flag10 = Players:GetPlayerFromCharacter(arg) == localPlayer2
		local flag11

		if flag10 then
			flag11 = flag10
		else
			flag11 = arg.Name == (localPlayer2 and localPlayer2.Name)
		end

		return flag11
	end

	local function fn26()
		for _, v34 in ipairs(tbl8) do
			local humanoid = v34:FindFirstChildOfClass("Humanoid")
			local v35 = fn24(v34)
			if humanoid and v35 and humanoid.Health > 0 then
				return v34
			end
		end

		return nil
	end

	local function fn27()
		if not tbl5.hitboxDraggingEnabled or not flag9 or not tbl5.autoBlock then
			return
		end

		task.spawn(function()
			local character = localPlayer2.Character
			local v34 = fn26()
			if not character or not v34 then
				return
			end
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
			local primaryPart = character.PrimaryPart or humanoidRootPart
			if not humanoidRootPart then
				return
			end
			local part2 = Instance.new("Part")
			part2.Size = Vector3.new(2, 2, 2)
			part2.Transparency = 1
			part2.CanCollide = false
			part2.Anchored = true
			part2.CFrame = humanoidRootPart.CFrame
			part2.Parent = character
			character.PrimaryPart = part2
			local now2 = os.clock()
			local hitboxDraggingDuration = tbl5.hitboxDraggingDuration or 0.5

			while os.clock() - now2 < hitboxDraggingDuration and tbl5.hitboxDraggingEnabled and flag9 and tbl5.autoBlock do
				local v35 = fn26()

				if v35 then
					local v36 = fn24(v35)

					if v36 then
						local rotation = humanoidRootPart.CFrame.Rotation
						part2.CFrame = CFrame.new((v36.CFrame * CFrame.new(0, 0, -3)).Position) * rotation
						humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
					end
				end

				RunService.PreRender:Wait()
			end

			if part2 and part2.Parent then
				part2:Destroy()
			end

			if character and character.Parent then
				character.PrimaryPart = primaryPart
			end
		end)
	end

	local function fn28(arg, arg2)
		if not tbl5.defaultRangeRequireFacing or not arg or not arg2 then
			return true
		end
		local n24 = arg.Position - arg2.Position
		if n24.Magnitude < 0.1 then
			return true
		end
		local unit = Vector3.new(n24.X, 0, n24.Z).Unit
		local lookVector = arg2.CFrame.LookVector
		return Vector3.new(lookVector.X, 0, lookVector.Z).Unit:Dot(unit) > (tbl5.customFacingDot or -0.1)
	end

	local function fn29(arg, arg2, arg3)
		if not tbl5.wallCheckEnabled then
			return false
		end
		local n24 = arg.Position + Vector3.new(0, 1.5, 0)
		local n25 = arg2.Position + Vector3.new(0, 1.5, 0) - n24
		local v34 = raycastParams
		local filterDescendantsInstances = {}
		local parent = arg2.Parent or {}
		filterDescendantsInstances[1] = arg3
		filterDescendantsInstances[2] = parent
		v34.FilterDescendantsInstances = filterDescendantsInstances
		local hit = v32:Raycast(n24, n25, raycastParams)
		return hit and hit.Instance and hit.Instance.CanCollide
	end

	local function fn30()
		if tbl5.autoBlockMode == "007n7" then
			pcall(fn19)
		else
			pcall(fn17)
		end
	end

	local function fn31()
		if not flag9 or not tbl5.autoBlock then
			return
		end

		if tonumber(tbl5.autoBlockDelay) and tbl5.autoBlockDelay > 0 then
			task.delay(tbl5.autoBlockDelay, function()
				pcall(fn30)
			end)
		else
			pcall(fn30)
		end
	end

	local function fn32(arg, arg2)
		if not arg or fn25(arg) then
			return
		end
		tbl6[arg] = { expiry = os.clock() + arg2, blocked = false }
	end

	local function fn33(arg, arg2)
		if not flag9 or not tbl5.autoBlock or not tbl5.autoBlockAudioOn or not arg or not arg:IsA("Sound") then
			return
		end
		local v34 = fn20(arg.SoundId)
		if not v34 then
			return
		end

		if not tbl11[v34] then
			return
		end
		arg2 = arg2 or fn23(arg)
		if not arg2 or fn25(arg2) then
			return
		end
		fn32(arg2, tonumber(tbl5.soundTimerValue) or 0.32)
	end

	local function fn34(arg, arg2)
		if not arg or not arg:IsA("Sound") or tbl5.soundHooks[arg] then
			return
		end
		local v34 = arg2 or fn23(arg)
		if v34 and fn25(v34) then
			return
		end

		local connection = arg.Played:Connect(function()
			fn33(arg, v34)
		end)

		local v35 = nil

		tbl5.soundHooks[arg] = {
			playedConn = connection,
			destroyConn = arg.Destroying:Connect(function()
				if connection then
					connection:Disconnect()
				end

				if v35 then
					v35:Disconnect()
				end

				tbl5.soundHooks[arg] = nil
			end),
		}

		if arg.IsPlaying then
			task.defer(function()
				fn33(arg, v34)
			end)
		end
	end

	local function fn35(arg, arg2)
		if not flag9 or not tbl5.autoBlock or not tbl5.autoBlockAudioOn then
			return
		end
		local animation = arg.Animation
		if not animation then
			return
		end
		local v34 = fn20(animation.AnimationId)
		if not v34 then
			return
		end

		if not tbl12[v34] then
			return
		end
		fn32(arg2, tonumber(tbl5.soundTimerValue) or 0.32)
	end

	local function fn36(arg)
		if not arg or fn25(arg) then
			return
		end

		task.spawn(function()
			local humanoid = arg:WaitForChild("Humanoid", 5)

			if humanoid then
				local connection = (humanoid:WaitForChild("Animator", 5) or humanoid).AnimationPlayed:Connect(function(arg2)
					fn35(arg2, arg)
				end)

				table.insert(tbl10, connection)
			end
		end)
	end

	local function fn37(arg, arg2)
		if tbl7[arg] and tbl7[arg][arg2] then
			tbl7[arg][arg2]:Destroy()
			tbl7[arg][arg2] = nil
		end
	end

	local function fn38()
		if not flag9 or not tbl5.autoBlock then
			return
		end
		local customRangeSettings = tbl5.customRangeSettings
		local enabled = customRangeSettings.enabled
		local now2 = os.clock()

		for _, v34 in ipairs(tbl8) do
			local v35 = fn24(v34)

			if v35 then
				tbl7[v34] = tbl7[v34] or {}

				if not enabled and tbl5.defaultVisualizerVisible then
					if not tbl7[v34].Default then
						local cylinderHandleAdornment = Instance.new("CylinderHandleAdornment")
						cylinderHandleAdornment.Name = "DefaultRangeVisualizer"
						cylinderHandleAdornment.Adornee = v35
						cylinderHandleAdornment.Color3 = Color3.fromRGB(255, 100, 100)
						cylinderHandleAdornment.AlwaysOnTop = true
						cylinderHandleAdornment.ZIndex = 1
						cylinderHandleAdornment.Transparency = 0.5
						cylinderHandleAdornment.Height = 0.12
						cylinderHandleAdornment.Parent = v35
						tbl7[v34].Default = cylinderHandleAdornment
					end

					local default = tbl7[v34].Default
					default.Radius = tonumber(tbl5.detectionRange) or 15
					default.CFrame = CFrame.new(0, -(v35.Size.Y / 2 + 0.05), 0) * CFrame.Angles(1.5707963267948966, 0, 0)
				else
					fn37(v34, "Default")
				end

				if enabled and tbl5.customVisualizerVisible and tbl6[v34] and now2 <= tbl6[v34].expiry then
					if not tbl7[v34].Custom then
						local boxHandleAdornment = Instance.new("BoxHandleAdornment")
						boxHandleAdornment.Name = "CustomRangeVisualizer"
						boxHandleAdornment.Adornee = v35
						boxHandleAdornment.Color3 = Color3.fromRGB(255, 255, 102)
						boxHandleAdornment.AlwaysOnTop = true
						boxHandleAdornment.ZIndex = 1
						boxHandleAdornment.Transparency = 0.7
						boxHandleAdornment.Parent = v35
						tbl7[v34].Custom = boxHandleAdornment
					end

					local custom = tbl7[v34].Custom
					local v36 = fn22(v34) or v35
					local n24 = tonumber(customRangeSettings.frontRange) or 12
					local n25 = tonumber(customRangeSettings.sideRange) or 12
					local n26 = tonumber(customRangeSettings.height) or 8
					custom.Adornee = v36
					custom.Size = Vector3.new(n25, n26, n24)
					custom.CFrame = CFrame.new(0, 0, -(n24 / 2))
				else
					fn37(v34, "Custom")
				end
			end
		end
	end

	local function fn39()
		if not flag9 or not tbl5.autoBlock then
			return
		end
		local character = localPlayer2.Character
		if not character then
			return
		end
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return
		end
		local now2 = os.clock()
		local customRangeSettings = tbl5.customRangeSettings
		local enabled = customRangeSettings.enabled

		for k, v34 in pairs(tbl6) do
			if not k or not k.Parent or now2 > v34.expiry then
				tbl6[k] = nil
			else
				local v35 = fn24(k)

				if v35 then
					local flag10

					if enabled then
						local v36 = fn22(k) or v35
						local n24 = tonumber(customRangeSettings.frontRange) or 12
						local n25 = tonumber(customRangeSettings.sideRange) or 12
						local n26 = tonumber(customRangeSettings.height) or 8

						flag10 = fn21({
							CFrame = v36.CFrame * CFrame.new(0, 0, -(n24 / 2)),
							Size = Vector3.new(n25, n26, n24),
						}, humanoidRootPart.Position)
					else
						local n24 = tonumber(tbl5.detectionRange) or 15
						flag10 = false

						if (humanoidRootPart.Position - v35.Position).Magnitude <= n24 then
							flag10 = true
						end
					end

					flag10 = flag10 and not v34.blocked

					if flag10 then
						if fn28(humanoidRootPart, v35) and not fn29(humanoidRootPart, v35, character) then
							v34.blocked = true
							fn31()
						end
					end
				end
			end
		end
	end

	local function fn40(arg)
		if not arg or not arg:IsA("Model") or tbl9[arg] then
			return
		end
		tbl9[arg] = true
		table.insert(tbl8, arg)

		if not fn25(arg) then
			pcall(function()
				for _, descendant in ipairs(arg:GetDescendants()) do
					if descendant:IsA("Sound") then
						pcall(fn34, descendant, arg)
					end
				end
			end)

			local connection = arg.DescendantAdded:Connect(function(descendant)
				if descendant and descendant:IsA("Sound") and not fn25(arg) then
					pcall(fn34, descendant, arg)
				end
			end)

			table.insert(tbl10, connection)
			fn36(arg)
		end
	end

	local function fn41(arg)
		if not arg or not tbl9[arg] then
			return
		end
		tbl9[arg] = nil

		for i = #tbl8, 1, -1 do
			if tbl8[i] == arg then
				table.remove(tbl8, i)
				break
			end
		end

		tbl6[arg] = nil
		fn37(arg, "Default")
		fn37(arg, "Custom")
	end

	local function fn42()
		if flag9 then
			return
		end
		flag9 = true

		local function fn43(character)
			if not character then
				return
			end
			local humanoid = character:WaitForChild("Humanoid", 5)

			if humanoid then
				local connection = (humanoid:WaitForChild("Animator", 5) or humanoid).AnimationPlayed:Connect(function(arg)
					if not tbl5.hitboxDraggingEnabled or not arg or not arg.Animation then
						return
					end
					local v34 = fn20(arg.Animation.AnimationId)
					local blockAnimations = getgenv().BlockAnimations or tbl5.BlockAnimations

					if v34 and blockAnimations and blockAnimations[v34] then
						fn27()
					end
				end)

				table.insert(tbl10, connection)
			end
		end

		if localPlayer2.Character then
			task.spawn(fn43, localPlayer2.Character)
		end

		table.insert(tbl10, localPlayer2.CharacterAdded:Connect(fn43))
		local players = v32:FindFirstChild("Players")
		players = players and players:FindFirstChild("Killers")

		if players then
			for _, child in ipairs(players:GetChildren()) do
				if child:IsA("Model") then
					pcall(fn40, child)
				end
			end

			table.insert(tbl10, players.ChildAdded:Connect(function(child)
				if child and child:IsA("Model") then
					pcall(fn40, child)
				end
			end))

			table.insert(tbl10, players.ChildRemoved:Connect(function(child)
				pcall(fn41, child)
			end))
		else
			table.insert(tbl10, v32.DescendantAdded:Connect(function(descendant)
				if descendant and descendant:IsA("Folder") and descendant.Name == "Killers" and descendant.Parent and descendant.Parent.Name == "Players" then
					for _, child in ipairs(descendant:GetChildren()) do
						if child:IsA("Model") then
							pcall(fn40, child)
						end
					end

					table.insert(tbl10, descendant.ChildAdded:Connect(function(child)
						if child and child:IsA("Model") then
							pcall(fn40, child)
						end
					end))

					table.insert(tbl10, descendant.ChildRemoved:Connect(function(child)
						pcall(fn41, child)
					end))
				end
			end))
		end

		table.insert(tbl10, RunService.Heartbeat:Connect(fn39))
		table.insert(tbl10, RunService.RenderStepped:Connect(fn38))
	end

	local function fn43()
		flag9 = false

		for _, v34 in ipairs(tbl10) do
			if v34 then
				v34:Disconnect()
			end
		end

		table.clear(tbl10)
		table.clear(tbl6)

		for _, v34 in ipairs(tbl8) do
			fn37(v34, "Default")
			fn37(v34, "Custom")
		end
	end

	local str5 = "https://discord.com/api/v10/invites/ghVvtxjC2x?with_counts=true&with_expiration=true"
	local data = nil
	local str6 = nil

	xpcall(function()
		data = game:GetService("HttpService"):JSONDecode(lib.Creator.Request({ Url = str5, Method = "GET", Headers = { Accept = "application/json" } }).Body)
	end, function(arg)
		warn("err fetching discord info: " .. tostring(arg))
		str6 = tostring(arg)
		data = nil
	end)

	if data and data.guild then
		local v34 = nil

		local tbl13 = {
			Title = data.guild.name,
			Desc = " <font color=\"#52525b\">â€¢</font> Member Count: " .. tostring(data.approximate_member_count) .. "\n <font color=\"#16a34a\">â€¢</font> Online Count: " .. tostring(data.approximate_presence_count),
			Image = "https://cdn.discordapp.com/icons/" .. data.guild.id .. "/" .. data.guild.icon .. ".png?size=256",
			ImageSize = 42,
			Buttons = {
				{
					Icon = "link",
					Title = "Copy Discord Invite",
					Callback = function()
						pcall(function()
							setclipboard("https://discord.gg/ghVvtxjC2x")
						end)
					end,
				},
				{
					Icon = "refresh-cw",
					Title = "JOIN DISCORD SERVERRR",
					Callback = function()
						xpcall(function()
							local data2 = game:GetService("HttpService"):JSONDecode(lib.Creator.Request({ Url = str5, Method = "GET", Headers = { Accept = "application/json" } }).Body)

							if data2 and data2.guild and v34 then
								v34:SetDesc(" <font color=\"#52525b\">â€¢</font> Member Count: " .. tostring(data2.approximate_member_count) .. "\n <font color=\"#16a34a\">â€¢</font> Online Count: " .. tostring(data2.approximate_presence_count))
							end
						end, function(arg)
							warn("err updating discord info: " .. tostring(arg))
						end)
					end,
				},
			},
		}

		if data.guild.banner then
			tbl13.Thumbnail = "https://cdn.discordapp.com/banners/" .. data.guild.id .. "/" .. data.guild.banner .. ".png?size=256"
			tbl13.ThumbnailSize = 80
		end

		v34 = v17:Paragraph(tbl13)
	else
		v17:Paragraph({
			Title = "Error",
			Desc = str6 or "Unknown error occurred",
			Image = "triangle-alert",
			ImageSize = 26,
			Color = "Red",
		})
	end

	v33 = v19:Toggle({
		Title = "Auto Block",
		Value = false,
		Callback = function(autoBlock)
			tbl5.autoBlock = autoBlock
			tbl5.autoBlockAudioOn = autoBlock

			if autoBlock then
				pcall(function()
					if localPlayer2 and localPlayer2.DevTouchCameraMode then
						localPlayer2.DevTouchCameraMode = Enum.DevTouchCameraMovementMode.Classic
					end
				end)

				pcall(fn42)
			else
				pcall(fn43)
			end
		end,
	})
end

v19:Input({
	Title = "Range Distance to Detect",
	Value = "15",
	Callback = function(arg)
		local detectionRange = tonumber(arg)

		if detectionRange then
			tbl5.detectionRange = detectionRange
		end
	end,
})

v19:Input({
	Title = "Sound Timer",
	Value = tostring(tbl5.soundTimerValue),
	Callback = function(arg)
		local soundTimerValue = tonumber(arg)

		if soundTimerValue then
			tbl5.soundTimerValue = soundTimerValue
		end
	end,
})

v19:Toggle({
	Title = "Ping checker",
	Value = false,
	Callback = function(enabled)
		if enabled then
			if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("pingGui", true) then
				local screenGui = Instance.new("ScreenGui")
				screenGui.Name = "pingGui"
				screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
				screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				screenGui.ResetOnSpawn = false
				screenGui.DisplayOrder = 9999
				CollectionService:AddTag(screenGui, "main")
				local frame2 = Instance.new("Frame")
				frame2.Parent = screenGui
				frame2.ZIndex = 9999
				frame2.BorderSizePixel = 0
				frame2.BackgroundColor3 = Color3.fromRGB(231, 231, 231)
				frame2.Size = UDim2.new(0, 60, 0, 22)
				frame2.Position = UDim2.new(0, 10, 0, 6)
				frame2.BackgroundTransparency = 0.7
				Instance.new("UICorner", frame2)
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Parent = frame2
				uiStroke.Color = Color3.fromRGB(117, 117, 117)
				uiStroke.Transparency = 0.6
				local textLabel = Instance.new("TextLabel")
				textLabel.Parent = frame2
				textLabel.TextStrokeTransparency = 3
				textLabel.BorderSizePixel = 0
				textLabel.TextSize = 10
				textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				textLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				textLabel.BackgroundTransparency = 1
				textLabel.Size = UDim2.new(0, 50, 0, 16)
				textLabel.Text = "0 ms"
				textLabel.TextTransparency = 0.25
				textLabel.Position = UDim2.new(0, 5, 0, 3)

				task.spawn(function()
					while screenGui and screenGui.Parent do
						local ok, result = pcall(function()
							return math.round(game:GetService("Stats").PerformanceStats.Ping:GetValue())
						end)

						if ok then
							textLabel.Text = tostring(result) .. " ms"

							if result >= 200 then
								textLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
							elseif result >= 150 then
								textLabel.TextColor3 = Color3.fromRGB(255, 220, 50)
							else
								textLabel.TextColor3 = Color3.fromRGB(70, 255, 70)
							end
						else
							textLabel.Text = "idk"
							textLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						end

						task.wait(1)
					end
				end)
			end
		end

		local pingGui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("pingGui", true)

		if pingGui then
			pingGui.Enabled = enabled
		end
	end,
})

v19:Paragraph({ Title = "Helper Guy -", Desc = "I usually prefer U SHOULD try using 13 or 10" })

v19:Paragraph({
	Title = "Ping info",
	Desc = "if green 🟢 = all perfect for auto block, If yellow 🟡 = mid still good, If red 🔴 = Might Delay",
})

v20:Paragraph({ Title = "info", Desc = "THE FACING CHECK only Works For Default Range" })

v20:Toggle({
	Title = "Wall Check",
	Value = false,
	Callback = function(wallCheckEnabled)
		tbl5.wallCheckEnabled = wallCheckEnabled
	end,
})

v19:Space()

do
	local v34 = nil
	local v35 = nil

	v19:Dropdown({
		Title = "Range Customizer",
		Desc = "Default is the default range and Custom look it for urself 🥰",
		Values = { "Default Range", "Customizer Range" },
		Value = "Default Range",
		Callback = function(arg)
			if arg == "Default Range" then
				tbl5.customRangeSettings.enabled = false

				if v34 then
					v34:Lock()
				end

				if v35 then
					v35:Lock()
				end
			elseif arg == "Customizer Range" then
				tbl5.customRangeSettings.enabled = true

				if v34 then
					v34:Unlock()
				end

				if v35 then
					v35:Unlock()
				end
			end
		end,
	})

	task.wait(0.1)

	v34 = v19:Slider({
		Title = "Front Size",
		Desc = "just size.. yez",
		Step = 1,
		Value = { Min = 1, Max = 35, Default = 12 },
		Callback = function(frontRange)
			tbl5.customRangeSettings.frontRange = frontRange
		end,
	})

	v35 = v19:Slider({
		Title = "Left and Right Side",
		Desc = "just size... each side yez",
		Step = 1,
		Value = { Min = 1, Max = 25, Default = 12 },
		Callback = function(sideRange)
			tbl5.customRangeSettings.sideRange = sideRange
		end,
	})

	task.spawn(function()
		task.wait(1)

		if v34 and not tbl5.customRangeSettings.enabled then
			v34:Lock()
		end

		if v35 and not tbl5.customRangeSettings.enabled then
			v35:Lock()
		end
	end)
end

v19:Space()
v19:Section({ Title = "AUTO" })

do
	local flag10 = false
	local n24 = 0
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local localPlayer3 = game:GetService("Players").LocalPlayer
	local Network = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"))
	local setConnection = Network.SetConnection
	local str5 = localPlayer3.Name .. "1337ParryIcon"
	local v34 = nil

	Network.SetConnection = function(arg, arg2, arg3, arg4)
		if arg2 == str5 and arg3 == "REMOTE_EVENT" then
			v34 = arg4

			return setConnection(arg, arg2, arg3, function(arg5)
				if v34 then
					pcall(v34, arg5)
				end

				if arg5 then
					if flag10 then
						if n24 and n24 > 0 then
							task.wait(n24)
						end

						pcall(fn18)
					end
				end
			end)
		end

		return setConnection(arg, arg2, arg3, arg4)
	end

	v19:Toggle({
		Title = "Auto Punch",
		Value = false,
		Callback = function(arg)
			flag10 = arg
		end,
	})

	v19:Input({
		Title = "punch delay",
		Value = "0.5",
		Callback = function(arg)
			local num = tonumber(arg)

			if num then
				n24 = num
			end
		end,
	})
end

v19:Dropdown({
	Title = "Auto Block Mode",
	Desc = "Charlie kirk",
	Values = { "Guest1337", "007n7" },
	Value = "Guest1337",
	Callback = function(autoBlockMode)
		tbl5.autoBlockMode = autoBlockMode
	end,
})

v20:Toggle({
	Title = "default Range Facing Check",
	Value = tbl5.defaultRangeRequireFacing,
	Callback = function(defaultRangeRequireFacing)
		tbl5.defaultRangeRequireFacing = defaultRangeRequireFacing
	end,
})

v20:Input({
	Title = "Facing Dot",
	Value = tostring(tbl5.customFacingDot),
	Callback = function(arg)
		local num = tonumber(arg)

		if num then
			tbl5.customFacingDot = math.clamp(num, -1, 1)
		end
	end,
})

v20:Toggle({
	Title = "Hitbox Dragging",
	Value = tbl5.hitboxDraggingEnabled,
	Callback = function(hitboxDraggingEnabled)
		tbl5.hitboxDraggingEnabled = hitboxDraggingEnabled
	end,
})

v20:Input({
	Title = "Duration To drag",
	Value = tostring(tbl5.hitboxDraggingDuration),
	Callback = function(arg)
		local hitboxDraggingDuration = tonumber(arg)

		if hitboxDraggingDuration then
			tbl5.hitboxDraggingDuration = hitboxDraggingDuration
		end
	end,
})

v20:Toggle({
	Title = "Show Custom Range Visualizer",
	Value = tbl5.customVisualizerVisible,
	Callback = function(customVisualizerVisible)
		tbl5.customVisualizerVisible = customVisualizerVisible
	end,
})

v18:Paragraph({
	Title = "Info",
	Desc = "By - Veux\nMake sure your Ping Is below 160 This is just V2 so u may encounter Bugs !?!?! ALSO FOR COOLKID u need -100 ping btw",
	Color = Color3.fromRGB(22, 29, 50),
	Locked = false,
})

v18:Paragraph({
	Title = "Latest Updates",
	Desc = [[What's added -
Added New Jane doe , Dussker, Sixer
Features

For sixer -
Added Auto bite

For Jane doe -
Added crystal pinch silent aim 
Added Instant charge of crystal Pinch 

For dusserker -
Added silent aim

Added back HDT ->
Now it uses your server position to drag towards to the killer.
Find it in anti bait features 
Added show customizer visualizer 

fixes and changes 
- Killer aimbot had many changes 
You may find it's behavior different 
Now.

Reworked
aimbot tab
Almost all of
The aimbots 
Were reworked.

Reworked in Auto block too

That's it idk I forget what i added more
This update was abit hurry so sorry for all the delay and I hope I can update more faster thanks!]],
	Color = Color3.fromRGB(128, 0, 128),
	Locked = false,
})

v18:Paragraph({
	Title = "Yappings -",
	Desc = "Helper Guy = The Person who Suggestions and Helps u of which to what to do!! He's very Kind\nW Helper Guy",
	Color = Color3.fromRGB(22, 29, 50),
	Locked = false,
})

do
	local flag10 = false
	local flag11 = false
	local n24 = 0
	local n25 = 100
	local n26 = 10
	local n27 = 20
	local n28 = 26

	v21:Toggle({
		Title = "Infinite Stamina",
		Value = false,
		Callback = function(arg)
			flag10 = arg
			if not arg then
				return
			end

			task.spawn(function()
				while flag10 do
					pcall(function()
						local Sprinting = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
						Sprinting.StaminaLossDisabled = true
						Sprinting.Stamina = 9999999
					end)

					task.wait(0.5)
				end

				pcall(function()
					local Sprinting = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
					Sprinting.StaminaLossDisabled = false
					Sprinting.Stamina = Sprinting.MaxStamina or 100
				end)
			end)
		end,
	})

	v21:Input({
		Title = "Min Stamina",
		Value = "0",
		Callback = function(arg)
			n24 = tonumber(arg) or n24
		end,
	})

	v21:Input({
		Title = "Max Stamina",
		Value = "100",
		Callback = function(arg)
			n25 = tonumber(arg) or n25
		end,
	})

	v21:Input({
		Title = "Drain Stamina",
		Value = "10",
		Callback = function(arg)
			n26 = tonumber(arg) or n26
		end,
	})

	v21:Input({
		Title = "Gain Stamina",
		Value = "20",
		Callback = function(arg)
			n27 = tonumber(arg) or n27
		end,
	})

	v21:Input({
		Title = "Sprint Speed",
		Value = "26",
		Callback = function(arg)
			n28 = tonumber(arg) or n28
		end,
	})

	v21:Toggle({
		Title = "Stamina Settings",
		Value = false,
		Callback = function(arg)
			flag11 = arg
			if not arg then
				return
			end

			task.spawn(function()
				local tbl11 = nil

				while flag11 do
					pcall(function()
						local Sprinting = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)

						if not tbl11 then
							tbl11 = {
								MinStamina = Sprinting.MinStamina or 0,
								MaxStamina = Sprinting.MaxStamina or 100,
								StaminaLoss = Sprinting.StaminaLoss or 10,
								StaminaGain = Sprinting.StaminaGain or 20,
								SprintSpeed = Sprinting.SprintSpeed or 26,
							}
						end

						Sprinting.MinStamina = math.clamp(n24, 0, n25)
						Sprinting.MaxStamina = math.max(n25, Sprinting.MinStamina)
						Sprinting.StaminaLoss = math.max(n26, 0)
						Sprinting.StaminaGain = math.max(n27, 0)
						Sprinting.SprintSpeed = math.max(n28, 0)

						if Sprinting.MaxStamina < Sprinting.Stamina then
							Sprinting.Stamina = Sprinting.MaxStamina
						end

						if Sprinting.ChangeStat then
							Sprinting:ChangeStat("MinStamina", Sprinting.MinStamina)
							Sprinting:ChangeStat("MaxStamina", Sprinting.MaxStamina)
							Sprinting:ChangeStat("StaminaLoss", Sprinting.StaminaLoss)
							Sprinting:ChangeStat("StaminaGain", Sprinting.StaminaGain)
							Sprinting:ChangeStat("SprintSpeed", Sprinting.SprintSpeed)
						end
					end)

					task.wait(1.5)
				end

				pcall(function()
					if tbl11 then
						local Sprinting = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
						Sprinting.MinStamina = tbl11.MinStamina
						Sprinting.MaxStamina = tbl11.MaxStamina
						Sprinting.StaminaLoss = tbl11.StaminaLoss
						Sprinting.StaminaGain = tbl11.StaminaGain
						Sprinting.SprintSpeed = tbl11.SprintSpeed
						Sprinting.Stamina = Sprinting.MaxStamina
					end
				end)
			end)
		end,
	})
end

do
	local Sprinting = require(game:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting)
	local maxStamina = Sprinting.MaxStamina
	local flag10 = false
	local n24 = 0
	local flag11 = false
	local v34 = nil
	local v35 = nil
	local connection = nil
	local localPlayer3 = game.Players.LocalPlayer
	local character = localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
	local toggle = Sprinting.Toggle
	local flag12 = false

	local function fn21()
		if not v35 then
			return
		end
		local n25 = maxStamina / Sprinting.MaxStamina

		if n25 > 0.66 then
			v35.TextColor3 = Color3.new(1, 1, 1)
		elseif n25 > 0.33 then
			v35.TextColor3 = Color3.new(1, 0.5 + (n25 - 0.33) / 0.33 * 0.5, 0)
		else
			v35.TextColor3 = Color3.new(1, n25 / 0.33 * 0.5, 0)
		end
	end

	local function createTextLabel(adornee)
		if v34 then
			v34:Destroy()
			v34 = nil
		end

		if not adornee then
			return nil
		end
		local billboardGui = Instance.new("BillboardGui")
		billboardGui.Name = "StaminaDisplay"
		billboardGui.Adornee = adornee
		billboardGui.Size = UDim2.new(0, 100, 0, 25)
		billboardGui.StudsOffset = Vector3.new(0, 2, 0)
		billboardGui.AlwaysOnTop = true
		billboardGui.Parent = adornee
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.Size = UDim2.new(1, 0, 1, 0)
		textLabel.Font = Enum.Font.Cartoon
		textLabel.TextSize = 18
		textLabel.TextStrokeTransparency = 0
		textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
		textLabel.TextColor3 = Color3.new(1, 1, 1)
		textLabel.Text = tostring(math.floor(maxStamina))
		textLabel.Parent = billboardGui
		v34 = billboardGui
		v35 = textLabel
		fn21()
		return textLabel
	end

	local function fn22()
		if v35 then
			v35.Text = tostring(math.floor(maxStamina))
			fn21()
		end
	end

	local function fn23()
		if not flag11 or not character then
			return
		end
		local head = character:WaitForChild("Head", 5)
		if not head then
			return
		end
		createTextLabel(head)
		maxStamina = Sprinting.MaxStamina
		fn22()
	end

	local function fn24()
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if v34 then
			v34:Destroy()
			v34 = nil
		end

		v35 = nil
	end

	local function fn25()
		fn24()
		maxStamina = Sprinting.MaxStamina
		flag10 = false
		n24 = 0
		fn23()

		if not flag12 then
			flag12 = true

			Sprinting.Toggle = function(arg, arg2)
				toggle(arg, arg2)

				if flag11 then
					flag10 = arg2

					if not arg2 and n24 <= 0 then
						n24 = 0.1
					end
				end
			end
		end

		connection = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
			if not flag11 or not character or not character.Parent then
				return
			end
			local primaryPart = character.PrimaryPart
			primaryPart = primaryPart and primaryPart.Velocity.Magnitude > 0.4
			local v36 = flag10

			if not flag10 then
				primaryPart = v36
			end

			if primaryPart and Sprinting.CanSprint then
				n24 += deltaTime * 0.05
				n24 = math.clamp(n24, 0.2, 3)
				maxStamina -= Sprinting.StaminaLoss * deltaTime
				maxStamina = math.clamp(maxStamina, Sprinting.MinStamina, Sprinting.MaxStamina)
				fn22()
			else
				if n24 > 0 then
					n24 -= deltaTime
					n24 = math.clamp(n24, 0, 3)
				end

				if n24 <= 0 and maxStamina < Sprinting.MaxStamina then
					maxStamina += Sprinting.StaminaGain * deltaTime
					maxStamina = math.clamp(maxStamina, Sprinting.MinStamina, Sprinting.MaxStamina)
					fn22()
				end
			end
		end)
	end

	localPlayer3.CharacterAdded:Connect(function(character2)
		character = character2

		if flag11 then
			task.defer(fn23)
		end
	end)

	v21:Toggle({
		Title = "Show Stamina Visual",
		Desc = "Shows stamina on head",
		Value = false,
		Callback = function(arg)
			flag11 = arg

			if arg then
				fn25()
			else
				fn24()
			end
		end,
	})
end

do
	local ContextActionService = game:GetService("ContextActionService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Sprinting = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
	local DataHandler = require(ReplicatedStorage.Modules.Data.DataHandler)

	v21:Toggle({
		Title = "Non Holdable Sprinting (for Windows)",
		Value = false,
		Callback = function(arg)
			if arg then
				local Keybinds = DataHandler:ReadPath("Settings/Keybinds")
				local tbl11 = {}

				for _, v34 in pairs({ Keybinds.Sprinting.Value, Keybinds["Sprinting~Console"].Value }) do
					for _, v35 in pairs(Enum.KeyCode:GetEnumItems()) do
						if v35.Name == v34 then
							table.insert(tbl11, v35)
							break
						end
					end
				end

				if #tbl11 == 0 then
					table.insert(tbl11, Enum.KeyCode.LeftShift)
				end

				ContextActionService:BindActionAtPriority("ToggleSprintOverride", function(arg2, arg3)
					if not (Sprinting.CanSprint and Sprinting.BindsEnabled) then
						return Enum.ContextActionResult.Pass
					end

					if arg3 == Enum.UserInputState.Begin then
						if not Sprinting.IsSprinting then
							if Sprinting.MinStamina < Sprinting.Stamina then
								Sprinting.IsSprinting = true
								Sprinting.__sprintedEvent:Fire(true)
							end
						else
							Sprinting.IsSprinting = false
							Sprinting.__sprintedEvent:Fire(false)

							if Sprinting.timeUntilStaminaRecovers > 0.1 then
								Sprinting.timeUntilStaminaRecovers = math.clamp(Sprinting.timeUntilStaminaRecovers + 0.1, 0, 3)
							else
								Sprinting.timeUntilStaminaRecovers = 0.1
							end
						end
					end

					return Enum.ContextActionResult.Sink
				end, false, 10001, unpack(tbl11))
			else
				ContextActionService:UnbindAction("ToggleSprintOverride")

				if Sprinting.IsSprinting then
					Sprinting.IsSprinting = false
					Sprinting.__sprintedEvent:Fire(false)
				end
			end
		end,
	})
end

v21:Paragraph({
	Title = "helper guy",
	Desc = "Basically in laptop/PC u have to hold the sprinting But This Makes it a Toggle like click and turn off",
})

do
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local localPlayer3 = Players.LocalPlayer
	local v34 = nil
	local tbl11 = {}
	local flag10 = false

	v22:Toggle({
		Title = "Button / Key Toggle",
		Value = false,
		Callback = function(arg)
			for _, v35 in ipairs(tbl11) do
				v35:Disconnect()
			end

			table.clear(tbl11)

			if v34 then
				v34:Destroy()
				v34 = nil
			end

			if not arg then
				flag10 = false
				v33:Set(false)
				return
			end

			local screenGui = Instance.new("ScreenGui")
			screenGui.Name = "AutoBlockButtonGui"
			screenGui.ResetOnSpawn = false
			screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			screenGui.Parent = localPlayer3:WaitForChild("PlayerGui")
			v34 = screenGui
			local textButton = Instance.new("TextButton")
			textButton.Name = "Autobbn"
			textButton.Size = UDim2.new(0.09372, 0, 0.19883, 0)
			textButton.Position = UDim2.new(0.72266, 0, 0.11696, 0)
			textButton.BackgroundColor3 = Color3.fromRGB(201, 201, 201)
			textButton.BorderSizePixel = 0
			textButton.TextSize = 12
			textButton.Text = "Auto block - off"
			textButton.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			textButton.Parent = screenGui
			Instance.new("UICorner", textButton)
			Instance.new("UIAspectRatioConstraint", textButton).AspectRatio = 1.11765
			local frame2 = Instance.new("Frame")
			frame2.Size = UDim2.new(0.44737, 0, 0.5, 0)
			frame2.Position = UDim2.new(1, 0, 0.17647, 0)
			frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame2.BorderSizePixel = 0
			frame2.Parent = textButton
			Instance.new("UICorner", frame2)

			local function fn21()
				flag10 = not flag10
				v33:Set(flag10)

				if flag10 then
					textButton.Text = "Auto block - on"
					textButton.BackgroundColor3 = Color3.fromRGB(100, 220, 100)
				else
					textButton.Text = "Auto block - off"
					textButton.BackgroundColor3 = Color3.fromRGB(201, 201, 201)
				end
			end

			table.insert(tbl11, textButton.MouseButton1Click:Connect(fn21))

			table.insert(tbl11, UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				if input.KeyCode == Enum.KeyCode.C then
					fn21()
				end
			end))

			local flag11 = false
			local v35 = nil
			local position = nil
			local position2 = nil

			table.insert(tbl11, frame2.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					flag11 = true
					v35 = input
					position = input.Position
					position2 = textButton.Position
				end
			end))

			table.insert(tbl11, UserInputService.InputChanged:Connect(function(input)
				if input == v35 and flag11 then
					local n24 = input.Position - position
					textButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n24.X, position2.Y.Scale, position2.Y.Offset + n24.Y)
				end
			end))

			table.insert(tbl11, UserInputService.InputEnded:Connect(function(input)
				if input == v35 then
					flag11 = false
					v35 = nil
				end
			end))
		end,
	})
end

v22:Paragraph({
	Title = "helper guy",
	Desc = "It's basically for Auto block - So if u wanna like turn off the auto block without opening the Ui U can Do By this By pressing Gui Or By Pressing the C Key",
})

v22:Button({
	Title = "Remove Fog",
	Callback = function()
		pcall(function()
			local Lighting = game:GetService("Lighting")
			Lighting.FogEnd = 1000000

			for _, descendant in ipairs(Lighting:GetDescendants()) do
				if descendant:IsA("Atmosphere") then
					descendant:Destroy()
				end
			end
		end)
	end,
})

v22:Toggle({
	Title = "Full Bright",
	Value = false,
	Callback = function(arg)
		if not arg then
			return
		end

		pcall(function()
			local Lighting = game:GetService("Lighting")
			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 1000000
			Lighting.Ambient = Color3.new(1, 1, 1)
			Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
			Lighting.GlobalShadows = false

			for _, descendant in ipairs(Lighting:GetDescendants()) do
				if descendant:IsA("Atmosphere") then
					descendant:Destroy()
				end
			end
		end)
	end,
})

task.spawn(function()
	local ok, result = pcall(function()
		local Players = game:GetService("Players")
		local RunService2 = game:GetService("RunService")
		local localPlayer3 = Players.LocalPlayer

		local tbl11 = {
			survivors = false,
			killers = false,
			items = false,
			generators = false,
			janeDoe = false,
			traps = false,
		}

		local tbl12 = { survivors = {}, killers = {}, items = {}, generators = {}, janeDoe = {}, traps = {} }
		local tbl13 = {}
		local tbl14 = {}
		tick()
		local font = Font.new("rbxassetid://12187375716", Enum.FontWeight.Regular)
		local font2 = Font.new("rbxassetid://12187364648", Enum.FontWeight.Regular)

		local tbl15 = {
			survivors = Color3.fromRGB(144, 238, 144),
			killers = Color3.new(1, 0, 0),
			items = Color3.fromRGB(0, 255, 255),
			janeDoe = { fill = Color3.fromRGB(139, 0, 0), outline = Color3.fromRGB(255, 102, 102) },
			generators = Color3.fromRGB(128, 0, 128),
		}

		local function fn21(arg)
			if arg == "killers" or arg == "items" then
				return font
			end
			return font2
		end

		local function fn22(arg)
			local map = workspace:FindFirstChild("Map")
			if not map then
				return false
			end
			local lobby = map:FindFirstChild("Lobby")
			if not lobby then
				return false
			end
			local interactive = lobby:FindFirstChild("Interactive")
			if not interactive then
				return false
			end
			return arg:IsDescendantOf(interactive)
		end

		local function fn23(arg)
			if not arg then
				return 0
			end

			if arg >= 100 then
				return 100
			end

			if arg >= 75 then
				return 75
			end

			if arg >= 50 then
				return 50
			end

			if arg >= 25 then
				return 25
			end

			if arg == 0 then
				return 0
			end
			return math.floor(arg)
		end

		local function fn24(arg)
			if not arg then
				return
			end

			pcall(function()
				local iskiddedfromneptz = arg:FindFirstChild("iskiddedfromneptz")

				if iskiddedfromneptz then
					iskiddedfromneptz:Destroy()
				end
			end)

			pcall(function()
				local nametag = arg:FindFirstChild("nametag")

				if nametag then
					nametag:Destroy()
				end
			end)
		end

		local function fn25()
			for k in pairs(tbl14) do
				fn24(k)
			end

			tbl14 = {}

			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("Model") and descendant.Name == "Generator" then
					fn24(descendant)
				end
			end
		end

		local function fn26(parent)
			local iskiddedfromneptz = parent:FindFirstChild("iskiddedfromneptz")

			if not iskiddedfromneptz then
				iskiddedfromneptz = Instance.new("Highlight")
				iskiddedfromneptz.Name = "iskiddedfromneptz"
				iskiddedfromneptz.Parent = parent
				iskiddedfromneptz.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				iskiddedfromneptz.FillTransparency = 0.5
			end

			return iskiddedfromneptz
		end

		local function fn27(arg)
			local iskiddedfromneptz = arg:FindFirstChild("iskiddedfromneptz")
			if not iskiddedfromneptz then
				return
			end
			local generatorsESPColor = nil

			if getgenv().GeneratorESPFill then
				generatorsESPColor = getgenv().GeneratorsESPColor or tbl15.generators
			end

			if getgenv().GeneratorsESPGreen and arg:FindFirstChild("Progress") and arg.Progress.Value >= 100 then
				generatorsESPColor = Color3.fromRGB(0, 255, 0)
			end

			if generatorsESPColor then
				if iskiddedfromneptz.FillColor ~= generatorsESPColor then
					iskiddedfromneptz.FillColor = generatorsESPColor
				end

				iskiddedfromneptz.Enabled = true
			else
				iskiddedfromneptz.Enabled = false
			end

			iskiddedfromneptz.OutlineTransparency = getgenv().GeneratorESPOutline and 0 or 1
		end

		local function fn28(parent)
			if not getgenv().GeneratorsNametagsEnabled then
				local nametag = parent:FindFirstChild("nametag")

				if nametag then
					nametag:Destroy()
				end

				return
			end

			local text = "Generator (" .. fn23(parent:FindFirstChild("Progress") and parent.Progress.Value or 0) .. "%)"
			local nametag = parent:FindFirstChild("nametag")

			if not nametag then
				local humanoidRootPart = parent:FindFirstChild("HumanoidRootPart") or parent.PrimaryPart or parent:FindFirstChildWhichIsA("BasePart")
				if not humanoidRootPart then
					return
				end
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "nametag"
				billboardGui.Adornee = humanoidRootPart
				billboardGui.Parent = parent
				billboardGui.Size = UDim2.new(0, 200, 0, 60)
				billboardGui.StudsOffset = Vector3.new(0, 3, 0)
				billboardGui.AlwaysOnTop = true
				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "TextLabel"
				textLabel.Parent = billboardGui
				textLabel.Size = UDim2.fromScale(1, 1)
				textLabel.BackgroundTransparency = 1
				textLabel.TextColor3 = getgenv().GeneratorsESPColor or tbl15.generators
				textLabel.TextStrokeTransparency = 0
				textLabel.TextSize = 18
				textLabel.FontFace = font2
				textLabel.Text = text
			else
				local textLabel = nametag:FindFirstChild("TextLabel")

				if textLabel then
					if textLabel.Text ~= text then
						textLabel.Text = text
					end

					local generatorsESPColor = getgenv().GeneratorsESPColor or tbl15.generators

					if textLabel.TextColor3 ~= generatorsESPColor then
						textLabel.TextColor3 = generatorsESPColor
					end

					textLabel.FontFace = font2
				end
			end
		end

		local function fn29(arg, arg2)
			if not arg then
				return
			end
			local tbl16 = {}

			if arg2 then
				local v34 = arg2[arg]

				if v34 then
					for _, v35 in pairs(v34) do
						if typeof(v35) == "Instance" and v35 and v35.Parent then
							table.insert(tbl16, v35)
						end
					end

					arg2[arg] = nil
				end
			end

			for _, v34 in ipairs({ "iskiddedfromneptz", "nametag", "ESPBillboard", "ESPHighlight" }) do
				local v35 = arg:FindFirstChild(v34)

				if v35 and v35.Parent then
					table.insert(tbl16, v35)
				end
			end

			for _, v34 in ipairs(tbl16) do
				pcall(function()
					v34:Destroy()
				end)
			end
		end

		local function fn30(arg)
			if not arg then
				return nil
			end

			if arg:IsA("Model") then
				return arg
			end

			if arg.Parent and arg.Parent:IsA("Model") then
				return arg.Parent
			end
			return arg:FindFirstAncestorWhichIsA("Model")
		end

		local function createBillboardGui(adornee, size)
			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Name = "ESPBillboard"
			billboardGui.Size = size or UDim2.new(0, 180, 0, 50)
			billboardGui.StudsOffset = Vector3.new(0, 3, 0)
			billboardGui.AlwaysOnTop = true
			billboardGui.Adornee = adornee
			return billboardGui
		end

		local function createTextLabel(textColor3, textSize, text, fontFace)
			local textLabel = Instance.new("TextLabel")
			textLabel.Name = "TextLabel"
			textLabel.BackgroundTransparency = 1
			textLabel.Size = UDim2.fromScale(1, 1)
			textLabel.FontFace = fontFace
			textLabel.TextSize = textSize
			textLabel.TextColor3 = textColor3
			textLabel.TextStrokeTransparency = 0
			textLabel.Text = text
			return textLabel
		end

		local function createHighlight(fillColor, outlineColor, fillTransparency, parent)
			local highlight = Instance.new("Highlight")
			highlight.Name = "ESPHighlight"
			highlight.FillColor = fillColor
			highlight.OutlineColor = outlineColor
			highlight.FillTransparency = fillTransparency
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight.Parent = parent
			return highlight
		end

		local function fn31(arg)
			return arg == localPlayer3.Character
		end

		local function fn32(adornee, arg)
			if not adornee or not adornee.Parent then
				return
			end

			if not tbl11[arg] then
				return
			end

			if fn31(adornee) then
				return
			end

			if arg == "generators" then
				if fn22(adornee) then
					return
				end

				if getgenv().GeneratorsESPEnabled then
					fn26(adornee)
					fn27(adornee)
					fn28(adornee)
					tbl14[adornee] = true
				end

				return
			end

			if arg == "janeDoe" then
				if not adornee:IsA("MeshPart") or adornee.Name ~= "Model" then
					return
				end
				local janeDoe = tbl15.janeDoe
				local v34 = tbl12.janeDoe[adornee]

				if v34 then
					local v35 = v34[1]
					local v36 = v34[2]

					if v35 and v35.Parent then
						v35.FillColor = janeDoe.fill
						v35.OutlineColor = janeDoe.outline
					end

					if v36 and v36.Parent then
						v36.Adornee = adornee
						local textLabel = v36:FindFirstChild("TextLabel")

						if textLabel then
							textLabel.TextColor3 = janeDoe.outline
							textLabel.Text = "Document"
							textLabel.FontFace = font2
						end
					end

					return
				end

				local v35 = createHighlight(janeDoe.fill, janeDoe.outline, 0.4, adornee)
				local v36 = createBillboardGui(adornee, UDim2.new(0, 200, 0, 55))
				createTextLabel(janeDoe.outline, 18, "Document", font2).Parent = v36
				v36.Parent = adornee
				tbl12.janeDoe[adornee] = { v35, v36 }
				return
			end

			if arg == "traps" then
				local isBasePart = adornee.Name == "Shadow" and adornee:IsA("BasePart")
				local flag10 = adornee.Name == "VineModel" or adornee.Name == "GroundBulbModel"
				local flag11 = adornee.Name == "1x1x1x1Zombie"
				local flag12 = adornee.Name == "PizzaDeliveryRig"
				if not (isBasePart or flag10 or flag11 or flag12) then
					return
				end
				local color, color2, fillTransparency, outlineTransparency

				if isBasePart then
					color = Color3.fromRGB(0, 0, 0)
					color2 = Color3.fromRGB(255, 0, 0)

					pcall(function()
						adornee.Transparency = 0
					end)

					fillTransparency = 0.5
					outlineTransparency = 0
				elseif flag10 then
					color = Color3.fromRGB(187, 98, 255)
					fillTransparency = 1
					outlineTransparency = 0
					color2 = color
				elseif flag11 then
					color = Color3.fromRGB(0, 30, 0)
					color2 = Color3.fromRGB(0, 100, 0)
					fillTransparency = 0.7
					outlineTransparency = 0
				else
					fillTransparency = nil
					outlineTransparency = nil
					color = nil
					color2 = nil

					if flag12 then
						color = Color3.fromRGB(139, 0, 0)
						color2 = Color3.fromRGB(255, 0, 0)
						fillTransparency = 0.8
						outlineTransparency = 0
					end
				end

				local v34 = tbl12.traps[adornee]

				if v34 then
					local v35 = v34[1]

					if v35 and v35.Parent then
						v35.FillColor = color
						v35.OutlineColor = color2
						v35.FillTransparency = fillTransparency
						v35.OutlineTransparency = outlineTransparency
					end

					return
				end

				local highlight = Instance.new("Highlight")
				highlight.Name = "ESPHighlight"
				highlight.FillColor = color
				highlight.OutlineColor = color2
				highlight.FillTransparency = fillTransparency
				highlight.OutlineTransparency = outlineTransparency
				highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				highlight.Parent = adornee
				tbl12.traps[adornee] = { highlight }
				return
			end

			local color = tbl15[arg] or Color3.new(1, 1, 1)
			local name = adornee.Name
			local textSize = arg == "killers" and 20 or 16
			local fillTransparency

			if arg == "survivors" then
				fillTransparency = 0.65
			else
				fillTransparency = 0.5

				if arg == "killers" then
					fillTransparency = 0.75
				end
			end

			local udim2 = arg == "killers" and UDim2.new(0, 200, 0, 55) or UDim2.new(0, 180, 0, 50)
			local v34 = fn21(arg)
			local humanoidRootPart = adornee:FindFirstChild("HumanoidRootPart") or adornee:FindFirstChild("ItemRoot") or adornee.PrimaryPart or adornee:FindFirstChildWhichIsA("BasePart", true)
			if not humanoidRootPart then
				return
			end
			local v35 = tbl12[arg][adornee]

			if v35 then
				local v36 = v35[1]
				local v37 = v35[2]

				if v36 and v36.Parent then
					v36.FillColor = color
					v36.OutlineColor = color
					v36.FillTransparency = fillTransparency
				end

				if v37 and v37.Parent then
					v37.Adornee = humanoidRootPart
					local textLabel = v37:FindFirstChild("TextLabel")

					if textLabel then
						textLabel.TextColor3 = color
						textLabel.Text = name
						textLabel.TextSize = textSize
						textLabel.FontFace = v34
					end
				end

				return
			end

			local v36 = createHighlight(color, color, fillTransparency, adornee)
			local v37 = createBillboardGui(humanoidRootPart, udim2)
			createTextLabel(color, textSize, name, v34).Parent = v37
			v37.Parent = adornee
			tbl12[arg][adornee] = { v36, v37 }
		end

		local function fn33(arg)
			if not arg then
				return
			end

			if tbl11.traps then
				if arg.Name == "Shadow" and arg:IsA("BasePart") then
					if arg:IsDescendantOf(workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame") or workspace) then
						fn32(arg, "traps")
						return
					end
				elseif arg.Name == "VineModel" or arg.Name == "GroundBulbModel" or arg.Name == "1x1x1x1Zombie" or arg.Name == "PizzaDeliveryRig" then
					if arg:IsDescendantOf(workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame") or workspace) then
						fn32(arg, "traps")
						return
					end
				end
			end

			local v34 = fn30(arg)
			if not v34 then
				return
			end

			if fn31(v34) then
				return
			end

			if v34.Name == "Generator" and v34:IsA("Model") then
				if not fn22(v34) then
					fn32(v34, "generators")
				end

				return
			end

			if v34:FindFirstChild("ItemRoot") and v34.ItemRoot:IsA("BasePart") then
				fn32(v34, "items")
				return
			end

			if v34.Parent and v34.Parent.Name == "Survivors" and v34 ~= localPlayer3.Character then
				fn32(v34, "survivors")
				return
			end

			if v34.Parent and v34.Parent.Name == "Killers" then
				fn32(v34, "killers")
				return
			end
		end

		local function fn34()
			if not tbl11.janeDoe then
				return
			end

			for _, child in pairs(workspace:GetChildren()) do
				if child:IsA("MeshPart") and child.Name == "Model" then
					fn32(child, "janeDoe")
				end
			end
		end

		tbl13.global = workspace.DescendantAdded:Connect(function(descendant)
			task.wait(0.12)
			pcall(fn33, descendant)
		end)

		tbl13.removal = workspace.DescendantRemoving:Connect(function(descendant)
			pcall(function()
				if descendant.Name == "Shadow" or descendant.Name == "Generator" then
					tbl14[descendant] = nil
				end

				for _, v34 in pairs(tbl12) do
					if v34[descendant] then
						fn29(descendant, v34)
					end

					local v35 = fn30(descendant)

					if v35 and v34[v35] then
						fn29(v35, v34)
					end
				end
			end)
		end)

		RunService2.Heartbeat:Connect(function()
			pcall(function()
				if not tbl11.generators or not getgenv().GeneratorsESPEnabled then
					return
				end

				for k in pairs(tbl14) do
					if k and k.Parent then
						if getgenv().GeneratorESPFill or getgenv().GeneratorESPOutline or getgenv().GeneratorsESPGreen then
							fn26(k)
							fn27(k)
						else
							local iskiddedfromneptz = k:FindFirstChild("iskiddedfromneptz")

							if iskiddedfromneptz then
								iskiddedfromneptz:Destroy()
							end
						end

						fn28(k)
					else
						tbl14[k] = nil
					end
				end
			end)
		end)

		local function fn35()
			for _, descendant in ipairs(workspace:GetDescendants()) do
				pcall(fn33, descendant)
			end

			fn34()
		end

		local connection = nil

		local function fn36(arg, generatorsESPEnabled)
			tbl11[arg] = generatorsESPEnabled

			if arg == "generators" then
				getgenv().GeneratorsESPEnabled = generatorsESPEnabled
				getgenv().GeneratorsNametagsEnabled = generatorsESPEnabled
				getgenv().GeneratorESPFill = generatorsESPEnabled
				if not generatorsESPEnabled then
					fn25()
					return
				end
				tbl14 = {}

				for _, descendant in ipairs(workspace:GetDescendants()) do
					if descendant:IsA("Model") and descendant.Name == "Generator" and not fn22(descendant) then
						tbl14[descendant] = true
					end
				end
			end

			if arg == "janeDoe" then
				if generatorsESPEnabled then
					if connection then
						connection:Disconnect()
					end

					connection = RunService2.Heartbeat:Connect(function()
						task.wait(1.1)
						pcall(fn34)
					end)

					fn34()
				elseif connection then
					connection:Disconnect()
					connection = nil
				end
			end

			if generatorsESPEnabled then
				task.spawn(fn35)
			else
				for k in pairs(tbl12[arg]) do
					fn29(k, tbl12[arg])
				end
			end
		end

		v25:Toggle({
			Title = "Survivor ESP",
			Value = false,
			Callback = function(arg)
				fn36("survivors", arg)
			end,
		})

		v25:Toggle({
			Title = "Killer ESP",
			Value = false,
			Callback = function(arg)
				fn36("killers", arg)
			end,
		})

		v25:Toggle({
			Title = "Item ESP",
			Value = false,
			Callback = function(arg)
				fn36("items", arg)
			end,
		})

		v25:Toggle({
			Title = "Generator ESP",
			Value = false,
			Callback = function(arg)
				fn36("generators", arg)
			end,
		})

		v25:Toggle({
			Title = "Jane Doe Document ESP",
			Value = false,
			Callback = function(arg)
				fn36("janeDoe", arg)
			end,
		})

		v25:Toggle({
			Title = "Esp Traps And Minions",
			Value = false,
			Callback = function(arg)
				fn36("traps", arg)
			end,
		})
	end)

	if not ok then
		warn("part - esp pr" .. tostring(result))
	end
end)

v30:Section({ Title = "Auto -" })

task.spawn(function()
	local ok, result = pcall(function()
		local Players = game:GetService("Players")
		game:GetService("RunService")
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local localPlayer3 = Players.LocalPlayer

		local tbl11 = {
			["82691533602949"] = true,
			["130355934640695"] = true,
			["128943791000974"] = true,
			["122604262087779"] = true,
		}

		local flag10 = false
		local flag11 = false
		getgenv().PuzzleFireInterval = getgenv().PuzzleFireInterval or 0.5
		getgenv().DotConnectSpeed = 0.04

		v30:Slider({
			Title = "Puzzle Delay (Wait time)",
			Value = { Min = 0.1, Max = 5, Default = 0.5, Step = 0.1 },
			Callback = function(arg)
				getgenv().PuzzleFireInterval = tonumber(arg) or 0.5
			end,
		})

		v30:Toggle({
			Title = "Auto Generator Puzzle",
			Value = false,
			Callback = function(arg)
				if not arg then
					if getgenv().AutoGenCleanup then
						pcall(getgenv().AutoGenCleanup)
					end

					return
				end

				local flag12 = true
				local flag13 = false
				local tbl12 = {}
				local tbl13 = {}

				local function fn21(arg2)
					return arg2.Name == "Generator" and arg2:IsA("Model")
				end

				local function fn22()
					local map = workspace:FindFirstChild("Map") or workspace:FindFirstChild("Ingame")
					table.clear(tbl13)
					if not map then
						return
					end

					for _, descendant in ipairs(map:GetDescendants()) do
						if fn21(descendant) then
							table.insert(tbl13, descendant)
						end
					end

					table.insert(tbl12, map.DescendantAdded:Connect(function(descendant)
						if fn21(descendant) then
							table.insert(tbl13, descendant)
						end
					end))

					table.insert(tbl12, map.DescendantRemoving:Connect(function(descendant)
						if descendant.Name == "Generator" then
							local v34 = table.find(tbl13, descendant)

							if v34 then
								table.remove(tbl13, v34)
							end
						end
					end))
				end

				local function fn23()
					local character = localPlayer3.Character
					character = character and character.PrimaryPart
					if not character then
						return nil
					end
					local position = character.Position
					local huge = math.huge
					local v34 = nil

					for i = #tbl13, 1, -1 do
						local v35 = tbl13[i]

						if v35 and v35.Parent and v35.PrimaryPart then
							local magnitude = (position - v35.PrimaryPart.Position).Magnitude

							if magnitude < huge then
								huge = magnitude
								v34 = v35
							end
						else
							table.remove(tbl13, i)
						end
					end

					return v34
				end

				local function fn24()
					local v34 = fn23()
					local re = v34 and v34:FindFirstChild("Remotes") and v34.Remotes:FindFirstChild("RE")

					if re and re:IsA("RemoteEvent") then
						re:FireServer()
					end
				end

				local function fn25()
					local character = localPlayer3.Character
					local animator = character and character:FindFirstChildOfClass("Humanoid") and character.Humanoid:FindFirstChildOfClass("Animator")
					if not animator then
						return nil
					end

					for _, v34 in ipairs(animator:GetPlayingAnimationTracks()) do
						if v34.IsPlaying and v34.Animation then
							if tbl11[v34.Animation.AnimationId:match("%d+")] then
								return v34
							end
						end
					end

					return nil
				end

				local thread = task.spawn(function()
					while flag12 do
						if not flag13 and fn25() then
							flag13 = true

							task.spawn(function()
								task.wait(getgenv().PuzzleFireInterval)

								if flag12 then
									fn24()
								end

								task.wait(0.2)
								flag13 = false
							end)
						end

						task.wait(0.1)
					end
				end)

				fn22()

				getgenv().AutoGenCleanup = function()
					flag12 = false

					if thread then
						task.cancel(thread)
					end

					for _, v34 in ipairs(tbl12) do
						v34:Disconnect()
					end

					table.clear(tbl13)
					getgenv().AutoGenCleanup = nil
				end
			end,
		})

		v30:Paragraph({ Title = "Helper Guy -", Desc = "Omg U Should Set cooldown 4-5s Trust.." })

		local function fn21(arg)
			return arg.row .. "-" .. arg.col
		end

		local function fn22(arg, arg2)
			return arg .. "-" .. arg2
		end

		local tbl12 = { OriginalNew = nil, ModuleTable = nil, IsHooked = false }
		local tbl13 = { { -1, 0 }, { 1, 0 }, { 0, -1 }, { 0, 1 } }

		local function fn23(arg, arg2, arg3, arg4)
			if arg3 < arg then
				return "up"
			end

			if arg < arg3 then
				return "down"
			end

			if arg4 < arg2 then
				return "left"
			end

			if arg2 < arg4 then
				return "right"
			end
			return nil
		end

		local function fn24(arg, arg2, arg3, arg4)
			return math.abs(arg - arg3) + math.abs(arg2 - arg4) == 1
		end

		local function fn25(arg)
			local tbl14 = {}
			local tbl15 = {}

			for _, v34 in ipairs(arg) do
				tbl15[fn21(v34)] = v34
			end

			local v34, v35, v36 = ipairs(arg)
			local v37 = nil

			for _, v38 in v34, v35, v36 do
				local n24 = 0

				for _, v39 in ipairs(tbl13) do
					if tbl15[fn22(v38.row + v39[1], v38.col + v39[2])] then
						n24 += 1
					end
				end

				if n24 == 1 then
					v37 = v38
					break
				else
					v37 = nil
				end
			end

			local tbl16 = {}

			while v37 do
				table.insert(tbl14, v37)
				tbl16[fn21(v37)] = true
				local flag12 = false

				for _, v38 in ipairs(tbl13) do
					local v39 = fn22(v37.row + v38[1], v37.col + v38[2])

					if tbl15[v39] and not tbl16[v39] then
						v37 = tbl15[v39]
						flag12 = true
						break
					end
				end

				if not flag12 then
					break
				end
			end

			return tbl14
		end

		local function fn26(arg)
			if not flag10 or not arg or not arg.Solution then
				return
			end
			arg._cachedSeqs = arg._cachedSeqs or {}

			for i, v34 in ipairs(arg.Solution) do
				local v35 = arg._cachedSeqs[i]

				if not v35 then
					v35 = fn25(v34)
					arg._cachedSeqs[i] = v35
				end

				local colors = arg.colors and arg.colors[i] or Color3.new(1, 1, 1)

				for _, v36 in ipairs(v35) do
					local gridFrame = arg.gridFrame and arg.gridFrame:FindFirstChild(fn21(v36))

					if gridFrame then
						local effects = gridFrame:FindFirstChild("Effects")

						if not effects then
							effects = Instance.new("Frame")
							effects.Name = "Effects"
							effects.Size = UDim2.fromScale(1, 1)
							effects.BackgroundTransparency = 1
							effects.Parent = gridFrame
						end

						if not effects:FindFirstChild("fart") then
							local frame2 = Instance.new("Frame")
							frame2.Name = "fart"
							frame2.Size = UDim2.fromScale(1, 1)
							frame2.ZIndex = 9
							frame2.BorderSizePixel = 0
							frame2.BackgroundColor3 = colors
							frame2.BackgroundTransparency = 0.8
							frame2.Parent = effects
						end
					end
				end
			end
		end

		local function fn27(arg, arg2, arg3)
			local tbl14 = {}

			if arg and arg2 then
				local str5 = fn23(arg2.row, arg2.col, arg.row, arg.col)

				if str5 == "up" then
					str5 = "down"
				elseif str5 == "down" then
					str5 = "up"
				elseif str5 == "left" then
					str5 = "right"
				elseif str5 == "right" then
					str5 = "left"
				end

				if str5 then
					tbl14[str5] = true
				end
			end

			if arg3 and arg2 then
				local v34 = fn23(arg2.row, arg2.col, arg3.row, arg3.col)

				if v34 then
					tbl14[v34] = true
				end
			end

			return tbl14
		end

		local function fn28(arg, arg2)
			if not arg or #arg == 0 then
				return arg
			end
			local tbl14 = nil

			if arg2 then
				tbl14 = nil

				for _, v34 in ipairs(arg2) do
					for _, v35 in ipairs(arg) do
						if v35.row == v34.row and v35.col == v34.col then
							tbl14 = { row = v34.row, col = v34.col }
							break
						end
					end

					if not tbl14 then
						continue
					end
					break
				end
			end

			tbl14 = tbl14 or { row = arg[1].row, col = arg[1].col }
			local tbl15 = {}
			local tbl16 = {}

			for _, v34 in ipairs(arg) do
				local tbl17 = { row = v34.row, col = v34.col }
				tbl15[fn21(v34)] = tbl17
			end

			local tbl17 = { row = tbl14.row, col = tbl14.col }
			table.insert(tbl16, tbl17)
			tbl15[fn21(tbl17)] = nil

			while next(tbl15) do
				local flag12 = false

				for k, v34 in pairs(tbl15) do
					if fn24(tbl17.row, tbl17.col, v34.row, v34.col) then
						table.insert(tbl16, v34)
						tbl15[k] = nil
						flag12 = true
						tbl17 = v34
						break
					end
				end

				if not flag12 then
					return arg
				end
			end

			return tbl16
		end

		local function fn29(arg)
			if not arg or not arg.Solution then
				return
			end

			for i = 1, #arg.Solution do
				local v34 = fn28(arg.Solution[i], arg.targetPairs and arg.targetPairs[i])
				arg.paths = arg.paths or {}
				arg.paths[i] = {}

				for i2, v35 in ipairs(v34) do
					if not flag11 then
						return
					end
					table.insert(arg.paths[i], { row = v35.row, col = v35.col })
					local v36 = fn27(v34[i2 - 1], v35, v34[i2 + 1])
					arg.gridConnections = arg.gridConnections or {}
					arg.gridConnections[fn21(v35)] = v36

					if arg.updateGui then
						arg:updateGui()
					end

					task.wait(getgenv().DotConnectSpeed or 0.04)
				end

				if arg.checkForWin then
					arg:checkForWin()
				end
			end
		end

		local function fn30()
			if tbl12.IsHooked then
				return
			end
			local modules = ReplicatedStorage:FindFirstChild("Modules")
			modules = modules and modules:FindFirstChild("Minigames")
			modules = modules and modules:FindFirstChild("FlowGameManager")
			modules = modules and modules:FindFirstChild("FlowGame")

			if modules then
				local ok, moduleTable = pcall(require, modules)

				if ok and moduleTable and moduleTable.new then
					tbl12.ModuleTable = moduleTable
					tbl12.OriginalNew = moduleTable.new
					tbl12.IsHooked = true

					moduleTable.new = function(...)
						local v34 = tbl12.OriginalNew(...)

						task.spawn(function()
							while flag10 and v34 and v34.gridFrame do
								fn26(v34)
								task.wait(1)
							end
						end)

						if flag11 then
							task.spawn(function()
								fn29(v34)
							end)
						end

						return v34
					end
				end
			end
		end

		v30:Section({ Title = "Puzzle Helper" })

		v30:Toggle({
			Title = "Puzzle Highlight (just shows the correct line)",
			Value = false,
			Callback = function(arg)
				flag10 = arg

				if arg then
					fn30()
				end
			end,
		})

		v30:Section({ Title = "Manual Things -" })

		v30:Toggle({
			Title = "Manual Dot Generator",
			Value = false,
			Callback = function(arg)
				flag11 = arg

				if arg then
					fn30()
				end
			end,
		})

		v30:Input({
			Title = "Dot connect speed -",
			Value = "0.04",
			Callback = function(arg)
				local dotConnectSpeed = tonumber(arg)

				if dotConnectSpeed then
					getgenv().DotConnectSpeed = dotConnectSpeed
				end
			end,
		})
	end)

	if not ok then
		warn("G909 Error: " .. tostring(result))
	end
end)

v30:Toggle({
	Title = "Manual Generator Button",
	Desc = "Thanks To Sphinx For the Script!",
	Value = false,
	Callback = function(arg)
		if arg then
			local TweenService = game:GetService("TweenService")
			local UserInputService = game:GetService("UserInputService")
			local RunService2 = game:GetService("RunService")

			local function fn21()
				local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				local coolGeneratorGUI = playerGui:FindFirstChild("CoolGeneratorGUI")

				if coolGeneratorGUI then
					coolGeneratorGUI:Destroy()
				end

				local screenGui = Instance.new("ScreenGui")
				screenGui.Name = "CoolGeneratorGUI"
				screenGui.ResetOnSpawn = false
				screenGui.Parent = playerGui
				local frame2 = Instance.new("Frame")
				frame2.Size = UDim2.new(0, 220, 0, 160)
				frame2.Position = UDim2.new(0, 20, 0, 20)
				frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
				frame2.BackgroundTransparency = 0.1
				frame2.BorderSizePixel = 0
				frame2.Parent = screenGui
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 12)
				uiCorner.Parent = frame2
				local frame3 = Instance.new("Frame")
				frame3.Size = UDim2.new(1, 0, 0, 40)
				frame3.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
				frame3.BorderSizePixel = 0
				frame3.Parent = frame2
				local uiCorner2 = Instance.new("UICorner")
				uiCorner2.CornerRadius = UDim.new(0, 12)
				uiCorner2.Parent = frame3
				local textLabel = Instance.new("TextLabel")
				textLabel.Size = UDim2.new(1, -40, 1, 0)
				textLabel.Position = UDim2.new(0, 10, 0, 0)
				textLabel.BackgroundTransparency = 1
				textLabel.Text = "Generator Manual"
				textLabel.TextColor3 = Color3.new(1, 1, 1)
				textLabel.TextXAlignment = Enum.TextXAlignment.Left
				textLabel.Font = Enum.Font.GothamBold
				textLabel.TextSize = 18
				textLabel.Parent = frame3
				local uiGradient = Instance.new("UIGradient")
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 200)), new(1, color(0, 200, 255)) })
				uiGradient.Rotation = 0
				uiGradient.Parent = textLabel
				local textButton = Instance.new("TextButton")
				textButton.Size = UDim2.new(0, 30, 0, 30)
				textButton.Position = UDim2.new(1, -35, 0, 5)
				textButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
				textButton.Text = "âˆ’"
				textButton.TextColor3 = Color3.new(1, 1, 1)
				textButton.Font = Enum.Font.GothamBold
				textButton.TextSize = 28
				textButton.Parent = frame3
				local uiCorner3 = Instance.new("UICorner")
				uiCorner3.CornerRadius = UDim.new(0, 15)
				uiCorner3.Parent = textButton
				local textBox = Instance.new("TextBox")
				textBox.Size = UDim2.new(0.8, 0, 0, 40)
				textBox.Position = UDim2.new(0.1, 0, 0, 55)
				textBox.PlaceholderText = "Cooldown (seconds)"
				textBox.Text = "2.5"
				textBox.TextColor3 = Color3.new(1, 1, 1)
				textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
				textBox.Font = Enum.Font.Gotham
				textBox.TextSize = 16
				textBox.ClearTextOnFocus = false
				textBox.Parent = frame2
				local uiCorner4 = Instance.new("UICorner")
				uiCorner4.CornerRadius = UDim.new(0, 8)
				uiCorner4.Parent = textBox
				local textButton2 = Instance.new("TextButton")
				textButton2.Size = UDim2.new(0.8, 0, 0, 50)
				textButton2.Position = UDim2.new(0.1, 0, 0, 100)
				textButton2.Text = "CLICK GENERATOR"
				textButton2.TextColor3 = Color3.new(1, 1, 1)
				textButton2.BackgroundColor3 = Color3.fromRGB(0, 200, 150)
				textButton2.Font = Enum.Font.GothamBold
				textButton2.TextSize = 20
				textButton2.Parent = frame2
				local uiCorner5 = Instance.new("UICorner")
				uiCorner5.CornerRadius = UDim.new(0, 10)
				uiCorner5.Parent = textButton2
				local uiGradient2 = Instance.new("UIGradient")
				local new2 = ColorSequenceKeypoint.new
				local color2 = Color3.fromRGB
				uiGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 150)), new2(1, color2(0, 200, 255)) })
				uiGradient2.Rotation = 0
				uiGradient2.Parent = textButton2
				local frame4 = Instance.new("Frame")
				frame4.Size = UDim2.new(1, 10, 1, 10)
				frame4.Position = UDim2.new(0, -5, 0, -5)
				frame4.BackgroundColor3 = Color3.new(0, 0, 0)
				frame4.BackgroundTransparency = 0.7
				frame4.ZIndex = frame2.ZIndex - 1
				frame4.Parent = frame2
				local uiCorner6 = Instance.new("UICorner")
				uiCorner6.CornerRadius = UDim.new(0, 14)
				uiCorner6.Parent = frame4
				local textButton3 = Instance.new("TextButton")
				textButton3.Size = UDim2.new(0, 50, 0, 50)
				textButton3.Position = UDim2.new(0, 10, 0, 10)
				textButton3.BackgroundColor3 = Color3.fromRGB(0, 200, 150)
				textButton3.Text = "+"
				textButton3.TextColor3 = Color3.new(1, 1, 1)
				textButton3.Font = Enum.Font.GothamBold
				textButton3.TextSize = 36
				textButton3.BackgroundTransparency = 1
				textButton3.TextTransparency = 1
				textButton3.Size = UDim2.new(0, 0, 0, 0)
				textButton3.Visible = false
				textButton3.Parent = screenGui
				local uiCorner7 = Instance.new("UICorner")
				uiCorner7.CornerRadius = UDim.new(0, 25)
				uiCorner7.Parent = textButton3
				local flag10 = false
				local position = nil
				local position2 = nil

				frame3.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 and frame2.Visible then
						flag10 = true
						position = input.Position
						position2 = frame2.Position
					end
				end)

				frame3.InputChanged:Connect(function(input)
					if flag10 and input.UserInputType == Enum.UserInputType.MouseMovement then
						local n24 = input.Position - position
						frame2.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n24.X, position2.Y.Scale, position2.Y.Offset + n24.Y)
					end
				end)

				UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						flag10 = false
					end
				end)

				local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
				local tweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				local tweenInfo3 = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				local n24 = 1

				RunService2.RenderStepped:Connect(function(deltaTime)
					if textButton3.Visible then
						local n25 = textButton3.Size.X.Offset / 50 + deltaTime * 0.5 * n24

						if n25 >= 1.1 then
							n24 = -1
						elseif n25 <= 0.9 then
							n24 = 1
						end

						textButton3.Size = UDim2.new(0, 50 * n25, 0, 50 * n25)
					end
				end)

				local function fn22()
					local tbl11 = {}
					local tween = TweenService:Create(frame2, tweenInfo, { Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(0, 25, 0, 25), BackgroundTransparency = 1 })
					local tween2 = TweenService:Create(frame4, tweenInfo, { BackgroundTransparency = 1 })
					local tween3 = TweenService:Create(textLabel, tweenInfo, { TextTransparency = 1 })
					local tween4 = TweenService:Create(textBox, tweenInfo, { TextTransparency = 1, BackgroundTransparency = 1 })
					local tween5 = TweenService:Create(textButton2, tweenInfo, { TextTransparency = 1, BackgroundTransparency = 1 })
					local v34 = TweenService
					local create = v34.Create
					local tbl12 = { Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1, TextTransparency = 1 }
					tbl11[1] = tween
					tbl11[2] = tween2
					tbl11[3] = tween3
					tbl11[4] = tween4
					tbl11[5] = tween5

					do
						local values = table.pack(create(v34, textButton, tweenInfo, tbl12))
						table.move(values, 1, values.n, 6, tbl11)
					end

					for _, v35 in pairs(tbl11) do
						v35:Play()
					end

					tbl11[1].Completed:Connect(function()
						frame2.Visible = false
						textButton3.Size = UDim2.new(0, 0, 0, 0)
						textButton3.BackgroundTransparency = 1
						textButton3.TextTransparency = 1
						textButton3.Visible = true
						TweenService:Create(textButton3, tweenInfo3, { Size = UDim2.new(0, 50, 0, 50), BackgroundTransparency = 0, TextTransparency = 0 }):Play()
					end)
				end

				local function fn23()
					textButton3.Visible = false
					frame2.Visible = true
					frame2.Size = UDim2.new(0, 0, 0, 0)
					frame2.Position = UDim2.new(0, 25, 0, 25)
					frame2.BackgroundTransparency = 1
					frame4.BackgroundTransparency = 1
					textLabel.TextTransparency = 1
					textBox.TextTransparency = 1
					textBox.BackgroundTransparency = 1
					textButton2.TextTransparency = 1
					textButton2.BackgroundTransparency = 1
					textButton.Size = UDim2.new(0, 30, 0, 30)
					textButton.BackgroundTransparency = 0
					textButton.TextTransparency = 0
					local tbl11 = {}

					local tween = TweenService:Create(frame2, tweenInfo2, {
						Size = UDim2.new(0, 220, 0, 160),
						Position = UDim2.new(0, 20, 0, 20),
						BackgroundTransparency = 0.1,
					})

					local tween2 = TweenService:Create(frame4, tweenInfo2, { BackgroundTransparency = 0.7 })
					local tween3 = TweenService:Create(textLabel, tweenInfo2, { TextTransparency = 0 })
					local tween4 = TweenService:Create(textBox, tweenInfo2, { TextTransparency = 0, BackgroundTransparency = 0 })
					local tween5 = TweenService:Create(textButton2, tweenInfo2, { TextTransparency = 0, BackgroundTransparency = 0 })
					local v34 = TweenService
					local create = v34.Create
					local tbl12 = { Size = UDim2.new(0, 30, 0, 30), BackgroundTransparency = 0, TextTransparency = 0 }
					tbl11[1] = tween
					tbl11[2] = tween2
					tbl11[3] = tween3
					tbl11[4] = tween4
					tbl11[5] = tween5

					do
						local values = table.pack(create(v34, textButton, tweenInfo2, tbl12))
						table.move(values, 1, values.n, 6, tbl11)
					end

					for _, v35 in pairs(tbl11) do
						v35:Play()
					end
				end

				textButton.MouseButton1Click:Connect(fn22)
				textButton3.MouseButton1Click:Connect(fn23)

				local function fn24()
					local map = workspace:FindFirstChild("Map")

					if map and map:FindFirstChild("Ingame") and map.Ingame:FindFirstChild("Map") then
						for _, child in pairs(map.Ingame.Map:GetChildren()) do
							if child:IsA("Model") and child.Name == "Generator" then
								local remotes = child:FindFirstChild("Remotes")

								if remotes then
									local re = remotes:FindFirstChild("RE")

									if re and re:IsA("RemoteEvent") then
										pcall(function()
											re:FireServer()
										end)
									end
								end
							end
						end
					end
				end

				local flag11 = false
				local flag12 = false

				textButton2.MouseButton1Click:Connect(function()
					if flag11 then
						if flag12 then
							return
						end
						flag12 = true
						local position3 = textButton2.Position

						for i = 1, 5 do
							TweenService:Create(textButton2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = position3 + UDim2.new(0, 5, 0, 0) }):Play()
							task.wait(0.03)
							TweenService:Create(textButton2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = position3 + UDim2.new(0, -5, 0, 0) }):Play()
							task.wait(0.03)
						end

						TweenService:Create(textButton2, TweenInfo.new(0.03), { Position = position3 }):Play()
						task.wait(0.15)
						flag12 = false
						return
					end

					flag11 = true
					local size = textButton2.Size
					local tween = TweenService:Create(textButton2, TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.new(0.75, 0, 0, 45), BackgroundColor3 = Color3.fromRGB(0, 170, 130) })
					local tween2 = TweenService:Create(textButton2, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0.82, 0, 0, 52), BackgroundColor3 = Color3.fromRGB(0, 210, 160) })
					local tween3 = TweenService:Create(textButton2, TweenInfo.new(0.08, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = size, BackgroundColor3 = Color3.fromRGB(0, 200, 150) })
					tween:Play()

					tween.Completed:Connect(function()
						tween2:Play()
					end)

					tween2.Completed:Connect(function()
						tween3:Play()
					end)

					fn24()

					spawn(function()
						local now2 = tick()
						local n25 = tonumber(textBox.Text) or 2.5

						if n25 < 0.1 then
							n25 = 0.1
						end

						local n26 = now2 + n25

						while tick() < n26 do
							local n27 = tonumber(textBox.Text) or 2.5

							if n27 < 0.1 then
								n27 = 0.1
							end

							n26 = now2 + n27
							textButton2.Text = string.format("WAIT %.1fs", math.max(0, n26 - tick()))
							task.wait(0.05)
						end

						textButton2.Text = "CLICK GENERATOR"
						flag11 = false
					end)
				end)

				GeneratorGUI = screenGui
			end

			fn21()
		elseif GeneratorGUI then
			GeneratorGUI:Destroy()
			GeneratorGUI = nil
		end
	end,
})

v20:Toggle({
	Title = "Show Default Visualizer",
	Value = tbl5.defaultVisualizerVisible or false,
	Callback = function(defaultVisualizerVisible)
		tbl5.defaultVisualizerVisible = defaultVisualizerVisible
	end,
})

local v34 = game
getgenv().RunService = v34:GetService("RunService")
local v35 = game
getgenv().Players = v35:GetService("Players")
getgenv().LocalPlayer = getgenv().Players.LocalPlayer
local currentCamera = workspace.CurrentCamera
getgenv().Camera = currentCamera
local v36 = game
getgenv().ReplicatedStorage = v36:GetService("ReplicatedStorage")
local v37 = workspace
getgenv().PlayersFolder = v37:FindFirstChild("Players")
getgenv().KillersFolder = getgenv().PlayersFolder and getgenv().PlayersFolder:FindFirstChild("Killers")
getgenv().SurvivorsFolder = getgenv().PlayersFolder and getgenv().PlayersFolder:FindFirstChild("Survivors")
local v38 = require
getgenv().StunnedModule = v38(getgenv().ReplicatedStorage.Modules.Schematics.StatusEffects.Stunned)
getgenv().GlobalAimlockMode = getgenv().GlobalAimlockMode or "Character Lock"

getgenv().AimbotValues = getgenv().AimbotValues or {
	Guest1337 = { Enabled = false, Distance = 50, LockDuration = 1.3, Prediction = 0 },
	Shedlekey = { Enabled = false, Distance = 29, LockDuration = 1.2, Prediction = 0 },
	TwoTime = { Enabled = false, Distance = 29, LockDuration = 0.9, Prediction = 0 },
	Chance = { Enabled = false, LockDuration = 1.5, Prediction = 3, FreezeChar = false },
	Pizza = {
		Enabled = false,
		Distance = 50,
		LockDuration = 1.2,
		Prediction = 0,
		TargetMode = "Nearest One",
	},
	JaneDoe = { Enabled = false, Distance = 50, LockDuration = 1.1, Prediction = 0 },
}

getgenv().AnimationData = {
	Guest1337 = {},
	Shedlekey = {},
	TwoTime = { ["100725497418533"] = true },
	Chance = {},
	Pizza = { ["114155003741146"] = true },
	JaneDoe = {},
}

local function fn21()
	local tbl11 = {}
	local survivors = getgenv().ReplicatedStorage:FindFirstChild("Assets") and getgenv().ReplicatedStorage.Assets:FindFirstChild("Survivors")
	local survivors2 = getgenv().ReplicatedStorage:FindFirstChild("Assets") and getgenv().ReplicatedStorage.Assets:FindFirstChild("Skins") and getgenv().ReplicatedStorage.Assets.Skins:FindFirstChild("Survivors")
	tbl11[1] = survivors
	tbl11[2] = survivors2

	for _, v39 in ipairs(tbl11) do
		if v39 then
			for _, descendant in ipairs(v39:GetDescendants()) do
				if descendant:IsA("ModuleScript") and descendant.Name == "Config" then
					local ok, result = pcall(require, descendant)

					if ok and type(result) == "table" and type(result.Animations) == "table" then
						local animations = result.Animations

						local function fn22(arg, arg2)
							if arg2 then
								local match = tostring(arg2):match("%d+")

								if match then
									getgenv().AnimationData[arg][match] = true
								end
							end
						end

						fn22("Guest1337", animations.Punch)
						fn22("Guest1337", animations.ParryPunch)
						fn22("Shedlekey", animations.Slash)
						fn22("JaneDoe", animations.Axe)
						fn22("Chance", animations.AimGun)
					end
				end
			end
		end
	end
end

fn21()
getgenv().ActiveLock = { IsActive = false, Target = nil, StartTime = 0, Mode = "", Track = nil }
getgenv().OriginalWalkSpeed = nil
getgenv().OrigAutoRotate = nil
getgenv().GlobalAimbotToggle = false
getgenv().SelectedAimbots = getgenv().SelectedAimbots or {}
getgenv().ActiveAnimLookup = {}
getgenv().LastFinishedTrack = nil

getgenv().rebuildAnimLookup = function()
	local activeAnimLookup = {}

	for k, v39 in pairs(getgenv().AnimationData) do
		if getgenv().AimbotValues[k] and getgenv().AimbotValues[k].Enabled then
			for k2 in pairs(v39) do
				activeAnimLookup[k2] = k
			end
		end
	end

	getgenv().ActiveAnimLookup = activeAnimLookup
end

getgenv().applySelection = function()
	for _, aimbotValue in pairs(getgenv().AimbotValues) do
		aimbotValue.Enabled = false
	end

	if getgenv().GlobalAimbotToggle then
		for _, selectedAimbot in ipairs(getgenv().SelectedAimbots) do
			if getgenv().AimbotValues[selectedAimbot] then
				getgenv().AimbotValues[selectedAimbot].Enabled = true
			end
		end
	end

	getgenv().rebuildAnimLookup()
end

getgenv().updateFolders = function()
	if not getgenv().PlayersFolder or not getgenv().PlayersFolder.Parent then
		local v39 = workspace
		getgenv().PlayersFolder = v39:FindFirstChild("Players")
	end

	if getgenv().PlayersFolder then
		if not getgenv().KillersFolder or not getgenv().KillersFolder.Parent then
			getgenv().KillersFolder = getgenv().PlayersFolder:FindFirstChild("Killers")
		end

		if not getgenv().SurvivorsFolder or not getgenv().SurvivorsFolder.Parent then
			getgenv().SurvivorsFolder = getgenv().PlayersFolder:FindFirstChild("Survivors")
		end
	end
end

getgenv().getNearestKiller = function(arg)
	getgenv().updateFolders()
	local humanoidRootPart = getgenv().LocalPlayer.Character and getgenv().LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart or not getgenv().KillersFolder then
		return nil
	end
	local v39 = nil

	for _, child in ipairs(getgenv().KillersFolder:GetChildren()) do
		local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
		local humanoid = child:FindFirstChildOfClass("Humanoid")

		if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
			local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

			if magnitude <= arg then
				arg = magnitude
				v39 = child
			end
		end
	end

	return v39
end

getgenv().getNearestSurvivor = function(arg, arg2)
	getgenv().updateFolders()
	local character = getgenv().LocalPlayer.Character
	local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart or not getgenv().SurvivorsFolder then
		return nil
	end
	local huge = arg2 == "Lowest HP" and math.huge or arg
	local v39 = nil

	for _, child in ipairs(getgenv().SurvivorsFolder:GetChildren()) do
		if child ~= character then
			local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
			local humanoid = child:FindFirstChildOfClass("Humanoid")

			if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
				local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

				if magnitude <= arg then
					if arg2 == "Lowest HP" then
						if humanoid.Health < huge then
							huge = humanoid.Health
							v39 = child
						end
					elseif magnitude <= huge then
						huge = magnitude
						v39 = child
					end
				end
			end
		end
	end

	return v39
end

getgenv().applyStun = function(arg)
	local localPlayer3 = getgenv().LocalPlayer
	local character = localPlayer3.Character
	if not character then
		return
	end

	local tbl11 = {
		Player = localPlayer3,
		Character = character,
		Data = { Duration = arg, StunDuration = arg, Level = 1 },
		Behavior = {
			OnStunned = function()
			end,
			OnStunnedEnd = function()
			end,
		},
	}

	if getgenv().StunnedModule and getgenv().StunnedModule.Applied then
		getgenv().StunnedModule.Applied(tbl11)
	end

	task.wait(arg)

	if getgenv().StunnedModule and getgenv().StunnedModule.Removed then
		getgenv().StunnedModule.Removed(tbl11)
	end
end

getgenv().freezeCharacter = function(arg, arg2)
	local humanoid = arg and arg:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	if arg2 then
		getgenv().OriginalWalkSpeed = getgenv().OriginalWalkSpeed or humanoid.WalkSpeed
		humanoid.WalkSpeed = 0
	elseif getgenv().OriginalWalkSpeed then
		humanoid.WalkSpeed = getgenv().OriginalWalkSpeed
		getgenv().OriginalWalkSpeed = nil
	else
		humanoid.WalkSpeed = 16
	end
end

getgenv().checkAnimations = function()
	local character = getgenv().LocalPlayer.Character
	character = character and character:FindFirstChildOfClass("Humanoid")
	if not character then
		return nil, nil
	end

	if next(getgenv().ActiveAnimLookup) == nil then
		return nil, nil
	end

	for _, v39 in ipairs(character:GetPlayingAnimationTracks()) do
		if v39 ~= getgenv().LastFinishedTrack and v39.IsPlaying then
			local match = tostring(v39.Animation.AnimationId):match("%d+")
			local v40 = getgenv().ActiveAnimLookup[match]
			if v40 then
				return v40, v39
			end
		end
	end

	return nil, nil
end

do
	local n24 = 0
	local v39 = nil
	local v40 = nil

	getgenv().RunService.RenderStepped:Connect(function()
		if getgenv().LastFinishedTrack and not getgenv().LastFinishedTrack.IsPlaying then
			getgenv().LastFinishedTrack = nil
		end

		if next(getgenv().ActiveAnimLookup) == nil and not getgenv().ActiveLock.IsActive then
			return
		end
		local character = getgenv().LocalPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if not humanoidRootPart then
			return
		end

		if not getgenv().ActiveLock.IsActive then
			if humanoid and humanoid.AutoRotate == false then
				humanoid.AutoRotate = true
			end

			n24 += 1

			if n24 >= 3 then
				n24 = 0
				local v41, v42 = getgenv().checkAnimations()
				v39 = v41
				v40 = v42
			end

			local v41 = v39
			local v42 = v39

			if v41 then
				v42 = v40
			end

			if v42 then
				local v43 = getgenv().AimbotValues[v41]
				local v44

				if v41 == "Pizza" then
					v44 = getgenv().getNearestSurvivor(v43.Distance, v43.TargetMode or "Nearest One")
				elseif v41 == "Chance" then
					v44 = getgenv().getNearestKiller(9999)
				else
					local flag10 = v41 == "Guest1337" or v41 == "JaneDoe"
					v44 = getgenv().getNearestKiller(flag10 and 9999 or v43.Distance)
				end

				if v44 then
					getgenv().ActiveLock.IsActive = true
					getgenv().ActiveLock.Target = v44
					getgenv().ActiveLock.StartTime = tick()
					getgenv().ActiveLock.Mode = v41
					getgenv().ActiveLock.Track = v40
					v39 = nil
					v40 = nil

					if humanoid then
						humanoid.AutoRotate = false
					end

					if v41 == "Chance" then
						if v43.FreezeChar then
							getgenv().freezeCharacter(character, true)
						end

						task.spawn(function()
							local lockDuration = v43.LockDuration
							getgenv().applyStun(lockDuration)
						end)
					end
				end
			end

			return
		end

		local mode = getgenv().ActiveLock.Mode
		local v41 = getgenv().AimbotValues[mode]
		local n25 = tick() - getgenv().ActiveLock.StartTime
		local humanoidRootPart2 = getgenv().ActiveLock.Target and getgenv().ActiveLock.Target:FindFirstChild("HumanoidRootPart")
		local humanoid2 = getgenv().ActiveLock.Target and getgenv().ActiveLock.Target:FindFirstChildOfClass("Humanoid")

		if n25 > v41.LockDuration or not humanoidRootPart2 or humanoid2 and humanoid2.Health <= 0 then
			getgenv().LastFinishedTrack = getgenv().ActiveLock.Track
			getgenv().ActiveLock.IsActive = false
			getgenv().ActiveLock.Target = nil
			getgenv().ActiveLock.Track = nil

			if mode == "Chance" and v41.FreezeChar then
				getgenv().freezeCharacter(character, false)
			end

			if humanoid then
				humanoid.AutoRotate = true
			end

			return
		end

		local position = humanoidRootPart2.Position
		local n26 = position
		local prediction = v41.Prediction or 0

		if prediction > 0 and humanoid2 and humanoid2.MoveDirection.Magnitude > 0 then
			n26 = position + humanoid2.MoveDirection.Unit * prediction
		end

		local globalAimlockMode = getgenv().GlobalAimlockMode or "Character Lock"
		local vector = Vector3.new(n26.X, humanoidRootPart.Position.Y, n26.Z)
		local cframe = CFrame.lookAt(humanoidRootPart.Position, vector)

		local function fn22()
			if mode == "Chance" then
				humanoidRootPart.CFrame = cframe
			elseif (position - humanoidRootPart.Position).Magnitude < 6 then
				humanoidRootPart.CFrame = cframe
			else
				humanoidRootPart.CFrame = humanoidRootPart.CFrame:Lerp(cframe, 0.65)
			end
		end

		if globalAimlockMode == "Char + Cam Lock" then
			fn22()
			local cframe2 = CFrame.lookAt(getgenv().Camera.CFrame.Position, n26)
			getgenv().Camera.CFrame = getgenv().Camera.CFrame:Lerp(cframe2, 0.75)
		elseif globalAimlockMode == "Character Lock" then
			fn22()
		end
	end)
end

v23:Section({ Title = "Aim" })
v23:Section({ Title = "Aimbots" })

v23:Toggle({
	Title = "Enable Aimbot",
	Value = false,
	Callback = function(globalAimbotToggle)
		getgenv().GlobalAimbotToggle = globalAimbotToggle
		getgenv().applySelection()
	end,
})

v23:Dropdown({
	Title = "Pick Aimbots",
	Values = { "Guest1337", "Shedlekey", "TwoTime", "Chance", "Pizza", "JaneDoe" },
	Value = {},
	Multi = true,
	AllowNone = true,
	Callback = function(selectedAimbots)
		getgenv().SelectedAimbots = selectedAimbots
		getgenv().applySelection()
	end,
})

v23:Section({ Title = "Settings" })

v23:Input({
	Title = "Distance (1 - 50)",
	Desc = "Does not work on Chance",
	Value = 50,
	Callback = function(arg)
		local distance = math.clamp(tonumber(arg) or 50, 1, 50)
		getgenv().AimbotValues.Guest1337.Distance = distance
		getgenv().AimbotValues.Shedlekey.Distance = distance
		getgenv().AimbotValues.TwoTime.Distance = distance
		getgenv().AimbotValues.Pizza.Distance = distance
		getgenv().AimbotValues.JaneDoe.Distance = distance
	end,
})

v23:Dropdown({
	Title = "Aimlock Mode",
	Values = { "Character Lock", "Char + Cam Lock" },
	Value = "Character Lock",
	Callback = function(globalAimlockMode)
		getgenv().GlobalAimlockMode = globalAimlockMode
	end,
})

do
	local v39 = v23:Section({ Title = "Extra Settings" })
	local v40 = v39:Section({ Title = "Guest1337" })

	v40:Input({
		Title = "Lock Duration",
		Value = 1.3,
		Callback = function(arg)
			getgenv().AimbotValues.Guest1337.LockDuration = math.clamp(tonumber(arg) or 1.3, 0.1, 2.5)
		end,
	})

	v40:Input({
		Title = "Prediction",
		Value = 0,
		Callback = function(arg)
			getgenv().AimbotValues.Guest1337.Prediction = tonumber(arg) or 0
		end,
	})

	local v41 = v39:Section({ Title = "Shedlekey" })

	v41:Input({
		Title = "Lock Duration",
		Value = 1.4,
		Callback = function(arg)
			getgenv().AimbotValues.Shedlekey.LockDuration = math.clamp(tonumber(arg) or 1.4, 0.1, 2.5)
		end,
	})

	v41:Input({
		Title = "Prediction",
		Value = 0,
		Callback = function(arg)
			getgenv().AimbotValues.Shedlekey.Prediction = tonumber(arg) or 0
		end,
	})

	local v42 = v39:Section({ Title = "TwoTime" })

	v42:Input({
		Title = "Lock Duration",
		Value = 0.9,
		Callback = function(arg)
			getgenv().AimbotValues.TwoTime.LockDuration = math.clamp(tonumber(arg) or 0.9, 0.1, 2.5)
		end,
	})

	v42:Input({
		Title = "Prediction",
		Value = 0,
		Callback = function(arg)
			getgenv().AimbotValues.TwoTime.Prediction = tonumber(arg) or 0
		end,
	})

	local v43 = v39:Section({ Title = "Chance" })

	v43:Toggle({
		Title = "Stop Moving on Aim",
		Value = false,
		Callback = function(freezeChar)
			getgenv().AimbotValues.Chance.FreezeChar = freezeChar
		end,
	})

	v43:Input({
		Title = "Lock Duration",
		Value = 1.5,
		Callback = function(arg)
			getgenv().AimbotValues.Chance.LockDuration = math.clamp(tonumber(arg) or 1.5, 0.1, 2.5)
		end,
	})

	v43:Input({
		Title = "Prediction",
		Value = 3,
		Callback = function(arg)
			getgenv().AimbotValues.Chance.Prediction = tonumber(arg) or 3
		end,
	})

	local v44 = v39:Section({ Title = "Eliot" })

	v44:Dropdown({
		Title = "Target Mode",
		Values = { "Nearest One", "Lowest HP" },
		Value = "Nearest One",
		Callback = function(targetMode)
			getgenv().AimbotValues.Pizza.TargetMode = targetMode
		end,
	})

	v44:Input({
		Title = "Lock Duration",
		Value = 1.3,
		Callback = function(arg)
			getgenv().AimbotValues.Pizza.LockDuration = math.clamp(tonumber(arg) or 1.3, 0.1, 2.5)
		end,
	})

	v44:Input({
		Title = "Prediction",
		Value = 0,
		Callback = function(arg)
			getgenv().AimbotValues.Pizza.Prediction = tonumber(arg) or 0
		end,
	})

	local v45 = v39:Section({ Title = "JaneDoe" })

	v45:Input({
		Title = "Lock Duration",
		Value = 1.1,
		Callback = function(arg)
			getgenv().AimbotValues.JaneDoe.LockDuration = math.clamp(tonumber(arg) or 1.1, 0.1, 2.5)
		end,
	})

	v45:Input({
		Title = "Prediction",
		Value = 0,
		Callback = function(arg)
			getgenv().AimbotValues.JaneDoe.Prediction = tonumber(arg) or 0
		end,
	})
end

v22:Button({
	Title = "Guest Fake Lag tech",
	Desc = "Move to Stop the Fake lag",
	Locked = false,
	Callback = function()
		local localPlayer3 = game.Players.LocalPlayer
		local humanoid = (localPlayer3.Character or localPlayer3.CharacterAdded:Wait()):WaitForChild("Humanoid")
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://136252471123500"
		local animator = humanoid:FindFirstChildOfClass("Animator")

		if not animator then
			animator = Instance.new("Animator")
			animator.Parent = humanoid
		end

		animator:LoadAnimation(animation):Play()
	end,
})

v28:Toggle({
	Title = "Auto Mini Game",
	Desc = "thanks Cryptic For the Source!",
	Value = false,
	Callback = function(arg)
		if arg then
			AutoMinigameActive = true

			task.spawn(function()
				while AutoMinigameActive and task.wait() do
					local ok, result = pcall(function()
						return game.Players.LocalPlayer.PlayerGui:WaitForChild("TemporaryUI"):WaitForChild("QTE"):WaitForChild("ActiveButton")
					end)

					if ok and result then
						for _, v39 in ipairs(getconnections(result.MouseButton1Down)) do
							v39.Function()
						end
					end
				end
			end)
		else
			AutoMinigameActive = false
		end
	end,
})

do
	local Players = game:GetService("Players")
	game:GetService("RunService")
	local localPlayer3 = Players.LocalPlayer
	local flag10 = false
	local new = nil

	local function fn22()
		local playerGui = localPlayer3:FindFirstChildOfClass("PlayerGui")
		if not playerGui then
			return false
		end
		local temporaryUI = playerGui:FindFirstChild("TemporaryUI")
		if not temporaryUI then
			return false
		end
		local qte = temporaryUI:FindFirstChild("QTE")

		if not qte then
			for _, child in ipairs(temporaryUI:GetChildren()) do
				if child:FindFirstChild("Line") then
					qte = child
					break
				end
			end
		end

		return qte ~= nil
	end

	v28:Toggle({
		Title = "Instant Plant Disarm",
		Desc = "pls use at your own risk",
		Value = false,
		Callback = function(arg)
			flag10 = arg

			if arg then
				local clConstructQTE = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Killers"):WaitForChild("Azure"):WaitForChild("Config"):WaitForChild("cl_WorkaroundModules"):WaitForChild("cl_ConstructQTE")

				if not new then
					local module = require(clConstructQTE)
					new = module.new

					module.new = function(...)
						local v39 = new(...)

						if v39 then
							task.defer(function()
								if type(v39.AddProgress) == "function" then
									local n24 = os.clock() + 3

									while os.clock() < n24 do
										if fn22() then
											v39:AddProgress(100)
											break
										else
											task.wait(0.05)
										end
									end
								end
							end)
						end

						return v39
					end
				end
			elseif new then
				require(game:GetService("ReplicatedStorage").Assets.Killers.Azure.Config.cl_WorkaroundModules.cl_ConstructQTE).new = new
				new = nil
			end
		end,
	})
end

v28:Toggle({
	Title = "Anti Stun",
	Value = false,
	Callback = function(arg)
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local localPlayer3 = game:GetService("Players").LocalPlayer
		local Stunned = require(ReplicatedStorage.Modules.Schematics.StatusEffects.Stunned)

		if arg then
			local applied = Stunned.Applied
			local removed = Stunned.Removed

			Stunned.Applied = function(arg2)
				if arg2.Player == localPlayer3 then
					return
				end
				return applied(arg2)
			end

			Stunned.Removed = function(arg2)
				if arg2.Player == localPlayer3 then
					return
				end
				return removed(arg2)
			end

			AntiStunHookApplied = applied
			AntiStunHookRemoved = removed
		elseif AntiStunHookApplied and AntiStunHookRemoved then
			Stunned.Applied = AntiStunHookApplied
			Stunned.Removed = AntiStunHookRemoved
			AntiStunHookApplied = nil
			AntiStunHookRemoved = nil
		end
	end,
})

v28:Toggle({
	Title = "Anti Footprint",
	Value = false,
	Callback = function(arg)
		antiFootprintEnabled = arg

		if arg then
			local ingame = workspace.Map.Ingame

			for _, child in ipairs(ingame:GetChildren()) do
				checkFolder(child)
			end

			table.insert(tbl10, ingame.ChildAdded:Connect(checkFolder))
		else
			disconnectAll()
		end
	end,
})

local v39 = game
getgenv().Players = v39:GetService("Players")
getgenv().LocalPlayer = getgenv().Players.LocalPlayer
getgenv().originalValues = {}
getgenv().paths = { "HideKillerWins", "HidePlaytime", "HideSurvivorWins" }
getgenv().toggleState = false

getgenv().saveOriginalValues = function(arg)
	if arg == getgenv().LocalPlayer then
		return
	end
	local userId = arg.UserId

	if not getgenv().originalValues[userId] then
		local userId2 = arg.UserId
		getgenv().originalValues[userId2] = {}
	end

	for _, path in ipairs(getgenv().paths) do
		local privacy = arg:FindFirstChild("PlayerData") and arg.PlayerData:FindFirstChild("Settings") and arg.PlayerData.Settings:FindFirstChild("Privacy") and arg.PlayerData.Settings.Privacy:FindFirstChild(path)

		if privacy then
			local userId2 = arg.UserId
			local value = privacy.Value
			getgenv().originalValues[userId2][path] = value
		end
	end
end

getgenv().setAllFalse = function(arg)
	if arg == getgenv().LocalPlayer then
		return
	end

	for _, path in ipairs(getgenv().paths) do
		local privacy = arg:FindFirstChild("PlayerData") and arg.PlayerData:FindFirstChild("Settings") and arg.PlayerData.Settings:FindFirstChild("Privacy") and arg.PlayerData.Settings.Privacy:FindFirstChild(path)

		if privacy then
			privacy.Value = false
		end
	end
end

getgenv().restoreValues = function(arg)
	if arg == getgenv().LocalPlayer then
		return
	end
	local userId = arg.UserId

	if getgenv().originalValues[userId] then
		local userId2 = arg.UserId

		for k, v40 in pairs(getgenv().originalValues[userId2]) do
			local privacy = arg:FindFirstChild("PlayerData") and arg.PlayerData:FindFirstChild("Settings") and arg.PlayerData.Settings:FindFirstChild("Privacy") and arg.PlayerData.Settings.Privacy:FindFirstChild(k)

			if privacy then
				privacy.Value = v40
			end
		end
	end
end

getgenv().togglePrivacy = function(toggleState)
	for _, player in ipairs(getgenv().Players:GetPlayers()) do
		if player ~= getgenv().LocalPlayer then
			if toggleState then
				getgenv().saveOriginalValues(player)
				getgenv().setAllFalse(player)
			else
				getgenv().restoreValues(player)
			end
		end
	end

	getgenv().toggleState = toggleState
end

getgenv().Players.PlayerAdded:Connect(function(player)
	if player ~= getgenv().LocalPlayer and getgenv().toggleState then
		getgenv().saveOriginalValues(player)
		getgenv().setAllFalse(player)
	end
end)

v28:Toggle({
	Title = "Anti stats",
	Value = false,
	Callback = function(arg)
		pcall(function()
			getgenv().togglePrivacy(arg)
		end)
	end,
})

do
	local function fn22(arg, arg2, arg3)
		local str5 = ""

		for i = 1, #arg do
			local n24 = (i - 1) / (#arg - 1)
			str5 ..= string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", math.floor((arg2.R + (arg3.R - arg2.R) * n24) * 255), math.floor((arg2.G + (arg3.G - arg2.G) * n24) * 255), math.floor((arg2.B + (arg3.B - arg2.B) * n24) * 255), arg:sub(i, i))
		end

		return str5
	end

	local color = Color3.fromRGB

	v27:Paragraph({
		Title = fn22("Jane Doe", Color3.fromRGB(255, 182, 193), color(101, 67, 33)),
		Desc = "Jane doe feets",
	})

	local flag10 = false
	local v40 = nil

	v27:Toggle({
		Title = "Crystal Pinch silent Aim",
		Value = false,
		Callback = function(arg)
			flag10 = arg

			if arg and not v40 then
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local Players = game:GetService("Players")
				local UserInputService = game:GetService("UserInputService")
				local localPlayer3 = Players.LocalPlayer
				local currentCamera2 = workspace.CurrentCamera
				local n24 = 2.5
				local n25 = -0.32175055439664219

				v40 = hookfunction(getcallbackvalue(ReplicatedStorage.Modules.Network.Network.RemoteFunction, "OnClientInvoke"), function(...)
					local v41 = table.pack(...)
					if ({ ... })[1] ~= "GetCameraCF" or not flag10 then
						return v40(table.unpack(v41, 1, v41.n))
					end
					local players = workspace:FindFirstChild("Players")
					players = players and players:FindFirstChild("Killers")
					local humanoidRootPart = localPlayer3.Character and localPlayer3.Character:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart and players then
						local huge = math.huge
						local v42 = nil

						for _, child in ipairs(players:GetChildren()) do
							local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
							local humanoid = child:FindFirstChildOfClass("Humanoid")

							if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
								local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

								if magnitude <= huge then
									huge = magnitude
									v42 = child
								end
							end
						end

						if v42 then
							local humanoid = v42.Humanoid
							local position = v42.HumanoidRootPart.Position

							if humanoid and humanoid.MoveDirection.Magnitude > 0.15 then
								position += humanoid.MoveDirection * n24
							end

							local cframe = CFrame.lookAt(Vector3.zero, (position - humanoidRootPart.Position + Vector3.new(0, 1.5, 0)).Unit)

							if localPlayer3:GetAttribute("Device") == "Mobile" or UserInputService.TouchEnabled then
								cframe *= CFrame.Angles(n25, 0, 0)
							end

							local rotation = cframe.Rotation
							return CFrame.new(currentCamera2.CFrame.Position) * rotation
						end
					end

					return v40(table.unpack(v41, 1, v41.n))
				end)
			end
		end,
	})

	local flag11 = false
	local flag12 = false

	v27:Toggle({
		Title = "Instant Crystal Charge",
		Value = false,
		Callback = function(arg)
			flag11 = arg

			if arg and not flag12 then
				local behavior = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Survivors"):WaitForChild("JaneDoe"):WaitForChild("Behavior")
				local module = require(behavior)

				if module and module.Abilities and module.Abilities.Crystal then
					local callback = module.Abilities.Crystal.Callback

					module.Abilities.Crystal.Callback = function(arg2, arg3, ...)
						if arg2 and arg2.Config and arg2.Config.Crystal then
							if not arg2.Config.Crystal._OriginalMaxChargeTime then
								arg2.Config.Crystal._OriginalMaxChargeTime = arg2.Config.Crystal.MaxChargeTime
								arg2.Config.Crystal._OriginalMinChargeTime = arg2.Config.Crystal.MinChargeTime
								arg2.Config.Crystal._OriginalChannelTime = arg2.Config.Crystal.ChannelTime
							end

							if flag11 then
								arg2.Config.Crystal.MaxChargeTime = 0.01
								arg2.Config.Crystal.MinChargeTime = 0
								arg2.Config.Crystal.ChannelTime = 0
							else
								arg2.Config.Crystal.MaxChargeTime = arg2.Config.Crystal._OriginalMaxChargeTime
								arg2.Config.Crystal.MinChargeTime = arg2.Config.Crystal._OriginalMinChargeTime
								arg2.Config.Crystal.ChannelTime = arg2.Config.Crystal._OriginalChannelTime
							end
						end

						local v41 = table.pack(...)
						local v42 = callback
						v41.n = 3 + v41.n - 1
						table.move(v41, 1, v41.n, 3, v41)
						v41[1] = arg2
						v41[2] = arg3
						return v42(table.unpack(v41, 1, v41.n))
					end

					flag12 = true
				end
			end
		end,
	})

	local color2 = Color3.fromRGB

	v27:Paragraph({
		Title = fn22("Veeronica", Color3.fromRGB(255, 20, 147), color2(255, 182, 193)),
		Desc = "try to catch me - veeronica",
	})

	v27:Toggle({
		Title = "Veeronica Auto TRICK",
		Value = false,
		Callback = function(arg)
			if arg then
				local ok, k = pcall(function()
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local localPlayer3 = game:GetService("Players").LocalPlayer
					local VirtualInputManager = game:GetService("VirtualInputManager")
					local tbl11 = { f = false, g = {} }

					local function fn23()
						return ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Survivors"):WaitForChild("Veeronica"):WaitForChild("Behavior")
					end

					local function fn24()
						local character = localPlayer3.Character
						if not character or not character:FindFirstChild("HumanoidRootPart") then
							return false
						end
						local killers = workspace:FindFirstChild("Players") and workspace.Players:FindFirstChild("Killers")
						if not killers then
							return false
						end
						local humanoidRootPart = character.HumanoidRootPart

						for _, child in ipairs(killers:GetChildren()) do
							if child:IsA("Model") and child:FindFirstChild("HumanoidRootPart") then
								local humanoidRootPart2 = child.HumanoidRootPart
								if not ((humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= 14) then
									continue
								end

								if humanoidRootPart.CFrame.LookVector:Dot((humanoidRootPart2.Position - humanoidRootPart.Position).Unit) > 0.5 then
									return true
								end
							end
						end

						return false
					end

					local function fn25(arg2, arg3)
						if not arg2 or not arg3 then
							return false
						end
						local ok, result = pcall(arg2.IsDescendantOf, arg2, arg3)
						return ok and result
					end

					local function fn26(arg2)
						if not arg2 or not arg2.Parent then
							return false
						end
						local adornee = nil
						if not pcall(function()
							adornee = arg2.Adornee
						end) or not adornee then
							return false
						end
						local character = localPlayer3.Character
						if not character then
							return false
						end

						if adornee == character or fn25(adornee, character) then
							return true
						end

						if adornee:IsA("Model") then
							for _, v41 in adornee:GetDescendants() do
								if v41:IsA("BasePart") and v41:IsDescendantOf(character) then
									return true
								end
							end
						end

						if adornee:IsA("Attachment") and adornee.Parent and fn25(adornee.Parent, character) then
							return true
						end

						if adornee:IsA("Humanoid") and adornee.Parent == character then
							return true
						end
						return false
					end

					local function fn27()
						pcall(function()
							VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
							task.wait(0.01)
							VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
						end)
					end

					local function fn28()
						if fn24() then
							return
						end

						if _G.c == "PC/Laptop" then
							fn27()
						else
							local Sprinting = require(ReplicatedStorage.Systems.Character.Game.Sprinting)
							if not (Sprinting and Sprinting.MobileButton) then
								return
							end
							local stamina = Sprinting.Stamina

							if stamina then
								stamina = Sprinting.Stamina <= (Sprinting.MinStamina or 0)
							end

							if stamina then
								return
							end
							local v41 = getconnections(Sprinting.MobileButton.MouseButton1Down)

							for _, v42 in ipairs(v41) do
								v42:Fire()
							end
						end
					end

					local function fn29(arg2)
						if not arg2 or tbl11.g[arg2] then
							return
						end
						tbl11.g[arg2] = true
						local v41 = fn26(arg2)
						local flag13 = true
						local tbl12 = {}

						local function fn30()
							flag13 = false

							for _, v42 in tbl12, nil, nil do
								if v42.Connected then
									v42:Disconnect()
								end
							end

							tbl11.g[arg2] = nil
						end

						local function fn31()
							if not flag13 or not arg2 or not arg2.Parent then
								return
							end

							if not tbl11.f then
								fn30()
								return
							end
							local v42 = fn26(arg2)

							if v42 and not v41 then
								fn28()
							end

							v41 = v42
						end

						pcall(function()
							table.insert(tbl12, arg2:GetPropertyChangedSignal("Adornee"):Connect(fn31))
						end)

						table.insert(tbl12, arg2.AncestryChanged:Connect(function(child, parent)
							if not parent then
								fn30()
							end
						end))

						table.insert(tbl12, localPlayer3.CharacterAdded:Connect(fn31))
						table.insert(tbl12, localPlayer3.CharacterRemoving:Connect(fn31))

						task.spawn(function()
							while flag13 and arg2 and arg2.Parent and tbl11.f do
								task.wait(0.15)
								fn31()
							end

							fn30()
						end)

						task.defer(fn31)
					end

					local function fn30()
						local v41 = fn23()

						for k in pairs(tbl11.g) do
							if k and k.Parent then
								local v42 = getconnections(k:GetPropertyChangedSignal("Adornee"))

								for _, v43 in pairs(v42) do
									v43:Disconnect()
								end
							end
						end

						tbl11.g = {}

						for _, v42 in v41:GetDescendants() do
							if v42:IsA("Highlight") then
								fn29(v42)
							end
						end

						v41.DescendantAdded:Connect(function(descendant)
							if descendant:IsA("Highlight") and tbl11.f then
								fn29(descendant)
							end
						end)
					end

					local function fn31()
						for k in pairs(tbl11.g) do
							if k and k.Parent then
								local v41 = getconnections(k:GetPropertyChangedSignal("Adornee"))

								for _, v42 in pairs(v41) do
									v42:Disconnect()
								end
							end
						end

						tbl11.g = {}
					end

					return {
						Enable = function()
							tbl11.f = true
							fn30()
						end,
						Disable = function()
							tbl11.f = false
							fn31()
						end,
						IsEnabled = function()
							return tbl11.f
						end,
					}
				end)

				if ok and type(k) == "table" and type(k.Enable) == "function" then
					pcall(k.Enable)
					_G.k = k
				end
			else
				if _G.k and type(_G.k.Disable) == "function" then
					pcall(_G.k.Disable)
				end

				_G.k = nil
			end
		end,
	})

	v27:Dropdown({
		Title = "Device",
		Desc = "Select device method for veeronica Auto TRICK",
		Values = { "Mobile", "PC/Laptop" },
		Value = "Mobile",
		Callback = function(c)
			_G.c = c
		end,
	})

	_G.c = "Mobile"

	task.spawn(function()
		v27:Toggle({
			Title = "Veeronica Skate Controller",
			Value = false,
			Callback = function(arg)
				ControlCharge_SetEnabled(arg)
			end,
		})

		local Players = game:GetService("Players")
		local RunService2 = game:GetService("RunService")
		local localPlayer3 = Players.LocalPlayer
		local currentCamera2 = workspace.CurrentCamera
		local UserInputService = game:GetService("UserInputService")
		local flag13 = false
		local connection = nil

		local function fn23(arg)
			flag13 = arg

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if flag13 then
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter

				connection = RunService2.RenderStepped:Connect(function()
					local character = localPlayer3.Character
					local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart then
						local cFrame = currentCamera2.CFrame
						humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, Vector3.new(cFrame.LookVector.X + humanoidRootPart.Position.X, humanoidRootPart.Position.Y, cFrame.LookVector.Z + humanoidRootPart.Position.Z))
					end
				end)
			else
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			end
		end

		local tbl11 = { "117058860640843" }
		local walkSpeed = 60
		local flag14 = false
		local flag15 = false
		local connection2 = nil
		local tbl12 = type(tbl11) == "table" and tbl11 or {}
		local tbl13 = {}

		local function fn24()
			if not localPlayer3 or not localPlayer3.Character then
				return nil
			end
			return localPlayer3.Character:FindFirstChildOfClass("Humanoid")
		end

		local function fn25(arg)
			if not arg then
				return
			end

			if tbl13[arg] then
				return
			end
			local tbl14 = {}

			pcall(function()
				tbl14.WalkSpeed = arg.WalkSpeed

				if not pcall(function()
					tbl14.JumpPower = arg.JumpPower
				end) then
					pcall(function()
						tbl14.JumpPower = arg.JumpHeight
					end)
				end

				local ok, autoRotate = pcall(function()
					return arg.AutoRotate
				end)

				if ok then
					tbl14.AutoRotate = autoRotate
				end

				tbl14.PlatformStand = arg.PlatformStand
			end)

			tbl13[arg] = tbl14
		end

		local function fn26(arg)
			if not arg then
				return
			end
			local v41 = tbl13[arg]
			if not v41 then
				return
			end

			pcall(function()
				if v41.WalkSpeed ~= nil then
					arg.WalkSpeed = v41.WalkSpeed
				end

				if v41.JumpPower ~= nil then
					if not pcall(function()
						arg.JumpPower = v41.JumpPower
					end) then
						pcall(function()
							arg.JumpHeight = v41.JumpPower
						end)
					end
				end

				if v41.AutoRotate ~= nil then
					pcall(function()
						arg.AutoRotate = v41.AutoRotate
					end)
				end

				if v41.PlatformStand ~= nil then
					arg.PlatformStand = v41.PlatformStand
				end
			end)

			tbl13[arg] = nil
		end

		local function fn27()
			if flag15 then
				return
			end
			local v41 = fn24()
			if not v41 then
				return
			end
			flag15 = true
			fn25(v41)

			pcall(function()
				v41.WalkSpeed = walkSpeed
				v41.AutoRotate = false
			end)

			fn23(true)

			connection2 = RunService2.RenderStepped:Connect(function()
				local v42 = fn24()
				local humanoidRootPart = v42 and v42.Parent and v42.Parent:FindFirstChild("HumanoidRootPart")
				if not v42 or not humanoidRootPart then
					return
				end

				pcall(function()
					v42.WalkSpeed = walkSpeed
					v42.AutoRotate = false
				end)

				local lookVector = humanoidRootPart.CFrame.LookVector
				local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

				if vector.Magnitude > 0 then
					v42:Move(vector.Unit)
				else
					v42:Move(Vector3.zero)
				end
			end)
		end

		local function fn28()
			if not flag15 then
				return
			end
			flag15 = false

			if connection2 then
				pcall(function()
					connection2:Disconnect()
				end)

				connection2 = nil
			end

			fn23(false)
			local v41 = fn24()

			if v41 then
				pcall(function()
					fn26(v41)
					v41:Move(Vector3.zero)
				end)
			end
		end

		local function fn29()
			local v41 = fn24()
			if not v41 then
				return false
			end

			for _, v42 in ipairs(v41:GetPlayingAnimationTracks()) do
				local ok, result = pcall(function()
					return tostring(v42.Animation and v42.Animation.AnimationId or ""):match("%d+")
				end)

				if ok and result and result ~= "" then
					if tbl12 and table.find(tbl12, result) then
						return true
					end
				end
			end

			return false
		end

		ControlCharge_SetEnabled = function(arg)
			flag14 = arg and true or false

			if not flag14 and flag15 then
				fn28()
			end
		end

		RunService2.RenderStepped:Connect(function()
			if not flag14 then
				if flag15 then
					fn28()
				end

				return
			end

			if not fn24() then
				if flag15 then
					fn28()
				end

				return
			end

			if fn29() then
				if not flag15 then
					fn27()
				end
			elseif flag15 then
				fn28()
			end
		end)

		localPlayer3.CharacterAdded:Connect(function(character)
			task.spawn(function()
				character:WaitForChild("Humanoid", 2)
			end)
		end)

		localPlayer3.CharacterAdded:Connect(function()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end)
	end)

	local color3 = Color3.fromRGB

	v27:Paragraph({
		Title = fn22("Guest1337", Color3.fromRGB(75, 83, 32), color3(121, 117, 70)),
		Desc = "some random things",
	})

	local flag13 = false
	local connection = nil

	v27:Toggle({
		Title = "Charge Aimbot",
		Value = false,
		Callback = function(arg)
			flag13 = arg

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if arg then
				local Players = game:GetService("Players")
				local RunService2 = game:GetService("RunService")
				local localPlayer3 = Players.LocalPlayer
				local currentCamera2 = workspace.CurrentCamera

				local tbl11 = {
					["rbxassetid://96173857867228"] = true,
					["rbxassetid://106014898528300"] = true,
					["rbxassetid://97623143664485"] = true,
					["rbxassetid://73502073176819"] = true,
					["rbxassetid://98055043535080"] = true,
					["rbxassetid://100505444434161"] = true,
					["rbxassetid://97690896670367"] = true,
				}

				connection = RunService2.RenderStepped:Connect(function()
					if not flag13 then
						return
					end
					local character = localPlayer3.Character
					if not character then
						return
					end
					local humanoid = character:FindFirstChildOfClass("Humanoid")
					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
					if not humanoid or not humanoidRootPart then
						return
					end
					local animator = humanoid:FindFirstChildOfClass("Animator")
					if not animator then
						return
					end
					local flag14 = false

					for _, v41 in ipairs(animator:GetPlayingAnimationTracks()) do
						if v41.Animation and tbl11[v41.Animation.AnimationId] then
							flag14 = true
							break
						end
					end

					if flag14 then
						local model = workspace:WaitForChild("Players"):WaitForChild("Killers"):FindFirstChildWhichIsA("Model")

						if model and model:FindFirstChild("HumanoidRootPart") then
							local position = model.HumanoidRootPart.Position
							humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, Vector3.new(position.X, humanoidRootPart.Position.Y, position.Z))
							currentCamera2.CFrame = CFrame.new(currentCamera2.CFrame.Position, position)
						end
					end
				end)
			end
		end,
	})

	getgenv().animations = { ["Normal Block"] = 72722244508749, ["Milestone Block"] = 96959123077498 }
	getgenv().currentAnimation = getgenv().animations["Normal Block"]
	getgenv().screenGui = nil

	v27:Dropdown({
		Title = "animation of block",
		Values = { "Normal Block", "Milestone Block" },
		Value = "Normal Block",
		Callback = function(arg)
			getgenv().currentAnimation = getgenv().animations[arg]
		end,
	})

	v27:Toggle({
		Title = "Fake Block",
		Value = false,
		Callback = function(arg)
			if arg then
				if getgenv().screenGui then
					getgenv().screenGui.Enabled = true
				else
					local new = Instance.new
					getgenv().screenGui = new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
					getgenv().screenGui.Name = "FakeBlockUI"
					getgenv().screenGui.DisplayOrder = 90
					local sibling = Enum.ZIndexBehavior.Sibling
					getgenv().screenGui.ZIndexBehavior = sibling
					local textButton = Instance.new("TextButton", getgenv().screenGui)
					textButton.Name = "FakeBlockButton"
					textButton.BorderSizePixel = 0
					textButton.BackgroundColor3 = Color3.fromRGB(130, 154, 183)
					textButton.ZIndex = 999
					textButton.Size = UDim2.new(0.08852, 0, 0.18671, 0)
					textButton.Text = "fake block"
					textButton.Position = UDim2.new(0.07081, 0, 0.06023, 0)
					Instance.new("UICorner", textButton)
					Instance.new("UIAspectRatioConstraint", textButton).AspectRatio = 1.12903
					local flag14 = false
					local v41 = nil
					local position = nil
					local position2 = nil

					textButton.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							flag14 = true
							position = input.Position
							position2 = textButton.Position

							input.Changed:Connect(function()
								if input.UserInputState == Enum.UserInputState.End then
									flag14 = false
								end
							end)
						end
					end)

					textButton.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							v41 = input
						end
					end)

					game:GetService("UserInputService").InputChanged:Connect(function(input)
						if input == v41 and flag14 then
							local n24 = input.Position - position
							textButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n24.X, position2.Y.Scale, position2.Y.Offset + n24.Y)
						end
					end)

					textButton.MouseButton1Click:Connect(function()
						local animation = Instance.new("Animation")
						animation.AnimationId = "rbxassetid://" .. tostring(getgenv().currentAnimation)
						local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

						if humanoid then
							humanoid:LoadAnimation(animation):Play()
						end
					end)
				end
			elseif getgenv().screenGui then
				getgenv().screenGui:Destroy()
				getgenv().screenGui = nil
			end
		end,
	})

	local color4 = Color3.fromRGB

	v27:Paragraph({
		Title = fn22("Dussker", Color3.fromRGB(173, 216, 230), color4(0, 0, 139)),
		Desc = "Pumpkin..",
	})

	local tbl11 = {
		["rbxassetid://121353303159875"] = true,
		["rbxassetid://107120030929069"] = true,
		["rbxassetid://118933622288262"] = true,
		["rbxassetid://77894750279891"] = true,
	}

	local flag14 = false
	local v41 = nil

	local function fn23()
		local character = game:GetService("Players").LocalPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		humanoid = humanoid and humanoid:FindFirstChildOfClass("Animator")

		if humanoid then
			for _, v42 in ipairs(humanoid:GetPlayingAnimationTracks()) do
				if v42.Animation and tbl11[v42.Animation.AnimationId] then
					if v42.TimePosition <= 1.7 then
						return true
					end
				end
			end
		end

		return false
	end

	v27:Toggle({
		Title = "Dussker Silent aim",
		Value = false,
		Callback = function(arg)
			flag14 = arg

			if arg and not v41 then
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local localPlayer3 = game:GetService("Players").LocalPlayer
				local n24 = 0.5

				v41 = hookfunction(getcallbackvalue(ReplicatedStorage.Modules.Network.Network.RemoteFunction, "OnClientInvoke"), function(...)
					local v42 = table.pack(...)

					if ({ ... })[1] == "GetMousePosition" and flag14 then
						if fn23() then
							local players = workspace:FindFirstChild("Players")
							players = players and players:FindFirstChild("Killers")
							local humanoidRootPart = localPlayer3.Character and localPlayer3.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart and players then
								local huge = math.huge
								local v43 = nil

								for _, child in ipairs(players:GetChildren()) do
									local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
									local humanoid = child:FindFirstChildOfClass("Humanoid")

									if humanoidRootPart2 and humanoid and humanoid.Health > 0 then
										local magnitude = (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude

										if magnitude <= huge then
											huge = magnitude
											v43 = child
										end
									end
								end

								if v43 then
									local humanoid = v43.Humanoid
									local position = v43.HumanoidRootPart.Position

									if humanoid and humanoid.MoveDirection.Magnitude > 0.05 then
										position += humanoid.MoveDirection * n24
									end

									return position
								end
							end
						end
					end

					return v41(table.unpack(v42, 1, v42.n))
				end)
			end
		end,
	})

	local color5 = Color3.fromRGB

	v27:Paragraph({
		Title = fn22("Two Time", Color3.fromRGB(128, 128, 128), color5(0, 0, 0)),
		Desc = "Two time Is Femboy ?",
	})
end

do
	local Players = game:GetService("Players")
	local RunService2 = game:GetService("RunService")
	local localPlayer3 = Players.LocalPlayer
	local str5 = "100725497418533"
	local flag10 = false
	local n24 = 0.05
	local n25 = 0.5
	local n26 = 4
	local n27 = 10

	v27:Toggle({
		Title = "Two Time Backstab",
		Desc = "It slides hitbox to the killer or Tp ur Server position yes. thanks to leaves.",
		Value = false,
		Callback = function(arg)
			flag10 = arg
		end,
	})

	v27:Input({
		Title = "Range to Tp Hitbox",
		Value = "10",
		Callback = function(arg)
			local num = tonumber(arg)

			if num then
				n27 = num
			end
		end,
	})

	v27:Input({
		Title = "delay before starting",
		Value = tostring(n24),
		Callback = function(arg)
			local num = tonumber(arg)

			if num then
				n24 = num
			end
		end,
	})

	v27:Input({
		Title = "Duration to stay behind",
		Value = tostring(n25),
		Callback = function(arg)
			local num = tonumber(arg)

			if num then
				n25 = num
			end
		end,
	})

	v27:Input({
		Title = "Behind to go",
		Desc = "Basically how much behind to go to killer",
		Value = tostring(n26),
		Callback = function(arg)
			local num = tonumber(arg)

			if num then
				n26 = num
			end
		end,
	})

	local function fn22()
		return localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
	end

	local function fn23()
		local players = workspace:FindFirstChild("Players")
		if not players then
			return nil
		end
		return players:FindFirstChild("Killers")
	end

	local function fn24()
		local v40 = fn23()
		if not v40 then
			return nil
		end

		for _, descendant in ipairs(v40:GetDescendants()) do
			if descendant:IsA("Model") then
				local humanoid = descendant:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = descendant:FindFirstChild("HumanoidRootPart")
				if humanoid and humanoidRootPart and humanoid.Health > 0 then
					return descendant
				end
			end
		end

		return nil
	end

	local function fn25()
		local humanoidRootPart = fn22():FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then
			return false, nil
		end
		local v40 = fn24()
		if not v40 then
			return false, nil
		end
		local humanoidRootPart2 = v40:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart2 then
			return false, nil
		end
		return (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= n27, v40
	end

	local flag11 = false

	local function fn26()
		if not flag10 or flag11 then
			return
		end
		local v40, v41 = fn25()
		if not v40 or not v41 then
			return
		end
		flag11 = true
		local v42 = fn22()
		local humanoidRootPart = v42:WaitForChild("HumanoidRootPart")
		task.wait(n24)
		if not v42.Parent then
			flag11 = false
			return
		end
		local part2 = Instance.new("Part")
		part2.Name = "place"
		part2.Size = Vector3.new(2, 2, 2)
		part2.Transparency = 1
		part2.CanCollide = false
		part2.Anchored = true
		part2.Parent = v42
		local primaryPart = v42.PrimaryPart
		v42.PrimaryPart = part2
		local now2 = os.clock()

		while os.clock() - now2 < n25 do
			if not (not v42.Parent or not part2.Parent or not flag10) then
				local v43 = fn24()

				if v43 then
					local humanoidRootPart2 = v43:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart2 then
						part2.CFrame = humanoidRootPart2.CFrame * CFrame.new(0, 0, n26)
						humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
					end
				end

				RunService2.PreRender:Wait()
				continue
			end

			break
		end

		if part2 and part2.Parent then
			part2:Destroy()
		end

		if v42 and v42.Parent then
			v42.PrimaryPart = primaryPart
		end

		flag11 = false
	end

	local function fn27(character)
		character:WaitForChild("Humanoid"):WaitForChild("Animator").AnimationPlayed:Connect(function(arg)
			if not arg or not arg.Animation then
				return
			end

			if tostring(arg.Animation.AnimationId or ""):gsub("%D", "") == str5 and flag10 then
				task.spawn(fn26)
			end
		end)
	end

	if localPlayer3.Character then
		fn27(localPlayer3.Character)
	end

	localPlayer3.CharacterAdded:Connect(fn27)
end

local value = "Console"

v28:Toggle({
	Title = "device spoofer",
	Value = false,
	Callback = function(arg)
		if not arg then
			return
		end

		pcall(function()
			local UserInputService = game:GetService("UserInputService")
			local Network = require(game:GetService("ReplicatedStorage").Modules.Network.Network)
			local tbl11 = { Changed = Instance.new("BindableEvent").Event, Value = value }
			local flag10 = true

			local function fn22()
				if not flag10 then
					return
				end
				tbl11.Value = value

				pcall(function()
					Network:FireServerConnection("SetDevice", "REMOTE_EVENT", value)
				end)
			end

			fn22()

			UserInputService.LastInputTypeChanged:Connect(function()
				pcall(fn22)
			end)

			task.spawn(function()
				while flag10 do
					pcall(fn22)
					task.wait(1)
				end
			end)
		end)
	end,
})

v28:Dropdown({
	Title = "Select Device",
	Values = { "Mobile", "Console", "PC" },
	Value = "Console",
	Callback = function(arg)
		value = arg
	end,
})

local v40 = nil

v24:Toggle({
	Title = "Inf Bloxy Cola",
	Desc = "Read the tutorial 👇🏻",
	Value = false,
	Callback = function(arg)
		if arg then
			getgenv().infBloxySettings = getgenv().infBloxySettings or { cooldownDuration = 3 }

			local function fn22()
				local Players = game:GetService("Players")
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local RunService2 = game:GetService("RunService")
				local localPlayer3 = Players.LocalPlayer
				local str5 = "rbxassetid://102123566838185"
				local statuses = game:GetService("ReplicatedStorage").Modules.Gameplay.Statuses
				local statusContainer = statuses.StatusContainer
				local statusDisplay = statuses.StatusDisplay
				local speed = ReplicatedStorage.Modules.Schematics.StatusEffects:FindFirstChild("Speed")
				local humanoid = nil
				local v41 = nil
				local connection = nil
				local connection2 = nil
				local flag10 = false
				local flag11 = false
				local v42 = nil
				local v43 = nil
				local connection3 = nil
				local now2 = nil
				local flag12 = false
				local fieldOfView = nil
				local currentCamera2 = workspace.CurrentCamera
				local tbl11 = nil
				local v44 = nil
				local flag13 = false

				local function fn23()
					if flag13 then
						return
					end
					flag13 = true

					v44 = hookmetamethod(game, "__newindex", function(arg2, arg3, arg4)
						return v44(arg2, arg3, arg4)
					end)
				end

				local function fn24()
					if v44 then
						hookmetamethod(game, "__newindex", v44)
						v44 = nil
						flag13 = false
					end
				end

				local function fn25(arg2)
					local n24 = math.floor(arg2 / 60)
					local n25 = math.floor(arg2 % 60)
					return string.format("%02d:%02d", n24, n25)
				end

				local function fn26()
					if currentCamera2 and not fieldOfView then
						fieldOfView = currentCamera2.FieldOfView
					end
				end

				local function fn27()
					if currentCamera2 and fieldOfView then
						if currentCamera2.FieldOfView ~= fieldOfView then
							currentCamera2.FieldOfView = fieldOfView
						end
					end
				end

				local function fn28(arg2)
					if not speed then
						return
					end
					local ok, result = pcall(require, speed)
					if not ok or not result then
						return
					end

					if tbl11 then
						pcall(function()
							result.Removed(tbl11)
						end)
					end

					tbl11 = { Player = localPlayer3, Level = arg2, Data = result.Data }

					pcall(function()
						result.Applied(tbl11)
					end)
				end

				local function fn29()
					if not speed then
						return
					end
					local ok, result = pcall(require, speed)
					if not ok or not result then
						return
					end

					if tbl11 then
						pcall(function()
							result.Removed(tbl11)
						end)

						tbl11 = nil
					end

					if fieldOfView and currentCamera2 then
						task.delay(1, function()
							if currentCamera2 then
								currentCamera2.FieldOfView = fieldOfView
							end
						end)
					end
				end

				local function fn30()
					if connection3 then
						connection3:Disconnect()
						connection3 = nil
					end

					if v43 and v43.Parent then
						v43:Destroy()
					end

					v43 = nil
					flag10 = false
					flag11 = false
					v42 = nil
					flag12 = false
					fn24()
				end

				local function fn31()
					local bloxyCola = localPlayer3.PlayerGui.MainUI.Backpack:FindFirstChild("BloxyCola")

					if bloxyCola then
						local v45 = getconnections(bloxyCola.MouseButton1Click)

						if v45 and v45[1] and typeof(v45[1].Function) == "function" then
							pcall(v45[1].Function)
						end
					end
				end

				local function fn32(name, arg2)
					local statusContainer2 = localPlayer3.PlayerGui.MainUI:FindFirstChild("StatusContainer") or statusContainer:Clone()
					statusContainer2.Parent = localPlayer3.PlayerGui.MainUI
					local v45 = statusContainer2:FindFirstChild(name)

					if v45 then
						v45:Destroy()
					end

					local clone = statusDisplay:Clone()
					clone.Name = name
					clone.Title.Text = name
					clone.Timer.Text = fn25(arg2)
					clone.Visible = true
					clone.Parent = statusContainer2
					local n24 = tick() + arg2
					local connection4 = nil

					connection4 = RunService2.Heartbeat:Connect(function()
						if not clone or not clone.Parent then
							connection4:Disconnect()
							return
						end
						local n25 = math.max(0, n24 - tick())
						clone.Timer.Text = fn25(n25)

						if n25 <= 0 then
							clone:Destroy()
							connection4:Disconnect()
						end
					end)

					return clone
				end

				local function fn33()
					if connection3 then
						connection3:Disconnect()
						connection3 = nil
					end

					local n24 = 10
					now2 = tick()
					flag12 = false
					fn26()
					fn23()
					local statusContainer2 = localPlayer3.PlayerGui.MainUI:FindFirstChild("StatusContainer") or statusContainer:Clone()
					statusContainer2.Parent = localPlayer3.PlayerGui.MainUI
					local speed2 = statusContainer2:FindFirstChild("Speed")

					if speed2 then
						speed2:Destroy()
					end

					local clone = statusDisplay:Clone()
					clone.Name = "Speed"
					clone.Title.Text = "Speed II"
					clone.Timer.Text = fn25(10)
					clone.Visible = true
					clone.Parent = statusContainer2
					v43 = clone
					fn28(2)
					local n25 = 2

					connection3 = RunService2.Heartbeat:Connect(function()
						local n26 = tick() - now2
						local n27 = math.max(0, n24 - n26)

						if v43 and v43.Parent then
							v43.Timer.Text = fn25(n27)
						end

						fn27()
						if n27 <= 0 then
							fn30()
							return
						end

						if n26 < 5 then
							if n25 ~= 2 then
								fn28(2)
								n25 = 2
							end
						elseif n26 < 6.5 then
							if n25 ~= 1 then
								fn28(1)
								n25 = 1
							end
						elseif n26 < 9 then
							if n25 ~= 2 then
								fn28(2)
								n25 = 2
							end
						elseif not flag12 then
							flag12 = true
							n25 = nil
							fn29()
						end
					end)
				end

				local function fn34()
					if not humanoid then
						return
					end

					for _, v45 in pairs(humanoid:GetPlayingAnimationTracks()) do
						if v45.Animation and v45.Animation.AnimationId == str5 then
							if v45 == v42 then
								return
							end
							v42 = v45
							local v46 = flag10
							local v47

							if flag10 then
								v47 = v46
							else
								v47 = flag11
							end

							if v47 then
								fn32("Dude DON'T do this..", 1)

								task.delay(1, function()
									fn32("People may notice u ðŸ˜¡ Follow the tutorial", 3)
									fn31()
								end)

								return
							end

							flag11 = true
							local v48 = fn32("Wait!", 3.4)
							local connection4 = nil

							connection4 = v45.Stopped:Connect(function()
								if v48 then
									v48:Destroy()
								end

								fn30()

								if connection4 then
									connection4:Disconnect()
								end
							end)

							task.delay(3.4, function()
								if not v45.IsPlaying then
									if v48 then
										v48:Destroy()
									end

									fn30()

									if connection4 then
										connection4:Disconnect()
									end

									return
								end

								if v48 then
									v48:Destroy()
								end

								if connection4 then
									connection4:Disconnect()
								end

								fn31()
								flag11 = false
								flag10 = true
								fn33()
							end)
						end
					end
				end

				local function fn35()
					if connection2 then
						connection2:Disconnect()
					end

					connection2 = RunService2.Heartbeat:Connect(function()
						if flag10 then
							fn27()
						end
					end)
				end

				local function fn36()
					if connection then
						connection:Disconnect()
						connection = nil
					end

					pcall(fn34)
					fn35()

					task.delay(1.5, function()
						if connection then
							return
						end

						connection = RunService2.Heartbeat:Connect(function()
							if humanoid and humanoid.Parent then
								fn34()
							else
								fn30()
							end
						end)
					end)
				end

				local function fn37(character)
					humanoid = character:WaitForChild("Humanoid")
					fn30()
					fn36()
				end

				if localPlayer3.Character then
					fn37(localPlayer3.Character)
				end

				if v41 then
					v41:Disconnect()
				end

				local connection4 = localPlayer3.CharacterAdded:Connect(fn37)

				return { Disconnect = function()
					if connection then
						connection:Disconnect()
						connection = nil
					end

					if connection4 then
						connection4:Disconnect()
						connection4 = nil
					end

					if connection2 then
						connection2:Disconnect()
						connection2 = nil
					end

					fn29()
					fn30()
				end }
			end

			v40 = fn22(getgenv().infBloxySettings)
		elseif v40 then
			pcall(function()
				v40:Disconnect()
			end)

			v40 = nil
		end
	end,
})

v24:Paragraph({
	Title = " Tutorial (Important) ",
	Desc = [[1) First Turn ON Inf Bloxy Cola
2) Find a Bloxy Cola in the Map (Use Esp item to find it)
3) Drink it and it will be inf bloxy cola]],
})

do
	local function fn22()
		local Players = game:GetService("Players")
		local RunService2 = game:GetService("RunService")
		local localPlayer3 = Players.LocalPlayer
		Random.new()
		local character = localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
		local humanoid = character:WaitForChild("Humanoid")
		local animator = humanoid:WaitForChild("Animator")
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		localPlayer3.CharacterAdded:Connect(function(character2)
			character = character2
			humanoid = character2:WaitForChild("Humanoid")
			animator = humanoid:WaitForChild("Animator")
			humanoidRootPart = character2:WaitForChild("HumanoidRootPart")
		end)

		local tbl11 = {
			"rbxassetid://131430497821198",
			"rbxassetid://83829782357897",
			"rbxassetid://126830014841198",
			"rbxassetid://126355327951215",
			"rbxassetid://121086746534252",
			"rbxassetid://105458270463374",
			"rbxassetid://127172483138092",
			"rbxassetid://18885919947",
			"rbxassetid://18885909645",
			"rbxassetid://87259391926321",
			"rbxassetid://106014898528300",
			"rbxassetid://86545133269813",
			"rbxassetid://89448354637442",
			"rbxassetid://90499469533503",
			"rbxassetid://116618003477002",
			"rbxassetid://106086955212611",
			"rbxassetid://107640065977686",
			"rbxassetid://77124578197357",
			"rbxassetid://101771617803133",
			"rbxassetid://134958187822107",
			"rbxassetid://111313169447787",
			"rbxassetid://71685573690338",
			"rbxassetid://129843313690921",
			"rbxassetid://97623143664485",
			"rbxassetid://136007065400978",
			"rbxassetid://86096387000557",
			"rbxassetid://108807732150251",
			"rbxassetid://138040001965654",
			"rbxassetid://73502073176819",
			"rbxassetid://86709774283672",
			"rbxassetid://140703210927645",
			"rbxassetid://96173857867228",
			"rbxassetid://121255898612475",
			"rbxassetid://98031287364865",
			"rbxassetid://119462383658044",
			"rbxassetid://77448521277146",
			"rbxassetid://103741352379819",
			"rbxassetid://131696603025265",
			"rbxassetid://122503338277352",
			"rbxassetid://122709416391891",
			"rbxassetid://93069721274110",
			"rbxassetid://81299297965542",
			"rbxassetid://131543461321709",
			"rbxassetid://84069821282466",
			"rbxassetid://70371667919898",
			"rbxassetid://137679730950847",
			"rbxassetid://121080480916189",
			"rbxassetid://118298475669935",
			"rbxassetid://82113744478546",
			"rbxassetid://74707328554358",
			"rbxassetid://133336594357903",
			"rbxassetid://86204001129974",
			"rbxassetid://109667959938617",
			"rbxassetid://126681776859538",
			"rbxassetid://129976080405072",
			"rbxassetid://120112897026015",
			"rbxassetid://81639435858902",
			"rbxassetid://137314737492715",
			"rbxassetid://125403313786645",
			"rbxassetid://106847695270773",
			"rbxassetid://106538427162796",
			"rbxassetid://126896426760253",
			"rbxassetid://88970503168421",
			"rbxassetid://138938529389204",
			"rbxassetid://106860049270347",
			"rbxassetid://130958529065375",
			"rbxassetid://94958041603347",
			"rbxassetid://108196996477620",
			"rbxassetid://129921445546291",
			"rbxassetid://124269076578545",
			"rbxassetid://121293883585738",
			"rbxassetid://126171487400618",
			"rbxassetid://90620531468240",
			"rbxassetid://114506382930939",
			"rbxassetid://99829427721752",
			"rbxassetid://70948173568515",
			"rbxassetid://124705663396411",
			"rbxassetid://127245564598429",
			"rbxassetid://108773914369470",
			"rbxassetid://110400453990786",
			"rbxassetid://105614318732282",
			"rbxassetid://127821549546951",
			"rbxassetid://79331370895011",
			"rbxassetid://81227838714974",
			"rbxassetid://111918351126361",
			"rbxassetid://81905101227053",
			"rbxassetid://113936304594883",
			"rbxassetid://119850211147676",
			"rbxassetid://111270184603402",
			"rbxassetid://99422325754526",
			"rbxassetid://82137285150006",
			"rbxassetid://78440860685556",
			"rbxassetid://133475256598240",
		}

		local function fn23(arg, arg2)
			local now2 = tick()

			while true do
				task.wait()
				local character2 = localPlayer3.Character

				if character2 and character2:FindFirstChild("HumanoidRootPart") then
					local humanoidRootPart2 = character2.HumanoidRootPart
					local velocity = humanoidRootPart2.Velocity
					humanoidRootPart2.Velocity = velocity * 0.2 + humanoidRootPart2.CFrame.LookVector * arg * 12
					RunService2.RenderStepped:Wait()
					humanoidRootPart2.Velocity = velocity
				end

				if not (tick() - now2 > arg2) then
					continue
				end
				break
			end
		end

		local flag10 = false
		local n24 = 15
		local connection = nil

		local function fn24()
			if connection then
				connection:Disconnect()
			end

			connection = RunService2.Heartbeat:Connect(function()
				if not flag10 or not humanoidRootPart then
					return
				end
				local flag11 = false

				for _, v41 in ipairs(humanoid:GetPlayingAnimationTracks()) do
					if table.find(tbl11, v41.Animation.AnimationId) and v41.TimePosition / v41.Length < 0.75 then
						flag11 = true
						break
					end
				end

				if not flag11 then
					return
				end
				local v41 = n24
				local n25

				if n24 then
					n25 = v41
				else
					n25 = 15
				end

				task.spawn(function()
					fn23(n25, 0.12)
				end)
			end)
		end

		local function fn25()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end

		return {
			Toggle = function(arg)
				flag10 = arg

				if arg then
					fn24()
				else
					fn25()
				end
			end,
			SetReach = function(arg)
				local num = tonumber(arg)

				if num and num >= 1 and num <= 45 then
					n24 = num
				end
			end,
		}
	end

	local v41 = fn22()
	v24:Paragraph({ Title = "°", Desc = "HITBOX EXPENDER" })

	v24:Toggle({
		Title = "Hitbox expender (beta)",
		Value = false,
		Callback = function(arg)
			v41.Toggle(arg)
		end,
	})

	v24:Input({
		Title = "Distance/Reach (max : 1 - 45)",
		Value = 15,
		Callback = function(arg)
			v41.SetReach(arg)
		end,
	})
end

v24:Paragraph({ Title = "helper guy yez", Desc = "use maybe 2-3 if u want be not get caught by others ppl" })

do
	local function fn22(arg, arg2, arg3)
		local str5 = ""

		for i = 1, #arg do
			local n24 = (i - 1) / (#arg - 1)
			str5 ..= string.format("<font color=\"#%02X%02X%02X\">%s</font>", math.floor((arg2.R + (arg3.R - arg2.R) * n24) * 255), math.floor((arg2.G + (arg3.G - arg2.G) * n24) * 255), math.floor((arg2.B + (arg3.B - arg2.B) * n24) * 255), arg:sub(i, i))
		end

		return str5
	end

	task.spawn(function()
		local color = Color3.fromRGB
		v26:Paragraph({ Title = "°", Desc = fn22("Killer Aimbots", Color3.fromRGB(171, 0, 0), color(33, 33, 33)) })

		v26:Toggle({
			Title = "Killers Aimbot",
			Value = false,
			Callback = function(enabled)
				if aimbotGUI then
					aimbotGUI.Enabled = enabled

					if not enabled then
						if aimbotEnabled then
							toggleAimbot()
						end
					end
				end
			end,
		})

		v26:Paragraph({
			Title = "How To Use ???",
			Desc = "First Turn on The aimbot than Look at the surviver u wanna lock on Than click the Aimbot or press V key to lock it",
		})

		local Players = game:GetService("Players")
		local RunService2 = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local currentCamera2 = workspace.CurrentCamera
		local localPlayer3 = Players.LocalPlayer
		local flag10 = false
		local connection = nil
		local flag11 = false
		local v41 = nil
		local character = nil
		local humanoid = nil
		local humanoidRootPart = nil
		local screenGui = nil
		local screenGui2 = nil
		local textButton = nil
		local textLabel = nil
		local frame2 = nil
		local flag12 = true
		local connection2 = nil
		local thread = nil
		local tbl11 = { MAX_DIST_FROM_CROSSHAIR = 350 }

		local function fn23()
			character = localPlayer3.Character

			if character then
				humanoid = character:FindFirstChildOfClass("Humanoid")
				humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
			end
		end

		local function fn24()
			if flag10 then
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			else
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			end
		end

		local function fn25(arg)
			flag10 = arg

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if flag10 then
				fn24()

				connection = RunService2.RenderStepped:Connect(function()
					fn23()

					if character and humanoid and humanoidRootPart and humanoidRootPart.Parent then
						humanoid.AutoRotate = false

						if not humanoid.Sit and not humanoidRootPart.Anchored then
							local v42, v43 = currentCamera2.CFrame:ToOrientation()
							humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) * CFrame.Angles(0, v43, 0)
						end
					end
				end)
			else
				fn24()
				fn23()

				if humanoid and humanoid.Parent then
					humanoid.AutoRotate = true
				end
			end
		end

		local function fn26()
			local players = workspace:FindFirstChild("Players")
			return players and players:FindFirstChild("Survivors")
		end

		local function fn27()
			local v42 = fn26()
			if not v42 then
				return nil
			end
			local vector2 = Vector2.new(currentCamera2.ViewportSize.X / 2, currentCamera2.ViewportSize.Y / 2)
			local huge = math.huge
			local v43 = nil

			for _, child in ipairs(v42:GetChildren()) do
				if child:IsA("Model") then
					local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
					local humanoid2 = child:FindFirstChildOfClass("Humanoid")

					if Players:GetPlayerFromCharacter(child) ~= localPlayer3 and humanoidRootPart2 and humanoid2 and humanoid2.Health > 0 then
						local v44, v45 = currentCamera2:WorldToViewportPoint(humanoidRootPart2.Position)

						if v45 then
							local magnitude = (vector2 - Vector2.new(v44.X, v44.Y)).Magnitude

							if magnitude < huge and magnitude <= tbl11.MAX_DIST_FROM_CROSSHAIR then
								huge = magnitude
								v43 = child
							end
						end
					end
				end
			end

			return v43
		end

		local function fn28()
			if not flag11 or not v41 then
				return
			end
			local v42 = v41

			if not v42 or not v42.Parent then
				v41 = nil

				if textLabel then
					textLabel.Text = "Aimbot : No target :("
				end

				if flag10 then
					fn25(false)
				end

				return
			end

			local humanoid2 = v42:FindFirstChildOfClass("Humanoid")

			if humanoid2 and humanoid2.Health <= 0 then
				v41 = nil

				if textLabel then
					textLabel.Text = "Aimbot : No target :("
				end

				if flag10 then
					fn25(false)
				end

				return
			end

			local humanoidRootPart2 = v42:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart2 then
				currentCamera2.CFrame = currentCamera2.CFrame:Lerp(CFrame.lookAt(currentCamera2.CFrame.Position, humanoidRootPart2.Position), 0.65)

				if textLabel then
					textLabel.Text = "Aimbot : On - Locked"
				end
			else
				v41 = nil

				if textLabel then
					textLabel.Text = "Aimbot : No target :("
				end

				if flag10 then
					fn25(false)
				end
			end
		end

		local function fn29()
			if flag11 then
				if v41 and v41.Parent and v41:FindFirstChild("HumanoidRootPart") then
					local humanoid2 = v41:FindFirstChildOfClass("Humanoid")
					if humanoid2 and humanoid2.Health > 0 then
						return
					end
				end

				local v42 = fn27()

				if v42 then
					v41 = v42

					if textLabel then
						textLabel.Text = "Aimbot : On - Locked"
					end

					if not flag10 then
						fn25(true)
					end
				else
					v41 = nil

					if textLabel then
						textLabel.Text = "Aimbot : No target :("
					end

					if flag10 then
						fn25(false)
					end
				end
			end
		end

		local function fn30()
			if not flag12 then
				return
			end
			flag11 = not flag11

			if flag11 then
				v41 = fn27()

				if textLabel then
					textLabel.Text = v41 and "Aimbot : On - Locked" or "Aimbot : No target :("
				end

				fn25(v41 ~= nil)

				if frame2 then
					frame2.Visible = true
				end

				RunService2:UnbindFromRenderStep("KillerAimbotLock")
				RunService2:BindToRenderStep("KillerAimbotLock", Enum.RenderPriority.Camera.Value + 100, fn28)

				if thread then
					task.cancel(thread)
				end

				thread = task.spawn(function()
					while flag11 do
						task.wait(0.1)

						if flag11 then
							fn29()
						end
					end
				end)
			else
				if textLabel then
					textLabel.Text = "Aimbot : Off"
				end

				v41 = nil
				fn25(false)

				if frame2 then
					frame2.Visible = false
				end

				RunService2:UnbindFromRenderStep("KillerAimbotLock")

				if thread then
					task.cancel(thread)
					thread = nil
				end
			end
		end

		local function fn31()
			screenGui2 = Instance.new("ScreenGui")
			screenGui2.Name = "KillerAimbotCrosshair"
			screenGui2.ResetOnSpawn = false
			screenGui2.IgnoreGuiInset = true
			screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			screenGui2.Parent = localPlayer3:WaitForChild("PlayerGui")
			frame2 = Instance.new("Frame")
			frame2.Name = "Crosshair"
			frame2.Size = UDim2.new(0, 6, 0, 6)
			frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
			frame2.AnchorPoint = Vector2.new(0.5, 0.5)
			frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame2.BackgroundTransparency = 0
			frame2.BorderSizePixel = 0
			frame2.Visible = false
			frame2.ZIndex = 60
			frame2.Parent = screenGui2
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(1, 0)
			uiCorner.Parent = frame2
			screenGui = Instance.new("ScreenGui")
			screenGui.Parent = localPlayer3:WaitForChild("PlayerGui")
			screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			screenGui.ResetOnSpawn = false
			screenGui.DisplayOrder = 50
			screenGui.Enabled = false
			textButton = Instance.new("TextButton")
			textButton.Parent = screenGui
			textButton.BorderSizePixel = 0
			textButton.TextSize = 14
			textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			textButton.Font = Enum.Font.SourceSansBold
			textButton.Size = UDim2.new(0.21705, 0, 0.15205, 0)
			textButton.Text = ""
			textButton.Name = "MAIN"
			textButton.Position = UDim2.new(0.312, 0, 0.25731, 0)
			textButton.ZIndex = 1000
			Instance.new("UICorner", textButton)
			local uiGradient = Instance.new("UIGradient", textButton)
			local colorSequence = ColorSequence.new
			local tbl12 = {}
			local v42 = ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33))
			local v43 = ColorSequenceKeypoint.new(0.793, Color3.fromRGB(171, 0, 0))
			local new = ColorSequenceKeypoint.new
			local color2 = Color3.fromRGB
			tbl12[1] = v42
			tbl12[2] = v43

			do
				local values = table.pack(new(1, color2(171, 0, 0)))
				table.move(values, 1, values.n, 3, tbl12)
			end

			uiGradient.Color = colorSequence(tbl12)
			local frame3 = Instance.new("Frame", textButton)
			frame3.BorderSizePixel = 0
			frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame3.Size = UDim2.new(1, 0, 0.46154, 0)
			frame3.Position = UDim2.new(0, 0, -0.5, 0)
			frame3.Name = "title"
			Instance.new("UICorner", frame3)
			local textLabel2 = Instance.new("TextLabel", frame3)
			textLabel2.BorderSizePixel = 0
			textLabel2.TextSize = 14
			textLabel2.BackgroundTransparency = 1
			textLabel2.Text = "Killers Aimbot"
			textLabel2.Font = Enum.Font.SourceSansBold
			textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel2.Size = UDim2.new(1, 0, 1.4, 0)
			textLabel2.Position = UDim2.new(0, 0, -0.3, 0)
			local uiGradient2 = Instance.new("UIGradient", frame3)
			local colorSequence2 = ColorSequence.new
			local tbl13 = {}
			local v44 = ColorSequenceKeypoint.new(0, Color3.fromRGB(57, 6, 6))
			local v45 = ColorSequenceKeypoint.new(0.288, Color3.fromRGB(94, 11, 11))
			local new2 = ColorSequenceKeypoint.new
			local color3 = Color3.fromRGB
			tbl13[1] = v44
			tbl13[2] = v45

			do
				local values = table.pack(new2(1, color3(206, 22, 22)))
				table.move(values, 1, values.n, 3, tbl13)
			end

			uiGradient2.Color = colorSequence2(tbl13)
			textLabel = Instance.new("TextLabel", textButton)
			textLabel.BorderSizePixel = 0
			textLabel.TextSize = 16
			textLabel.BackgroundTransparency = 1
			textLabel.Font = Enum.Font.SourceSansBold
			textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel.Size = UDim2.new(0.35227, 0, 0.30769, 0)
			textLabel.Text = "Aimbot : Off"
			textLabel.Name = "aimTEXT"
			textLabel.Position = UDim2.new(0.32955, 0, 0.30769, 0)
			Instance.new("UIAspectRatioConstraint", textButton).AspectRatio = 3.38462
			local flag13 = nil
			local v46 = nil
			local position = nil
			local position2 = nil

			textButton.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					flag13 = true
					position = input.Position
					position2 = textButton.Position

					input.Changed:Connect(function(arg)
						if arg.UserInputState == Enum.UserInputState.End then
							flag13 = false
						end
					end)
				end
			end)

			textButton.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					v46 = input
				end
			end)

			UserInputService.InputChanged:Connect(function(input)
				if input == v46 and flag13 then
					local n24 = input.Position - position
					textButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n24.X, position2.Y.Scale, position2.Y.Offset + n24.Y)
				end
			end)

			textButton.MouseButton1Click:Connect(fn30)

			task.spawn(function()
				while task.wait(1) do
					if textButton and textButton.Parent then
						local random = math.random

						local tbl14 = {
							BackgroundColor3 = Color3.fromRGB(math.random(80, 255), math.random(80, 255), random(80, 255)),
						}

						TweenService:Create(textButton, TweenInfo.new(1, Enum.EasingStyle.Linear), tbl14):Play()
					end
				end
			end)
		end

		local function fn32()
			if connection2 then
				connection2:Disconnect()
			end

			connection2 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				if input.KeyCode == Enum.KeyCode.V and flag12 then
					fn30()
				end
			end)
		end

		local function fn33()
			if screenGui then
				screenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
					flag12 = screenGui.Enabled

					if not flag12 and flag11 then
						fn30()
					end
				end)
			end
		end

		localPlayer3.CharacterAdded:Connect(function()
			fn23()
			task.wait(0.6)

			if flag11 then
				v41 = fn27()

				if textLabel then
					textLabel.Text = v41 and "Aimbot : On - Locked" or "Aimbot : No target :("
				end

				fn25(v41 ~= nil)

				if frame2 then
					frame2.Visible = true
				end
			else
				fn25(false)

				if frame2 then
					frame2.Visible = false
				end
			end
		end)

		fn23()
		fn31()
		fn32()
		fn33()
		aimbotGUI = screenGui
	end)

	local flag10 = false
	local n24 = 1.5

	local function fn23()
		local Players = game:GetService("Players")
		local RunService2 = game:GetService("RunService")
		local localPlayer3 = Players.LocalPlayer

		local tbl11 = {
			["rbxassetid://118298475669935"] = true,
			["rbxassetid://74707328554358"] = true,
			["rbxassetid://109667959938617"] = true,
			["rbxassetid://120112897026015"] = true,
			["rbxassetid://125403313786645"] = true,
			["rbxassetid://105458270463374"] = true,
			["rbxassetid://93069721274110"] = true,
			["rbxassetid://81299297965542"] = true,
			["rbxassetid://88970503168421"] = true,
			["rbxassetid://138938529389204"] = true,
			["rbxassetid://106860049270347"] = true,
			["rbxassetid://130958529065375"] = true,
			["rbxassetid://94958041603347"] = true,
			["rbxassetid://124269076578545"] = true,
			["rbxassetid://121293883585738"] = true,
			["rbxassetid://83829782357897"] = true,
			["rbxassetid://126171487400618"] = true,
			["rbxassetid://90620531468240"] = true,
			["rbxassetid://114506382930939"] = true,
			["rbxassetid://99829427721752"] = true,
			["rbxassetid://70948173568515"] = true,
			["rbxassetid://124705663396411"] = true,
			["rbxassetid://126830014841198"] = true,
			["rbxassetid://129260077168659"] = true,
			["rbxassetid://80208162053146"] = true,
			["rbxassetid://135853087227453"] = true,
			["rbxassetid://116618003477002"] = true,
			["rbxassetid://122709416391891"] = true,
			["rbxassetid://87989533095285"] = true,
			["rbxassetid://88451353906104"] = true,
			["rbxassetid://18885909645"] = true,
			["rbxassetid://106538427162796"] = true,
		}

		local connection = nil
		local flag11 = false
		local v41 = nil
		local survivors = nil

		local function fn24()
			if survivors and survivors.Parent then
				return survivors
			end
			local players = workspace:FindFirstChild("Players")

			if players then
				survivors = players:FindFirstChild("Survivors") or players:FindFirstChild("survivors")
			end

			return survivors
		end

		local function fn25(arg)
			local v42 = fn24()
			if not v42 then
				return
			end
			local position = arg.Position
			local huge = math.huge
			local v43 = nil

			for _, child in ipairs(v42:GetChildren()) do
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

				if humanoidRootPart then
					local magnitude = (position - humanoidRootPart.Position).Magnitude

					if magnitude < huge then
						huge = magnitude
						v43 = humanoidRootPart
					end
				end
			end

			return v43
		end

		local function fn26(arg, arg2)
			flag11 = false
			v41 = nil

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if arg and arg.Parent then
				arg:SetAttribute("DisableShiftLockMovement", false)
			end

			if arg2 and arg2.Parent then
				arg2.AutoRotate = true
			end
		end

		local function fn27(character)
			local humanoid = character:WaitForChild("Humanoid", 5)
			local animator = humanoid and humanoid:WaitForChild("Animator", 5)
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
			if not (humanoid and animator and humanoidRootPart) then
				return
			end

			animator.AnimationPlayed:Connect(function(arg)
				if not flag10 then
					return
				end
				local animation = arg.Animation
				if not animation then
					return
				end
				local v42 = tbl11[animation.AnimationId]

				if flag11 then
					if arg ~= v41 then
						fn26(character, humanoid)
					end

					return
				end

				if not v42 then
					return
				end
				flag11 = true
				v41 = arg
				character:SetAttribute("DisableShiftLockMovement", true)
				humanoid.AutoRotate = false
				local now2 = tick()

				if connection then
					connection:Disconnect()
				end

				connection = RunService2.RenderStepped:Connect(function()
					if not flag10 or tick() - now2 >= n24 then
						fn26(character, humanoid)
						return
					end
					local v43 = fn25(humanoidRootPart)

					if v43 then
						local vector = Vector3.new(v43.Position.X, humanoidRootPart.Position.Y, v43.Position.Z)
						humanoidRootPart.CFrame = humanoidRootPart.CFrame:Lerp(CFrame.lookAt(humanoidRootPart.Position, vector), 0.45)
					end
				end)

				arg.Stopped:Connect(function()
					if v41 == arg then
						fn26(character, humanoid)
					end
				end)
			end)
		end

		if localPlayer3.Character then
			task.spawn(fn27, localPlayer3.Character)
		end

		localPlayer3.CharacterAdded:Connect(fn27)
	end

	fn23()

	v26:Toggle({
		Title = "M1 Aimbot",
		Value = false,
		Callback = function(arg)
			flag10 = arg
		end,
	})

	v26:Input({
		Title = "Duration Of Aimbot",
		Value = 1.5,
		Callback = function(arg)
			local num = tonumber(arg)

			if num then
				n24 = num
			end
		end,
	})

	local color = Color3.fromRGB

	v26:Paragraph({
		Title = fn22("Guest 666", Color3.fromRGB(255, 150, 150), color(180, 0, 0)),
		Desc = "Nah my dog don't bite",
	})

	v26:Toggle({
		Title = "Sixer Auto Bite",
		Value = false,
		Callback = function(sixerAutoBiteEnabled)
			getgenv().SixerAutoBiteEnabled = sixerAutoBiteEnabled

			if sixerAutoBiteEnabled and not getgenv().UnifiedNamecallHooked then
				getgenv().UnifiedNamecallHooked = true

				task.spawn(function()
					local Players = game:GetService("Players")
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local localPlayer3 = Players.LocalPlayer
					local unreliableRemoteEvent = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("UnreliableRemoteEvent")
					local remoteEvent2 = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")
					local v41 = nil

					local function fn24(arg, ...)
						local v42 = table.pack(...)
						local tbl11 = { ... }

						if getnamecallmethod() == "FireServer" then
							if getgenv().freeze and rawequal(arg, unreliableRemoteEvent) then
								return
							end

							if getgenv().SixerAutoBiteEnabled and rawequal(arg, remoteEvent2) then
								if tbl11[1] == localPlayer3.Name .. "666BiteCancel" then
									warn("[Security] Blocked remote fire for " .. localPlayer3.Name)
									return
								end
							end
						end

						return v41(arg, table.unpack(v42, 1, v42.n))
					end

					v41 = hookmetamethod
					v41 = v41(game, "__namecall", fn24)
				end)
			end
		end,
	})

	v26:Paragraph({
		Title = "Helper guy",
		Desc = "g666 has a second m1 use this and get 10 blood then use m1 it will bite",
	})

	local color2 = Color3.fromRGB

	v26:Paragraph({
		Title = fn22("Noli", Color3.fromRGB(200, 162, 255), color2(138, 92, 246)),
		Desc = "foolsss",
	})

	v26:Toggle({
		Title = "Noli VoidRush Controller",
		Value = false,
		Callback = function(arg)
			local tbl11 = {
				OriginalDashSpeed = 60,
				IsActive = false,
				DashConnection = nil,
				CheckThread = nil,
				KillerConn = nil,
			}

			local localPlayer3 = game.Players.LocalPlayer
			local RunService2 = game:GetService("RunService")

			local function fn24()
				tbl11.Character = localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
				tbl11.Humanoid = tbl11.Character:WaitForChild("Humanoid")
				tbl11.HumanoidRootPart = tbl11.Character:WaitForChild("HumanoidRootPart")
			end

			tbl11.Start = function(arg2)
				if arg2.IsActive then
					return
				end
				arg2.IsActive = true

				arg2.DashConnection = RunService2.RenderStepped:Connect(function()
					if not arg2.Humanoid or not arg2.HumanoidRootPart then
						return
					end
					arg2.Humanoid.WalkSpeed = arg2.OriginalDashSpeed
					arg2.Humanoid.AutoRotate = false
					local lookVector = arg2.HumanoidRootPart.CFrame.LookVector
					arg2.Humanoid:Move(Vector3.new(lookVector.X, 0, lookVector.Z).Unit)
				end)
			end

			tbl11.Stop = function(arg2)
				if not arg2.IsActive then
					return
				end
				arg2.IsActive = false

				if arg2.Humanoid then
					arg2.Humanoid.WalkSpeed = 16
					arg2.Humanoid.AutoRotate = true
					arg2.Humanoid:Move(Vector3.zero)
				end

				if arg2.DashConnection then
					arg2.DashConnection:Disconnect()
					arg2.DashConnection = nil
				end
			end

			tbl11.FullCleanup = function(arg2)
				arg2:Stop()

				if arg2.KillerConn then
					arg2.KillerConn:Disconnect()
					arg2.KillerConn = nil
				end

				if arg2.CheckThread then
					task.cancel(arg2.CheckThread)
					arg2.CheckThread = nil
				end
			end

			tbl11.CheckVoidRush = function(arg2)
				arg2.CheckThread = task.spawn(function()
					while arg do
						local killers = workspace:WaitForChild("Players"):WaitForChild("Killers")
						local v41 = nil

						for _, child in ipairs(killers:GetChildren()) do
							local name = localPlayer3.Name
							if child:GetAttribute("Username") == name and child:GetAttribute("ActorDisplayName") == "Noli" then
								v41 = child
								break
							end
						end

						if v41 then
							local function fn25()
								if not arg then
									arg2:Stop()
									return
								end

								if v41:GetAttribute("VoidRushState") == "Dashing" then
									arg2:Start()
								else
									arg2:Stop()
								end
							end

							fn25()
							arg2.KillerConn = v41:GetAttributeChangedSignal("VoidRushState"):Connect(fn25)
							v41.AncestryChanged:Wait()

							if arg2.KillerConn then
								arg2.KillerConn:Disconnect()
								arg2.KillerConn = nil
							end

							arg2:Stop()
						else
							task.wait(0.1)
						end
					end
				end)
			end

			if arg then
				fn24()

				localPlayer3.CharacterAdded:Connect(function()
					fn24()
					tbl11:Stop()
				end)

				tbl11:CheckVoidRush()
			else
				tbl11:FullCleanup()
			end
		end,
	})

	local color3 = Color3.fromRGB

	v26:Paragraph({
		Title = fn22("CoolKid", Color3.fromRGB(255, 76, 76), color3(153, 27, 27)),
		Desc = "red tomato",
	})
end

v26:Toggle({
	Title = "c00lkidd Animation Walkspeed",
	Value = false,
	Callback = function(arg)
		local tbl11 = { OriginalSpeed = 80, IsActive = false, HeartbeatConnection = nil, CheckThread = nil }
		local localPlayer3 = game.Players.LocalPlayer
		local RunService2 = game:GetService("RunService")
		tbl11.Character = localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
		tbl11.Humanoid = tbl11.Character:WaitForChild("Humanoid")
		tbl11.HumanoidRootPart = tbl11.Character:WaitForChild("HumanoidRootPart")

		tbl11.CheckAnimation = function(arg2)
			if not arg2.Character or arg2.Character.Name ~= "c00lkidd" then
				return false
			end
			local animator = arg2.Humanoid:FindFirstChildOfClass("Animator")
			if not animator then
				return false
			end
			local playingAnimationTracks = animator:GetPlayingAnimationTracks()

			for _, playingAnimationTrack in ipairs(playingAnimationTracks) do
				if playingAnimationTrack.Animation and playingAnimationTrack.Animation.AnimationId == "rbxassetid://106776364623742" then
					return true
				end
			end

			return false
		end

		tbl11.Start = function(arg2)
			if arg2.IsActive then
				return
			end
			arg2.IsActive = true

			arg2.HeartbeatConnection = RunService2.Heartbeat:Connect(function()
				if not arg2.Humanoid or not arg2.HumanoidRootPart then
					arg2:Stop()
					return
				end
				local linearVelocity = arg2.HumanoidRootPart:FindFirstChild("LinearVelocity")

				if linearVelocity then
					linearVelocity.VectorVelocity = Vector3.new(math.huge, math.huge, math.huge)
					linearVelocity.Enabled = false
				end

				local lookVector = workspace.CurrentCamera.CFrame.LookVector
				local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

				if vector.Magnitude > 0 then
					local unit = vector.Unit
					arg2.HumanoidRootPart.Velocity = Vector3.new(unit.X * arg2.OriginalSpeed, arg2.HumanoidRootPart.Velocity.Y, unit.Z * arg2.OriginalSpeed)
					arg2.HumanoidRootPart.CFrame = CFrame.new(arg2.HumanoidRootPart.Position, arg2.HumanoidRootPart.Position + unit)
				end
			end)
		end

		tbl11.Stop = function(arg2)
			if not arg2.IsActive then
				return
			end
			arg2.IsActive = false

			if arg2.HeartbeatConnection then
				arg2.HeartbeatConnection:Disconnect()
				arg2.HeartbeatConnection = nil
			end
		end

		tbl11.FullCleanup = function(arg2)
			arg2:Stop()

			if arg2.CheckThread then
				task.cancel(arg2.CheckThread)
				arg2.CheckThread = nil
			end
		end

		tbl11.CheckAnimationLoop = function(arg2)
			arg2.CheckThread = task.spawn(function()
				while arg do
					if not arg then
						arg2:Stop()
						return
					end

					if arg2:CheckAnimation() then
						arg2:Start()
					else
						arg2:Stop()
					end

					task.wait(0.1)
				end
			end)
		end

		if arg then
			localPlayer3.CharacterAdded:Connect(function(character)
				task.wait(0.5)
				self.Character = character
				self.Humanoid = character:WaitForChild("Humanoid")
				self.HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
				self:Stop()
			end)

			tbl11:CheckAnimationLoop()
		else
			tbl11:FullCleanup()
		end
	end,
})

v28:Space()
v28:Section({ Title = "Optimize stuffs ig" })

task.spawn(function()
	local ok, result = pcall(function()
		local flag10 = false
		local connection = nil

		v28:Toggle({
			Title = "Low Quality Texture",
			Value = false,
			Callback = function(arg)
				flag10 = arg
				local Players = game:GetService("Players")

				local function fn22(arg2)
					for _, player in ipairs(Players:GetPlayers()) do
						if player.Character and arg2:IsDescendantOf(player.Character) then
							return true
						end
					end

					return false
				end

				local function fn23(arg2)
					if fn22(arg2) then
						return
					end

					if arg2:IsA("BasePart") then
						if arg then
							arg2:SetAttribute("_origMat", arg2.Material.Name)
							arg2:SetAttribute("_origShadow", arg2.CastShadow)
							arg2:SetAttribute("_origReflect", arg2.Reflectance)
							arg2.CastShadow = false
							arg2.Material = Enum.Material.SmoothPlastic
							arg2.Reflectance = 0
						else
							local attribute2 = arg2:GetAttribute("_origMat")
							local attribute3 = arg2:GetAttribute("_origShadow")
							local attribute4 = arg2:GetAttribute("_origReflect")

							if attribute2 then
								arg2.Material = Enum.Material[attribute2]
							end

							if attribute3 ~= nil then
								arg2.CastShadow = attribute3
							end

							if attribute4 ~= nil then
								arg2.Reflectance = attribute4
							end

							arg2:SetAttribute("_origMat", nil)
							arg2:SetAttribute("_origShadow", nil)
							arg2:SetAttribute("_origReflect", nil)
						end
					elseif arg2:IsA("Texture") or arg2:IsA("Decal") then
						if arg then
							arg2:SetAttribute("_origTrans", arg2.Transparency)
							arg2.Transparency = 1
						else
							local attribute2 = arg2:GetAttribute("_origTrans")

							if attribute2 ~= nil then
								arg2.Transparency = attribute2
							end

							arg2:SetAttribute("_origTrans", nil)
						end
					elseif arg2:IsA("SpecialMesh") then
						if arg then
							arg2:SetAttribute("_origTexId", arg2.TextureId)
							arg2.TextureId = ""
						else
							local attribute2 = arg2:GetAttribute("_origTexId")

							if attribute2 ~= nil then
								arg2.TextureId = attribute2
							end

							arg2:SetAttribute("_origTexId", nil)
						end
					elseif arg2:IsA("ParticleEmitter") or arg2:IsA("Beam") or arg2:IsA("Trail") then
						if arg then
							arg2:SetAttribute("_origEnabled", arg2.Enabled)
							arg2.Enabled = false
						else
							local attribute2 = arg2:GetAttribute("_origEnabled")

							if attribute2 ~= nil then
								arg2.Enabled = attribute2
							end

							arg2:SetAttribute("_origEnabled", nil)
						end
					end
				end

				if connection then
					connection:Disconnect()
					connection = nil
				end

				for _, descendant in ipairs(workspace:GetDescendants()) do
					pcall(fn23, descendant)
				end

				if arg then
					connection = workspace.DescendantAdded:Connect(function(descendant)
						if not flag10 then
							return
						end
						task.wait(0.1)
						pcall(fn23, descendant)
					end)
				end
			end,
		})
	end)

	if not ok then
		warn("skaon" .. tostring(result))
	end
end)

task.spawn(function()
	getgenv().HopMode = getgenv().HopMode or "Random Server hop"
	getgenv().DamageThreshold = getgenv().DamageThreshold or 50
	getgenv().DamageHopActive = getgenv().DamageHopActive or false

	getgenv().GenFixerScriptSource = [=[    if getgenv().GenFixerRunning then return end
    getgenv().GenFixerRunning = true

    spawn(function()
        pcall(function()
            if not game:IsLoaded() then game.Loaded:Wait() end
            repeat task.wait() until game.Players.LocalPlayer

            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local Workspace = game:GetService("Workspace")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local TeleportService = game:GetService("TeleportService")
            local HttpService = game:GetService("HttpService")

            getgenv().freeze = false
            getgenv().farmpley = false
            getgenv().generatorremote = nil

            local LMG2L = {}
            LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
            LMG2L["ScreenGui_1"].DisplayOrder = 99999999
            LMG2L["ScreenGui_1"].ResetOnSpawn = false 

            LMG2L["TextLabel_2"] = Instance.new("TextLabel", LMG2L["ScreenGui_1"])
            LMG2L["TextLabel_2"].ZIndex = 999999
            LMG2L["TextLabel_2"].BorderSizePixel = 0
            LMG2L["TextLabel_2"].TextSize = 20
            LMG2L["TextLabel_2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LMG2L["TextLabel_2"].FontFace = Font.new("rbxasset://fonts/families/PressStart2P.json")
            LMG2L["TextLabel_2"].TextColor3 = Color3.fromRGB(255, 255, 255)
            LMG2L["TextLabel_2"].BackgroundTransparency = 1
            LMG2L["TextLabel_2"].Size = UDim2.new(0.19979, 0, 0.19273, 0)
            LMG2L["TextLabel_2"].Position = UDim2.new(0.04299, 0, 0.12648, 0)
            LMG2L["TextLabel_2"].Text = "Waiting..."
            local Grad = Instance.new("UIGradient", LMG2L["TextLabel_2"])
            Grad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 255, 119)), ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 217, 209))}

            LMG2L["TextButton_5"] = Instance.new("TextButton", LMG2L["ScreenGui_1"])
            LMG2L["TextButton_5"].Size = UDim2.new(0.15174, 0, 0.14455, 0)
            LMG2L["TextButton_5"].Position = UDim2.new(0.76377, 0, 0.10841, 0)
            LMG2L["TextButton_5"].Text = "Turn off Freeze"
            LMG2L["TextButton_5"].BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            LMG2L["TextButton_5"].TextColor3 = Color3.fromRGB(255, 255, 255)
            LMG2L["TextButton_5"].BackgroundTransparency = 0.3
            Instance.new("UICorner", LMG2L["TextButton_5"])

            -- Helper to find our specific survivor model via Username attribute
            local function GetSurvivorModel()
                local playersFolder = Workspace:FindFirstChild("Players")
                if not playersFolder then return nil end
                local survivorsFolder = playersFolder:FindFirstChild("Survivors")
                if not survivorsFolder then return nil end
                
                for _, model in pairs(survivorsFolder:GetChildren()) do
                    if model:IsA("Model") and model:GetAttribute("Username") == LocalPlayer.Name then
                        return model
                    end
                end
                return nil
            end

            LMG2L["TextButton_5"].MouseButton1Click:Connect(function()
                if getgenv().freeze then
                    -- 1. Stop farming and leave generator
                    getgenv().farmpley = false
                    LMG2L["TextButton_5"].Text = "Unfreezing..."
                    
                    if getgenv().generatorremote then
                        pcall(function() getgenv().generatorremote:InvokeServer("Leave") end)
                        getgenv().generatorremote = nil
                    end

                    -- 2. Teleport LocalPlayer to QueryHitbox
                    local survivorModel = GetSurvivorModel()
                    if survivorModel then
                        local queryHitbox = survivorModel:FindFirstChild("QueryHitbox")
                        local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if queryHitbox and rootPart then
                            rootPart.CFrame = queryHitbox.CFrame
                        end
                    end

                    -- 3. Wait 1.2s then unhook
                    task.wait(1.2)
                    getgenv().freeze = false
                    LMG2L["TextButton_5"].Text = "Turn on Freeze"
                else
                    getgenv().freeze = true
                    getgenv().farmpley = true
                    LMG2L["TextButton_5"].Text = "Turn off Freeze"
                end
            end)

            local function ServerHop()
                local q = queue_on_teleport or queueonteleport or (syn and syn.queue_on_teleport)
                if q then 
                    local hopScript = [[
                        getgenv().DamageHopActive = ]] .. tostring(getgenv().DamageHopActive) .. [[
                        getgenv().DamageThreshold = ]] .. tostring(getgenv().DamageThreshold) .. [[
                        getgenv().HopMode = "]] .. tostring(getgenv().HopMode) .. [["
                    ]] .. getgenv().GenFixerScriptSource
                    q(hopScript) 
                end

                local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
                if httprequest then
                    local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100"
                    local success, result = pcall(function() return httprequest({Url = url, Method = "GET"}) end)
                    
                    if success and result and result.Body then
                        local data = HttpService:JSONDecode(result.Body)
                        if data and data.data then
                            local validServers = {}
                            for _, v in ipairs(data.data) do
                                if v.id ~= game.JobId and v.playing and v.maxPlayers then
                                    if getgenv().HopMode == "mid player count Server" then
                                        if v.playing >= 4 and v.playing <= (v.maxPlayers - 2) then
                                            table.insert(validServers, v.id)
                                        end
                                    else
                                        if v.playing < v.maxPlayers then
                                            table.insert(validServers, v.id)
                                        end
                                    end
                                end
                            end
                            if #validServers > 0 then
                                local randomServer = validServers[math.random(1, #validServers)]
                                if randomServer ~= game.JobId then
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, randomServer, LocalPlayer)
                                    return
                                end
                            end
                        end
                    end
                end
                TeleportService:Teleport(game.PlaceId)
            end

            task.spawn(function()
                while true do
                    pcall(function()
                        local survivorModel = GetSurvivorModel()
                        if getgenv().DamageHopActive and survivorModel and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                            local hp = LocalPlayer.Character.Humanoid.Health
                            local maxHp = LocalPlayer.Character.Humanoid.MaxHealth
                            local threshold = (getgenv().DamageThreshold or 50)
                            if maxHp > 0 and hp <= threshold and hp > 0 then
                                ServerHop()
                                return
                            end
                        end
                    end)
                    task.wait(0.5)
                end
            end)

            repeat task.wait(0.5) until GetSurvivorModel() ~= nil
            
            task.wait(1.5)
            getgenv().freeze = true
            getgenv().farmpley = true
            LMG2L["TextButton_5"].Text = "Turn off Freeze"

            local Event = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network").UnreliableRemoteEvent
            local targetEvent = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")
            
            if not getgenv().UnifiedNamecallHooked then
                getgenv().UnifiedNamecallHooked = true
                local oldNamecall
                oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                    local method = getnamecallmethod()
                    local args = {...}
                    
                    if method == "FireServer" then
              
                        if getgenv().freeze and rawequal(self, Event) then
                            return
                        end
                        
                        if getgenv().SixerAutoBiteEnabled and rawequal(self, targetEvent) then
                            local expectedArg = LocalPlayer.Name .. "666BiteCancel"
                            if args[1] == expectedArg then
                                warn("[Security] Blocked remote fire for " .. LocalPlayer.Name)
                                return
                            end
                        end
                    end
                    
                    return oldNamecall(self, ...)
                end)
            end

            local function isPositionOccupied(targetPos)
                if not targetPos then return false end
                for _, plyr in pairs(Players:GetPlayers()) do
                    if plyr ~= LocalPlayer and plyr.Character and plyr.Character:FindFirstChild("HumanoidRootPart") then
                        if (plyr.Character.HumanoidRootPart.Position - targetPos).Magnitude < 3 then 
                            return true
                        end
                    end
                end
                return false
            end

            local function getBestPosition(gen)
                local primary = gen.PrimaryPart
                if not primary then return nil end
                
                local look = (gen:FindFirstChild("Front") or primary).CFrame.LookVector
                if math.abs(look.Y) > 0.7 then look = primary.CFrame.RightVector end
                local fDir = Vector3.new(look.X, 0, look.Z).Unit
                local rDir = Vector3.new(-fDir.Z, 0, fDir.X)
                
                local positions = {
                    {p = primary.Position + fDir * 2.5},
                    {p = primary.Position + rDir * 2.5},
                    {p = primary.Position - rDir * 2.5},
                    {p = primary.Position - fDir * 2.5},
                    {p = primary.Position + (fDir + rDir).Unit * 2.5},
                    {p = primary.Position + (fDir - rDir).Unit * 2.5},
                    {p = primary.Position - (fDir + rDir).Unit * 2.5},
                    {p = primary.Position - (fDir - rDir).Unit * 2.5}
                }
                
                for _, pos in ipairs(positions) do
                    if not isPositionOccupied(pos.p) then
                        return pos.p
                    end
                end
                
                return positions[1].p
            end

            local function fixGenerator(generator)
                if not getgenv().farmpley then return false end
                local remotes = generator:FindFirstChild("Remotes")
                if not remotes then return false end
                
                local targetPos = getBestPosition(generator)
                if not targetPos then return false end
                
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(targetPos, generator.PrimaryPart.Position)
                    task.wait(0.2)
                    
                    local success, res = pcall(function() return remotes.RF:InvokeServer("Enter") end)
                    if success and res == "fixing" then
                        getgenv().generatorremote = remotes.RF
                        task.wait(0.1)
                        remotes.RE:FireServer()
                        task.wait(0.1)
                        
                        if getgenv().farmpley then
                            remotes.RF:InvokeServer("Leave")
                        end
                        
                        getgenv().generatorremote = nil
                        task.wait(0.1)
                        return true
                    end
                end
                return false
            end

            while true do
                pcall(function()
                    if getgenv().farmpley and GetSurvivorModel() ~= nil then
                        local inGameFolder = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("Ingame")
                        if not inGameFolder then return end

                        local totalGens = 0
                        local unfinished = {}
                        for _, v in pairs(inGameFolder:GetDescendants()) do
                            if v:IsA("Model") and v.Name == "Generator" and v.PrimaryPart then
                                totalGens = totalGens + 1
                                local prog = v:FindFirstChild("Progress")
                                if prog and prog.Value < 100 then 
                                    table.insert(unfinished, v) 
                                end
                            end
                        end

                        local doneCount = totalGens - #unfinished
                        local percent = (totalGens > 0) and math.floor((doneCount / totalGens) * 100) or 0
                        LMG2L["TextLabel_2"].Text = "Done % --> " .. percent .. "%"

                        if #unfinished == 0 and totalGens > 0 then
                            ServerHop()
                            return
                        else
                            for _, generator in ipairs(unfinished) do
                                if not getgenv().farmpley then break end
                                fixGenerator(generator)
                                task.wait(0.1)
                            end
                        end
                    end
                end)
                task.wait(0.5)
            end
        end)
    end)
    ]=]

	local genFixerScriptSource = getgenv().GenFixerScriptSource
	getgenv().GenFixerScriptSource = "getgenv().GenFixerRunning = nil\ngetgenv().GenFixerScriptSource = [=[" .. genFixerScriptSource .. "]=]\n" .. genFixerScriptSource

	getgenv().StartGeneratorFarmer = function()
		loadstring(genFixerScriptSource)()
	end
end)

local v41 = nil

v41 = v29:Toggle({
	Title = "Generator Farmer",
	Value = false,
	Callback = function(arg)
		if arg then
			lib:Popup({
				Title = "A Note",
				Icon = "info",
				Content = "PLEASE remember that it makes ur character freeze into the place. WE try our Best. but If u play dumbass Idk.. what to do.. Be smart",
				Buttons = {
					{
						Title = "I do not agree",
						Variant = "Tertiary",
						Callback = function()
							v41:SetValue(false)
						end,
					},
					{
						Title = "Continue",
						Icon = "arrow-right",
						Variant = "Primary",
						Callback = function()
							StartGeneratorFarmer()
						end,
					},
				},
			})
		end
	end,
})

v29:Toggle({
	Title = "If get damage Server Hop",
	Value = false,
	Callback = function(damageHopActive)
		getgenv().DamageHopActive = damageHopActive
	end,
})

v29:Input({
	Title = "How much damage?",
	Value = "50",
	InputIcon = "timer",
	Type = "Input",
	Placeholder = "50",
	Callback = function(arg)
		getgenv().DamageThreshold = tonumber(arg) or 50
	end,
})

v29:Dropdown({
	Title = "Server",
	Values = { "Random Server hop", "mid player count Server" },
	Value = "Random Server hop",
	Callback = function(hopMode)
		getgenv().HopMode = hopMode
	end,
})

v29:Paragraph({
	Title = "Read if u want",
	Desc = "The Farm uses Freeze what it does it freezes ur position for others. meaning others will be seeing u just standing there doing nothing. but in ur pov u will do generator. it really helps if u don't wanna get caught.",
})

local v42 = game
getgenv().h1 = v42:GetService("HttpService")
getgenv().c1 = syn and syn.crypt or crypt or {}

getgenv().z1 = {
	c2 = getgenv().c1.lz4compress or getgenv().c1.lz4_compress or function(arg)
		return arg
	end,
	d2 = getgenv().c1.lz4decompress or getgenv().c1.lz4_decompress or function(arg)
		return arg
	end,
}

getgenv().h4 = function(arg)
	local str5 = ""

	for i = 1, #arg, 2 do
		local str6 = arg:sub(i, i + 1)
		if not (#str6 < 2) then
			str5 ..= string.char(tonumber(str6, 16))
			continue
		end
		break
	end

	return str5
end

getgenv().f1 = function(arg)
	local fn22 = nil

	fn22 = function(arg2)
		local ok, result = pcall(listfiles, arg2)
		if not ok then
			return nil
		end

		for _, v43 in pairs(result) do
			if v43:lower():match(arg:lower() .. "$") then
				return v43
			end

			if isfolder(v43) then
				local v44 = fn22(v43)
				if v44 then
					return v44
				end
			end
		end

		return nil
	end

	return (fn22(""))
end

getgenv().e1 = { 73, 21, 99, 42, 187, 56, 230, 11, 144, 88, 201, 37, 65, 178, 122, 9 }

getgenv().x1 = function(arg, arg2)
	local tbl11 = {}
	local n24 = #arg2

	for i = 1, #arg do
		local v43 = arg2[(i - 1) % n24 + 1]
		tbl11[i] = string.char(bit32.bxor(string.byte(arg, i), v43))
	end

	return table.concat(tbl11)
end

getgenv().b2 = function(arg)
	local tbl11 = {}

	for i = 1, #arg do
		local v43 = string.byte(arg, i)
		local n24 = math.floor(v43 / 62)
		local n25 = v43 % 62
		tbl11[#tbl11 + 1] = ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"):sub(n24 + 1, n24 + 1)
		tbl11[#tbl11 + 1] = ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"):sub(n25 + 1, n25 + 1)
	end

	return "v2:" .. table.concat(tbl11)
end

getgenv().b4 = function(arg)
	local str5 = arg:sub(4)
	local tbl11 = {}

	for i = 1, #str5, 2 do
		tbl11[#tbl11 + 1] = string.char((("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"):find(str5:sub(i, i), 1, true) - 1) * 62 + ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"):find(str5:sub(i + 1, i + 1), 1, true) - 1)
	end

	return table.concat(tbl11)
end

getgenv().a1 = function(arg)
	local n24 = 0

	for i = 1, #arg do
		n24 = (n24 + string.byte(arg, i)) % 256
	end

	return string.format("%02x", n24) .. arg
end

getgenv().v1 = function(arg)
	local num = tonumber(arg:sub(1, 2), 16)
	local str5 = arg:sub(3)
	local n24 = 0

	for i = 1, #str5 do
		n24 = (n24 + string.byte(str5, i)) % 256
	end

	if n24 ~= num then
		return nil
	end
	return str5
end

getgenv().e2 = function(arg)
	local v43 = getgenv().z1.c2(arg)
	local v44 = getgenv().x1(v43, getgenv().e1)
	local v45 = getgenv().a1(v44)
	return getgenv().b2(v45)
end

getgenv().d11 = function(arg)
	local v43 = getgenv().b4(arg)
	local v44 = getgenv().v1(v43)
	if not v44 then
		return nil
	end
	local v45 = getgenv().x1(v44, getgenv().e1)
	return getgenv().z1.d2(v45, 100000)
end

getgenv().s8 = function(arg)
	if arg:sub(1, 3) == "v2:" then
		return getgenv().d11(arg), false
	end

	local ok, result = pcall(function()
		local v43 = getgenv().h4(arg)
		return getgenv().z1.d2(v43, 100000) or v43
	end)

	if ok and result:find("{") then
		return result, true
	end
	return nil, false
end

getgenv().c_own = "unknown"

task.spawn(function()
	local configManager = v16.ConfigManager
	getgenv().m1 = configManager
	getgenv().m2 = "gag"
	getgenv().d13 = getgenv().m1:CreateConfig(getgenv().m2)
	getgenv().t2 = "gag.json"
	getgenv().y1 = {}
	getgenv().w3 = {}

	getgenv().b7 = function()
		for _, v43 in pairs({ v18, sug, v19, v22, v23, v24, v26, v28, v30, CheckFacingTab }) do
			if v43 and v43.Elements then
				for _, element in pairs(v43.Elements) do
					if element and element.Title then
						if rawget(element, "Value") ~= nil or rawget(element, "Default") ~= nil then
							if element.Callback then
								local title = element.Title
								local callback = element.Callback
								getgenv().w3[title] = callback
							end

							getgenv().d13:Register(element.Title, element)
							local title = element.Title
							getgenv().y1[title] = element

							if element.Callback then
								element.Callback = function(...)
									local title2 = element.Title

									if getgenv().w3[title2] then
										local title3 = element.Title
										getgenv().w3[title3](...)
									end

									task.spawn(function()
										task.wait(0.2)

										pcall(function()
											getgenv().d13:Save()
										end)
									end)
								end
							end
						end
					end
				end
			end
		end
	end

	task.wait(1)
	getgenv().b7()

	pcall(function()
		getgenv().d13:Load()
	end)

	v31:Section({ Title = "Due to The Code being big u gotta make a file for it and send the person to u want!" })
	local section = v31.Section
	getgenv().s9 = section(v31, { Title = "Config CLICK HERE" })

	getgenv().s9:Input({
		Title = "Config Owner Name",
		Placeholder = "username",
		Callback = function(arg)
			getgenv().c_own = (arg == "" or arg == nil or arg == "nil") and "unknown" or arg
		end,
	})

	getgenv().s9:Button({
		Title = "Copy Config Code",
		Callback = function()
			getgenv().d13:Save()
			task.wait(0.5)
			local t2 = getgenv().f1(getgenv().t2) or getgenv().t2

			if isfile(t2) then
				local v43 = readfile(t2)
				local cOwn = (getgenv().c_own == "" or getgenv().c_own == nil) and "unknown" or getgenv().c_own
				local json = getgenv().h1:JSONEncode({ o = cOwn, d = v43 })
				local v44 = getgenv().e2(json)
				setclipboard(v44)

				lib:Popup({
					Title = "uhhh",
					Content = "Config code copied check it",
					Icon = "copy",
					Buttons = { { Title = "OK", Variant = "Primary" } },
				})
			end
		end,
	})

	getgenv().s9:Input({
		Title = "Import Code",
		Placeholder = "paste code here",
		Callback = function(arg)
			if #arg == 0 then
				return
			end
			local v43, v44 = getgenv().s8(arg)

			if v43 then
				local d = v43
				local str5, str6

				if v44 then
					str5 = "unknown"
					str6 = "\nfact : this config was coded by the v1 older verison"
				else
					local ok, result = pcall(function()
						return getgenv().h1:JSONDecode(v43)
					end)

					ok = ok and type(result) == "table" and result.d
					str5 = "unknown"

					if ok then
						str5 = (result.o == nil or result.o == "" or result.o == "nil") and "unknown" or result.o
						d = result.d
					end

					str6 = ""
				end

				if d:find("{") then
					lib:Popup({
						Title = "info idk",
						Content = "config by: " .. tostring(str5) .. "\nplease click load!!!" .. str6,
						Buttons = {
							{
								Title = "Cancel",
								Callback = function()
								end,
								Variant = "Tertiary",
							},
							{
								Title = "Load",
								Callback = function()
									writefile(getgenv().f1(getgenv().t2) or getgenv().t2, d)
									task.wait(0.2)
									getgenv().d13:Load()
								end,
								Variant = "Primary",
							},
						},
					})
				end
			end
		end,
	})

	task.spawn(function()
		while task.wait(3) do
			pcall(function()
				getgenv().d13:Save()
			end)
		end
	end)

	game:GetService("Players").LocalPlayer.CharacterRemoving:Connect(function()
		pcall(function()
			getgenv().d13:Save()
		end)
	end)
end)


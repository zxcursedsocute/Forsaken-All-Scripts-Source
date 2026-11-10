-- ts file was generated at discord.gg/25ms

local fenv = getfenv()
local _5 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua'))()
local _call7 = game:GetService('ReplicatedStorage')

game:GetService('TweenService')

local _call11 = game:GetService('RunService')
local _LocalPlayer14 = game:GetService('Players').LocalPlayer

_LocalPlayer14:WaitForChild('PlayerGui')
game:GetService('StarterGui')
game:GetService('TestService')
_call7:FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('SayMessageRequest')
game:GetService('VirtualInputManager')

local _ = game.Players.LocalPlayer
local _ = fenv._lastPunchMessageTime
local _ = fenv._punchPrevPlaying
local _ = fenv._lastBlockMessageTime
local _ = fenv._blockPrevPlaying

game:GetService('Debris')
workspace:WaitForChild('Players'):WaitForChild('Killers')
_LocalPlayer14.CharacterAdded:Connect(function(_42, _42_2, _42_3, _42_4, _42_5)
    task.wait(0.5)
    _LocalPlayer14.Character:FindFirstChildOfClass('Humanoid'):FindFirstChildOfClass('Animator')
end)

local _call49 = _LocalPlayer14:FindFirstChild('PlayerGui')
local _call53 = _call49:FindFirstChild('MainUI'):FindFirstChild('AbilityContainer')
local _call55 = _call53:FindFirstChild('Punch')
local _call57 = _call53:FindFirstChild('Block')

_call53:FindFirstChild('Charge')
_call53:FindFirstChild('Clone')
_call55:FindFirstChild('Charges')
_call57:FindFirstChild('CooldownTime')
_call49.ChildAdded:Connect(function(_69, _69_2, _69_3)
    local _ = _69.Name
end)
_LocalPlayer14.CharacterAdded:Connect(function(_74, _74_2, _74_3)
    task.delay(0.5, function(_77)
        local _call83 = _LocalPlayer14:FindFirstChild('PlayerGui'):FindFirstChild('MainUI'):FindFirstChild('AbilityContainer')
        local _call85 = _call83:FindFirstChild('Punch')
        local _call87 = _call83:FindFirstChild('Block')

        _call83:FindFirstChild('Charge')
        _call83:FindFirstChild('Clone')
        _call85:FindFirstChild('Charges')
        _call87:FindFirstChild('CooldownTime')
    end)
end)

local _call99 = _5:CreateWindow({
    Folder = 'Yameme Hub',
    Title = 'Yameme Hub | Forsaken',
    Theme = 'Midnight',
    IconSize = 22,
    Author = 'By MBHubRoblox_official',
    Icon = 'rbxassetid://82048629403123',
    Size = UDim2.fromOffset(400, 400),
})

_call99:Tag({
    Color = Color3.fromRGB(82, 24, 123),
    Title = 'V1.3.1',
    Icon = 'upload',
})
_call99:Tag({
    Color = Color3.fromRGB(124, 231, 46),
    Title = 'Free',
    Icon = 'check',
})

local _call109 = _call99:Section({
    Title = ' || HOMES || ',
    Icon = 'house',
})
local _call111 = _call99:Section({
    Title = ' || MAIN || ',
    Icon = 'menu',
})
local _call113 = _call99:Section({
    Title = ' || SCAN || ',
    Icon = 'cog',
})

for _116, _116_2 in pairs(_5:GetThemes()) do end

_call99.User:Enable()

local _call121 = _call109:Tab({
    Title = ' || Discord',
    Icon = 'github',
})
local _call123 = _call109:Tab({
    Title = ' || Suggections',
    Icon = 'layout-dashboard',
})
local _call125 = _call111:Tab({
    Title = ' || Generator',
    Icon = 'battery-charging',
})
local _call127 = _call111:Tab({
    Title = ' || Item',
    Icon = 'axe',
})
local _call129 = _call111:Tab({
    Title = ' || Player',
    Icon = 'user',
})
local _call131 = _call111:Tab({
    Title = ' || Auto Block',
    Icon = 'shield-ban',
})
local _call133 = _call111:Tab({
    Title = ' || Survivor',
    Icon = 'sword',
})
local _call135 = _call111:Tab({
    Title = ' || Killer',
    Icon = 'axe',
})
local _call137 = _call111:Tab({
    Title = ' || Teleport',
    Icon = 'map',
})
local _call139 = _call111:Tab({
    Title = ' || Animation',
    Icon = 'ferris-wheel',
})
local _call141 = _call111:Tab({
    Title = ' || Misc',
    Icon = 'book-a',
})
local _call143 = _call111:Tab({
    Title = ' || Visuals',
    Icon = 'eye',
})
local _call145 = _call111:Tab({
    Title = ' || Aimbot',
    Icon = 'biceps-flexed',
})
local _call147 = _call111:Tab({
    Title = ' || Random',
    Icon = 'non-binary',
})
local _call149 = _call111:Tab({
    Title = ' || Techs',
    Icon = 'hammer',
})
local _call151 = _call111:Tab({
    Title = ' || Stamina',
    Icon = 'brain-circuit',
})
local _call153 = _call111:Tab({
    Title = ' || Effects',
    Icon = 'arrow-big-down-dash',
})
local _call155 = _call111:Tab({
    Title = ' || Scriptblox',
    Icon = 'scroll-text',
})
local _call157 = _call113:Tab({
    Title = ' || System',
    Icon = 'cog',
})
local _call159 = _call113:Tab({
    Title = ' || Settings',
    Icon = 'settings',
})

_call123:Paragraph({
    Title = 'User: ' .. game.Players.LocalPlayer.Name,
    Desc = 'what you name for roblox account.',
})
_call121:Paragraph({
    Image = 'user-star',
    Title = 'Discord Server',
    Desc = "everyone, don't not sent like script or key has secret, you must have buying the key!",
})
_call121:Divider()
_call121:Paragraph({
    Image = 'rbxassetid://82048629403123',
    Title = 'YamemeHub',
    Buttons = {
        [1] = {
            Callback = function(_172, _172_2)
                setclipboard('https://discord.gg/XR8TCbhay')
            end,
            Title = 'Copy link',
            Icon = 'link',
        },
    },
    Color = 'Green',
    ImageSize = 48,
    Thumbnail = 'rbxassetid://121217482128132',
    Desc = 'Join us with discord and buy for free key!',
})
_call123:Divider()
_call123:Input({
    Title = 'Repair Suggections',
})
_call123:Button({
    Title = 'Sent Suggections',
})
_call125:Paragraph({
    Icon = 'battery',
    Title = 'Repair Generator',
    Desc = 'repair to generator or like auto fixed generator.',
})
_call125:Slider({
    Value = {
        Min = 0,
        Default = 5,
        Max = 15,
    },
    Callback = function(_184, _184_2, _184_3) end,
    Title = 'Repair Generator',
    Desc = 'repair with generator.',
})
_call125:Toggle({
    Callback = function(_187, _187_2, _187_3)
        task.wait(_184)

        local _ = _184 + 0.04236555637718038

        for _194, _194_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _194_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.08295795103870525

        for _202, _202_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _202_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.0160471157669831

        for _210, _210_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _210_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.0925873727928954

        for _218, _218_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _218_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.026464520909784878

        for _226, _226_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _226_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.011217304664069457

        for _234, _234_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _234_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.012865160401102662

        for _242, _242_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _242_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.019738281778108272

        for _250, _250_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _250_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.05311473245032342

        for _258, _258_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _258_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.00871711129378484

        for _266, _266_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _266_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.028719556357575792

        for _274, _274_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _274_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.08904548160032777

        for _282, _282_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _282_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.03189826294147565

        for _290, _290_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _290_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.09391587951266331

        for _298, _298_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _298_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.0566741738095584

        for _306, _306_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _306_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.07547614347770813

        for _314, _314_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _314_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.0019396218822772405

        for _322, _322_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _322_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.008547286887704812

        for _330, _330_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _330_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.03751779012941799

        for _338, _338_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _338_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.09014445846351782

        for _346, _346_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _346_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.009514548596528843

        for _354, _354_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _354_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.06607508894074612

        for _362, _362_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _362_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.06442700038562282

        for _370, _370_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _370_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.03019352178868489

        for _378, _378_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _378_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.08134776960879414

        for _386, _386_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _386_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.021920459226959205

        for _394, _394_2 in pairs(workspace.Map.Ingame.Map:GetChildren())do
            local _ = _394_2.Name
        end

        task.wait(_184)

        local _ = _184 + 0.09648274613005597

        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Auto Repair Generator',
    Desc = 'auto to repair for generator.',
})
_call125:Divider()
_call125:Button({
    Callback = function(_402, _402_2, _402_3, _402_4, _402_5)
        local _ = workspace.Map.Ingame.Map

        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Solvet to Generator',
    Desc = 'repaired for generator solvet.',
})
_call125:Keybind({
    Callback = function(_409)
        local _ = workspace.Map.Ingame

        error('internal 583: <25ms: infinitelooperror>')
    end,
    Key = 'I',
    Title = 'Keybind to Generator',
    Desc = 'repaired for generator keybind.',
})
_call127:Paragraph({
    Title = 'Items',
    Desc = 'have collect for repair Item to teleport other.',
})
_call127:Button({
    Callback = function(_419, _419_2)
        local _ = workspace.Map

        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Pick up Medkit',
    Desc = 'take from him medkit.',
})
_call127:Button({
    Callback = function(_424, _424_2, _424_3, _424_4, _424_5)
        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Pick up BloxyCola',
    Desc = 'take from him bloxycola.',
})
_call127:Paragraph({
    Title = 'Items Farm',
    Desc = 'if then are auto farm take from him item all.',
})
_call127:Toggle({
    Title = 'Auto Farm Medkit',
    Desc = "make sure you we're farm medkit.",
})
_call127:Toggle({
    Title = 'Auto Farm BloxyCola',
    Desc = "make sure you we're farm bloxycola.",
})
_call129:Paragraph({
    Title = 'Filp',
    Desc = 'please slow down with flip!',
})
_call129:Button({
    Callback = function(_436, _436_2)
        Instance.new('ScreenGui')
        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Script Frontfilp',
    Desc = 'script in filp.',
})
_call129:Button({
    Callback = function(_442)
        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Script Backfilp',
    Desc = 'script in filp.',
})
_call129:Divider()
_call129:Keybind({
    Value = 'F',
    Title = 'Frontfilp',
    Callback = function()
        local _Character449 = game.Players.LocalPlayer.Character
        local _Humanoid450 = _Character449.Humanoid
        local _Animator451 = _Humanoid450.Animator
        local _ = _Character449.HumanoidRootPart

        for _455, _455_2 in pairs(_Animator451:GetPlayingAnimationTracks())do
            _455_2:Stop()
        end

        _Humanoid450:ChangeState(Enum.HumanoidStateType.Physics)
        _Humanoid450:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)

        local _ = Enum.HumanoidStateType.Freefall

        error('internal 583: <25ms: infinitelooperror>')
    end,
})
_call129:Keybind({
    Value = 'B',
    Title = 'Backfilp',
    Callback = function()
        error('internal 583: <25ms: infinitelooperror>')
    end,
})
_call129:Paragraph({
    Title = 'Fetients Player',
    Desc = 'when you using to player other.',
})
_call129:Paragraph({
    Title = 'Warning',
    Desc = "do not speed like faster, you we're kicked, just slower.",
})
_call129:Slider({
    Value = {
        Min = 0,
        Default = 1,
        Max = 100,
    },
    Title = 'Delay Walkspeed',
    Callback = function(_479, _479_2, _479_3)
        fenv.ayamgoreng = _479
    end,
})
_call129:Toggle({
    Title = 'Enable/Disable Walkspeed',
    Callback = function(_482, _482_2, _482_3, _482_4, _482_5)
        error('internal 583: <25ms: infinitelooperror>')
    end,
})
_call129:Divider()
_call129:Slider({
    Value = {
        Min = 0,
        Default = 0,
        Max = 50,
    },
    Title = 'Delay Jumppower',
    Callback = function(_488, _488_2, _488_3, _488_4, _488_5, _488_6)
        fenv.ayamgorengs = _488
    end,
})
_call129:Toggle({
    Title = 'Enable/Disable Jumppower',
    Callback = function(_491, _491_2, _491_3, _491_4)
        local _ = game.Players.LocalPlayer

        error('internal 583: <25ms: infinitelooperror>')
    end,
})
_call129:Divider()
_call129:Slider({
    Value = {
        Min = 0,
        Default = 1,
        Max = 2,
    },
    Title = 'Delay FOV Multipliers',
    Callback = function(_499)
        fenv.ayamgorengss = _499
    end,
})
_call129:Toggle({
    Title = 'Enable/Disable FOV Multipliers',
    Callback = function(_502)
        error('internal 583: <25ms: infinitelooperror>')
    end,
})
_call129:Divider()
_call129:Button({
    Title = 'Rejoin',
    Callback = function(_508, _508_2, _508_3, _508_4) end,
})
_call131:Paragraph({
    Title = 'Auto Block',
    Desc = "Auto to Block what ever you want then, but only for survivor on guest1337, don't play with him auto block, then gonna error, you can't use auto block.",
})
_call131:Slider({
    Value = {
        Min = 0,
        Default = 7,
        Max = 15,
    },
    Title = 'Delay Block',
    Desc = 'delay for block to been auto block.',
})
_call131:Toggle({
    Callback = function(_515) end,
    Title = 'Auto Block',
    Desc = 'make for auto to block then.',
})
_call131:Button({
    Title = 'Block Aimbot',
    Desc = 'block for aimbot on control.',
})
_call131:Paragraph({
    Title = 'Auto Punch',
    Desc = "Auto to Punch what ever you want then, but only for survivor on guest1337, don't play with him auto Punch, then gonna error, you can't use auto punch.",
})
_call131:Slider({
    Value = {
        Min = 0,
        Default = 6,
        Max = 15,
    },
    Title = 'Delay Punch',
    Desc = 'delay for punch to been auto punch.',
})
_call131:Toggle({
    Callback = function(_524, _524_2, _524_3, _524_4, _524_5, _524_6) end,
    Title = 'Auto Punch',
    Desc = 'make for auto to punch then.',
})
_call131:Button({
    Title = 'Punch Aimbot',
    Desc = 'punch for aimbot on control.',
})
_call133:Section({
    Icon = 'cog',
    Title = 'Survivor System',
    Desc = 'system to fixed from survivor.',
})
_call133:Slider({
    Title = 'Delay Cooldown',
    Value = {
        Min = 0,
        Default = 2,
        Max = 25,
    },
})
_call133:Slider({
    Title = 'Delay Attacking',
    Value = {
        Min = 0,
        Default = 8,
        Max = 12,
    },
})
_call133:Button({
    Title = 'No Lag',
})
_call133:Section({
    Icon = 'axe',
    Title = 'Survivor Attack',
    Desc = 'gonna to been attack from survivor.',
})
_call135:Section({
    Icon = 'cog',
    Title = 'Killer System',
    Desc = 'system to fixed from killer.',
})
_call135:Slider({
    Title = 'Delay Cooldown',
    Value = {
        Min = 0,
        Default = 2,
        Max = 25,
    },
})
_call135:Slider({
    Title = 'Delay Attacking',
    Value = {
        Min = 0,
        Default = 8,
        Max = 12,
    },
})
_call135:Button({
    Title = 'No Lag',
})
_call135:Section({
    Icon = 'axe',
    Title = 'Killer Attack',
    Desc = 'gonna to been attack from killer.',
})
_call133:Paragraph({
    Title = 'Noobs',
    Desc = 'for only been survivor from store with can now auto.',
})
_call133:Slider({
    Value = {
        Min = 0,
        Default = 12,
        Max = 20,
    },
    Title = 'Delay Burger Ghost',
    Desc = 'delay will ghost.',
})
_call133:Button({
    Title = 'Clicker Burger Ghost',
    Desc = "make sure you become ghost, killer didn't look you.",
})
_call133:Button({
    Title = 'Clicker rocksafe',
    Desc = "make sure you become rocksafe, killer didn't kill you.",
})
_call133:Divider()
_call133:Paragraph({
    Title = 'Elliot',
    Desc = 'for only been survivor from store with can now auto.',
})
_call133:Slider({
    Value = {
        Min = 0,
        Default = 12,
        Max = 15,
    },
    Title = 'Delay Throw Pizza',
    Desc = 'delay will throw pizza.',
})
_call133:Button({
    Title = 'Clicker Throw Pizza',
    Desc = 'throw then pizza there survivor help need pizza.',
})
_call133:Divider()
_call133:Paragraph({
    Title = 'Shedletsky',
    Desc = 'for only been survivor from store with can now auto.',
})
_call133:Slider({
    Value = {
        Min = 0,
        Default = 4,
        Max = 12,
    },
    Title = 'Delay Eat Chicken',
    Desc = 'delay will chicken.',
})
_call133:Button({
    Title = 'Clicker Eat chicken',
    Desc = 'shedletsky love for eat the chicken.',
})
_call133:Divider()
_call133:Paragraph({
    Title = 'Jane Doe',
    Desc = 'for only been survivor from store with can now auto.',
})
_call133:Slider({
    Value = {
        Min = 0,
        Default = 13,
        Max = 34,
    },
    Title = 'Delay Axe',
    Desc = 'delay will kill from axe.',
})
_call133:Button({
    Title = 'Clicker Kill Axe',
    Desc = 'if you got killer, clicker the axe.',
})
_call133:Divider()
_call133:Paragraph({
    Title = 'Taph',
    Desc = 'for only been survivor from store with can now auto.',
})
_call133:Slider({
    Value = {
        Min = 0,
        Default = 8,
        Max = 17,
    },
    Title = 'Delay Throw Bomb',
    Desc = 'delay will bomb.',
})
_call133:Button({
    Title = 'Clicker Throw Bomb',
    Desc = 'make for then throw bomb.',
})
_call133:Divider()
_call133:Paragraph({
    Title = 'Dusekkar',
    Desc = 'for only been survivor from store with can now auto.',
})
_call133:Slider({
    Value = {
        Min = 0,
        Default = 1,
        Max = 23,
    },
    Title = 'Delay Plasma Beam',
    Desc = 'delay will plasma beam.',
})
_call133:Button({
    Title = 'Clicker Plasma Beam Killer',
    Desc = 'make for then Plasma Beam killer.',
})
_call133:Button({
    Title = 'Clicker Plasma Beam Survivor',
    Desc = 'make for then Plasma Beam survivor.',
})
_call135:Paragraph({
    Title = 'Slasher',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Title = 'Auto Slash',
    Desc = 'make slash from kill survivor.',
})
_call135:Paragraph({
    Title = 'c00lkidd',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Title = 'Auto kill block',
    Desc = 'make slash from kill survivor.',
})
_call135:Paragraph({
    Title = 'John Doe',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Title = 'Auto Sptiker',
    Desc = 'make slash from kill survivor.',
})
_call135:Paragraph({
    Title = '1x1x1x1',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Callback = function(_613)
        for _621, _621_2 in ipairs(game:GetService('Players').LocalPlayer.PlayerGui.TemporaryUI:GetChildren())do
            local _ = _621_2.Name
        end

        task.wait(0.1)
        error('internal 583: <25ms: infinitelooperror>')
    end,
    Title = 'Auto Popups 1x1x1x1',
    Desc = 'make popups to been automatic.',
})
_call135:Paragraph({
    Title = 'Noli',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Title = 'Auto Error Generator',
    Desc = 'make error from generator.',
})
_call135:Paragraph({
    Title = 'Sixer',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Title = 'Auto Sound Hard',
    Desc = 'make sound from kill survivor.',
})
_call135:Paragraph({
    Title = 'nosferatu',
    Desc = 'for only been Killer from store with can now auto.',
})
_call135:Toggle({
    Title = 'Auto become bat',
    Desc = 'make kill from survivor.',
})

for _639, _639_2 in pairs(game.Players:GetChildren())do
    local _ = _639_2.Name
end

_call137:Dropdown({
    Title = 'Select to Player',
    Value = 1,
    Values = {[1] = _Name640},
    Callback = function(_643, _643_2, _643_3, _643_4) end,
    Desc = 'select to player you want.',
})
_call137:Button({
    Title = 'Teleport Player',
    Callback = function(_646, _646_2) end,
})
_call137:Toggle({
    Title = 'Auto Teleport Player',
    Callback = function(_649, _649_2, _649_3) end,
})
_call137:Divider()
_call137:Dropdown({
    Title = 'Select to Item',
    Value = 1,
    Values = {
        [1] = 'Medkit',
        [2] = 'Bloxy Cola',
    },
    Callback = function(_654, _654_2, _654_3, _654_4) end,
    Desc = 'select to item you want.',
})
_call137:Button({
    Title = 'Teleport Item',
    Callback = function() end,
})
_call137:Divider()
_call137:Dropdown({
    Title = 'Select to Generator',
    Value = 1,
    Values = {
        [1] = 'Generator',
    },
    Callback = function(_662, _662_2, _662_3, _662_4) end,
    Desc = 'select to generator you want.',
})
_call137:Button({
    Title = 'Teleport Generator',
    Callback = function(_665, _665_2, _665_3) end,
})
_call139:Paragraph({
    Title = 'Emote Animation',
    Desc = 'I Been to coming soon to make all emote, but v2.5.0!.',
})
_call139:Dropdown({
    Title = 'Select Animation',
    SearchBarEnabled = true,
    Value = 'Hakari Dance',
    Callback = function(_670, _670_2, _670_3, _670_4, _670_5) end,
    Values = {
        [1] = 'Hakari Dance',
        [2] = 'Lag Train (New Emotes)',
        [3] = 'Po-Ppi-po (New Emotes)',
        [4] = 'Dance Alone (New Emotes)',
        [5] = 'Wait',
        [6] = 'Wave',
        [7] = 'Miss Out Quiet (Outdated)',
        [8] = 'Shucks',
        [9] = '[OLD] Hakari Dance',
        [10] = 'Jumpstyle',
        [11] = 'Sukuna',
        [12] = 'Hotdog',
        [13] = 'Chicken Dance',
        [14] = 'Eggrolled',
        [15] = 'Silly',
        [16] = 'Pop Dance',
    },
})
_call139:Toggle({
    Callback = function(_673, _673_2, _673_3) end,
    Title = 'Start/Stop Animation',
    Desc = "Make you're dance with free emote.",
})
_call141:Section({
    Title = 'Player Info',
    Desc = 'make user player info for try.',
})
_call141:Input({
    Title = 'Username',
    Callback = function(_678, _678_2) end,
})
_call141:Input({
    Title = 'Image',
    Callback = function(_681, _681_2) end,
})
_call141:Toggle({
    Title = 'Clicker Player Info',
    Callback = function(_684, _684_2, _684_3, _684_4, _684_5, _684_6) end,
})
_call141:Section({
    Title = 'Blatant',
    Desc = 'blatant from him item for now.',
})
_call141:Button({
    Title = 'Fake Lag',
})
_call141:Button({
    Title = 'Join Server',
})
_call141:Button({
    Title = 'Rejoin',
})
_call141:Button({
    Title = 'Turn on chat',
})
_call141:Button({
    Title = 'No Fat',
})
_call141:Button({
    Title = 'crash roblox',
})
_call143:Paragraph({
    Title = 'WindUI Colorpicker Error',
    Desc = 'windui colorpicker has been error, i think there somthing went wrong.',
})
_call143:Section({
    Title = 'ESP Original',
    Desc = 'you can now to visit him visual or esp.',
})
_call143:Toggle({
    Callback = function(_705, _705_2, _705_3, _705_4, _705_5, _705_6) end,
    Title = 'ESP Survivor',
    Desc = 'esp survivor to select.',
})
_call143:Toggle({
    Callback = function(_708) end,
    Title = 'ESP Killer',
    Desc = 'esp killer to select.',
})
_call143:Toggle({
    Callback = function(_711, _711_2, _711_3, _711_4) end,
    Title = 'ESP John Doe Spike',
    Desc = 'esp john doe spike to select.',
})
_call143:Toggle({
    Callback = function(_714, _714_2, _714_3, _714_4, _714_5, _714_6) end,
    Title = 'ESP Builderman dipenser',
    Desc = 'esp Builderman dipenser to select.',
})
_call143:Toggle({
    Callback = function(_717, _717_2, _717_3, _717_4) end,
    Title = 'ESP Npc 1x1x1x1',
    Desc = 'esp npc 1x1x1x1 to select.',
})
_call143:Toggle({
    Callback = function(_720) end,
    Title = 'ESP Npc c00lkidd',
    Desc = 'esp npc c00lkidd to select.',
})
_call143:Toggle({
    Callback = function(_723, _723_2, _723_3) end,
    Title = 'ESP Generator',
    Desc = 'esp generator to select.',
})
_call143:Toggle({
    Callback = function(_726, _726_2, _726_3, _726_4, _726_5) end,
    Title = 'ESP Item',
    Desc = 'esp item to select.',
})
_call143:Section({
    Title = 'Tag Original',
    Desc = 'you can now to visit him text or tag.',
})
_call143:Toggle({
    Callback = function(_731, _731_2, _731_3) end,
    Title = 'Tag Survivor',
    Desc = 'tag survivor to select.',
})
_call143:Toggle({
    Callback = function(_734, _734_2, _734_3, _734_4, _734_5) end,
    Title = 'Tag Killer',
    Desc = 'tag killer to select.',
})
_call143:Toggle({
    Callback = function(_737, _737_2, _737_3) end,
    Title = 'Tag Npc 1x1x1x1',
    Desc = 'tag npc 1x1x1x1 to select.',
})
_call143:Toggle({
    Callback = function(_740, _740_2, _740_3, _740_4, _740_5, _740_6) end,
    Title = 'Tag Npc c00lkidd',
    Desc = 'tag npc c00lkidd to select.',
})
_call143:Toggle({
    Callback = function(_743) end,
    Title = 'Tag Generator',
    Desc = 'tag generator to select.',
})
_call143:Toggle({
    Callback = function(_746, _746_2) end,
    Title = 'Tag Item',
    Desc = 'tag item to select.',
})
_call145:Section({
    Title = 'Killer Combat',
    Desc = 'everyone will got killer then.',
})
_call145:Dropdown({
    Value = 1,
    Callback = function(_751, _751_2, _751_3) end,
    Title = 'Select Survivor',
    Values = {[1] = _Name640},
})
_call145:Toggle({
    Title = "Auto Teleport Survivor (Dosen't Works)",
})
_call145:Section({
    Title = 'Survivor Combat',
    Desc = 'killer will got survivor then.',
})
_call145:Button({
    Title = 'Shoot the Killer (Chance)',
})
_call145:Toggle({
    Title = 'Sword the Killer (Shedletsky)',
})
_call145:Slider({
    Title = 'Repair Combat Survivor',
    Value = {
        Min = 0,
        Default = 5,
        Max = 12,
    },
})
_call145:Slider({
    Title = 'Repair Combat Chance',
    Value = {
        Min = 0,
        Default = 9,
        Max = 12,
    },
})
_call145:Slider({
    Title = 'Repair Combat Shedletsky',
    Value = {
        Min = 0,
        Default = 3,
        Max = 11,
    },
})
_call147:Section({
    Title = 'Achievements',
    Desc = 'You will Have there fake infinite you stats.',
})
_call147:Paragraph({
    Title = 'Unlock Achievements.',
    Desc = 'if you want to clicker unlock Achievements all.',
})
_call147:Button({
    Callback = function(_772, _772_2, _772_3) end,
    Title = 'Unlocked Achievements all',
    Desc = 'unlocked everything.',
})
_call147:Divider()
_call147:Button({
    Callback = function(_777, _777_2, _777_3, _777_4, _777_5) end,
    Title = 'Infinite Win Survivor all',
    Desc = 'Make Level Win Survivor to been infinite.',
})
_call147:Button({
    Callback = function() end,
    Title = 'Infinite Win Killers all',
    Desc = 'Make Level Win Killers to been infinite.',
})
_call147:Divider()
_call147:Button({
    Callback = function(_785, _785_2) end,
    Title = 'Unlocked Challenges Survivor all',
    Desc = 'Make Unlock Challenges.',
})
_call147:Divider()
_call147:Button({
    Callback = function(_790, _790_2, _790_3, _790_4) end,
    Title = 'Unlocked Survivor Specifie all',
    Desc = 'Make Unlock all.',
})
_call147:Button({
    Callback = function(_793, _793_2) end,
    Title = 'Unlocked Killer Specifie all',
    Desc = 'Make Unlock all.',
})
_call147:Divider()
_call147:Button({
    Callback = function(_798) end,
    Title = 'Unlocked Fun all',
    Desc = 'Make Unlock all.',
})
_call147:Divider()
_call147:Button({
    Callback = function(_803, _803_2, _803_3, _803_4) end,
    Title = 'Unlocked Completionist all',
    Desc = 'Make Unlock all.',
})
_call147:Divider()
_call147:Button({
    Callback = function() end,
    Title = 'Infinite Level Survivor Milestones all',
    Desc = 'Make Unlock all.',
})
_call147:Button({
    Callback = function(_811, _811_2, _811_3, _811_4, _811_5) end,
    Title = 'Infinite Level Killer Milestones all',
    Desc = 'Make Unlock all.',
})
_call147:Section({
    Title = 'Others',
    Desc = 'think are other will do it.',
})
_call147:Button({
    Callback = function() end,
    Title = 'Infinite Level Survivor',
    Desc = 'make infinite Level survivor.',
})
_call147:Button({
    Callback = function(_819) end,
    Title = 'Infinite Level Killer',
    Desc = 'make infinite Level killer.',
})
_call147:Button({
    Callback = function(_822, _822_2, _822_3) end,
    Title = 'Infinite Level Currency',
    Desc = 'make infinite Level currency.',
})
_call147:Button({
    Callback = function() end,
    Title = 'Infinite Level General',
    Desc = 'make infinite Level general.',
})
_call149:Toggle({
    Callback = function(_828, _828_2, _828_3) end,
    Title = 'Hitbox Dragging',
    Desc = 'make sure then hitbox with dragging.',
})
_call149:Input({
    Title = 'Hitbox Dragging Speed',
    Callback = function(_831, _831_2, _831_3, _831_4, _831_5) end,
})
_call149:Input({
    Title = 'Hitbox Dragging Delay',
    Callback = function(_834, _834_2, _834_3, _834_4, _834_5) end,
})
_call149:Paragraph({
    Title = 'Hitbox Dragging tech',
    Desc = 'i reccomend using a high detection range (if using normal detection) when using this',
})
_call149:Button({
    Callback = function(_839) end,
    Title = 'Fake Lag Tech',
    Desc = 'fake lag tech to been do it.',
})
_call151:Paragraph({
    Color = 'Red',
    Image = 'triangle-alert',
    Title = 'Stamina Warning',
    Desc = "Xeno, solara, zorara, luna, Ronix and Velocity won't work support from stamina, download the executor if supported stamina for worked!",
})
_call151:Section({
    Title = 'System Stamina',
    Desc = 'there also system stamina are then.',
})
_call151:Slider({
    Value = {
        Min = 0,
        Default = 50,
        Max = 100,
    },
    Callback = function(_846, _846_2) end,
    Title = 'Repair Gain Stamina',
    Desc = 'input to gain with stamina.',
})
_call151:Button({
    Callback = function(_849, _849_2) end,
    Title = 'Enter Stamina Gain',
    Desc = 'enter to been stamina gain.',
})
_call151:Divider()
_call151:Slider({
    Value = {
        Min = 0,
        Default = 10,
        Max = 100,
    },
    Callback = function(_854) end,
    Title = 'Repair Loss Stamina',
    Desc = 'input to loss with stamina.',
})
_call151:Button({
    Callback = function(_857, _857_2) end,
    Title = 'Enter Stamina Loss',
    Desc = 'enter to been stamina loss.',
})
_call151:Divider()
_call151:Slider({
    Value = {
        Min = 0,
        Default = 100,
        Max = 100,
    },
    Callback = function(_862, _862_2) end,
    Title = 'Repair Min Stamina',
    Desc = 'input to max with stamina.',
})
_call151:Button({
    Callback = function(_865) end,
    Title = 'Enter Stamina Min',
    Desc = 'enter to been stamina min.',
})
_call151:Divider()
_call151:Slider({
    Value = {
        Min = 0,
        Default = 100,
        Max = 100,
    },
    Callback = function(_870) end,
    Title = 'Repair Max Stamina',
    Desc = 'input to max with stamina.',
})
_call151:Button({
    Callback = function(_873, _873_2, _873_3) end,
    Title = 'Enter Stamina Max',
    Desc = 'enter to been stamina max.',
})
_call151:Divider()
_call151:Slider({
    Value = {
        Min = 0,
        Default = 27,
        Max = 100,
    },
    Callback = function(_878, _878_2, _878_3, _878_4, _878_5, _878_6) end,
    Title = 'Repair Sprint Speed',
    Desc = 'input to sprint with speed.',
})
_call151:Button({
    Callback = function(_881, _881_2, _881_3) end,
    Title = 'Enter Sprint Speed',
    Desc = 'enter to been stamina speed.',
})
_call151:Section({
    Title = 'Connect Stamina',
})
_call151:Toggle({
    Title = 'Alawys on Sprint',
    Desc = 'make for inf sprint now.',
})
_call151:Toggle({
    Callback = function(_888) end,
    Title = 'Infinite Stamina',
    Desc = 'if you front the kill use inf stamina.',
})
_call153:Section({
    Title = 'others',
    Desc = 'effects are him other what ever.',
})
_call153:Button({
    Title = 'Anti Stunned',
})
_call153:Button({
    Title = 'Anti Night',
})
_call153:Button({
    Title = 'Anti Fog',
})
_call153:Button({
    Title = 'Anti kick',
})
_call153:Button({
    Title = 'Anti ban',
})
_call153:Button({
    Title = 'Anti lag',
})
_call153:Button({
    Title = 'Anti stuck',
})
_call153:Section({
    Title = 'Sound',
    Desc = 'effects are him sound what ever.',
})
_call153:Button({
    Title = 'Anti noli laugh',
})
_call153:Button({
    Title = 'Anti secram sixer',
})
_call153:Button({
    Title = 'Anti john doe talk',
})
_call153:Button({
    Title = 'Anti ouch (Retro)',
})
_call153:Button({
    Title = 'Anti c00lkidd laugh',
})
_call153:Button({
    Title = 'Anti c00lkidd talk pizza',
})
_call153:Button({
    Title = 'Anti 2vs2 sound',
})
_call153:Section({
    Title = 'Forsaken Other',
    Desc = 'effects are him other what ever.',
})
_call153:Button({
    Title = 'Anti 1x1x1x1 giltch',
})
_call153:Button({
    Title = 'Anti john doe sptiker',
})
_call153:Button({
    Title = 'Anti shedletsky sword',
})
_call153:Button({
    Title = 'Anti text generator',
})
_call153:Button({
    Title = 'Anti c00lkidd pizza',
})
_call153:Button({
    Title = 'Anti 1x1x1x1 bot',
})
_call153:Button({
    Title = 'Anti sixer giltch',
})
_call155:Button({
    Title = 'FPS Boost',
    Callback = function(_939, _939_2, _939_3) end,
})
_call155:Button({
    Title = 'Dex Exploits',
    Callback = function() end,
})
_call155:Button({
    Title = 'Remotespy',
    Callback = function(_945, _945_2, _945_3, _945_4, _945_5) end,
})
_call155:Button({
    Title = 'Infinite Yield',
    Callback = function(_948, _948_2, _948_3, _948_4, _948_5) end,
})
_call155:Button({
    Title = 'Crasher',
    Callback = function() end,
})
_call155:Button({
    Title = 'Scriptblox search',
    Callback = function(_954, _954_2, _954_3, _954_4, _954_5) end,
})
_call157:Paragraph({
    Title = 'Yameme Hub System',
    Desc = 'please do not like this for but dont see like play system.',
})
_call157:Toggle({
    Title = 'Show Username',
    Callback = function(_959, _959_2) end,
})
_call157:Toggle({
    Title = 'Show Search',
})
_call157:Section({
    Title = 'Theme',
    Desc = 'add the theme in yameme hub system.',
})
_call157:Dropdown({
    Title = 'Select Theme',
    Value = 1,
    Values = {[1] = _116},
    Callback = function(_966) end,
    Desc = 'select to theme if you want it.',
})
_call157:Button({
    Title = 'Change Theme',
    Callback = function(_969, _969_2, _969_3) end,
})
_call157:Button({
    Title = 'Original Theme',
    Callback = function(_972, _972_2) end,
})
_call157:Section({
    Title = '',
    Desc = '@2026 Yameme Hub \n All Right Reversed',
})

local _ConfigManager975 = _call99.ConfigManager

_call159:Input({
    Callback = function(_978, _978_2, _978_3, _978_4, _978_5, _978_6) end,
    Title = 'Config Name',
    Icon = 'file-cog',
})
_call159:Space()
_call159:Toggle({
    Value = false,
    Title = 'Enable Auto Load to Selected Config',
    Callback = function(_983, _983_2, _983_3, _983_4, _983_5, _983_6) end,
})
_call159:Space()

local _call987 = _ConfigManager975:AllConfigs()

table.find(_call987, 'default')
_call159:Dropdown({
    Title = 'All Configs',
    Value = 'default',
    Values = _call987,
    Callback = function(_991, _991_2, _991_3, _991_4) end,
    Desc = 'Select existing configs',
})
_call159:Space()
_call159:Button({
    Callback = function(_996, _996_2, _996_3, _996_4) end,
    Justify = 'Center',
    Title = 'Save Config',
    Icon = '',
})
_call159:Space()
_call159:Button({
    Callback = function(_1001, _1001_2) end,
    Justify = 'Center',
    Title = 'Load Config',
    Icon = '',
})
_call159:Space()
_call159:Button({
    Callback = function() end,
    Justify = 'Center',
    Title = 'Print AutoLoad Configs',
    Icon = '',
})
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()
_call11.Heartbeat:Wait()

local _ = _call11.Heartbeat

error("line 1: runtime error: internal 583: <25ms: infinitelooperror>\nstack traceback:\n\t[C]: in function 'error'\n\tinternal 583: in ?\n\tinternal 635: in function '__index'\n\tline 1: in ?\n\tline 1: in ?")

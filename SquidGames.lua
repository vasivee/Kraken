-- Hexa Game
if game.placeId == 7549229959 or game.PlaceId == 7553566159 then
    -- Variables
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local CoreGui = game:GetService("CoreGui")
        local UIS = game:GetService("UserInputService")
        local lp = game:GetService('Players').LocalPlayer
        local char = lp.Character
        local root = char.HumanoidRootPart
        local mouse = lp:GetMouse()
        local camera = workspace.CurrentCamera
        local VIM = game:GetService("VirtualInputManager")
        local HS = game:GetService("HttpService")
        local UserInputService = game:GetService("UserInputService")
        local XLighting = game.GetService(game, "Lighting")
        local RunService = game:GetService("RunService")
        local Players   = game.GetService(game, "Players")
        local Player    = Players.LocalPlayer
        local Mouse     = Player:GetMouse()
        RunService.RenderStepped:Connect(function()
            char = lp.Character
            root = char.HumanoidRootPart
        end)
    -- UI
        local theme = {    
            SchemeColor = Color3.fromRGB(34,37,34),    
            Background = Color3.fromRGB(22, 22, 22),    
            Header = Color3.fromRGB(34,37,34),    
            TextColor = Color3.fromRGB(216, 219, 213),    
            ElementColor = Color3.fromRGB(110, 36, 40)
        }
        local SG = Library.CreateLib("    Voth | Hexa Game", theme)
    -- Tabs
        --Start
            local Start = SG:NewTab("Voth Info")
            local Games = SG:NewTab("Games")
            local Other = SG:NewTab("Other")
    -- Sections
        -- Start
            local Info = Start:NewSection("Info")
            local Credits = Start:NewSection("Credits")
        -- Games
            local RLGL = Games:NewSection("Red Light Green Light")
            local HoCo = Games:NewSection("Honeycomb")
            local Fite = Games:NewSection("Midnight Fight")
            local TOWa = Games:NewSection("Tug Of War")
            local Marb = Games:NewSection("Marbles")
            local GlBr = Games:NewSection("Glass Bridge")
            local SqGa = Games:NewSection("Squid Game")
            local Auto = Games:NewSection("Auto Farm")
        -- Other
            local Char = Other:NewSection('Character')
            
    -- Main Code
        -- Start
            -- Info
                Info:NewButton("Welcome to Voth [ Hexa Game ]","Text",function()
                    
                    end)
                Info:NewButton("https://discord.gg/XTnM6CKjWE","https://discord.gg/XTnM6CKjWE",function()
                    setclipboard("https://discord.gg/5XzQtXRK")
                    end)
                Info:NewButton("Visit the credits for creators!","Text",function()
            
                    end)
            -- Credits
                Credits:NewButton("Vasive | vasive#4460 > Original Creator","Copy",function()
                    setclipboard("vasive#4460")
                    end)
                Credits:NewButton("Moth | Moth#3319 > Helped with UI & coding","Copy",function()
                    setclipboard("Moth#3319")
                    end)
                Credits:NewButton("xHept > UI Creator","Copy",function()
                    setclipboard("https://xheptcofficial.gitbook.io/kavo-library/")
                    end)
        -- Games
            -- RLGL
                RLGL:NewButton("Teleport to end","Tps to the end of RLGL",function()
                    root.CFrame = game:GetService("Workspace").Detection.CFrame
                    end)
            -- HoCo
                HoCo:NewButton("Auto Finish","Automatically Carves the Honeycomb",function()
                    local u2 = require(game.ReplicatedStorage.Network);
                    for i,hitPart in pairs(workspace.Cookies:GetChildren()) do
                        if ((hitPart.CameraPart.CFrame.p - workspace.CurrentCamera.CFrame.p).Magnitude) == 0 then
                            for i,part in pairs(hitPart.Checker:GetChildren()) do
                            u2:InvokeServer("Verf", part.Position, part)
                            end 
                        end
                    end
                    end)
            -- Fite
                Fite:NewButton("Teleport to safe area","TPs out of map",function()
                    root.CFrame = CFrame.new(-534.6, -84.009, -320)
                    end)
            -- TOWa
                TOWa:NewToggle("Auto Tug","Automatically pulls",function(state)
                    while state and wait(0.1) do
                        game:GetService("ReplicatedStorage").RE.Pull:FireServer()
                    end
                    end)
                getgenv().Anchor = false;
                TOWa:NewToggle("Anchor","Makes your character unable to be moved",function(state)
                    getgenv().Anchor = state;
                    while  wait(0.1) do
                        if getgenv().Anchor then
                            root.Anchored = true;
                        else
                            root.Anchored = false;
                        end
                    end
                    end)
            -- Marb
                Marb:NewToggle("Godmode","Makes your character unable to take damage",function(state)
                            if state then
                                game:GetService("Players").LocalPlayer.Character.Parent = nil
                                wait(1)
                                _G.ON = true
                                while _G.ON and wait(0.1) do
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 1000
                                end
                            else 
                                game:GetService("Players").LocalPlayer.Character.Parent = game.Workspace
                                wait(1)
                                _G.ON = false
                                while _G.ON and wait(0.1) do
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 1000
                                end
                            end
                    end)
            -- GlBr
                GlBr:NewButton("Teleport to end","Tps to the end of the bridge",function()
                        root.CFrame = game:GetService("Workspace").MoveCloser.Detection2.CFrame
                    end)

            -- SqGa
                SqGa:NewToggle("Reach","Gives you infinite reach for push",function(state)
                    while wait() do
                        pcall(function()
                            for i, v in next, game.Players:GetChildren() do
                                if v.Character and v.Character:FindFirstChild"HumanoidRootPart" and v ~= game.Players.LocalPlayer and state then
                                    local punch = game.Players.LocalPlayer.Character.Punch
                                    firetouchinterest(punch.Handle, v.Character.HumanoidRootPart, 0)
                                    firetouchinterest(punch.Handle, v.Character.HumanoidRootPart, 1)
                                end
                            end
                        end)
                    end
                    end)
            -- Auto
                getgenv().Autofarm = false;
                Auto:NewToggle("Autofarm","Automatically completes all the games",function(state)
                    getgenv().Autofarm = state;
                    while wait() and getgenv().Autofarm do
                        local light = game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Lights.TextLabel
                        if light.Text == "Green Light" then
                            root.CFrame = game:GetService("Workspace").Detection.CFrame
                        end
                        if workspace.Cookies:FindFirstChildOfClass("Model") then
                            wait(3)
                            local u2 = require(game.ReplicatedStorage.Network);
                            for i,hitPart in pairs(workspace.Cookies:GetChildren()) do
                                if ((hitPart.CameraPart.CFrame.p - workspace.CurrentCamera.CFrame.p).Magnitude) == 0 then
                                    for i,part in pairs(hitPart.Checker:GetChildren()) do
                                    u2:InvokeServer("Verf", part.Position, part)
                                    end 
                                end
                            end
                        end
                        if game.Lighting.Ambient == Color3.fromRGB(75,74,95) then
                            root.CFrame = CFrame.new(-534.6, -84.009, -320)
                            wait(5)
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Pull.Visible then
                            game:GetService("ReplicatedStorage").RE.Pull:FireServer()
                            wait(0.1)
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Marbles.Main.Visible then
                            if game:GetService("Players").LocalPlayer.Character.Parent == nil then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 1000
                            else
                                game:GetService("Players").LocalPlayer.Character.Parent = nil
                                wait(1)
                            end
                            game.ReplicatedStorage.RE.MarbleRunner:FireServer("Even")
                            game.ReplicatedStorage.RE.MarbleRunner:FireServer("Odd")
                            else
                            if game:GetService("Players").LocalPlayer.Character.Parent == workspace then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 1000
                            else
                                game:GetService("Players").LocalPlayer.Character.Parent = workspace
                                wait(1)
                            end
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.MainTalk.TextLabel.Text == "You have 2 minutes to reach the end." then
                            root.CFrame = game:GetService("Workspace").MoveCloser.Detection2.CFrame
                            wait(5)
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Punch") then
                            pcall(function()
                                for i, v in next, game.Players:GetChildren() do
                                    if v.Character and v.Character:FindFirstChild"HumanoidRootPart" and v ~= game.Players.LocalPlayer then
                                        local punch = game.Players.LocalPlayer.Character.Punch
                                        root.Anchored = true;
                                        firetouchinterest(punch.Handle, v.Character.HumanoidRootPart, 0)
                                        firetouchinterest(punch.Handle, v.Character.HumanoidRootPart, 1)
                                    end
                                end
                            end)
                            punch:Activate();
                        end
                    end
                 end)
        -- Other
                Char:NewToggle("Force Walkspeed and Jump Height","Forces your walkspeed and jump to be 16 and 100",function(state)
                    _G.ON = state
                    if state then
                        while _G.ON and wait(0.1) do
                            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
                            game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
                        end
                    end
                end)
    -- Startup  
    wait(0.2)
    for i,v in pairs(CoreGui:GetChildren()) do
        if v:FindFirstChild("Main") and v:FindFirstChild("Main"):FindFirstChild("pages") then
            game:GetService("RunService").RenderStepped:Connect(function()
                v:FindFirstChild("Main").MainHeader.BackgroundColor3 = Color3.fromRGB(110, 36, 40)
                v:FindFirstChild("Main").MainHeader.coverup.BackgroundColor3 = Color3.fromRGB(110, 36, 40)
            end)
            local clone = v:FindFirstChild("Main").MainHeader:FindFirstChild("close"):Clone();
            clone.Image = "http://www.roblox.com/asset/?id=7705873799";
            clone.Parent = v:FindFirstChild("Main").MainHeader
            clone.Position = UDim2.new(0,-4,0,-4)
            clone.Size = UDim2.new(0,40,0,40)
            clone.Name = "Logo"
            clone.ImageRectOffset = Vector2.new(0,0)
            clone.ImageRectSize = Vector2.new(0,0)
            local opened = v:FindFirstChild("Main").Visible
                UIS.InputBegan:Connect(function(input, gameProcessed)
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        local keyPressed = input.KeyCode
                        if keyPressed == Enum.KeyCode.LeftControl then
                            v:FindFirstChild("Main").Visible = not opened
                            opened = not opened
                        end
                    end
                end)
        end
    end
    local bindable = Instance.new("BindableFunction")
    function bindable.OnInvoke(response)
        if response == "CANCEL!" then
            for i,v in pairs(CoreGui:GetChildren()) do
                if v:FindFirstChild("Main") and v:FindFirstChild("Main"):FindFirstChild("pages") then
                    v:Destroy()
                end
            end
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Voth";
        Text = "Successfully loaded!";
        Duration = 5;
        Callback = bindable;
        Button1 = "Ok";
        Button2 = "CANCEL!";
    })
end

            

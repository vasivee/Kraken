--// Lib
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

--// Window 
local Window = Library.CreateLib("ER:LC", "Synapse")

--// Tabs
local tps = Window:NewTab("Teleports")

--// Sections
local jew = tps:NewSection("Jewlery")
local HSing = tps:NewSection("Housing")
local atm = tps:NewSection("ATM")
local safe = tps:NewSection("Safe")
local tool = tps:NewSection("Tool")
local gs = tps:NewSection("Gun Store")
local spawn = tps:NewSection("Spawn")

--// Buttons
jew:NewButton("Teleport", "Teleports you to the jewlery store!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-464, 24, -425)
end)

HSing:NewButton("Teleport", "Teleports you to housing!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-654, -9, -1435)
end)

atm:NewButton("Teleport 1", "Teleports you to ATM 1!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(653, 4, -1535)
end)

atm:NewButton("Teleport 2", "Teleports you to ATM 2!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1001, 4, -25)
end)

atm:NewButton("Teleport 3", "Teleports you to ATM 3!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(810, 4, 377)
end)

safe:NewButton("Teleport", "Teleports you to safe area!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-239, 80, 500)
end)

tool:NewButton("Teleport", "Teleports you to the tool store!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-435, 24, -708)
end)

gs:NewButton("Teleport", "Teleports you to the gun store!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1229, 24, -195)
end)

spawn:NewButton("Teleport", "Teleports you to the spawn!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-564, 24, 703)
end)
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local TextBox = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextBox_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame.Position = UDim2.new(0.5, 0, -0.112716749, 0)
Frame.Size = UDim2.new(0, 451, 0, 194)

UICorner.Parent = Frame

UIGradient.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Frame_2.Position = UDim2.new(0.0133037698, 0, 0.030927835, 0)
Frame_2.Size = UDim2.new(0, 439, 0, 182)

UICorner_2.Parent = Frame_2

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(213, 213, 213)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(213, 213, 213))}
UIGradient_2.Parent = Frame_2

TextBox.Name = "TextBox"
TextBox.Parent = Frame_2
TextBox.Active = true
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.270328164, 0, 0.360145003, 0)
TextBox.Selectable = true
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SciFi
TextBox.Text = "Game Name"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0131687075, 0, 0.0260234717, 0)
ImageLabel.Size = UDim2.new(0, 37, 0, 36)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8013424426"

TextBox_2.Name = "TextBox"
TextBox_2.Parent = Frame
TextBox_2.Active = true
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BackgroundTransparency = 1.000
TextBox_2.Position = UDim2.new(0.27476275, 0, 0.107567698, 0)
TextBox_2.Selectable = true
TextBox_2.Size = UDim2.new(0, 200, 0, 50)
TextBox_2.Font = Enum.Font.SciFi
TextBox_2.Text = "Voth Hub"
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextWrapped = true

-- Scripts:

local function NUNMDQ_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local Game_Name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	local gameName = Game_Name
	
	script.Parent.Frame.Frame.TextBox.Text = gameName
	
	game:GetService("TweenService"):Create(script.Parent.Frame, TweenInfo.new(1), { Position = UDim2.new(0.5,0.5,0.5,0.5) }):Play()
	
	wait(3)
	
	game:GetService("TweenService"):Create(script.Parent.Frame, TweenInfo.new(1), { Position = UDim2.new(0.5,0.5,1.5,0)}):Play()
	
	wait(5)
	
	script.Parent:remove()
end
coroutine.wrap(NUNMDQ_fake_script)()

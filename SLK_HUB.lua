--// SLK HUB        VERSION v1
--// BY SLK GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Player = Players.LocalPlayer

-- CLEAN OLD
for _,v in pairs(Player.PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_MENU" then
		v:Destroy()
	end
end

--------------------------------------------------
-- LOADING
--------------------------------------------------
local loadGui = Instance.new("ScreenGui", Player.PlayerGui)
loadGui.Name = "SLK_LOADING"
loadGui.ResetOnSpawn = false

local loadFrame = Instance.new("Frame", loadGui)
loadFrame.Size = UDim2.new(0,420,0,260)
loadFrame.Position = UDim2.new(0.5,-210,0.5,-130)
loadFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
loadFrame.BorderSizePixel = 2

local title = Instance.new("TextLabel", loadFrame)
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,15)
title.BackgroundTransparency = 1
title.Text = "SLK GAMING"
title.Font = Enum.Font.GothamBlack
title.TextSize = 30
title.TextColor3 = Color3.new(0,0,0)

local barBG = Instance.new("Frame", loadFrame)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundColor3 = Color3.new(0,0,0)
barBG.BorderSizePixel = 0

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local percent = Instance.new("TextLabel", loadFrame)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.55,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.new(0,0,0)

local welcome = Instance.new("TextLabel", loadFrame)
welcome.Size = UDim2.new(1,0,0,40)
welcome.Position = UDim2.new(0,0,0.65,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 15
welcome.TextWrapped = true
welcome.TextColor3 = Color3.new(0,0,0)

local steps = {
	{p=0,   t="Welcome to SLK Gaming Hub"},
	{p=25,  t="Loading UI modules..."},
	{p=50,  t="Loading main features..."},
	{p=75,  t="Almost ready..."},
	{p=100, t="Completed! Enjoy 🎮"}
}

for _,s in ipairs(steps) do
	percent.Text = "Loading "..s.p.."%"
	welcome.Text = s.t
	TweenService:Create(
		bar,
		TweenInfo.new(1, Enum.EasingStyle.Quad),
		{Size = UDim2.new(s.p/100,0,1,0)}
	):Play()
	task.wait(1.1)
end

loadGui:Destroy()

--------------------------------------------------
-- MENU
--------------------------------------------------
local gui = Instance.new("ScreenGui", Player.PlayerGui)
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,480,0,320)
main.Position = UDim2.new(0.5,-240,0.5,-160)
main.BackgroundColor3 = Color3.fromRGB(25,25,25)
main.BorderSizePixel = 0

-- TOP BAR
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,40)
top.BackgroundColor3 = Color3.fromRGB(35,35,35)

local name = Instance.new("TextLabel", top)
name.Size = UDim2.new(1,-40,1,0)
name.Position = UDim2.new(0,10,0,0)
name.BackgroundTransparency = 1
name.Text = "SLK GAMING HUB"
name.Font = Enum.Font.GothamBold
name.TextSize = 18
name.TextXAlignment = Left
name.TextColor3 = Color3.new(1,1,1)

local minimize = Instance.new("TextButton", top)
minimize.Size = UDim2.new(0,40,1,0)
minimize.Position = UDim2.new(1,-40,0,0)
minimize.Text = "-"
minimize.Font = Enum.Font.GothamBlack
minimize.TextSize = 24
minimize.TextColor3 = Color3.new(1,1,1)
minimize.BackgroundTransparency = 1

-- CONTENT
local content = Instance.new("Frame", main)
content.Size = UDim2.new(1,0,1,-40)
content.Position = UDim2.new(0,0,0,40)
content.BackgroundTransparency = 1

-- DRAG
local dragging, dragStart, startPos
top.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = main.Position
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		main.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

-- MINIMIZE
local minimized = false
minimize.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and UDim2.new(0,300,0,40) or UDim2.new(0,480,0,320)
end)

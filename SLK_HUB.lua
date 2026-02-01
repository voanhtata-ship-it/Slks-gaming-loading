--// SLK GAMING HUB v1
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- CLEAN OLD
if player.PlayerGui:FindFirstChild("SLK_LOADING") then
	player.PlayerGui.SLK_LOADING:Destroy()
end
if player.PlayerGui:FindFirstChild("SLK_MENU") then
	player.PlayerGui.SLK_MENU:Destroy()
end

------------------------------------------------
--============== LOADING =====================--
------------------------------------------------
local loadingGui = Instance.new("ScreenGui", player.PlayerGui)
loadingGui.Name = "SLK_LOADING"
loadingGui.ResetOnSpawn = false

local frame = Instance.new("Frame", loadingGui)
frame.Size = UDim2.new(0,420,0,260)
frame.Position = UDim2.new(0.5,-210,0.5,-130)
frame.BackgroundColor3 = Color3.fromRGB(245,245,245)
frame.BorderSizePixel = 2

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,10)
title.BackgroundTransparency = 1
title.Text = "SLK GAMING"
title.Font = Enum.Font.GothamBlack
title.TextSize = 30
title.TextColor3 = Color3.fromRGB(0,0,0)

local welcome = Instance.new("TextLabel", frame)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0,55)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(50,50,50)
welcome.Text = "Welcome!"

local barBG = Instance.new("Frame", frame)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundColor3 = Color3.fromRGB(30,30,30)
barBG.BorderSizePixel = 0

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local percent = Instance.new("TextLabel", frame)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.fromRGB(0,0,0)
percent.Text = "Loading 0%"

-- Binary text
local binary = Instance.new("TextLabel", frame)
binary.Size = UDim2.new(1,0,0,20)
binary.Position = UDim2.new(1,0,0.75,0)
binary.BackgroundTransparency = 1
binary.Font = Enum.Font.Code
binary.TextSize = 14
binary.TextColor3 = Color3.fromRGB(0,0,0)
binary.Text = "1010101010010101010101010101"

-- Binary animation
task.spawn(function()
	while loadingGui.Parent do
		binary.Position = UDim2.new(1,0,0.75,0)
		TweenService:Create(
			binary,
			TweenInfo.new(2, Enum.EasingStyle.Linear),
			{Position = UDim2.new(-1,0,0.75,0)}
		):Play()
		task.wait(2)
	end
end)

-- Loading progress
for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 0 then
		welcome.Text = "Starting script..."
	elseif i == 25 then
		welcome.Text = "Loading assets..."
	elseif i == 50 then
		welcome.Text = "Preparing menu..."
	elseif i == 75 then
		welcome.Text = "Almost done..."
	elseif i == 100 then
		welcome.Text = "Done!"
	end

	task.wait(0.05)
end

loadingGui:Destroy()

------------------------------------------------
--============== MENU ========================--
------------------------------------------------
local menuGui = Instance.new("ScreenGui", player.PlayerGui)
menuGui.Name = "SLK_MENU"
menuGui.ResetOnSpawn = false

local main = Instance.new("Frame", menuGui)
main.Size = UDim2.new(0,450,0,300)
main.Position = UDim2.new(0.5,-225,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(25,25,25)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,40)
top.BackgroundColor3 = Color3.fromRGB(35,35,35)

local title2 = Instance.new("TextLabel", top)
title2.Size = UDim2.new(1,-40,1,0)
title2.Position = UDim2.new(0,10,0,0)
title2.BackgroundTransparency = 1
title2.Text = "SLK GAMING HUB"
title2.Font = Enum.Font.GothamBold
title2.TextSize = 18
title2.TextColor3 = Color3.fromRGB(255,255,255)
title2.TextXAlignment = Left

local minimize = Instance.new("TextButton", top)
minimize.Size = UDim2.new(0,30,0,30)
minimize.Position = UDim2.new(1,-35,0,5)
minimize.Text = "-"
minimize.Font = Enum.Font.GothamBold
minimize.TextSize = 20
minimize.BackgroundColor3 = Color3.fromRGB(60,60,60)
minimize.TextColor3 = Color3.fromRGB(255,255,255)

local content = Instance.new("Frame", main)
content.Size = UDim2.new(1,0,1,-40)
content.Position = UDim2.new(0,0,0,40)
content.BackgroundTransparency = 1

local minimized = false
minimize.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and UDim2.new(0,450,0,40) or UDim2.new(0,450,0,300)
end)

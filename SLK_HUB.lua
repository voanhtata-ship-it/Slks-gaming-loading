--// SLK GAMING LOADING

local TweenService = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer

-- CLEAN OLD
if Player.PlayerGui:FindFirstChild("SLK_LOADING") then
	Player.PlayerGui.SLK_LOADING:Destroy()
end

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = Player.PlayerGui

-- FRAME
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,420,0,260)
frame.Position = UDim2.new(0.5,-210,0.5,-130)
frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame.BorderSizePixel = 2
frame.ClipsDescendants = true

-- TITLE
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,10)
title.BackgroundTransparency = 1
title.Text = "SLK HUB        VERSION v1"
title.Font = Enum.Font.GothamBlack
title.TextSize = 26
title.TextColor3 = Color3.fromRGB(0,0,0)

-- BY
local by = Instance.new("TextLabel", frame)
by.Size = UDim2.new(1,0,0,20)
by.Position = UDim2.new(0,0,0,50)
by.BackgroundTransparency = 1
by.Text = "BY SLK GAMING"
by.Font = Enum.Font.Gotham
by.TextSize = 14
by.TextColor3 = Color3.fromRGB(80,80,80)

-- BAR BG
local barBG = Instance.new("Frame", frame)
barBG.Size = UDim2.new(0.8,0,0,18)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundColor3 = Color3.fromRGB(0,0,0)
barBG.BorderSizePixel = 0

-- BAR
local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

-- PERCENT
local percent = Instance.new("TextLabel", frame)
percent.Size = UDim2.new(1,0,0,22)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 15
percent.TextColor3 = Color3.fromRGB(0,0,0)
percent.Text = "Loading 0%"

-- WELCOME
local welcome = Instance.new("TextLabel", frame)
welcome.Size = UDim2.new(1,0,0,22)
welcome.Position = UDim2.new(0,0,0.62,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 15
welcome.TextColor3 = Color3.fromRGB(0,0,0)
welcome.Text = "Starting..."

-- BINARY
local binary = Instance.new("TextLabel", frame)
binary.Size = UDim2.new(1,-40,0,20)
binary.Position = UDim2.new(0,20,0.75,0)
binary.BackgroundTransparency = 1
binary.Text = "101010101010101010101010101010101010101010101010"
binary.Font = Enum.Font.Code
binary.TextSize = 14
binary.TextColor3 = Color3.fromRGB(0,0,0)
binary.TextXAlignment = Enum.TextXAlignment.Left
binary.ClipsDescendants = true

-- GRADIENT FOR BINARY MOVE
local grad = Instance.new("UIGradient", binary)
grad.Offset = Vector2.new(1,0)

-- BINARY ANIMATION (ONLY INSIDE FRAME)
task.spawn(function()
	while gui.Parent do
		grad.Offset = Vector2.new(1,0)
		grad:TweenOffset(
			Vector2.new(-1,0),
			Enum.EasingDirection.Linear,
			Enum.EasingStyle.Linear,
			3,
			true
		)
		task.wait(3)
	end
end)

-- LOADING PROCESS (10s)
for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 0 then
		welcome.Text = "Starting script..."
	elseif i == 25 then
		welcome.Text = "Hello! Welcome to script"
	elseif i == 50 then
		welcome.Text = "Script will ready"
	elseif i == 75 then
		welcome.Text = "Wait for script"
	elseif i == 100 then
		welcome.Text = "Script has Working! ✅"
	end

	task.wait(0.1)
end

-- END EFFECT
TweenService:Create(frame, TweenInfo.new(0.6), {
	Size = UDim2.new(0,0,0,0),
	BackgroundTransparency = 1
}):Play()

for _,v in ipairs(frame:GetDescendants()) do
	if v:IsA("TextLabel") then
		TweenService:Create(v, TweenInfo.new(0.6), {TextTransparency = 1}):Play()
	end
end

task.wait(0.7)
gui:Destroy()

--// SLK HUB MENU v1
--// BY SLK GAMING

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- CLEAN OLD
if player.PlayerGui:FindFirstChild("SLK_MENU") then
	player.PlayerGui.SLK_MENU:Destroy()
end

-- GUI
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false

-- MAIN FRAME
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,540,0,330)
main.Position = UDim2.new(0.5,-270,0.5,-165)
main.BackgroundColor3 = Color3.fromRGB(255,255,255)
main.BackgroundTransparency = 0.15
main.BorderSizePixel = 2
main.Active = true
main.Draggable = true

-- TOP BAR
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundTransparency = 1
top.Active = true
top.Draggable = true

-- TITLE
local title = Instance.new("TextLabel", top)
title.Position = UDim2.new(0,12,0,4)
title.Size = UDim2.new(1,-120,0,22)
title.BackgroundTransparency = 1
title.TextXAlignment = Left
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(0,0,0)
title.Text = "SLK HUB        VERSION v1"

-- SUB
local sub = Instance.new("TextLabel", top)
sub.Position = UDim2.new(0,12,0,24)
sub.Size = UDim2.new(1,-120,0,18)
sub.BackgroundTransparency = 1
sub.TextXAlignment = Left
sub.Font = Enum.Font.Gotham
sub.TextSize = 13
sub.TextColor3 = Color3.fromRGB(80,80,80)
sub.Text = "BY SLK GAMING"

-- MINIMIZE BUTTON
local minimize = Instance.new("TextButton", top)
minimize.Size = UDim2.new(0,35,0,30)
minimize.Position = UDim2.new(1,-80,0,7)
minimize.Text = "-"
minimize.Font = Enum.Font.GothamBlack
minimize.TextSize = 20
minimize.TextColor3 = Color3.fromRGB(255,255,255)
minimize.BackgroundColor3 = Color3.fromRGB(120,120,120)

-- CLOSE BUTTON
local close = Instance.new("TextButton", top)
close.Size = UDim2.new(0,35,0,30)
close.Position = UDim2.new(1,-40,0,7)
close.Text = "X"
close.Font = Enum.Font.GothamBlack
close.TextSize = 16
close.TextColor3 = Color3.fromRGB(255,255,255)
close.BackgroundColor3 = Color3.fromRGB(200,60,60)

close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- CONTENT
local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,0,0,45)
content.Size = UDim2.new(1,0,1,-45)
content.BackgroundTransparency = 1

-- DEMO LABEL
local demo = Instance.new("TextLabel", content)
demo.Size = UDim2.new(1,0,1,0)
demo.BackgroundTransparency = 1
demo.Text = "MENU CONTENT HERE"
demo.Font = Enum.Font.Code
demo.TextSize = 18
demo.TextColor3 = Color3.fromRGB(0,0,0)

-- MINIMIZE LOGIC
local minimized = false
local normalSize = main.Size

minimize.MouseButton1Click:Connect(function()
	if not minimized then
		content.Visible = false
		main.Size = UDim2.new(0,540,0,45)
		minimized = true
	else
		content.Visible = true
		main.Size = normalSize
		minimized = false
	end
end)

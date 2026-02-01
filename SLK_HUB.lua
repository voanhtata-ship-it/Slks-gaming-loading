-- SLK GAMING LOADING | FULL VERSION

local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = Player:WaitForChild("PlayerGui")

-- FRAME
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 420, 0, 260)
frame.Position = UDim2.new(0.5, -210, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame.BorderSizePixel = 2

-- TITLE
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,10)
title.BackgroundTransparency = 1
title.Text = "SLK HUB"
title.Font = Enum.Font.GothamBlack
title.TextSize = 32
title.TextColor3 = Color3.fromRGB(0,0,0)

local by = Instance.new("TextLabel", frame)
by.Size = UDim2.new(1,0,0,20)
by.Position = UDim2.new(0,0,0,55)
by.BackgroundTransparency = 1
by.Text = "By SLK GAMING"
by.Font = Enum.Font.Gotham
by.TextSize = 14
by.TextColor3 = Color3.fromRGB(80,80,80)

-- LOADING BAR BACK
local barBack = Instance.new("Frame", frame)
barBack.Size = UDim2.new(0.8,0,0,20)
barBack.Position = UDim2.new(0.1,0,0.45,0)
barBack.BackgroundColor3 = Color3.fromRGB(0,0,0)
barBack.BorderSizePixel = 0

-- BAR
local bar = Instance.new("Frame", barBack)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

-- PERCENT
local percent = Instance.new("TextLabel", frame)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Text = "Loading 0%"
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.fromRGB(0,0,0)

-- WELCOME TEXT
local welcome = Instance.new("TextLabel", frame)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Text = "Welcome to script"
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(0,0,0)

-- BINARY TEXT
local binary = Instance.new("TextLabel", frame)
binary.Size = UDim2.new(0,200,0,20)
binary.Position = UDim2.new(0.1,0,0.75,0)
binary.BackgroundTransparency = 1
binary.Text = "10001010111001"
binary.Font = Enum.Font.Code
binary.TextSize = 14
binary.TextColor3 = Color3.fromRGB(0,0,0)

-- BINARY MOVE LOOP
task.spawn(function()
	while gui.Parent do
		binary:TweenPosition(UDim2.new(0.6,0,0.75,0), "InOut", "Linear", 1, true)
		task.wait(1)
		binary:TweenPosition(UDim2.new(0.1,0,0.75,0), "InOut", "Linear", 1, true)
		task.wait(1)
	end
end)

-- LOADING (10 SECONDS)
local totalTime = 10
local steps = 100
local delayTime = totalTime / steps

for i = 0, 100 do
	percent.Text = "Loading "..i.."%"
	bar.Size = UDim2.new(i/100,0,1,0)

	if i == 25 then
		welcome.Text = "Hello! Welcome to script"
	elseif i == 50 then
		welcome.Text = "Script will ready"
	elseif i == 75 then
		welcome.Text = "Wait for script"
	elseif i == 100 then
		welcome.Text = "Script has Working! ✅"
	end

	task.wait(delayTime)
end

-- END EFFECT
task.wait(0.5)

frame:TweenSize(
	UDim2.new(0,0,0,0),
	Enum.EasingDirection.InOut,
	Enum.EasingStyle.Quad,
	0.8,
	true
)

for _,v in pairs(frame:GetDescendants()) do
	if v:IsA("TextLabel") then
		TweenService:Create(v,TweenInfo.new(0.8),{TextTransparency=1}):Play()
	elseif v:IsA("Frame") then
		TweenService:Create(v,TweenInfo.new(0.8),{BackgroundTransparency=1}):Play()
	end
end

task.wait(0.9)
gui:Destroy()

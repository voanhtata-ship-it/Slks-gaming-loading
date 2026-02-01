--// SLK HUB        VERSION v1
--// BY SLK GAMING

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- ================= LOADING GUI =================
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = Player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 420, 0, 260)
frame.Position = UDim2.new(0.5, -210, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame.BorderSizePixel = 2

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

local barBack = Instance.new("Frame", frame)
barBack.Size = UDim2.new(0.8,0,0,20)
barBack.Position = UDim2.new(0.1,0,0.45,0)
barBack.BackgroundColor3 = Color3.fromRGB(0,0,0)
barBack.BorderSizePixel = 0

local bar = Instance.new("Frame", barBack)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

local percent = Instance.new("TextLabel", frame)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Text = "Loading 0%"
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.fromRGB(0,0,0)

local welcome = Instance.new("TextLabel", frame)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Text = "Welcome to script"
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(0,0,0)

local binary = Instance.new("TextLabel", frame)
binary.Size = UDim2.new(0,600,0,20)
binary.Position = UDim2.new(-1,0,0.75,0)
binary.BackgroundTransparency = 1
binary.Text = "100101010101010101010101010101010"
binary.Font = Enum.Font.Code
binary.TextSize = 14
binary.TextColor3 = Color3.fromRGB(0,0,0)
binary.TextXAlignment = Enum.TextXAlignment.Left

task.spawn(function()
	while gui.Parent do
		binary.Position = UDim2.new(-1,0,0.75,0)
		binary:TweenPosition(
			UDim2.new(1,0,0.75,0),
			Enum.EasingDirection.Linear,
			Enum.EasingStyle.Linear,
			4,
			true
		)
		task.wait(4)
	end
end)

-- ================= LOADING PROCESS =================
local totalTime = 10
for i = 0,100 do
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

	task.wait(totalTime/100)
end

-- ================= END LOADING =================
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

-- ================= MENU HUB =================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SLK_HUB_GUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0,540,0,330)
Main.Position = UDim2.new(0.5,-270,0.5,-165)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 1
Main.BorderColor3 = Color3.fromRGB(0,200,0)
Main.BorderSizePixel = 2
Main.Visible = true
Main.Active = false
Main.Draggable = false

local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,55)
Top.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", Top)
Title.Position = UDim2.new(0,12,0,5)
Title.Size = UDim2.new(1,-60,0,25)
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(0,0,0)
Title.Text = "SLK HUB        VERSION v1"

local Sub = Instance.new("TextLabel", Top)
Sub.Position = UDim2.new(0,12,0,30)
Sub.Size = UDim2.new(1,-60,0,20)
Sub.BackgroundTransparency = 1
Sub.TextXAlignment = Enum.TextXAlignment.Left
Sub.Font = Enum.Font.SourceSans
Sub.TextSize = 14
Sub.TextColor3 = Color3.fromRGB(80,80,80)
Sub.Text = "BY SLK GAMING"

-- Fade in menu
TweenService:Create(Main,TweenInfo.new(0.8),{BackgroundTransparency=0.2}):Play()
for _,v in pairs(Main:GetDescendants()) do
	if v:IsA("TextLabel") then
		v.TextTransparency = 1
		TweenService:Create(v,TweenInfo.new(0.8),{TextTransparency=0}):Play()
	end
end

task.wait(0.9)
Main.Active = true
Main.Draggable = true

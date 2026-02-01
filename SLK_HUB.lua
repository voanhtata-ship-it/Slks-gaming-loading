-- SLK GAMING LOADING | FULL FIX VERSION

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

-- BINARY TEXT (DÀI – CHẠY 1 CHIỀU – LẶP)
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

-- LOADING (10 GIÂY)
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

-- END EFFECT (THU NHỎ + MỜ + BIẾN MẤT)
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

-- SLK HUB VERSION V1
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SLK_HUB_V1"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- MAIN FRAME
local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 520, 0, 320)
Main.Position = UDim2.new(0.5, -260, 0.5, -160)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.2
Main.BorderSizePixel = 2
Main.BorderColor3 = Color3.fromRGB(0, 200, 0)
Main.Active = false
Main.Draggable = false
Main.Visible = false

-- TOP BAR
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1, 0, 0, 40)
Top.BackgroundColor3 = Color3.fromRGB(255,255,255)
Top.BackgroundTransparency = 0.1
Top.BorderSizePixel = 0

-- TITLE
local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1, -50, 1, 0)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.BackgroundTransparency = 1
Title.TextXAlignment = Left
Title.TextYAlignment = Center
Title.TextWrapped = true
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 16
Title.TextColor3 = Color3.fromRGB(0,0,0)
Title.Text =
	"SLK HUB        VERSION V1\nBY SLK GAMING"

-- CLOSE
local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0, 40, 1, 0)
Close.Position = UDim2.new(1, -40, 0, 0)
Close.Text = "X"
Close.Font = Enum.Font.SourceSansBold
Close.TextSize = 16
Close.TextColor3 = Color3.fromRGB(255,255,255)
Close.BackgroundColor3 = Color3.fromRGB(220, 60, 60)

Close.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

-- TAB
local Tabs = Instance.new("Frame", Main)
Tabs.Position = UDim2.new(0, 0, 0, 40)
Tabs.Size = UDim2.new(0, 160, 1, -40)
Tabs.BackgroundColor3 = Color3.fromRGB(255,255,255)
Tabs.BackgroundTransparency = 0.25
Tabs.BorderColor3 = Color3.fromRGB(0,200,0)
Tabs.BorderSizePixel = 1

-- CONTENT
local Content = Instance.new("Frame", Main)
Content.Position = UDim2.new(0, 160, 0, 40)
Content.Size = UDim2.new(1, -160, 1, -40)
Content.BackgroundColor3 = Color3.fromRGB(255,255,255)
Content.BackgroundTransparency = 0.15
Content.BorderColor3 = Color3.fromRGB(0,200,0)
Content.BorderSizePixel = 1

local Label = Instance.new("TextLabel", Content)
Label.Size = UDim2.new(1, 0, 1, 0)
Label.BackgroundTransparency = 1
Label.Text = "CONTENT"
Label.Font = Enum.Font.SourceSansBold
Label.TextSize = 18
Label.TextColor3 = Color3.fromRGB(0,0,0)

-- FADE IN AFTER LOADING
task.wait(0.2)
Main.Visible = true
Main.BackgroundTransparency = 1
Top.BackgroundTransparency = 1

local fadeIn = TweenService:Create(
	Main,
	TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0.2}
)
fadeIn:Play()

task.wait(0.8)
Main.Active = true
Main.Draggable = true

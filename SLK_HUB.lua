--// SLK HUB        VERSION v1
--// BY SLK GAMING

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- ================= SCREEN GUI =================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SLK_GUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

-- ================= LOADING =================
local Loading = Instance.new("Frame", ScreenGui)
Loading.Size = UDim2.new(0,420,0,260)
Loading.Position = UDim2.new(0.5,-210,0.5,-130)
Loading.BackgroundColor3 = Color3.fromRGB(255,255,255)
Loading.BorderSizePixel = 2
Loading.BorderColor3 = Color3.fromRGB(0,200,0)

local Title = Instance.new("TextLabel", Loading)
Title.Size = UDim2.new(1,0,0,45)
Title.Position = UDim2.new(0,0,0,10)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB"
Title.Font = Enum.Font.GothamBlack
Title.TextSize = 30
Title.TextColor3 = Color3.fromRGB(0,0,0)

local By = Instance.new("TextLabel", Loading)
By.Size = UDim2.new(1,0,0,20)
By.Position = UDim2.new(0,0,0,55)
By.BackgroundTransparency = 1
By.Text = "BY SLK GAMING"
By.Font = Enum.Font.Gotham
By.TextSize = 14
By.TextColor3 = Color3.fromRGB(80,80,80)

local Percent = Instance.new("TextLabel", Loading)
Percent.Size = UDim2.new(1,0,0,25)
Percent.Position = UDim2.new(0,0,0.55,0)
Percent.BackgroundTransparency = 1
Percent.Text = "Loading 0%"
Percent.Font = Enum.Font.Code
Percent.TextSize = 16
Percent.TextColor3 = Color3.fromRGB(0,0,0)

local Welcome = Instance.new("TextLabel", Loading)
Welcome.Size = UDim2.new(1,0,0,25)
Welcome.Position = UDim2.new(0,0,0.65,0)
Welcome.BackgroundTransparency = 1
Welcome.Text = "Welcome to script"
Welcome.Font = Enum.Font.Code
Welcome.TextSize = 16
Welcome.TextColor3 = Color3.fromRGB(0,0,0)

local BarBG = Instance.new("Frame", Loading)
BarBG.Size = UDim2.new(0.8,0,0,20)
BarBG.Position = UDim2.new(0.1,0,0.45,0)
BarBG.BackgroundColor3 = Color3.fromRGB(0,0,0)
BarBG.BorderSizePixel = 0

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
Bar.BorderSizePixel = 0

local Binary = Instance.new("TextLabel", Loading)
Binary.Size = UDim2.new(0,700,0,20)
Binary.Position = UDim2.new(-1,0,0.78,0)
Binary.BackgroundTransparency = 1
Binary.Text = "100101010101010101010101010101010"
Binary.Font = Enum.Font.Code
Binary.TextSize = 14
Binary.TextColor3 = Color3.fromRGB(0,0,0)
Binary.TextXAlignment = Enum.TextXAlignment.Left

task.spawn(function()
	while Binary.Parent do
		Binary.Position = UDim2.new(-1,0,0.78,0)
		Binary:TweenPosition(
			UDim2.new(1,0,0.78,0),
			Enum.EasingDirection.Linear,
			Enum.EasingStyle.Linear,
			4,
			true
		)
		task.wait(4)
	end
end)

-- ================= LOADING PROCESS (10s) =================
local totalTime = 10
for i = 0,100 do
	Percent.Text = "Loading "..i.."%"
	Bar.Size = UDim2.new(i/100,0,1,0)

	if i == 25 then
		Welcome.Text = "Hello! Welcome to script"
	elseif i == 50 then
		Welcome.Text = "Script will ready"
	elseif i == 75 then
		Welcome.Text = "Wait for script"
	elseif i == 100 then
		Welcome.Text = "Script has Working! ✅"
	end

	task.wait(totalTime/100)
end

-- ================= END LOADING =================
TweenService:Create(
	Loading,
	TweenInfo.new(0.8,Enum.EasingStyle.Quad),
	{Size = UDim2.new(0,0,0,0), BackgroundTransparency = 1}
):Play()

for _,v in pairs(Loading:GetDescendants()) do
	if v:IsA("TextLabel") then
		TweenService:Create(v,TweenInfo.new(0.6),{TextTransparency=1}):Play()
	elseif v:IsA("Frame") then
		TweenService:Create(v,TweenInfo.new(0.6),{BackgroundTransparency=1}):Play()
	end
end

task.wait(0.9)
Loading:Destroy()

-- ================= MENU HUB =================
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0,540,0,330)
Main.Position = UDim2.new(0.5,-270,0.5,-165)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 1
Main.BorderColor3 = Color3.fromRGB(0,200,0)
Main.BorderSizePixel = 2
Main.Active = false
Main.Draggable = false

local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,55)
Top.BackgroundTransparency = 1

local T1 = Instance.new("TextLabel", Top)
T1.Position = UDim2.new(0,12,0,8)
T1.Size = UDim2.new(1,-60,0,25)
T1.BackgroundTransparency = 1
T1.TextXAlignment = Left
T1.Font = Enum.Font.SourceSansBold
T1.TextSize = 18
T1.TextColor3 = Color3.fromRGB(0,0,0)
T1.Text = "SLK HUB        VERSION v1"

local T2 = Instance.new("TextLabel", Top)
T2.Position = UDim2.new(0,12,0,30)
T2.Size = UDim2.new(1,-60,0,20)
T2.BackgroundTransparency = 1
T2.TextXAlignment = Left
T2.Font = Enum.Font.SourceSans
T2.TextSize = 14
T2.TextColor3 = Color3.fromRGB(80,80,80)
T2.Text = "BY SLK GAMING"

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

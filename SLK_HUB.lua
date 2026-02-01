--// SLK HUB - VERSION V1
--// Forsaken | by SLK GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

--------------------------------------------------
-- LOADING (KHÔNG KÉO - KHÔNG TRONG SUỐT)
--------------------------------------------------
local Loading = Instance.new("Frame", gui)
Loading.Size = UDim2.fromScale(1,1)
Loading.BackgroundColor3 = Color3.fromRGB(10,10,10)
Loading.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Loading)
Title.Size = UDim2.fromScale(1,0.15)
Title.Position = UDim2.fromScale(0,0.3)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true

local Status = Instance.new("TextLabel", Loading)
Status.Size = UDim2.fromScale(1,0.1)
Status.Position = UDim2.fromScale(0,0.45)
Status.BackgroundTransparency = 1
Status.Text = "Initializing..."
Status.TextColor3 = Color3.fromRGB(200,200,200)
Status.Font = Enum.Font.Gotham
Status.TextScaled = true

local BarBG = Instance.new("Frame", Loading)
BarBG.Size = UDim2.fromScale(0.6,0.035)
BarBG.Position = UDim2.fromScale(0.2,0.6)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
BarBG.BorderSizePixel = 0

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.fromScale(0,1)
Bar.BackgroundColor3 = Color3.fromRGB(220,220,220)
Bar.BorderSizePixel = 0

local Percent = Instance.new("TextLabel", Loading)
Percent.Size = UDim2.fromScale(1,0.08)
Percent.Position = UDim2.fromScale(0,0.65)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.TextColor3 = Color3.new(1,1,1)
Percent.Font = Enum.Font.GothamBold
Percent.TextScaled = true

local function statusText(p)
	if p < 25 then
		return "Initializing..."
	elseif p < 50 then
		return "Loading assets..."
	elseif p < 75 then
		return "Setting UI..."
	elseif p < 100 then
		return "Almost done..."
	else
		return "Done!"
	end
end

for i = 0,100 do
	Bar.Size = UDim2.fromScale(i/100,1)
	Percent.Text = i.."%"
	Status.Text = statusText(i)
	task.wait(0.03)
end

-- Thu nhỏ rồi mất
TweenService:Create(
	Loading,
	TweenInfo.new(0.6,Enum.EasingStyle.Quad,Enum.EasingDirection.In),
	{Size = UDim2.fromScale(0,0), Position = UDim2.fromScale(0.5,0.5)}
):Play()

task.wait(0.65)
Loading:Destroy()

--------------------------------------------------
-- MENU (TRONG SUỐT - TO - KÉO ĐƯỢC)
--------------------------------------------------
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.75,0.75)
Main.Position = UDim2.fromScale(0.125,0.125)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.15
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local UICorner = Instance.new("UICorner", Main)
UICorner.CornerRadius = UDim.new(0,16)

-- Header
local Header = Instance.new("TextLabel", Main)
Header.Size = UDim2.fromScale(1,0.12)
Header.BackgroundTransparency = 1
Header.Text = "SLK HUB        VERSION V1\nForsaken | by SLK GAMING"
Header.TextColor3 = Color3.fromRGB(20,20,20)
Header.Font = Enum.Font.GothamBold
Header.TextScaled = true

-- Tab bar
local Tabs = Instance.new("Frame", Main)
Tabs.Size = UDim2.fromScale(0.25,0.88)
Tabs.Position = UDim2.fromScale(0,0.12)
Tabs.BackgroundColor3 = Color3.fromRGB(235,235,235)
Tabs.BorderSizePixel = 0

-- Content
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.fromScale(0.75,0.88)
Content.Position = UDim2.fromScale(0.25,0.12)
Content.BackgroundTransparency = 1

-- Tab Info
local InfoBtn = Instance.new("TextButton", Tabs)
InfoBtn.Size = UDim2.fromScale(1,0.12)
InfoBtn.Text = "INFO"
InfoBtn.Font = Enum.Font.GothamBold
InfoBtn.TextScaled = true
InfoBtn.BackgroundColor3 = Color3.fromRGB(200,220,255)
InfoBtn.BorderSizePixel = 0

local InfoContent = Instance.new("TextLabel", Content)
InfoContent.Size = UDim2.fromScale(1,1)
InfoContent.BackgroundTransparency = 1
InfoContent.TextWrapped = true
InfoContent.Text = [[
WELCOME TO SLK HUB

• Clean black & white style
• Smooth loading
• Stable menu
• Forsaken supported

Enjoy!
]]
InfoContent.Font = Enum.Font.Gotham
InfoContent.TextScaled = true
InfoContent.TextColor3 = Color3.fromRGB(30,30,30)

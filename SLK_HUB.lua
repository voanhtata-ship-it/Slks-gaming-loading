--// SLK GAMING LOADING

local TweenService = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer

-- CLEAN OLD
if Player.PlayerGui:FindFirstChild("SLK_LOADING") then
	Player.PlayerGui.SLK_LOADING:Destroy()
end

local gui = Instance.new("ScreenGui", Player.PlayerGui)
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,420,0,260)
frame.Position = UDim2.new(0.5,-210,0.5,-130)
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
by.Text = "BY SLK GAMING"
by.Font = Enum.Font.Gotham
by.TextSize = 14
by.TextColor3 = Color3.fromRGB(80,80,80)

local barBG = Instance.new("Frame", frame)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundColor3 = Color3.fromRGB(0,0,0)
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

local welcome = Instance.new("TextLabel", frame)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(0,0,0)

-- LOADING 10s
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

	task.wait(0.1)
end

-- END EFFECT
frame:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.6, true)
for _,v in ipairs(frame:GetDescendants()) do
	if v:IsA("TextLabel") then
		TweenService:Create(v, TweenInfo.new(0.6), {TextTransparency=1}):Play()
	elseif v:IsA("Frame") then
		TweenService:Create(v, TweenInfo.new(0.6), {BackgroundTransparency=1}):Play()
	end
end

task.wait(0.7)
gui:Destroy()

--// SLK HUB        VERSION v1
--// BY SLK GAMING

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SLK_HUB_GUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

-- MAIN MENU
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 520, 0, 320)
Main.Position = UDim2.new(0.5, -260, 0.5, -160)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 1
Main.BorderColor3 = Color3.fromRGB(0,200,0)
Main.BorderSizePixel = 2
Main.Active = true
Main.Draggable = true

-- TOP BAR
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-40,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.TextXAlignment = Left
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(0,0,0)
Title.Text = "SLK HUB        VERSION v1"

-- MINUS BUTTON
local MinBtn = Instance.new("TextButton", Top)
MinBtn.Size = UDim2.new(0,30,0,30)
MinBtn.Position = UDim2.new(1,-35,0,5)
MinBtn.Text = "–"
MinBtn.Font = Enum.Font.SourceSansBold
MinBtn.TextSize = 22
MinBtn.BackgroundColor3 = Color3.fromRGB(230,230,230)
MinBtn.BorderSizePixel = 0

-- FADE IN MENU
TweenService:Create(Main, TweenInfo.new(0.6), {BackgroundTransparency = 0.2}):Play()
for _,v in pairs(Main:GetDescendants()) do
	if v:IsA("TextLabel") then
		v.TextTransparency = 1
		TweenService:Create(v, TweenInfo.new(0.6), {TextTransparency = 0}):Play()
	end
end

-- MINI BAR (HIDDEN FIRST)
local MiniBar = Instance.new("Frame", ScreenGui)
MiniBar.Size = UDim2.new(0,200,0,35)
MiniBar.Position = UDim2.new(0.5,-100,0.2,0)
MiniBar.BackgroundColor3 = Color3.fromRGB(255,255,255)
MiniBar.BorderColor3 = Color3.fromRGB(0,200,0)
MiniBar.BorderSizePixel = 2
MiniBar.Visible = false
MiniBar.Active = true
MiniBar.Draggable = true

local PlusBtn = Instance.new("TextButton", MiniBar)
PlusBtn.Size = UDim2.new(0,30,1,0)
PlusBtn.Text = "+"
PlusBtn.Font = Enum.Font.SourceSansBold
PlusBtn.TextSize = 22
PlusBtn.BackgroundColor3 = Color3.fromRGB(230,230,230)
PlusBtn.BorderSizePixel = 0

local MiniTitle = Instance.new("TextLabel", MiniBar)
MiniTitle.Position = UDim2.new(0,35,0,0)
MiniTitle.Size = UDim2.new(1,-35,1,0)
MiniTitle.BackgroundTransparency = 1
MiniTitle.Text = "SLK HUB"
MiniTitle.Font = Enum.Font.SourceSansBold
MiniTitle.TextSize = 16
MiniTitle.TextColor3 = Color3.fromRGB(0,0,0)

-- MINIMIZE
MinBtn.MouseButton1Click:Connect(function()
	Main.Visible = false
	MiniBar.Visible = true
end)

-- RESTORE
PlusBtn.MouseButton1Click:Connect(function()
	MiniBar.Visible = false
	Main.Visible = true
end)

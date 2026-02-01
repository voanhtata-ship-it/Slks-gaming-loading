--// SLK HUB        VERSION v1
--// BY SLK GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-------------------------------------------------
-- CLEAN OLD GUI
-------------------------------------------------
for _,v in pairs(PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_HUB_GUI" then
		v:Destroy()
	end
end

-------------------------------------------------
-- LOADING GUI
-------------------------------------------------
local LoadingGui = Instance.new("ScreenGui", PlayerGui)
LoadingGui.Name = "SLK_LOADING"
LoadingGui.ResetOnSpawn = false

local LFrame = Instance.new("Frame", LoadingGui)
LFrame.Size = UDim2.new(0,420,0,260)
LFrame.Position = UDim2.new(0.5,-210,0.5,-130)
LFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
LFrame.BorderSizePixel = 2

local LTitle = Instance.new("TextLabel", LFrame)
LTitle.Size = UDim2.new(1,0,0,40)
LTitle.Position = UDim2.new(0,0,0,10)
LTitle.BackgroundTransparency = 1
LTitle.Text = "SLK HUB"
LTitle.Font = Enum.Font.GothamBlack
LTitle.TextSize = 32
LTitle.TextColor3 = Color3.fromRGB(0,0,0)

local LBy = Instance.new("TextLabel", LFrame)
LBy.Size = UDim2.new(1,0,0,20)
LBy.Position = UDim2.new(0,0,0,55)
LBy.BackgroundTransparency = 1
LBy.Text = "BY SLK GAMING"
LBy.Font = Enum.Font.Gotham
LBy.TextSize = 14
LBy.TextColor3 = Color3.fromRGB(80,80,80)

local BarBG = Instance.new("Frame", LFrame)
BarBG.Size = UDim2.new(0.8,0,0,20)
BarBG.Position = UDim2.new(0.1,0,0.45,0)
BarBG.BackgroundColor3 = Color3.fromRGB(0,0,0)

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local Percent = Instance.new("TextLabel", LFrame)
Percent.Size = UDim2.new(1,0,0,25)
Percent.Position = UDim2.new(0,0,0.53,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.Code
Percent.TextSize = 16
Percent.TextColor3 = Color3.fromRGB(0,0,0)

-------------------------------------------------
-- LOADING PROCESS (10s)
-------------------------------------------------
for i = 0,100 do
	Percent.Text = "Loading "..i.."%"
	Bar.Size = UDim2.new(i/100,0,1,0)
	task.wait(0.1)
end

-------------------------------------------------
-- LOADING OUT
-------------------------------------------------
LFrame:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,0.6,true)
for _,v in pairs(LFrame:GetDescendants()) do
	if v:IsA("TextLabel") then
		TweenService:Create(v,TweenInfo.new(0.6),{TextTransparency=1}):Play()
	elseif v:IsA("Frame") then
		TweenService:Create(v,TweenInfo.new(0.6),{BackgroundTransparency=1}):Play()
	end
end

task.wait(0.7)
LoadingGui:Destroy()

-------------------------------------------------
-- MENU HUB (KHÔNG CÓ LOADING)
-------------------------------------------------
local HubGui = Instance.new("ScreenGui", PlayerGui)
HubGui.Name = "SLK_HUB_GUI"
HubGui.ResetOnSpawn = false

local Main = Instance.new("Frame", HubGui)
Main.Size = UDim2.new(0,540,0,330)
Main.Position = UDim2.new(0.5,-270,0.5,-165)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 1
Main.BorderColor3 = Color3.fromRGB(0,200,0)
Main.BorderSizePixel = 2
Main.Active = true
Main.Draggable = true

local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-50,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.TextXAlignment = Left
Title.Text = "SLK HUB        VERSION v1"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(0,0,0)

-- NÚT THU NHỎ (THEO HÌNH BẠN VẼ)
local MinBtn = Instance.new("TextButton", Top)
MinBtn.Size = UDim2.new(0,30,0,30)
MinBtn.Position = UDim2.new(1,-35,0,5)
MinBtn.Text = "-"
MinBtn.Font = Enum.Font.SourceSansBold
MinBtn.TextSize = 22
MinBtn.BackgroundColor3 = Color3.fromRGB(200,200,200)

local minimized = false
MinBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Main:TweenSize(UDim2.new(0,300,0,40),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.3,true)
	else
		Main:TweenSize(UDim2.new(0,540,0,330),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.3,true)
	end
end)

-------------------------------------------------
-- MENU FADE IN
-------------------------------------------------
TweenService:Create(Main,TweenInfo.new(0.6),{BackgroundTransparency=0.15}):Play()
for _,v in pairs(Main:GetDescendants()) do
	if v:IsA("TextLabel") then
		v.TextTransparency = 1
		TweenService:Create(v,TweenInfo.new(0.6),{TextTransparency=0}):Play()
	end
end

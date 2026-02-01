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

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Player = Players.LocalPlayer

-- CLEAN OLD
if Player.PlayerGui:FindFirstChild("SLK_HUB_GUI") then
	Player.PlayerGui.SLK_HUB_GUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui", Player.PlayerGui)
ScreenGui.Name = "SLK_HUB_GUI"
ScreenGui.ResetOnSpawn = false

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0,540,0,330)
Main.Position = UDim2.new(0.5,-270,0.5,-165)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 1
Main.BorderColor3 = Color3.fromRGB(0,200,0)
Main.BorderSizePixel = 2
Main.Active = false
Main.Draggable = false

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1,0,0,50)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB        VERSION v1\nBY SLK GAMING"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(0,0,0)
Title.TextTransparency = 1

-- FADE IN
TweenService:Create(Main, TweenInfo.new(0.7), {BackgroundTransparency = 0.2}):Play()
TweenService:Create(Title, TweenInfo.new(0.7), {TextTransparency = 0}):Play()

task.wait(0.8)
Main.Active = true
Main.Draggable = true

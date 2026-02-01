--// SLK GAMING LOADING FIX

local TweenService = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer

-- CLEAN OLD
if Player.PlayerGui:FindFirstChild("SLK_GUI") then
	Player.PlayerGui.SLK_GUI:Destroy()
end

-- MAIN GUI
local gui = Instance.new("ScreenGui", Player.PlayerGui)
gui.Name = "SLK_GUI"
gui.ResetOnSpawn = false

-- ===== LOADING FRAME =====
local loading = Instance.new("Frame", gui)
loading.Name = "LoadingFrame"
loading.Size = UDim2.new(0,420,0,260)
loading.Position = UDim2.new(0.5,-210,0.5,-130)
loading.BackgroundColor3 = Color3.fromRGB(255,255,255)
loading.BorderSizePixel = 2

local title = Instance.new("TextLabel", loading)
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,10)
title.BackgroundTransparency = 1
title.Text = "SLK HUB"
title.Font = Enum.Font.GothamBlack
title.TextSize = 32
title.TextColor3 = Color3.fromRGB(0,0,0)

local barBG = Instance.new("Frame", loading)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundColor3 = Color3.fromRGB(0,0,0)

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local percent = Instance.new("TextLabel", loading)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.fromRGB(0,0,0)

-- ===== MENU FRAME (ẨN TRƯỚC) =====
local menu = Instance.new("Frame", gui)
menu.Name = "MenuFrame"
menu.Size = UDim2.new(0,500,0,300)
menu.Position = UDim2.new(0.5,-250,0.5,-150)
menu.BackgroundColor3 = Color3.fromRGB(30,30,30)
menu.Visible = false

local menuLabel = Instance.new("TextLabel", menu)
menuLabel.Size = UDim2.new(1,0,0,40)
menuLabel.BackgroundTransparency = 1
menuLabel.Text = "MENU SLK GAMING"
menuLabel.Font = Enum.Font.GothamBold
menuLabel.TextSize = 24
menuLabel.TextColor3 = Color3.fromRGB(255,255,255)

-- ===== LOADING RUN =====
for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"
	task.wait(0.05)
end

-- ===== LOADING OUT =====
loading:TweenSize(
	UDim2.new(0,0,0,0),
	Enum.EasingDirection.InOut,
	Enum.EasingStyle.Quad,
	0.5,
	true
)

task.wait(0.6)
loading:Destroy() -- ❗ CHỈ XÓA LOADING

-- ===== SHOW MENU =====
menu.Visible = true
menu.Size = UDim2.new(0,0,0,0)
menu:TweenSize(
	UDim2.new(0,500,0,300),
	Enum.EasingDirection.Out,
	Enum.EasingStyle.Back,
	0.6,
	true
)

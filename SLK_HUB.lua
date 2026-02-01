--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- CLEAR OLD GUI
for _,v in pairs(player.PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_MENU" then
		v:Destroy()
	end
end

-- ================= LOADING =================
local loadingGui = Instance.new("ScreenGui")
loadingGui.Name = "SLK_LOADING"
loadingGui.ResetOnSpawn = false
loadingGui.Parent = player.PlayerGui

local frame = Instance.new("Frame", loadingGui)
frame.Size = UDim2.new(0,420,0,260)
frame.Position = UDim2.new(0.5,-210,0.5,-130)
frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame.BackgroundTransparency = 0.4
frame.BorderSizePixel = 0
frame.Active = true

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
by.Text = "By SLKS-GAMING"
by.Font = Enum.Font.Gotham
by.TextSize = 14
by.TextColor3 = Color3.fromRGB(80,80,80)

local barBG = Instance.new("Frame", frame)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundTransparency = 0.6
barBG.BorderSizePixel = 0

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

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

for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 0 then welcome.Text = "Initializing..."
	elseif i == 25 then welcome.Text = "Loading assets..."
	elseif i == 50 then welcome.Text = "Setting up menu..."
	elseif i == 75 then welcome.Text = "Almost ready..."
	elseif i == 100 then welcome.Text = "Done!"
	end

	task.wait(0.04)
end

task.wait(0.3)
loadingGui:Destroy()

-- ================= MENU =================
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,450,0,300)
main.Position = UDim2.new(0.5,-225,0.5,-150)
main.BackgroundTransparency = 0.35
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

-- TOP BAR
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundTransparency = 0.3
top.Active = true

local title2 = Instance.new("TextLabel", top)
title2.Size = UDim2.new(1,-60,1,0)
title2.Position = UDim2.new(0,10,0,0)
title2.BackgroundTransparency = 1
title2.Text = "SLK HUB       VERSION V1\nBy SLKS-GAMING"
title2.Font = Enum.Font.GothamBold
title2.TextSize = 16
title2.TextXAlignment = Left

-- MINIMIZE BUTTON (FIX)
local btn = Instance.new("TextButton", top)
btn.Size = UDim2.new(0,35,0,30)
btn.Position = UDim2.new(1,-40,0,7)
btn.Text = "-"
btn.Font = Enum.Font.GothamBold
btn.TextSize = 22
btn.BackgroundTransparency = 0.3
btn.Active = true
btn.AutoButtonColor = true

-- CONTENT
local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,0,0,45)
content.Size = UDim2.new(1,0,1,-45)
content.BackgroundTransparency = 1
content.Active = true

-- TAB INFO
local infoBtn = Instance.new("TextButton", content)
infoBtn.Size = UDim2.new(0,80,0,30)
infoBtn.Position = UDim2.new(0,10,0,10)
infoBtn.Text = "INFO"
infoBtn.Font = Enum.Font.GothamBold
infoBtn.TextSize = 14
infoBtn.Active = true
infoBtn.AutoButtonColor = true

-- INFO FRAME (FIX HIỆN)
local infoFrame = Instance.new("Frame", content)
infoFrame.Size = UDim2.new(1,-20,1,-60)
infoFrame.Position = UDim2.new(0,10,0,50)
infoFrame.BackgroundTransparency = 1
infoFrame.Visible = false
infoFrame.Active = true

local vn = Instance.new("TextLabel", infoFrame)
vn.Size = UDim2.new(0.48,0,1,0)
vn.TextWrapped = true
vn.TextYAlignment = Top
vn.BackgroundTransparency = 1
vn.Font = Enum.Font.Gotham
vn.TextSize = 14
vn.Text = "🇻🇳 VIỆT NAM\n• SLK HUB V1\n• Giao diện nhẹ\n• Có loading + menu\n• Kéo & thu nhỏ được"

local en = Instance.new("TextLabel", infoFrame)
en.Size = UDim2.new(0.48,0,1,0)
en.Position = UDim2.new(0.52,0,0,0)
en.TextWrapped = true
en.TextYAlignment = Top
en.BackgroundTransparency = 1
en.Font = Enum.Font.Gotham
en.TextSize = 14
en.Text = "🇺🇸 ENGLISH\n• SLK HUB V1\n• Transparent UI\n• Loading system\n• Draggable & minimizable"

-- FIX TAB CLICK
infoBtn.MouseButton1Click:Connect(function()
	infoFrame.Visible = not infoFrame.Visible
end)

-- FIX MINIMIZE
local minimized = false
local fullSize = UDim2.new(0,450,0,300)
local miniSize = UDim2.new(0,450,0,45)

btn.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and miniSize or fullSize
	btn.Text = minimized and "+" or "-"
end)

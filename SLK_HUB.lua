--// SLK HUB VERSION V1
--// By SLKS-GAMING

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- CLEAR OLD GUI
for _,v in pairs(player.PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_MENU" then
		v:Destroy()
	end
end

-- ================= LOADING =================
local loadingGui = Instance.new("ScreenGui", player.PlayerGui)
loadingGui.Name = "SLK_LOADING"
loadingGui.ResetOnSpawn = false

local frame = Instance.new("Frame", loadingGui)
frame.Size = UDim2.new(0,420,0,260)
frame.Position = UDim2.new(0.5,-210,0.5,-130)
frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
frame.BackgroundTransparency = 0.4
frame.BorderSizePixel = 0

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
barBG.BackgroundColor3 = Color3.fromRGB(255,255,255)
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
percent.Text = "Loading 0%"

local welcome = Instance.new("TextLabel", frame)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(0,0,0)
welcome.Text = "Initializing..."

for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 0 then
		welcome.Text = "Initializing..."
	elseif i == 25 then
		welcome.Text = "Loading assets..."
	elseif i == 50 then
		welcome.Text = "Setting up menu..."
	elseif i == 75 then
		welcome.Text = "Almost ready..."
	elseif i == 100 then
		welcome.Text = "Done!"
	end

	task.wait(0.04)
end

task.wait(0.3)
loadingGui:Destroy()

-- ================= MENU =================
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,450,0,300)
main.Position = UDim2.new(0.5,-225,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(255,255,255)
main.BackgroundTransparency = 0.35
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundColor3 = Color3.fromRGB(230,230,230)
top.BackgroundTransparency = 0.3
top.BorderSizePixel = 0

local title2 = Instance.new("TextLabel", top)
title2.Size = UDim2.new(1,-60,1,0)
title2.Position = UDim2.new(0,10,0,0)
title2.BackgroundTransparency = 1
title2.Text = "SLK HUB       VERSION V1\nBy SLKS-GAMING"
title2.Font = Enum.Font.GothamBold
title2.TextSize = 16
title2.TextColor3 = Color3.fromRGB(0,0,0)
title2.TextXAlignment = Enum.TextXAlignment.Left

local btn = Instance.new("TextButton", top)
btn.Size = UDim2.new(0,35,0,30)
btn.Position = UDim2.new(1,-40,0,7)
btn.Text = "-"
btn.Font = Enum.Font.GothamBold
btn.TextSize = 22
btn.BackgroundColor3 = Color3.fromRGB(200,200,200)
btn.BackgroundTransparency = 0.3
btn.BorderSizePixel = 0

local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,0,0,45)
content.Size = UDim2.new(1,0,1,-45)
content.BackgroundTransparency = 1

-- TAB INFO BUTTON
local infoBtn = Instance.new("TextButton", content)
infoBtn.Size = UDim2.new(0,80,0,30)
infoBtn.Position = UDim2.new(0,10,0,10)
infoBtn.Text = "INFO"
infoBtn.Font = Enum.Font.GothamBold
infoBtn.TextSize = 14
infoBtn.BackgroundTransparency = 0.3
infoBtn.BackgroundColor3 = Color3.fromRGB(200,200,200)
infoBtn.BorderSizePixel = 0

-- INFO CONTENT
local infoFrame = Instance.new("Frame", content)
infoFrame.Size = UDim2.new(1,-20,1,-60)
infoFrame.Position = UDim2.new(0,10,0,50)
infoFrame.BackgroundTransparency = 1
infoFrame.Visible = false

local vn = Instance.new("TextLabel", infoFrame)
vn.Size = UDim2.new(0.48,0,1,0)
vn.Position = UDim2.new(0,0,0,0)
vn.BackgroundTransparency = 1
vn.TextWrapped = true
vn.TextYAlignment = Top
vn.Font = Enum.Font.Gotham
vn.TextSize = 14
vn.TextColor3 = Color3.fromRGB(0,0,0)
vn.Text =
[[🇻🇳 VIỆT NAM
• SLK HUB phiên bản V1
• Giao diện trong suốt, nhẹ
• Có loading + menu kéo
• Dùng cho học & test UI
• Không phá game]]

local en = Instance.new("TextLabel", infoFrame)
en.Size = UDim2.new(0.48,0,1,0)
en.Position = UDim2.new(0.52,0,0,0)
en.BackgroundTransparency = 1
en.TextWrapped = true
en.TextYAlignment = Top
en.Font = Enum.Font.Gotham
en.TextSize = 14
en.TextColor3 = Color3.fromRGB(0,0,0)
en.Text =
[[🇺🇸 ENGLISH
• SLK HUB Version V1
• Clean & transparent UI
• Smooth loading system
• Draggable & minimizable
• UI learning purpose]]

infoBtn.MouseButton1Click:Connect(function()
	infoFrame.Visible = not infoFrame.Visible
end)

-- MINIMIZE
local minimized = false
local full = UDim2.new(0,450,0,300)
local mini = UDim2.new(0,450,0,45)

btn.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and mini or full
	btn.Text = minimized and "+" or "-"
end)

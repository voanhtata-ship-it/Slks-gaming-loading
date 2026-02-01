--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- CLEAR OLD
for _,v in pairs(player.PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_MENU" then
		v:Destroy()
	end
end

-- ================= LOADING =================
local loadingGui = Instance.new("ScreenGui", player.PlayerGui)
loadingGui.Name = "SLK_LOADING"
loadingGui.ResetOnSpawn = false

local lFrame = Instance.new("Frame", loadingGui)
lFrame.Size = UDim2.new(0,420,0,260)
lFrame.Position = UDim2.new(0.5,-210,0.5,-130)
lFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
lFrame.BackgroundTransparency = 0.4
lFrame.BorderSizePixel = 0
lFrame.Active = true
lFrame.ZIndex = 1

local lTitle = Instance.new("TextLabel", lFrame)
lTitle.Size = UDim2.new(1,0,0,40)
lTitle.Position = UDim2.new(0,0,0,10)
lTitle.BackgroundTransparency = 1
lTitle.Text = "SLK HUB"
lTitle.Font = Enum.Font.GothamBlack
lTitle.TextSize = 32
lTitle.ZIndex = 2

local lBy = Instance.new("TextLabel", lFrame)
lBy.Size = UDim2.new(1,0,0,20)
lBy.Position = UDim2.new(0,0,0,55)
lBy.BackgroundTransparency = 1
lBy.Text = "By SLKS-GAMING"
lBy.Font = Enum.Font.Gotham
lBy.TextSize = 14
lBy.ZIndex = 2

local barBG = Instance.new("Frame", lFrame)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundTransparency = 0.6
barBG.BorderSizePixel = 0
barBG.ZIndex = 2

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

local percent = Instance.new("TextLabel", lFrame)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.ZIndex = 2

local welcome = Instance.new("TextLabel", lFrame)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.ZIndex = 2

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
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,450,0,300)
main.Position = UDim2.new(0.5,-225,0.5,-150)
main.BackgroundTransparency = 0.35
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.ZIndex = 10

-- TOP BAR (KÉO + CLICK)
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundTransparency = 0.3
top.Active = true
top.ZIndex = 11

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,-60,1,0)
title.Position = UDim2.new(0,10,0,0)
title.BackgroundTransparency = 1
title.Text = "SLK HUB       VERSION V1\nBy SLKS-GAMING"
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.ZIndex = 12

-- NÚT THU NHỎ (FIX CHẮC)
local minBtn = Instance.new("TextButton", top)
minBtn.Size = UDim2.new(0,35,0,30)
minBtn.Position = UDim2.new(1,-40,0,7)
minBtn.Text = "-"
minBtn.Font = Enum.Font.GothamBold
minBtn.TextSize = 22
minBtn.BackgroundTransparency = 0.3
minBtn.Active = true
minBtn.AutoButtonColor = true
minBtn.ZIndex = 13

-- CONTENT
local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,0,0,45)
content.Size = UDim2.new(1,0,1,-45)
content.BackgroundTransparency = 1
content.Active = true
content.ZIndex = 11

-- TAB INFO
local infoBtn = Instance.new("TextButton", content)
infoBtn.Size = UDim2.new(0,80,0,30)
infoBtn.Position = UDim2.new(0,10,0,10)
infoBtn.Text = "INFO"
infoBtn.Font = Enum.Font.GothamBold
infoBtn.TextSize = 14
infoBtn.Active = true
infoBtn.AutoButtonColor = true
infoBtn.ZIndex = 12

-- INFO CONTENT
local infoFrame = Instance.new("Frame", content)
infoFrame.Size = UDim2.new(1,-20,1,-60)
infoFrame.Position = UDim2.new(0,10,0,50)
infoFrame.BackgroundTransparency = 1
infoFrame.Visible = false
infoFrame.Active = true
infoFrame.ZIndex = 12

local vn = Instance.new("TextLabel", infoFrame)
vn.Size = UDim2.new(0.48,0,1,0)
vn.BackgroundTransparency = 1
vn.TextWrapped = true
vn.TextYAlignment = Enum.TextYAlignment.Top
vn.Font = Enum.Font.Gotham
vn.TextSize = 14
vn.Text = "🇻🇳 VIỆT NAM\n• SLK HUB V1\n• Có loading\n• Kéo & thu nhỏ\n• Tab hoạt động"

local en = Instance.new("TextLabel", infoFrame)
en.Size = UDim2.new(0.48,0,1,0)
en.Position = UDim2.new(0.52,0,0,0)
en.BackgroundTransparency = 1
en.TextWrapped = true
en.TextYAlignment = Enum.TextYAlignment.Top
en.Font = Enum.Font.Gotham
en.TextSize = 14
en.Text = "🇺🇸 ENGLISH\n• SLK HUB V1\n• Loading system\n• Draggable UI\n• Working tabs"

-- TAB CLICK (FIX)
infoBtn.MouseButton1Click:Connect(function()
	infoFrame.Visible = not infoFrame.Visible
end)

-- MINIMIZE (FIX KHÔNG KHÓA CLICK)
local minimized = false
local fullSize = UDim2.new(0,450,0,300)
local miniSize = UDim2.new(0,450,0,45)

minBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and miniSize or fullSize
	minBtn.Text = minimized and "+" or "-"
end)

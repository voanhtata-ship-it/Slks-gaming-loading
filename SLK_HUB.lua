--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

pcall(function()
	if PG:FindFirstChild("SLK_HUB") then
		PG.SLK_HUB:Destroy()
	end
end)

--================ SCREEN GUI ================
local gui = Instance.new("ScreenGui", PG)
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--================ LOADING ===================
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.new(0,500,0,220)
Load.Position = UDim2.new(0.5,-250,0.5,-110)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.15
Load.BorderSizePixel = 2
Load.Active = true
Load.Draggable = true

local LTitle = Instance.new("TextLabel", Load)
LTitle.Size = UDim2.new(1,0,0,60)
LTitle.BackgroundTransparency = 1
LTitle.Text = "WELCOME\nSLK HUB"
LTitle.Font = Enum.Font.GothamBold
LTitle.TextSize = 28
LTitle.TextColor3 = Color3.new(0,0,0)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.85,0,0,18)
BarBG.Position = UDim2.new(0.075,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(0,0,0)
BarBG.BorderSizePixel = 0

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
Bar.BorderSizePixel = 0

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0,30)
Percent.Position = UDim2.new(0,0,0.75,0)
Percent.BackgroundTransparency = 1
Percent.Text = "Loading 0%"
Percent.Font = Enum.Font.Gotham
Percent.TextSize = 18
Percent.TextColor3 = Color3.new(0,0,0)

for i=0,100 do
	Percent.Text = "Loading "..i.."%"
	Bar.Size = UDim2.new(i/100,0,1,0)
	task.wait(0.03)
end

Load:Destroy()

--================ MENU ======================
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.new(0,520,0,320)
Main.Position = UDim2.new(0.5,-260,0.5,-160)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.25
Main.Active = true
Main.Draggable = true

-- TOP BAR
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,45)
Top.BackgroundColor3 = Color3.fromRGB(230,230,230)
Top.BackgroundTransparency = 0.15
Top.Active = true

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB   VERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextColor3 = Color3.new(0,0,0)

local Min = Instance.new("TextButton", Top)
Min.Size = UDim2.new(0,40,0,30)
Min.Position = UDim2.new(1,-90,0,7)
Min.Text = "-"
Min.Font = Enum.Font.GothamBold
Min.TextSize = 22
Min.ZIndex = 3

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0,40,0,30)
Close.Position = UDim2.new(1,-45,0,7)
Close.Text = "X"
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18
Close.ZIndex = 3

-- TAB BAR
local TabBar = Instance.new("Frame", Main)
TabBar.Size = UDim2.new(1,0,0,35)
TabBar.Position = UDim2.new(0,0,0,45)
TabBar.BackgroundTransparency = 1

local InfoTab = Instance.new("TextButton", TabBar)
InfoTab.Size = UDim2.new(0,100,1,0)
InfoTab.Text = "INFO"
InfoTab.Font = Enum.Font.GothamBold
InfoTab.TextSize = 16

-- CONTENT
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-80)
Content.Position = UDim2.new(0,0,0,80)
Content.BackgroundTransparency = 1
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Font = Enum.Font.GothamBold
Info.TextSize = 18
Info.TextColor3 = Color3.new(0,0,0)
Info.Text = [[
🇻🇳 THÔNG TIN
SLK HUB VERSION V1
Menu trong suốt
Fix toàn bộ lỗi
Hỗ trợ Mobile & PC

🇺🇸 INFO
SLK HUB VERSION V1
Transparent UI
All bugs fixed
Mobile & PC supported
]]

InfoTab.MouseButton1Click:Connect(function()
	Content.Visible = not Content.Visible
end)

-- MINIMIZE
local minimized = false
local fullSize = Main.Size

Min.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,45)
		Min.Text = "+"
	else
		Main.Size = fullSize
		Min.Text = "-"
	end
end)

-- CLOSE CONFIRM
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.new(0,420,0,200)
Confirm.Position = UDim2.new(0.5,-210,0.5,-100)
Confirm.BackgroundColor3 = Color3.fromRGB(255,255,255)
Confirm.BackgroundTransparency = 0.15
Confirm.Visible = false
Confirm.ZIndex = 10
Confirm.Active = true
Confirm.Draggable = true

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,-20,0.6,0)
CText.Position = UDim2.new(0,10,0,10)
CText.BackgroundTransparency = 1
CText.Text = "DO YOU WANT CLOSE SCRIPT?"
CText.Font = Enum.Font.GothamBold
CText.TextSize = 18

local Yes = Instance.new("TextButton", Confirm)
Yes.Size = UDim2.new(0.4,0,0,40)
Yes.Position = UDim2.new(0.05,0,1,-50)
Yes.Text = "1  YES"

local No = Instance.new("TextButton", Confirm)
No.Size = UDim2.new(0.4,0,0,40)
No.Position = UDim2.new(0.55,0,1,-50)
No.Text = "2  NO"

Close.MouseButton1Click:Connect(function()
	Confirm.Visible = true
end)

No.MouseButton1Click:Connect(function()
	Confirm.Visible = false
end)

Yes.MouseButton1Click:Connect(function()
	Yes.Visible = false
	No.Visible = false
	for i=5,0,-1 do
		CText.Text = "PLEASE WAIT\nSCRIPT CLOSE : "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

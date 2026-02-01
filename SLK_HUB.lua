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
Load.Size = UDim2.new(0,420,0,220)
Load.Position = UDim2.new(0.5,-210,0.5,-110)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.2
Load.Active = true
Load.Draggable = true

local LTitle = Instance.new("TextLabel", Load)
LTitle.Size = UDim2.new(1,0,0,50)
LTitle.BackgroundTransparency = 1
LTitle.Text = "WELCOME\nSLK HUB"
LTitle.Font = Enum.Font.GothamBold
LTitle.TextSize = 24
LTitle.TextColor3 = Color3.new(0,0,0)

local Status = Instance.new("TextLabel", Load)
Status.Size = UDim2.new(1,0,0,30)
Status.Position = UDim2.new(0,0,0.45,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.new(0,0,0)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.85,0,0,18)
BarBG.Position = UDim2.new(0.075,0,0.65,0)
BarBG.BackgroundTransparency = 0.5
BarBG.BackgroundColor3 = Color3.fromRGB(200,200,200)

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0,25)
Percent.Position = UDim2.new(0,0,0.75,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.Code
Percent.TextSize = 16
Percent.TextColor3 = Color3.new(0,0,0)

for i = 0,100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = "Loading "..i.."%"

	if i == 0 then Status.Text = "Initializing..."
	elseif i == 25 then Status.Text = "Loading assets..."
	elseif i == 50 then Status.Text = "Setting up menu..."
	elseif i == 75 then Status.Text = "Almost ready..."
	elseif i == 100 then Status.Text = "Welcome!"
	end

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
Top.BackgroundTransparency = 0.15
Top.BackgroundColor3 = Color3.fromRGB(230,230,230)
Top.Active = true
Top.Draggable = true

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB    VERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextColor3 = Color3.new(0,0,0)

local BtnMin = Instance.new("TextButton", Top)
BtnMin.Size = UDim2.new(0,40,0,30)
BtnMin.Position = UDim2.new(1,-90,0,7)
BtnMin.Text = "-"
BtnMin.Font = Enum.Font.GothamBold
BtnMin.TextSize = 22

local BtnClose = Instance.new("TextButton", Top)
BtnClose.Size = UDim2.new(0,40,0,30)
BtnClose.Position = UDim2.new(1,-45,0,7)
BtnClose.Text = "X"
BtnClose.Font = Enum.Font.GothamBold
BtnClose.TextSize = 18

-- TAB
local Tab = Instance.new("TextButton", Main)
Tab.Size = UDim2.new(0,120,0,40)
Tab.Position = UDim2.new(0,10,0,55)
Tab.Text = "INFO"
Tab.Font = Enum.Font.GothamBold
Tab.TextSize = 18

-- CONTENT
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,-20,1,-110)
Content.Position = UDim2.new(0,10,0,100)
Content.BackgroundTransparency = 1
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,0,1,0)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Font = Enum.Font.Gotham
Info.TextSize = 16
Info.TextColor3 = Color3.new(0,0,0)
Info.Text = [[
🇻🇳 THÔNG TIN
SLK HUB VERSION V1
Menu trong suốt
Fix full lỗi
Hỗ trợ Mobile & PC

🇺🇸 INFO
SLK HUB VERSION V1
Transparent menu
All bugs fixed
Mobile & PC supported
]]

Tab.MouseButton1Click:Connect(function()
	Content.Visible = not Content.Visible
end)

-- MINIMIZE (ẨN TAB + CONTENT)
local minimized = false
local fullSize = Main.Size

BtnMin.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Tab.Visible = false
		Content.Visible = false
		Main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,45)
		BtnMin.Text = "+"
	else
		Main.Size = fullSize
		Tab.Visible = true
		BtnMin.Text = "-"
	end
end)

-- CLOSE CONFIRM
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.new(0,380,0,200)
Confirm.Position = UDim2.new(0.5,-190,0.5,-100)
Confirm.BackgroundColor3 = Color3.fromRGB(255,255,255)
Confirm.BackgroundTransparency = 0.15
Confirm.Visible = false
Confirm.Active = true
Confirm.Draggable = true
Confirm.ZIndex = 50

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,-20,0.6,0)
CText.Position = UDim2.new(0,10,0,10)
CText.BackgroundTransparency = 1
CText.Font = Enum.Font.GothamBold
CText.TextSize = 18
CText.TextColor3 = Color3.new(0,0,0)
CText.TextWrapped = true
CText.Text = "DO YOU WANT CLOSE SCRIPT?"

local Yes = Instance.new("TextButton", Confirm)
Yes.Size = UDim2.new(0.4,0,0,40)
Yes.Position = UDim2.new(0.05,0,1,-50)
Yes.Text = "1  YES"

local No = Instance.new("TextButton", Confirm)
No.Size = UDim2.new(0.4,0,0,40)
No.Position = UDim2.new(0.55,0,1,-50)
No.Text = "2  NO"

BtnClose.MouseButton1Click:Connect(function()
	Confirm.Visible = true
end)

No.MouseButton1Click:Connect(function()
	Confirm.Visible = false
end)

Yes.MouseButton1Click:Connect(function()
	Yes.Visible = false
	No.Visible = false
	for i = 5,0,-1 do
		CText.Text = "PLEASE WAIT\nSCRIPT CLOSE : "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end) 

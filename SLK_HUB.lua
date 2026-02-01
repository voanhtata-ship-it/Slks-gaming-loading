--// SLK HUB V1 - FULL FIX (Loading + Menu)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

pcall(function()
	if PG:FindFirstChild("SLK_HUB") then
		PG.SLK_HUB:Destroy()
	end
end)

--================= GUI =================--
local gui = Instance.new("ScreenGui", PG)
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false

--================= LOADING =================--
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.5,0.25)
Load.Position = UDim2.fromScale(0.25,0.375)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.25
Load.Active = true
Load.Draggable = true

local LoadTitle = Instance.new("TextLabel", Load)
LoadTitle.Size = UDim2.new(1,0,0.4,0)
LoadTitle.BackgroundTransparency = 1
LoadTitle.Text = "WELCOME\nSLK HUB"
LoadTitle.Font = Enum.Font.SourceSansBold
LoadTitle.TextSize = 22
LoadTitle.TextColor3 = Color3.new(0,0,0)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0.2,0)
BarBG.Position = UDim2.new(0.05,0,0.65,0)
BarBG.BackgroundColor3 = Color3.fromRGB(230,230,230)
BarBG.BackgroundTransparency = 0.3

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BackgroundTransparency = 0.2

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.2,0)
Percent.Position = UDim2.new(0,0,0.45,0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.Font = Enum.Font.SourceSansBold
Percent.TextSize = 18
Percent.TextColor3 = Color3.new(0,0,0)

-- Loading chạy
for i = 0,100 do
	Percent.Text = i.."%"
	Bar.Size = UDim2.new(i/100,0,1,0)
	task.wait(0.03)
end

Load.Visible = false

--================= MENU =================--
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.6,0.6)
Main.Position = UDim2.fromScale(0.2,0.2)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.25
Main.Active = true
Main.Draggable = true

-- Top bar
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundColor3 = Color3.fromRGB(230,230,230)
Top.BackgroundTransparency = 0.2

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB  |  VERSION V1"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextXAlignment = Left
Title.TextColor3 = Color3.new(0,0,0)

-- Buttons
local Min = Instance.new("TextButton", Top)
Min.Size = UDim2.new(0,40,0,30)
Min.Position = UDim2.new(1,-90,0,5)
Min.Text = "-"
Min.Font = Enum.Font.SourceSansBold
Min.TextSize = 22

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0,40,0,30)
Close.Position = UDim2.new(1,-45,0,5)
Close.Text = "X"
Close.Font = Enum.Font.SourceSansBold
Close.TextSize = 18

-- Content
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-40)
Content.Position = UDim2.new(0,0,0,40)
Content.BackgroundTransparency = 1

-- Info
local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Top
Info.Font = Enum.Font.SourceSansBold
Info.TextSize = 18
Info.TextColor3 = Color3.new(0,0,0)
Info.Text =
[[🇻🇳 THÔNG TIN
SLK HUB V1
Menu trong suốt
Fix toàn bộ lỗi
Hỗ trợ Mobile & PC

🇺🇸 INFO
SLK HUB V1
Transparent UI
All bugs fixed
Mobile & PC supported]]

--================= MINIMIZE =================--
local mini = false
local oldSize = Main.Size

Min.MouseButton1Click:Connect(function()
	mini = not mini
	if mini then
		Content.Visible = false
		Main.Size = UDim2.new(oldSize.X.Scale,oldSize.X.Offset,0,40)
	else
		Main.Size = oldSize
		task.wait(0.1)
		Content.Visible = true
	end
end)

--================= CLOSE CONFIRM =================--
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.fromScale(0.4,0.25)
Confirm.Position = UDim2.fromScale(0.3,0.35)
Confirm.BackgroundColor3 = Color3.fromRGB(255,255,255)
Confirm.BackgroundTransparency = 0.2
Confirm.Visible = false
Confirm.Active = true
Confirm.Draggable = true

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,-20,0.5,0)
CText.Position = UDim2.new(0,10,0,10)
CText.BackgroundTransparency = 1
CText.TextWrapped = true
CText.Font = Enum.Font.SourceSansBold
CText.TextSize = 18
CText.TextColor3 = Color3.new(0,0,0)
CText.Text = "DO YOU WANT CLOSE SCRIPT?"

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
	for i = 5,0,-1 do
		CText.Text = "PLEASE WAIT\nSCRIPT CLOSE : "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

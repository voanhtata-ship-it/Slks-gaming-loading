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

--================= GUI =================--
local gui = Instance.new("ScreenGui", PG)
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--------------------------------------------------
--================= LOADING =================--
--------------------------------------------------
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.45,0.25)
Load.Position = UDim2.fromScale(0.275,0.375)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.2
Load.Active = true
Load.Draggable = true
Load.ZIndex = 1

local LoadTitle = Instance.new("TextLabel", Load)
LoadTitle.Size = UDim2.new(1,0,0.35,0)
LoadTitle.BackgroundTransparency = 1
LoadTitle.Text = "WELCOME\nSLK HUB"
LoadTitle.Font = Enum.Font.GothamBold
LoadTitle.TextSize = 22
LoadTitle.TextColor3 = Color3.new(0,0,0)

local Status = Instance.new("TextLabel", Load)
Status.Size = UDim2.new(1,0,0.15,0)
Status.Position = UDim2.new(0,0,0.38,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.new(0,0,0)
Status.Text = "Initializing..."

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0.18,0)
BarBG.Position = UDim2.new(0.05,0,0.65,0)
BarBG.BackgroundColor3 = Color3.fromRGB(230,230,230)
BarBG.BackgroundTransparency = 0.4

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.15,0)
Percent.Position = UDim2.new(0,0,0.52,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 16
Percent.TextColor3 = Color3.new(0,0,0)

local steps = {
	[0]="Initializing...",
	[25]="Loading assets...",
	[50]="Setting up menu...",
	[75]="Almost ready...",
	[100]="Done!"
}

for i=0,100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i.."%"
	if steps[i] then Status.Text = steps[i] end
	task.wait(0.03)
end

Load:Destroy()

--------------------------------------------------
--================= MAIN MENU =================--
--------------------------------------------------
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.6,0.6)
Main.Position = UDim2.fromScale(0.2,0.2)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.2
Main.Active = true
Main.Draggable = true
Main.ZIndex = 2

local fullSize = Main.Size -- FIX SIZE

-- TOP BAR
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundTransparency = 0.3

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB  VERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left

local Min = Instance.new("TextButton", Top)
Min.Size = UDim2.new(0,35,0,28)
Min.Position = UDim2.new(1,-80,0,6)
Min.Text = "-"

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0,35,0,28)
Close.Position = UDim2.new(1,-40,0,6)
Close.Text = "X"

-- TAB
local TabBar = Instance.new("Frame", Main)
TabBar.Size = UDim2.new(1,0,0,35)
TabBar.Position = UDim2.new(0,0,0,40)

local InfoTab = Instance.new("TextButton", TabBar)
InfoTab.Size = UDim2.new(0,120,1,0)
InfoTab.Position = UDim2.new(0,10,0,0)
InfoTab.Text = "INFO"

-- CONTENT
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-75)
Content.Position = UDim2.new(0,0,0,75)
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Text = "INFO CONTENT\nVN + EN OK"

InfoTab.MouseButton1Click:Connect(function()
	Content.Visible = true
end)

-- MINIMIZE
local minimized = false
Min.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Content.Visible = false
		TabBar.Visible = false
		Main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,40)
		Min.Text = "+"
	else
		Main.Size = fullSize
		TabBar.Visible = true
		Min.Text = "-"
	end
end)

--------------------------------------------------
--================= CLOSE CONFIRM =================--
--------------------------------------------------
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.fromScale(0.4,0.28)
Confirm.Position = UDim2.fromScale(0.3,0.35)
Confirm.BackgroundColor3 = Color3.fromRGB(255,255,255)
Confirm.BackgroundTransparency = 0.15
Confirm.Visible = false
Confirm.Active = true
Confirm.Draggable = true
Confirm.ZIndex = 50

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,-20,0,80)
CText.Position = UDim2.new(0,10,0,10)
CText.BackgroundTransparency = 1
CText.TextWrapped = true
CText.Text = "DO YOU WANT CLOSE SCRIPT?"
CText.ZIndex = 51

local Yes = Instance.new("TextButton", Confirm)
Yes.Size = UDim2.new(0.4,0,0,40)
Yes.Position = UDim2.new(0.05,0,1,-50)
Yes.Text = "1  YES"
Yes.ZIndex = 51

local No = Instance.new("TextButton", Confirm)
No.Size = UDim2.new(0.4,0,0,40)
No.Position = UDim2.new(0.55,0,1,-50)
No.Text = "2  NO"
No.ZIndex = 51

Close.MouseButton1Click:Connect(function()
	Confirm.Visible = true
end)

No.MouseButton1Click:Connect(function()
	Confirm.Visible = false
end)

Yes.MouseButton1Click:Connect(function()
	for i=5,0,-1 do
		CText.Text = "PLEASE WAIT\nSCRIPT CLOSE : "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

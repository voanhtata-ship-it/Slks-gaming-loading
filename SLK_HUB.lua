--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- CLEAR OLD
pcall(function()
	if PG:FindFirstChild("SLK_HUB") then
		PG.SLK_HUB:Destroy()
	end
end)

--================= GUI =================--
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false
gui.Parent = PG

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
BarBG.BorderSizePixel = 0

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BackgroundTransparency = 0.15
Bar.BorderSizePixel = 0

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.15,0)
Percent.Position = UDim2.new(0,0,0.52,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 16
Percent.TextColor3 = Color3.new(0,0,0)
Percent.Text = "0%"

local steps = {
	[0] = "Initializing...",
	[25] = "Loading assets...",
	[50] = "Setting up menu...",
	[75] = "Almost ready...",
	[100] = "Done!"
}

for i = 0,100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i.."%"
	if steps[i] then
		Status.Text = steps[i]
	end
	task.wait(0.03)
end

task.wait(0.4)
Load:Destroy()

--------------------------------------------------
--================= MAIN MENU =================--
--------------------------------------------------
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.6,0.6)
Main.Position = UDim2.fromScale(0.2,0.2)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.2
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

--================= TOP BAR =================--
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundColor3 = Color3.fromRGB(230,230,230)
Top.BackgroundTransparency = 0.3
Top.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB    VERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextColor3 = Color3.new(0,0,0)

local Min = Instance.new("TextButton", Top)
Min.Size = UDim2.new(0,35,0,28)
Min.Position = UDim2.new(1,-80,0,6)
Min.Text = "-"
Min.Font = Enum.Font.GothamBold
Min.TextSize = 22

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0,35,0,28)
Close.Position = UDim2.new(1,-40,0,6)
Close.Text = "X"
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18

--================= TAB BAR =================--
local TabBar = Instance.new("Frame", Main)
TabBar.Size = UDim2.new(1,0,0,35)
TabBar.Position = UDim2.new(0,0,0,40)
TabBar.BackgroundTransparency = 1

local InfoTab = Instance.new("TextButton", TabBar)
InfoTab.Size = UDim2.new(0,120,1,0)
InfoTab.Position = UDim2.new(0,10,0,0)
InfoTab.Text = "INFO"
InfoTab.Font = Enum.Font.GothamBold
InfoTab.TextSize = 16

--================= CONTENT =================--
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-75)
Content.Position = UDim2.new(0,0,0,75)
Content.BackgroundTransparency = 1
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Font = Enum.Font.Gotham
Info.TextSize = 17
Info.TextColor3 = Color3.new(0,0,0)
Info.Text = [[
🇻🇳 THÔNG TIN
SLK HUB VERSION V1
Menu trong suốt
Loading đầy đủ
Fix lỗi kéo – thu nhỏ – đóng
Hỗ trợ Mobile & PC

🇺🇸 INFO
SLK HUB VERSION V1
Transparent UI
Full loading screen
Drag / Minimize / Close fixed
Mobile & PC supported
]]

InfoTab.MouseButton1Click:Connect(function()
	Content.Visible = true
end)

--================= MINIMIZE =================--
local minimized = false
local fullSize = Main.Size

Min.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		TabBar.Visible = false
		Content.Visible = false
		Main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,40)
		Min.Text = "+"
	else
		Main.Size = fullSize
		task.wait()
		TabBar.Visible = true
		Min.Text = "-"
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
Confirm.ZIndex = 10

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,-20,0.5,0)
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

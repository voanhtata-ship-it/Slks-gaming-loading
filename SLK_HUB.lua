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

--================ SCREEN GUI =================
local gui = Instance.new("ScreenGui", PG)
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--================ LOADING =================
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.new(0,420,0,200)
Load.Position = UDim2.new(0.5,-210,0.5,-100)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.25
Load.ZIndex = 5

local LTitle = Instance.new("TextLabel", Load)
LTitle.Size = UDim2.new(1,0,0,50)
LTitle.BackgroundTransparency = 1
LTitle.Text = "WELCOME\nSLK HUB"
LTitle.Font = Enum.Font.GothamBold
LTitle.TextSize = 22
LTitle.TextColor3 = Color3.new(0,0,0)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.85,0,0,18)
BarBG.Position = UDim2.new(0.075,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(220,220,220)
BarBG.BackgroundTransparency = 0.5

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0,30)
Percent.Position = UDim2.new(0,0,0.75,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 16
Percent.TextColor3 = Color3.new(0,0,0)

for i = 0,100 do
	Percent.Text = "Loading "..i.."%"
	Bar.Size = UDim2.new(i/100,0,1,0)

	if i==0 then Percent.Text="Initializing 0%"
	elseif i==25 then Percent.Text="Loading Assets 25%"
	elseif i==50 then Percent.Text="Setting Menu 50%"
	elseif i==75 then Percent.Text="Almost Done 75%"
	elseif i==100 then Percent.Text="Completed 100%"
	end

	task.wait(0.03)
end

Load:Destroy()

--================ MENU =================
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.new(0,520,0,320)
Main.Position = UDim2.new(0.5,-260,0.5,-160)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.25
Main.Active = true
Main.Draggable = true
Main.ZIndex = 2

-- TOP BAR
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,45)
Top.BackgroundColor3 = Color3.fromRGB(230,230,230)
Top.BackgroundTransparency = 0.2
Top.ZIndex = 3

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB   VERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left

local Min = Instance.new("TextButton", Top)
Min.Size = UDim2.new(0,35,0,30)
Min.Position = UDim2.new(1,-80,0,7)
Min.Text = "-"
Min.Font = Enum.Font.GothamBold
Min.TextSize = 20
Min.ZIndex = 4

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0,35,0,30)
Close.Position = UDim2.new(1,-40,0,7)
Close.Text = "X"
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18
Close.ZIndex = 4

-- TAB
local Tab = Instance.new("TextButton", Main)
Tab.Size = UDim2.new(0,120,0,40)
Tab.Position = UDim2.new(0,0,0,45)
Tab.Text = "INFO"
Tab.Font = Enum.Font.GothamBold
Tab.TextSize = 16
Tab.BackgroundColor3 = Color3.fromRGB(200,200,200)

-- CONTENT
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,-130,1,-55)
Content.Position = UDim2.new(0,130,0,55)
Content.BackgroundTransparency = 1
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,0,1,0)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Font = Enum.Font.GothamBold
Info.TextSize = 16
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

Tab.MouseButton1Click:Connect(function()
	Content.Visible = not Content.Visible
end)

-- MINIMIZE
local minimized = false
local fullSize = Main.Size

Min.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,45)
		Tab.Visible = false
		Content.Visible = false
		Min.Text = "+"
	else
		Main.Size = fullSize
		Tab.Visible = true
		Min.Text = "-"
	end
end)

-- CLOSE CONFIRM
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.new(0,300,0,160)
Confirm.Position = UDim2.new(0.5,-150,0.5,-80)
Confirm.BackgroundColor3 = Color3.fromRGB(255,255,255)
Confirm.BackgroundTransparency = 0.15
Confirm.Visible = false
Confirm.ZIndex = 10

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,0,0.6,0)
CText.BackgroundTransparency = 1
CText.Font = Enum.Font.GothamBold
CText.TextSize = 16
CText.Text = "DO YOU WANT CLOSE SCRIPT?"

local Yes = Instance.new("TextButton", Confirm)
Yes.Size = UDim2.new(0.4,0,0,35)
Yes.Position = UDim2.new(0.05,0,1,-45)
Yes.Text = "1 YES"

local No = Instance.new("TextButton", Confirm)
No.Size = UDim2.new(0.4,0,0,35)
No.Position = UDim2.new(0.55,0,1,-45)
No.Text = "2 NO"

Close.MouseButton1Click:Connect(function()
	Confirm.Visible = true
end)

No.MouseButton1Click:Connect(function()
	Confirm.Visible = false
end)

Yes.MouseButton1Click:Connect(function()
	for i=5,0,-1 do
		CText.Text = "PLEASE WAIT\nSCRIPT CLOSE "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

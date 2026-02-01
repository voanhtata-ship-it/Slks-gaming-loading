--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

pcall(function()
	if PG:FindFirstChild("SLK_HUB") then
		PG.SLK_HUB:Destroy()
	end
end)

--================ GUI =================--
local gui = Instance.new("ScreenGui", PG)
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false

--================ LOADING =================--
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.new(0,420,0,200)
Load.Position = UDim2.new(0.5,-210,0.5,-100)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.25
Load.BorderSizePixel = 0

local LTitle = Instance.new("TextLabel", Load)
LTitle.Size = UDim2.new(1,0,0,50)
LTitle.BackgroundTransparency = 1
LTitle.Text = "WELCOME\nSLK HUB"
LTitle.Font = Enum.Font.GothamBold
LTitle.TextSize = 22
LTitle.TextColor3 = Color3.new(0,0,0)

local LText = Instance.new("TextLabel", Load)
LText.Size = UDim2.new(1,0,0,30)
LText.Position = UDim2.new(0,0,0.4,0)
LText.BackgroundTransparency = 1
LText.Font = Enum.Font.Gotham
LText.TextSize = 16
LText.TextColor3 = Color3.new(0,0,0)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0,18)
BarBG.Position = UDim2.new(0.05,0,0.7,0)
BarBG.BackgroundColor3 = Color3.fromRGB(200,200,200)
BarBG.BackgroundTransparency = 0.5
BarBG.BorderSizePixel = 0

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BackgroundTransparency = 0.15
Bar.BorderSizePixel = 0

local function SetLoad(p,text,waitTime)
	Bar.Size = UDim2.new(p/100,0,1,0)
	LText.Text = "Loading "..p.."% - "..text
	task.wait(waitTime)
end

SetLoad(0,"Initializing...",1)
SetLoad(25,"Loading assets...",1)
SetLoad(50,"Setting up UI...",1)
SetLoad(75,"Almost ready...",1)
SetLoad(100,"Done!",0.6)

Load:Destroy()

--================ MENU =================--
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.new(0,520,0,320)
Main.Position = UDim2.new(0.5,-260,0.5,-160)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.25
Main.BorderSizePixel = 0

--================ DRAG FIX =================--
local dragging, dragStart, startPos
local TopBar

local function MakeDraggable(frame, handle)
	handle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)

	UIS.InputEnded:Connect(function()
		dragging = false
	end)
end

--================ TOP =================--
TopBar = Instance.new("Frame", Main)
TopBar.Size = UDim2.new(1,0,0,40)
TopBar.BackgroundColor3 = Color3.fromRGB(230,230,230)
TopBar.BackgroundTransparency = 0.2
TopBar.BorderSizePixel = 0

MakeDraggable(Main, TopBar)

local Title = Instance.new("TextLabel", TopBar)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB   VERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextColor3 = Color3.new(0,0,0)

local Min = Instance.new("TextButton", TopBar)
Min.Size = UDim2.new(0,40,0,30)
Min.Position = UDim2.new(1,-90,0,5)
Min.Text = "-"
Min.Font = Enum.Font.GothamBold
Min.TextSize = 22

local Close = Instance.new("TextButton", TopBar)
Close.Size = UDim2.new(0,40,0,30)
Close.Position = UDim2.new(1,-45,0,5)
Close.Text = "X"
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18

--================ TAB =================--
local Tab = Instance.new("TextButton", Main)
Tab.Size = UDim2.new(0,120,0,40)
Tab.Position = UDim2.new(0,0,0,40)
Tab.Text = "INFO"
Tab.Font = Enum.Font.GothamBold
Tab.TextSize = 16

--================ CONTENT =================--
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,-130,1,-40)
Content.Position = UDim2.new(0,130,0,40)
Content.BackgroundTransparency = 1
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-10,1,-10)
Info.Position = UDim2.new(0,5,0,5)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Font = Enum.Font.GothamBold
Info.TextSize = 16
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

Tab.MouseButton1Click:Connect(function()
	Content.Visible = not Content.Visible
end)

--================ MINIMIZE FIX =================--
local minimized = false
local fullSize = Main.Size

Min.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		Tab.Visible = false
		Content.Visible = false
		Main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,40)
		Min.Text = "+"
	else
		Main.Size = fullSize
		Tab.Visible = true
		Min.Text = "-"
	end
end)

--================ CLOSE CONFIRM =================--
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.new(0,350,0,180)
Confirm.Position = UDim2.new(0.5,-175,0.5,-90)
Confirm.BackgroundColor3 = Color3.fromRGB(255,255,255)
Confirm.BackgroundTransparency = 0.2
Confirm.Visible = false

local CText = Instance.new("TextLabel", Confirm)
CText.Size = UDim2.new(1,-20,0,80)
CText.Position = UDim2.new(0,10,0,10)
CText.BackgroundTransparency = 1
CText.Font = Enum.Font.GothamBold
CText.TextSize = 16
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
	for i = 5,0,-1 do
		CText.Text = "PLEASE WAIT\nSCRIPT CLOSE : "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

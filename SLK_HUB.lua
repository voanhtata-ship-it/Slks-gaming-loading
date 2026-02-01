--// SLK HUB LOADING - BIG SIZE + PERCENT
--// By SLKS-GAMING

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local guiParent = player:WaitForChild("PlayerGui")

pcall(function()
	if guiParent:FindFirstChild("SLK_LOADING") then
		guiParent.SLK_LOADING:Destroy()
	end
end)

--================ GUI =================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SLK_LOADING"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = guiParent

--================ MAIN FRAME =================
local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.fromScale(0.6, 0.35) -- 🔥 TO HƠN
Main.Position = UDim2.fromScale(0.2, 0.32)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.12
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local UICorner = Instance.new("UICorner", Main)
UICorner.CornerRadius = UDim.new(0, 26)

--================ TITLE =================
local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1,0,0.25,0)
Title.BackgroundTransparency = 1
Title.Text = "⭐ SLK HUB ⭐\nVERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 26 -- 🔥 CHỮ TO
Title.TextColor3 = Color3.fromRGB(50,50,50)

--================ STATUS =================
local Status = Instance.new("TextLabel", Main)
Status.Size = UDim2.new(1,0,0.12,0)
Status.Position = UDim2.new(0,0,0.27,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 18
Status.TextColor3 = Color3.fromRGB(90,90,90)
Status.Text = "Initializing..."

--================ PERCENT TEXT =================
local Percent = Instance.new("TextLabel", Main)
Percent.Size = UDim2.new(1,0,0.14,0)
Percent.Position = UDim2.new(0,0,0.40,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 28 -- 🔥 RẤT RÕ
Percent.TextColor3 = Color3.fromRGB(70,70,70)
Percent.Text = "0%"

--================ BAR BACKGROUND =================
local BarBG = Instance.new("Frame", Main)
BarBG.Size = UDim2.new(0.9,0,0.12,0)
BarBG.Position = UDim2.new(0.05,0,0.58,0)
BarBG.BackgroundColor3 = Color3.fromRGB(230,230,230)
BarBG.BackgroundTransparency = 0.25
BarBG.BorderSizePixel = 0

local BarBGCorner = Instance.new("UICorner", BarBG)
BarBGCorner.CornerRadius = UDim.new(1,0)

--================ BAR =================
local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,170,190)
Bar.BorderSizePixel = 0

local BarCorner = Instance.new("UICorner", Bar)
BarCorner.CornerRadius = UDim.new(1,0)

--================ MARK NUMBERS =================
local Marks = Instance.new("TextLabel", Main)
Marks.Size = UDim2.new(1,0,0.10,0)
Marks.Position = UDim2.new(0,0,0.74,0)
Marks.BackgroundTransparency = 1
Marks.Font = Enum.Font.Gotham
Marks.TextSize = 15
Marks.TextColor3 = Color3.fromRGB(120,120,120)
Marks.Text = "0   10   20   30   40   50   60   70   80   90   100"

--================ LOADING LOGIC =================
local texts = {
	[0] = "Starting...",
	[10] = "Loading UI...",
	[25] = "Preparing system...",
	[50] = "Halfway done...",
	[75] = "Almost finished...",
	[100] = "Done!"
}

for i = 0, 100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i .. "%"
	if texts[i] then
		Status.Text = texts[i]
	end
	task.wait(0.035)
end

task.wait(0.8)
ScreenGui:Destroy()

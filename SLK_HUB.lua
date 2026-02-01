--// SLK HUB - CUTE PASTEL LOADING ONLY
--// By SLKS-GAMING

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- Clear old loading
pcall(function()
	if PG:FindFirstChild("SLK_LOADING") then
		PG.SLK_LOADING:Destroy()
	end
end)

--================ SCREEN GUI ================
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = PG

--================ MAIN FRAME ================
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.48, 0.28)
Main.Position = UDim2.fromScale(0.26, 0.36)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.15
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local Corner = Instance.new("UICorner", Main)
Corner.CornerRadius = UDim.new(0, 24)

--================ TITLE =====================
local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1,0,0.28,0)
Title.BackgroundTransparency = 1
Title.Text = "⭐ SLK HUB 🌸\nVERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.TextColor3 = Color3.fromRGB(60,60,60)

--================ STATUS ====================
local Status = Instance.new("TextLabel", Main)
Status.Size = UDim2.new(1,0,0.12,0)
Status.Position = UDim2.new(0,0,0.30,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.fromRGB(90,90,90)
Status.Text = "Initializing..."

--================ PERCENT ===================
local Percent = Instance.new("TextLabel", Main)
Percent.Size = UDim2.new(1,0,0.12,0)
Percent.Position = UDim2.new(0,0,0.43,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 18
Percent.TextColor3 = Color3.fromRGB(70,70,70)
Percent.Text = "0%"

--================ BAR BG ====================
local BarBG = Instance.new("Frame", Main)
BarBG.Size = UDim2.new(0.9,0,0.12,0)
BarBG.Position = UDim2.new(0.05,0,0.60,0)
BarBG.BackgroundColor3 = Color3.fromRGB(235,235,235)
BarBG.BackgroundTransparency = 0.2
BarBG.BorderSizePixel = 0

local BarBGCorner = Instance.new("UICorner", BarBG)
BarBGCorner.CornerRadius = UDim.new(1,0)

--================ BAR =======================
local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,180,200) -- pastel pink
Bar.BorderSizePixel = 0

local BarCorner = Instance.new("UICorner", Bar)
BarCorner.CornerRadius = UDim.new(1,0)

--================ MILESTONES =================
local Marks = Instance.new("TextLabel", Main)
Marks.Size = UDim2.new(1,0,0.10,0)
Marks.Position = UDim2.new(0,0,0.75,0)
Marks.BackgroundTransparency = 1
Marks.Font = Enum.Font.Gotham
Marks.TextSize = 14
Marks.TextColor3 = Color3.fromRGB(120,120,120)
Marks.Text = "0  10  20  30  40  50  60  70  80  90  100"

--================ LOADING LOGIC ==============
local steps = {
	[0] = "Initializing...",
	[10] = "Preparing UI...",
	[20] = "Loading assets...",
	[30] = "Sync data...",
	[40] = "Almost there...",
	[50] = "Halfway done!",
	[60] = "Optimizing...",
	[70] = "Final touches...",
	[80] = "Checking system...",
	[90] = "Ready to start!",
	[100] = "Done! Enjoy ⭐"
}

for i = 0, 100, 1 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i.."%"
	if steps[i] then
		Status.Text = steps[i]
	end
	task.wait(0.035)
end

--================ END ========================
task.wait(0.6)
gui:Destroy()

-- 🔒 MENU MỚI SẼ ĐƯỢC LÀM SAU (KHÔNG GẮN Ở ĐÂY)

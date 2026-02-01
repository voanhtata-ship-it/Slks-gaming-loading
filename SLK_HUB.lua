--// SLK HUB - LOADING ONLY (CLEAN VERSION)
--// By SLKS-GAMING

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- Clear old
pcall(function()
	if PG:FindFirstChild("SLK_LOADING") then
		PG.SLK_LOADING:Destroy()
	end
end)

--================= GUI =================--
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = PG

--================= MAIN LOADING FRAME =================--
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.6, 0.22)
Load.Position = UDim2.fromScale(0.2, 0.39)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.15
Load.BorderSizePixel = 0

local corner = Instance.new("UICorner", Load)
corner.CornerRadius = UDim.new(0,18)

--================= TITLE =================--
local Title = Instance.new("TextLabel", Load)
Title.Size = UDim2.new(1,0,0.35,0)
Title.BackgroundTransparency = 1
Title.Text = "⭐ SLK HUB 🌸\nVERSION V1\nBy SLKS-GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.TextColor3 = Color3.new(0,0,0)

--================= PERCENT TEXT =================--
local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.15,0)
Percent.Position = UDim2.new(0,0,0.38,0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 16
Percent.TextColor3 = Color3.new(0,0,0)

--================= BAR BG =================--
local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.85,0,0.18,0)
BarBG.Position = UDim2.new(0.075,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(230,230,230)
BarBG.BorderSizePixel = 0

local bgCorner = Instance.new("UICorner", BarBG)
bgCorner.CornerRadius = UDim.new(1,0)

--================= BAR =================--
local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,170,200)
Bar.BorderSizePixel = 0

local barCorner = Instance.new("UICorner", Bar)
barCorner.CornerRadius = UDim.new(1,0)

--================= SCALE NUMBERS =================--
local ScaleText = Instance.new("TextLabel", Load)
ScaleText.Size = UDim2.new(1,0,0.12,0)
ScaleText.Position = UDim2.new(0,0,0.82,0)
ScaleText.BackgroundTransparency = 1
ScaleText.Font = Enum.Font.Gotham
ScaleText.TextSize = 13
ScaleText.TextColor3 = Color3.fromRGB(120,120,120)
ScaleText.Text = "0   10   20   30   40   50   60   70   80   90   100"

--================= LOADING RUN =================--
for i = 0,100 do
	Percent.Text = i.."%"
	Bar.Size = UDim2.new(i/100,0,1,0)
	task.wait(0.03)
end

task.wait(0.3)
Load:Destroy()

-- ⛔ STOP HERE – MENU BẠN TỰ GẮN SAU

--// SLK HUB - BLACK & WHITE LOADING (PRO STYLE)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- Clear old
pcall(function()
	if PG:FindFirstChild("SLK_LOADING") then
		PG.SLK_LOADING:Destroy()
	end
end)

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = PG

--================ LOADING FRAME =================
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.5, 0.28)
Load.Position = UDim2.fromScale(0.25, 0.36)
Load.BackgroundColor3 = Color3.fromRGB(15,15,15) -- ĐEN
Load.BorderSizePixel = 0
Load.Active = false -- ❌ KHÔNG KÉO

-- Title
local Title = Instance.new("TextLabel", Load)
Title.Size = UDim2.new(1,0,0.28,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 26
Title.TextColor3 = Color3.fromRGB(255,255,255)

-- Percent
local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.15,0)
Percent.Position = UDim2.new(0,0,0.45,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 18
Percent.TextColor3 = Color3.fromRGB(200,200,200)
Percent.Text = "0%"

-- Bar BG
local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0.1,0)
BarBG.Position = UDim2.new(0.05,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(45,45,45)
BarBG.BorderSizePixel = 0

-- Bar
local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BorderSizePixel = 0

-- Status text (dưới thanh)
local Status = Instance.new("TextLabel", Load)
Status.Size = UDim2.new(1,0,0.15,0)
Status.Position = UDim2.new(0,0,0.72,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 15
Status.TextColor3 = Color3.fromRGB(180,180,180)
Status.Text = "Initializing..."

-- Status steps
local steps = {
	[0] = "Initializing...",
	[25] = "Loading assets...",
	[50] = "Setting UI...",
	[75] = "Almost done...",
	[100] = "Done!"
}

-- Loading loop
for i = 0,100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i.."%"
	if steps[i] then
		Status.Text = steps[i]
	end
	task.wait(0.03)
end

task.wait(0.35)

--================ SHRINK & DISAPPEAR =================
local tween = TweenService:Create(
	Load,
	TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
	{
		Size = UDim2.fromScale(0,0),
		Position = UDim2.fromScale(0.5,0.5)
	}
)

tween:Play()
tween.Completed:Wait()

gui:Destroy()

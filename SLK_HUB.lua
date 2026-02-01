--// SLK HUB - LOADING ONLY (FULL FIX)
--// By SLKS-GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- CLEAR OLD
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

--================= LOADING FRAME =================--
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.55, 0.28)
Load.Position = UDim2.fromScale(0.225, 0.36)
Load.BackgroundColor3 = Color3.fromRGB(245,245,245)
Load.BorderSizePixel = 0
Load.Active = true
Load.Draggable = true

--================= TITLE =================--
local Title = Instance.new("TextLabel", Load)
Title.Size = UDim2.new(1,0,0.28,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 26
Title.TextColor3 = Color3.fromRGB(20,20,20)

--================= BAR BG =================--
local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0.14,0)
BarBG.Position = UDim2.new(0.05,0,0.45,0)
BarBG.BackgroundColor3 = Color3.fromRGB(220,220,220)
BarBG.BorderSizePixel = 0

--================= BAR =================--
local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(120,180,255)
Bar.BorderSizePixel = 0

--================= STATUS TEXT =================--
local Status = Instance.new("TextLabel", Load)
Status.Size = UDim2.new(1,0,0.15,0)
Status.Position = UDim2.new(0,0,0.63,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.fromRGB(40,40,40)
Status.Text = "Initializing..."

--================= PERCENT =================--
local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.12,0)
Percent.Position = UDim2.new(0,0,0.78,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 16
Percent.TextColor3 = Color3.fromRGB(40,40,40)
Percent.Text = "0%"

--================= LOADING LOGIC =================--
local texts = {
	[0] = "Initializing...",
	[25] = "Loading assets...",
	[50] = "Setting UI...",
	[75] = "Almost done...",
	[100] = "Done!"
}

for i = 0,100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i.."%"
	if texts[i] then
		Status.Text = texts[i]
	end
	task.wait(0.03)
end

--================= SHRINK & CLOSE =================--
task.wait(0.3)

local shrink = TweenService:Create(
	Load,
	TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
	{
		Size = UDim2.fromScale(0,0),
		Position = UDim2.fromScale(0.5,0.5)
	}
)

shrink:Play()
shrink.Completed:Wait()

gui:Destroy()

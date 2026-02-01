--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
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
Load.Size = UDim2.fromScale(0.6, 0.3) -- TO
Load.Position = UDim2.fromScale(0.2, 0.35)
Load.BackgroundColor3 = Color3.fromRGB(20,20,20) -- đen trắng
Load.BorderSizePixel = 0
Load.Active = false -- ❌ KHÔNG KÉO

local UICorner = Instance.new("UICorner", Load)
UICorner.CornerRadius = UDim.new(0,16)

local Title = Instance.new("TextLabel", Load)
Title.Size = UDim2.new(1,0,0.25,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 28
Title.TextColor3 = Color3.fromRGB(255,255,255)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.85,0,0.18,0)
BarBG.Position = UDim2.new(0.075,0,0.45,0)
BarBG.BackgroundColor3 = Color3.fromRGB(60,60,60)
BarBG.BorderSizePixel = 0

local BarCorner = Instance.new("UICorner", BarBG)
BarCorner.CornerRadius = UDim.new(0,12)

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BorderSizePixel = 0

local BarCorner2 = Instance.new("UICorner", Bar)
BarCorner2.CornerRadius = UDim.new(0,12)

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.15,0)
Percent.Position = UDim2.new(0,0,0.65,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 18
Percent.TextColor3 = Color3.fromRGB(255,255,255)
Percent.Text = "0%"

local Status = Instance.new("TextLabel", Load)
Status.Size = UDim2.new(1,0,0.15,0)
Status.Position = UDim2.new(0,0,0.78,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.fromRGB(200,200,200)
Status.Text = "Initializing..."

local steps = {
	[0] = "Initializing...",
	[25] = "Loading assets...",
	[50] = "Setting UI...",
	[75] = "Almost done...",
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

-- ANIMATION THU NHỎ RỒI MẤT
local shrink = TweenService:Create(
	Load,
	TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
	{
		Size = UDim2.fromScale(0,0),
		BackgroundTransparency = 1
	}
)
shrink:Play()
shrink.Completed:Wait()
Load:Destroy()

--------------------------------------------------
--================= MENU =================--
--------------------------------------------------
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.65,0.65) -- TO
Main.Position = UDim2.fromScale(0.175,0.175)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.25 -- TRONG SUỐT
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local MenuCorner = Instance.new("UICorner", Main)
MenuCorner.CornerRadius = UDim.new(0,16)

-- TOP BAR
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,45)
Top.BackgroundColor3 = Color3.fromRGB(220,220,220)
Top.BackgroundTransparency = 0.3
Top.BorderSizePixel = 0

local Title2 = Instance.new("TextLabel", Top)
Title2.Size = UDim2.new(1,-20,1,0)
Title2.Position = UDim2.new(0,10,0,0)
Title2.BackgroundTransparency = 1
Title2.Text = "SLK HUB       VERSION V1\nForsaken | by SLK GAMING"
Title2.Font = Enum.Font.GothamBold
Title2.TextSize = 16
Title2.TextXAlignment = Enum.TextXAlignment.Left
Title2.TextColor3 = Color3.new(0,0,0)

-- TAB BAR
local TabBar = Instance.new("Frame", Main)
TabBar.Size = UDim2.new(1,0,0,40)
TabBar.Position = UDim2.new(0,0,0,45)
TabBar.BackgroundTransparency = 1

local InfoTab = Instance.new("TextButton", TabBar)
InfoTab.Size = UDim2.new(0,140,1,0)
InfoTab.Position = UDim2.new(0,10,0,0)
InfoTab.Text = "INFO"
InfoTab.Font = Enum.Font.GothamBold
InfoTab.TextSize = 16

-- CONTENT
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-85)
Content.Position = UDim2.new(0,0,0,85)
Content.BackgroundTransparency = 1
Content.Visible = false

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.Font = Enum.Font.Gotham
Info.TextSize = 18
Info.TextColor3 = Color3.new(0,0,0)
Info.Text = [[
SLK HUB VERSION V1

• Menu to – trong suốt
• Loading chuẩn 0 → 100%
• Có tab – bấm mới hiện
• Hỗ trợ Mobile & PC

Made by SLKS-GAMING
]]

InfoTab.MouseButton1Click:Connect(function()
	Content.Visible = true
end)

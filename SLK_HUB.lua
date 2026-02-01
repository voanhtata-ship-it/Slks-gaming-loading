--// SLK HUB VERSION V1
--// Forsaken | by SLK GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

pcall(function()
	if PG:FindFirstChild("SLK_HUB") then
		PG.SLK_HUB:Destroy()
	end
end)

--------------------------------------------------
-- SCREEN GUI
--------------------------------------------------
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_HUB"
gui.ResetOnSpawn = false
gui.Parent = PG

--------------------------------------------------
-- LOADING (KHÔNG TRONG SUỐT, KHÔNG KÉO)
--------------------------------------------------
local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.45,0.25)
Load.Position = UDim2.fromScale(0.275,0.375)
Load.BackgroundColor3 = Color3.fromRGB(20,20,20)
Load.BackgroundTransparency = 0 -- ❗ KHÔNG TRONG SUỐT
Load.BorderSizePixel = 0
Load.Active = false

Instance.new("UICorner", Load).CornerRadius = UDim.new(0,12)

local LoadTitle = Instance.new("TextLabel", Load)
LoadTitle.Size = UDim2.new(1,0,0.35,0)
LoadTitle.BackgroundTransparency = 1
LoadTitle.Text = "SLK HUB\nVERSION V1"
LoadTitle.Font = Enum.Font.GothamBold
LoadTitle.TextSize = 22
LoadTitle.TextColor3 = Color3.new(1,1,1)

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.15,0)
Percent.Position = UDim2.new(0,0,0.38,0)
Percent.BackgroundTransparency = 1
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 18
Percent.TextColor3 = Color3.new(1,1,1)
Percent.Text = "0%"

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0.18,0)
BarBG.Position = UDim2.new(0.05,0,0.58,0)
BarBG.BackgroundColor3 = Color3.fromRGB(50,50,50)
BarBG.BorderSizePixel = 0
Instance.new("UICorner", BarBG).CornerRadius = UDim.new(1,0)

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BorderSizePixel = 0
Instance.new("UICorner", Bar).CornerRadius = UDim.new(1,0)

local Status = Instance.new("TextLabel", Load)
Status.Size = UDim2.new(1,0,0.15,0)
Status.Position = UDim2.new(0,0,0.78,0)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.new(1,1,1)
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

-- thu nhỏ rồi mất (KHÔNG FADE TRONG SUỐT)
TweenService:Create(
	Load,
	TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
	{Size = UDim2.fromScale(0,0)}
):Play()
task.wait(0.55)
Load:Destroy()

--------------------------------------------------
-- MAIN MENU (TRONG SUỐT + FADE IN)
--------------------------------------------------
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.6,0.6)
Main.Position = UDim2.fromScale(0.2,0.2)
Main.BackgroundColor3 = Color3.fromRGB(30,30,30)
Main.BackgroundTransparency = 1 -- ❗ MENU MỚI TRONG SUỐT
Main.BorderSizePixel = 0
Main.Visible = true
Main.Active = false
Main.Draggable = false
Instance.new("UICorner", Main).CornerRadius = UDim.new(0,14)

TweenService:Create(
	Main,
	TweenInfo.new(0.5),
	{BackgroundTransparency = 0.15}
):Play()
task.wait(0.5)
Main.Active = true
Main.Draggable = true

--------------------------------------------------
-- TOP BAR
--------------------------------------------------
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,45)
Top.BackgroundColor3 = Color3.fromRGB(45,45,45)
Top.BackgroundTransparency = 0.1
Top.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-20,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Text = "SLK HUB        VERSION V1\nForsaken | by SLK GAMING"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextColor3 = Color3.new(1,1,1)

--------------------------------------------------
-- TAB BAR
--------------------------------------------------
local TabBar = Instance.new("Frame", Main)
TabBar.Size = UDim2.new(1,0,0,40)
TabBar.Position = UDim2.new(0,0,0,45)
TabBar.BackgroundTransparency = 1

local InfoTab = Instance.new("TextButton", TabBar)
InfoTab.Size = UDim2.new(0,120,1,0)
InfoTab.Position = UDim2.new(0,10,0,0)
InfoTab.Text = "INFO"
InfoTab.Font = Enum.Font.GothamBold
InfoTab.TextSize = 16
InfoTab.BackgroundColor3 = Color3.fromRGB(60,60,60)
InfoTab.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", InfoTab).CornerRadius = UDim.new(0,8)

--------------------------------------------------
-- CONTENT
--------------------------------------------------
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
Info.TextSize = 17
Info.TextColor3 = Color3.new(1,1,1)
Info.Text = [[
SLK HUB VERSION V1

• Loading KHÔNG trong suốt
• Loading thu nhỏ rồi mất
• Menu trong suốt fade in
• Tab gắn sau khi menu ổn
• Menu kéo được, Loading không
]]

InfoTab.MouseButton1Click:Connect(function()
	Content.Visible = true
end)

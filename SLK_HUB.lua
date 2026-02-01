--// SLK HUB V1 - FULL FIXED VERSION

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

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
local Loaded = false

local Load = Instance.new("Frame", gui)
Load.Size = UDim2.fromScale(0.5,0.25)
Load.Position = UDim2.fromScale(0.25,0.375)
Load.BackgroundColor3 = Color3.fromRGB(255,255,255)
Load.BackgroundTransparency = 0.15
Load.Active = true
Load.Draggable = true

local LoadTitle = Instance.new("TextLabel", Load)
LoadTitle.Size = UDim2.new(1,0,0.4,0)
LoadTitle.BackgroundTransparency = 1
LoadTitle.Text = "SLK HUB\nLOADING..."
LoadTitle.Font = Enum.Font.SourceSansBold
LoadTitle.TextSize = 22
LoadTitle.TextColor3 = Color3.new(0,0,0)

local Percent = Instance.new("TextLabel", Load)
Percent.Size = UDim2.new(1,0,0.2,0)
Percent.Position = UDim2.new(0,0,0.45,0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.Font = Enum.Font.SourceSansBold
Percent.TextSize = 18
Percent.TextColor3 = Color3.new(0,0,0)

local BarBG = Instance.new("Frame", Load)
BarBG.Size = UDim2.new(0.9,0,0.18,0)
BarBG.Position = UDim2.new(0.05,0,0.7,0)
BarBG.BackgroundColor3 = Color3.fromRGB(220,220,220)

local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(180,180,180)

if not Loaded then
	for _,v in ipairs({0,25,50,75,100}) do
		Percent.Text = v.."%"
		Bar.Size = UDim2.new(v/100,0,1,0)
		task.wait(0.4)
	end
	Loaded = true
end

Load:Destroy()

--------------------------------------------------
--================= MAIN MENU =================--
--------------------------------------------------
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.6,0.6)
Main.Position = UDim2.fromScale(0.2,0.2)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.15
Main.Active = true
Main.Draggable = true   -- 🔥 CHỈ MAIN ĐƯỢC KÉO

--================= TOP BAR =================--
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundColor3 = Color3.fromRGB(230,230,230)

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-100,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB | VERSION V1"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextXAlignment = Left

local Min = Instance.new("TextButton", Top)
Min.Size = UDim2.new(0,35,0,30)
Min.Position = UDim2.new(1,-80,0,5)
Min.Text = "-"

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.new(0,35,0,30)
Close.Position = UDim2.new(1,-40,0,5)
Close.Text = "X"

--================= CONTENT =================--
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-40)
Content.Position = UDim2.new(0,0,0,40)
Content.BackgroundTransparency = 1

local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Top
Info.Font = Enum.Font.SourceSansBold
Info.TextSize = 18
Info.Text = [[
🇻🇳 THÔNG TIN
SLK HUB VERSION V1
Menu trong suốt
Fix full lỗi
Hỗ trợ Mobile & PC

🇺🇸 INFO
SLK HUB VERSION V1
Transparent menu
All bugs fixed
Mobile & PC supported
]]

--================= MINIMIZE FIX =================--
local mini = false
local oldSize = Main.Size

Min.MouseButton1Click:Connect(function()
	mini = not mini
	if mini then
		Content.Visible = false
		Main.Size = UDim2.new(oldSize.X.Scale,oldSize.X.Offset,0,40)
	else
		Main.Size = oldSize
		task.wait()
		Content.Visible = true
	end
end)

--================= CLOSE =================--
Close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

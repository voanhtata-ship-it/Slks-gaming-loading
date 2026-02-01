--// SLK HUB V1 - FIX ALL
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Remove old UI
if PlayerGui:FindFirstChild("SLK_HUB_UI") then
	PlayerGui.SLK_HUB_UI:Destroy()
end

-- ScreenGui
local gui = Instance.new("ScreenGui", PlayerGui)
gui.Name = "SLK_HUB_UI"
gui.ResetOnSpawn = false

-- Main Frame
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.6, 0.6)
Main.Position = UDim2.fromScale(0.2, 0.2)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.15
Main.Active = true
Main.Draggable = true

-- Top bar
local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1,0,0,40)
Top.BackgroundColor3 = Color3.fromRGB(220,220,220)

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1,-120,1,0)
Title.Position = UDim2.new(0,10,0,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB    VERSION V1\nBy SLKS-GAMING"
Title.TextXAlignment = Left
Title.TextYAlignment = Center
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.new(0,0,0)

-- Minimize Button
local MinBtn = Instance.new("TextButton", Top)
MinBtn.Size = UDim2.new(0,40,0,30)
MinBtn.Position = UDim2.new(1,-90,0,5)
MinBtn.Text = "-"
MinBtn.Font = Enum.Font.SourceSansBold
MinBtn.TextSize = 22
MinBtn.BackgroundColor3 = Color3.fromRGB(200,200,200)

-- Close Button
local CloseBtn = Instance.new("TextButton", Top)
CloseBtn.Size = UDim2.new(0,40,0,30)
CloseBtn.Position = UDim2.new(1,-45,0,5)
CloseBtn.Text = "X"
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.TextSize = 18
CloseBtn.BackgroundColor3 = Color3.fromRGB(255,120,120)

-- Content
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1,0,1,-40)
Content.Position = UDim2.new(0,0,0,40)
Content.BackgroundTransparency = 1

-- Info Tab
local Info = Instance.new("TextLabel", Content)
Info.Size = UDim2.new(1,-20,1,-20)
Info.Position = UDim2.new(0,10,0,10)
Info.BackgroundTransparency = 1
Info.TextWrapped = true
Info.TextYAlignment = Top
Info.Font = Enum.Font.SourceSansBold
Info.TextSize = 18
Info.TextColor3 = Color3.new(0,0,0)
Info.Text =
[[🇻🇳 THÔNG TIN
SLK HUB V1
Script dùng cho mobile & pc
Fix đầy đủ lỗi UI

🇺🇸 INFO
SLK HUB V1
Mobile & PC supported
All UI bugs fixed]]

-- Minimize Logic
local minimized = false
local oldSize = Main.Size

MinBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		oldSize = Main.Size
		Content.Visible = false
		TweenService:Create(Main, TweenInfo.new(0.25), {
			Size = UDim2.new(oldSize.X.Scale, oldSize.X.Offset, 0, 40)
		}):Play()
	else
		TweenService:Create(Main, TweenInfo.new(0.25), {
			Size = oldSize
		}):Play()
		task.delay(0.25, function()
			Content.Visible = true
		end)
	end
end)

-- Close Confirm
local Confirm = Instance.new("Frame", gui)
Confirm.Size = UDim2.fromScale(0.4,0.25)
Confirm.Position = UDim2.fromScale(0.3,0.35)
Confirm.BackgroundColor3 = Color3.fromRGB(240,240,240)
Confirm.Visible = false
Confirm.Active = true
Confirm.Draggable = true

local ConfirmText = Instance.new("TextLabel", Confirm)
ConfirmText.Size = UDim2.new(1,-20,0,60)
ConfirmText.Position = UDim2.new(0,10,0,10)
ConfirmText.BackgroundTransparency = 1
ConfirmText.TextWrapped = true
ConfirmText.Font = Enum.Font.SourceSansBold
ConfirmText.TextSize = 18
ConfirmText.TextColor3 = Color3.new(0,0,0)
ConfirmText.Text = "DO YOU WANT CLOSE SCRIPT?"

local Yes = Instance.new("TextButton", Confirm)
Yes.Size = UDim2.new(0.4,0,0,40)
Yes.Position = UDim2.new(0.05,0,1,-50)
Yes.Text = "1  YES"
Yes.Font = Enum.Font.SourceSansBold
Yes.TextSize = 16
Yes.BackgroundColor3 = Color3.fromRGB(150,255,150)

local No = Instance.new("TextButton", Confirm)
No.Size = UDim2.new(0.4,0,0,40)
No.Position = UDim2.new(0.55,0,1,-50)
No.Text = "2  NO"
No.Font = Enum.Font.SourceSansBold
No.TextSize = 16
No.BackgroundColor3 = Color3.fromRGB(255,150,150)

CloseBtn.MouseButton1Click:Connect(function()
	Confirm.Visible = true
end)

No.MouseButton1Click:Connect(function()
	Confirm.Visible = false
end)

Yes.MouseButton1Click:Connect(function()
	ConfirmText.Text = "PLEASE WAIT\nSCRIPT CLOSE"
	Yes.Visible = false
	No.Visible = false

	for i = 5,0,-1 do
		ConfirmText.Text = "PLEASE WAIT\nSCRIPT CLOSE : "..i.."s"
		task.wait(1)
	end

	gui:Destroy()
end)

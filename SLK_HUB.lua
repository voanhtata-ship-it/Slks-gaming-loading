--// SLK GAMING | LOADING + MENU FIXED

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Player = Players.LocalPlayer

-- CLEAN
if Player.PlayerGui:FindFirstChild("SLK_GUI") then
	Player.PlayerGui.SLK_GUI:Destroy()
end

-- GUI
local gui = Instance.new("ScreenGui", Player.PlayerGui)
gui.Name = "SLK_GUI"
gui.ResetOnSpawn = false

------------------------------------------------
--============== LOADING =================------
------------------------------------------------
local loading = Instance.new("Frame", gui)
loading.Size = UDim2.new(0,420,0,240)
loading.Position = UDim2.new(0.5,-210,0.5,-120)
loading.BackgroundColor3 = Color3.fromRGB(255,255,255)
loading.BorderSizePixel = 2

local title = Instance.new("TextLabel", loading)
title.Size = UDim2.new(1,0,0,40)
title.Position = UDim2.new(0,0,0,10)
title.BackgroundTransparency = 1
title.Text = "SLK GAMING"
title.Font = Enum.Font.GothamBlack
title.TextSize = 30
title.TextColor3 = Color3.new(0,0,0)

local barBG = Instance.new("Frame", loading)
barBG.Size = UDim2.new(0.8,0,0,18)
barBG.Position = UDim2.new(0.1,0,0.5,0)
barBG.BackgroundColor3 = Color3.fromRGB(0,0,0)

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local percent = Instance.new("TextLabel", loading)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.6,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.new(0,0,0)

------------------------------------------------
--============== MENU =================----------
------------------------------------------------
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0,480,0,300)
menu.Position = UDim2.new(0.5,-240,0.5,-150)
menu.BackgroundColor3 = Color3.fromRGB(25,25,25)
menu.Visible = false
menu.Active = true

-- TOP BAR
local top = Instance.new("Frame", menu)
top.Size = UDim2.new(1,0,0,35)
top.BackgroundColor3 = Color3.fromRGB(35,35,35)

local titleMenu = Instance.new("TextLabel", top)
titleMenu.Size = UDim2.new(1,-40,1,0)
titleMenu.BackgroundTransparency = 1
titleMenu.Text = "SLK GAMING HUB"
titleMenu.Font = Enum.Font.GothamBold
titleMenu.TextSize = 18
titleMenu.TextColor3 = Color3.new(1,1,1)

-- MINIMIZE BUTTON
local mini = Instance.new("TextButton", top)
mini.Size = UDim2.new(0,35,1,0)
mini.Position = UDim2.new(1,-35,0,0)
mini.Text = "-"
mini.Font = Enum.Font.GothamBold
mini.TextSize = 22
mini.TextColor3 = Color3.new(1,1,1)
mini.BackgroundTransparency = 1

------------------------------------------------
--============== DRAG MENU =================----
------------------------------------------------
local dragging, dragStart, startPos

top.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = menu.Position
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		menu.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

------------------------------------------------
--============== MINIMIZE =================-----
------------------------------------------------
local minimized = false
mini.MouseButton1Click:Connect(function()
	if not minimized then
		TweenService:Create(menu,TweenInfo.new(0.3),
			{Size = UDim2.new(0,480,0,35)}):Play()
		minimized = true
	else
		TweenService:Create(menu,TweenInfo.new(0.3),
			{Size = UDim2.new(0,480,0,300)}):Play()
		minimized = false
	end
end)

------------------------------------------------
--============== LOADING RUN =================--
------------------------------------------------
for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"
	task.wait(0.05)
end

-- FADE LOADING
for _,v in ipairs(loading:GetDescendants()) do
	if v:IsA("TextLabel") then
		TweenService:Create(v,TweenInfo.new(0.4),{TextTransparency=1}):Play()
	elseif v:IsA("Frame") then
		TweenService:Create(v,TweenInfo.new(0.4),{BackgroundTransparency=1}):Play()
	end
end

task.wait(0.45)
loading:Destroy()

-- SHOW MENU
menu.Visible = true
menu.Size = UDim2.new(0,0,0,0)
menu:TweenSize(
	UDim2.new(0,480,0,300),
	Enum.EasingDirection.Out,
	Enum.EasingStyle.Back,
	0.5,
	true
)

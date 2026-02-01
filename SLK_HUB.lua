--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

-- CLEAR OLD GUI
for _,v in pairs(player.PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_MENU" then
		v:Destroy()
	end
end

-- ================= LOADING =================
local loadingGui = Instance.new("ScreenGui", player.PlayerGui)
loadingGui.Name = "SLK_LOADING"
loadingGui.ResetOnSpawn = false

local lframe = Instance.new("Frame", loadingGui)
lframe.Size = UDim2.new(0,420,0,260)
lframe.Position = UDim2.new(0.5,-210,0.5,-130)
lframe.BackgroundColor3 = Color3.fromRGB(255,255,255)
lframe.BackgroundTransparency = 0.4
lframe.BorderSizePixel = 0

local ltitle = Instance.new("TextLabel", lframe)
ltitle.Size = UDim2.new(1,0,0,40)
ltitle.Position = UDim2.new(0,0,0,10)
ltitle.BackgroundTransparency = 1
ltitle.Text = "SLK HUB"
ltitle.Font = Enum.Font.GothamBlack
ltitle.TextSize = 32
ltitle.TextColor3 = Color3.fromRGB(0,0,0)

local lby = Instance.new("TextLabel", lframe)
lby.Size = UDim2.new(1,0,0,20)
lby.Position = UDim2.new(0,0,0,55)
lby.BackgroundTransparency = 1
lby.Text = "By SLKS-GAMING"
lby.Font = Enum.Font.Gotham
lby.TextSize = 14
lby.TextColor3 = Color3.fromRGB(80,80,80)

local barBG = Instance.new("Frame", lframe)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundTransparency = 0.6
barBG.BorderSizePixel = 0

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

local percent = Instance.new("TextLabel", lframe)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.fromRGB(0,0,0)

local welcome = Instance.new("TextLabel", lframe)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(0,0,0)

for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 0 then
		welcome.Text = "Initializing..."
	elseif i == 25 then
		welcome.Text = "Loading assets..."
	elseif i == 50 then
		welcome.Text = "Setting up menu..."
	elseif i == 75 then
		welcome.Text = "Almost ready..."
	elseif i == 100 then
		welcome.Text = "Done!"
	end

	task.wait(0.05)
end

TweenService:Create(lframe,TweenInfo.new(0.6),{Size=UDim2.new(0,0,0,0)}):Play()
task.wait(0.7)
loadingGui:Destroy()

-- ================= MENU =================
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,480,0,320)
main.Position = UDim2.new(0.5,-240,0.5,-160)
main.BackgroundColor3 = Color3.fromRGB(255,255,255)
main.BackgroundTransparency = 0.35
main.BorderSizePixel = 0

-- TOP BAR
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundTransparency = 0.3
top.BorderSizePixel = 0

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,-50,1,0)
title.Position = UDim2.new(0,10,0,0)
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextColor3 = Color3.fromRGB(0,0,0)
title.Text = "SLK HUB       VERSION V1\nBy SLKS-GAMING"

local minBtn = Instance.new("TextButton", top)
minBtn.Size = UDim2.new(0,35,0,30)
minBtn.Position = UDim2.new(1,-40,0,7)
minBtn.Text = "-"
minBtn.Font = Enum.Font.GothamBold
minBtn.TextSize = 22
minBtn.BackgroundTransparency = 0.3
minBtn.BorderSizePixel = 0

-- CONTENT
local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,0,0,45)
content.Size = UDim2.new(1,0,1,-45)
content.BackgroundTransparency = 1

local infoBtn = Instance.new("TextButton", content)
infoBtn.Size = UDim2.new(0,100,0,35)
infoBtn.Position = UDim2.new(0,10,0,10)
infoBtn.Text = "INFO"
infoBtn.Font = Enum.Font.GothamBold
infoBtn.TextSize = 14
infoBtn.BackgroundTransparency = 0.2
infoBtn.BorderSizePixel = 0

local info = Instance.new("Frame", content)
info.Position = UDim2.new(0,10,0,55)
info.Size = UDim2.new(1,-20,1,-65)
info.BackgroundTransparency = 1
info.Visible = false

local vn = Instance.new("TextLabel", info)
vn.Size = UDim2.new(0.47,0,1,0)
vn.BackgroundTransparency = 1
vn.TextWrapped = true
vn.TextXAlignment = Enum.TextXAlignment.Left
vn.TextYAlignment = Enum.TextYAlignment.Top
vn.Font = Enum.Font.GothamBold
vn.TextSize = 15
vn.Text =
"🇻🇳 VIỆT NAM\n\n"..
"• SLK HUB V1\n"..
"• Có loading 0 → 100%\n"..
"• Menu kéo & thu nhỏ\n"..
"• Tối ưu Mobile"

local en = Instance.new("TextLabel", info)
en.Position = UDim2.new(0.53,0,0,0)
en.Size = UDim2.new(0.47,0,1,0)
en.BackgroundTransparency = 1
en.TextWrapped = true
en.TextXAlignment = Enum.TextXAlignment.Left
en.TextYAlignment = Enum.TextYAlignment.Top
en.Font = Enum.Font.GothamBold
en.TextSize = 15
en.Text =
"🇺🇸 ENGLISH\n\n"..
"• SLK HUB V1\n"..
"• Loading system 0 → 100%\n"..
"• Draggable & minimizable UI\n"..
"• Mobile friendly"

infoBtn.MouseButton1Click:Connect(function()
	info.Visible = not info.Visible
end)

-- MINIMIZE
local minimized = false
local fullSize = main.Size
local miniSize = UDim2.new(0,480,0,45)

minBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and miniSize or fullSize
	minBtn.Text = minimized and "+" or "-"
end)

-- ===== DRAG FIX (PC + MOBILE) =====
local dragging = false
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	main.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

top.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = main.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

top.InputChanged:Connect(function(input)
	if dragging and (
		input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch
	) then
		update(input)
	end
end)

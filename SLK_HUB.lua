--// SLK HUB VERSION V1
--// By SLKS-GAMING

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- CLEAN OLD
for _,v in pairs(player.PlayerGui:GetChildren()) do
	if v.Name == "SLK_LOADING" or v.Name == "SLK_MENU" then
		v:Destroy()
	end
end

--================ LOADING =================
local loadingGui = Instance.new("ScreenGui", player.PlayerGui)
loadingGui.Name = "SLK_LOADING"
loadingGui.ResetOnSpawn = false

local lf = Instance.new("Frame", loadingGui)
lf.Size = UDim2.new(0,420,0,260)
lf.Position = UDim2.new(0.5,-210,0.5,-130)
lf.BackgroundColor3 = Color3.fromRGB(255,255,255)
lf.BackgroundTransparency = 0.35
lf.BorderSizePixel = 0

local lt = Instance.new("TextLabel", lf)
lt.Size = UDim2.new(1,0,0,40)
lt.Position = UDim2.new(0,0,0,10)
lt.BackgroundTransparency = 1
lt.Text = "SLK HUB"
lt.Font = Enum.Font.GothamBlack
lt.TextSize = 32
lt.TextColor3 = Color3.fromRGB(0,0,0)

local lby = Instance.new("TextLabel", lf)
lby.Size = UDim2.new(1,0,0,20)
lby.Position = UDim2.new(0,0,0,55)
lby.BackgroundTransparency = 1
lby.Text = "By SLKS-GAMING"
lby.Font = Enum.Font.Gotham
lby.TextSize = 14
lby.TextColor3 = Color3.fromRGB(80,80,80)

local barBG = Instance.new("Frame", lf)
barBG.Size = UDim2.new(0.8,0,0,20)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundTransparency = 0.6
barBG.BorderSizePixel = 0

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

local percent = Instance.new("TextLabel", lf)
percent.Size = UDim2.new(1,0,0,25)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.TextColor3 = Color3.fromRGB(0,0,0)
percent.Text = "Loading 0%"

local welcome = Instance.new("TextLabel", lf)
welcome.Size = UDim2.new(1,0,0,25)
welcome.Position = UDim2.new(0,0,0.63,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.TextColor3 = Color3.fromRGB(0,0,0)
welcome.Text = "Initializing..."

for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 25 then welcome.Text = "Loading assets..."
	elseif i == 50 then welcome.Text = "Setting up menu..."
	elseif i == 75 then welcome.Text = "Almost ready..."
	elseif i == 100 then welcome.Text = "Done!"
	end

	task.wait(0.05)
end

task.wait(0.4)
loadingGui:Destroy()

--================ MENU =================
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "SLK_MENU"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,480,0,320)
main.Position = UDim2.new(0.5,-240,0.5,-160)
main.BackgroundColor3 = Color3.fromRGB(255,255,255)
main.BackgroundTransparency = 0.35
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundTransparency = 0.3

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,-120,1,0)
title.Position = UDim2.new(0,10,0,0)
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.Text = "SLK HUB       VERSION V1\nBy SLKS-GAMING"
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextColor3 = Color3.fromRGB(0,0,0)

-- BUTTONS
local btnMin = Instance.new("TextButton", top)
btnMin.Size = UDim2.new(0,35,0,30)
btnMin.Position = UDim2.new(1,-80,0,7)
btnMin.Text = "-"
btnMin.Font = Enum.Font.GothamBold
btnMin.TextSize = 22

local btnClose = Instance.new("TextButton", top)
btnClose.Size = UDim2.new(0,35,0,30)
btnClose.Position = UDim2.new(1,-40,0,7)
btnClose.Text = "X"
btnClose.Font = Enum.Font.GothamBold
btnClose.TextSize = 18

local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,0,0,45)
content.Size = UDim2.new(1,0,1,-45)
content.BackgroundTransparency = 1

-- TAB INFO
local info = Instance.new("TextLabel", content)
info.Size = UDim2.new(1,-20,1,-20)
info.Position = UDim2.new(0,10,0,10)
info.BackgroundTransparency = 1
info.TextWrapped = true
info.TextYAlignment = Top
info.Font = Enum.Font.Gotham
info.TextSize = 15
info.TextColor3 = Color3.fromRGB(0,0,0)
info.Text =
"🇻🇳 THÔNG TIN\nSLK HUB là script demo UI\nDùng cho học tập & test\n\n"..
"🇺🇸 INFO\nSLK HUB is a UI demo script\nUsed for learning & testing"

-- MINIMIZE
local minimized = false
local fullSize = main.Size
btnMin.MouseButton1Click:Connect(function()
	minimized = not minimized
	content.Visible = not minimized
	main.Size = minimized and UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,45) or fullSize
	btnMin.Text = minimized and "+" or "-"
end)

-- CLOSE CONFIRM
local confirm = Instance.new("Frame", gui)
confirm.Size = UDim2.new(0,320,0,170)
confirm.Position = UDim2.new(0.5,-160,0.5,-85)
confirm.BackgroundTransparency = 0.2
confirm.Visible = false

local cText = Instance.new("TextLabel", confirm)
cText.Size = UDim2.new(1,-20,1,-60)
cText.Position = UDim2.new(0,10,0,10)
cText.BackgroundTransparency = 1
cText.Font = Enum.Font.GothamBold
cText.TextSize = 16
cText.TextWrapped = true
cText.Text = "DO YOU WANT CLOSE SCRIPT?\n\n1 - YES\n2 - NO"

local yes = Instance.new("TextButton", confirm)
yes.Size = UDim2.new(0.4,0,0,30)
yes.Position = UDim2.new(0.05,0,1,-40)
yes.Text = "YES"

local no = Instance.new("TextButton", confirm)
no.Size = UDim2.new(0.4,0,0,30)
no.Position = UDim2.new(0.55,0,1,-40)
no.Text = "NO"

btnClose.MouseButton1Click:Connect(function()
	confirm.Visible = true
end)

no.MouseButton1Click:Connect(function()
	confirm.Visible = false
end)

yes.MouseButton1Click:Connect(function()
	for i = 5,0,-1 do
		cText.Text = "PLEASE WAIT\nSCRIPT CLOSE\n"..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

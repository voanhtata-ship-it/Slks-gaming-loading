--// SLK HUB VERSION V1
--// By SLKS-GAMING

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- CLEAR OLD
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
lt.Position = UDim2.new(0,0,0,15)
lt.BackgroundTransparency = 1
lt.Text = "SLK HUB"
lt.Font = Enum.Font.GothamBlack
lt.TextSize = 32
lt.TextColor3 = Color3.new(0,0,0)

local lb = Instance.new("TextLabel", lf)
lb.Size = UDim2.new(1,0,0,20)
lb.Position = UDim2.new(0,0,0,55)
lb.BackgroundTransparency = 1
lb.Text = "By SLKS-GAMING"
lb.Font = Enum.Font.Gotham
lb.TextSize = 14
lb.TextColor3 = Color3.fromRGB(60,60,60)

local barBG = Instance.new("Frame", lf)
barBG.Size = UDim2.new(0.8,0,0,18)
barBG.Position = UDim2.new(0.1,0,0.45,0)
barBG.BackgroundTransparency = 0.6
barBG.BorderSizePixel = 0

local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,170,255)
bar.BorderSizePixel = 0

local percent = Instance.new("TextLabel", lf)
percent.Size = UDim2.new(1,0,0,22)
percent.Position = UDim2.new(0,0,0.53,0)
percent.BackgroundTransparency = 1
percent.Font = Enum.Font.Code
percent.TextSize = 16
percent.Text = "Loading 0%"

local welcome = Instance.new("TextLabel", lf)
welcome.Size = UDim2.new(1,0,0,22)
welcome.Position = UDim2.new(0,0,0.62,0)
welcome.BackgroundTransparency = 1
welcome.Font = Enum.Font.Code
welcome.TextSize = 16
welcome.Text = "Initializing..."

for i = 0,100 do
	bar.Size = UDim2.new(i/100,0,1,0)
	percent.Text = "Loading "..i.."%"

	if i == 0 then welcome.Text = "Initializing..."
	elseif i == 25 then welcome.Text = "Loading assets..."
	elseif i == 50 then welcome.Text = "Preparing menu..."
	elseif i == 75 then welcome.Text = "Almost ready..."
	elseif i == 100 then welcome.Text = "Done!"
	end

	task.wait(0.04)
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
main.BackgroundTransparency = 0.35
main.Active = true
main.Draggable = true

-- TOP BAR
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,45)
top.BackgroundTransparency = 0.3

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,-100,1,0)
title.Position = UDim2.new(0,10,0,0)
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Text = "SLK HUB        VERSION V1\nBy SLKS-GAMING"

-- BUTTONS
local minBtn = Instance.new("TextButton", top)
minBtn.Size = UDim2.new(0,35,0,30)
minBtn.Position = UDim2.new(1,-80,0,7)
minBtn.Text = "-"
minBtn.TextSize = 22

local closeBtn = Instance.new("TextButton", top)
closeBtn.Size = UDim2.new(0,35,0,30)
closeBtn.Position = UDim2.new(1,-40,0,7)
closeBtn.Text = "X"
closeBtn.TextSize = 18

-- CONTENT
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
info.TextSize = 16
info.Text =
"🇻🇳 INFO (VIETNAMESE)\n• Đây là SLK HUB\n• Script demo UI\n• Có thể thêm chức năng sau\n\n"..
"🇺🇸 INFO (ENGLISH)\n• This is SLK HUB\n• UI demo script\n• Features can be added later"

-- MINIMIZE
local minimized = false
local fullSize = main.Size
minBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		content.Visible = false
		main.Size = UDim2.new(fullSize.X.Scale,fullSize.X.Offset,0,45)
		minBtn.Text = "+"
	else
		content.Visible = true
		main.Size = fullSize
		minBtn.Text = "-"
	end
end)

-- CONFIRM CLOSE
local confirm = Instance.new("Frame", gui)
confirm.Size = UDim2.new(0,300,0,150)
confirm.Position = UDim2.new(0.5,-150,0.5,-75)
confirm.Visible = false
confirm.ZIndex = 10

local q = Instance.new("TextLabel", confirm)
q.Size = UDim2.new(1,0,0,60)
q.BackgroundTransparency = 1
q.Text = "DO YOU WANT CLOSE SCRIPT?"
q.Font = Enum.Font.GothamBold
q.TextSize = 16

local yes = Instance.new("TextButton", confirm)
yes.Size = UDim2.new(0.4,0,0,30)
yes.Position = UDim2.new(0.1,0,0.6,0)
yes.Text = "YES"

local no = Instance.new("TextButton", confirm)
no.Size = UDim2.new(0.4,0,0,30)
no.Position = UDim2.new(0.5,0,0.6,0)
no.Text = "NO"

closeBtn.MouseButton1Click:Connect(function()
	confirm.Visible = true
end)

no.MouseButton1Click:Connect(function()
	confirm.Visible = false
end)

yes.MouseButton1Click:Connect(function()
	q.Text = "PLEASE WAIT...\nSCRIPT CLOSE IN 5s"
	yes.Visible = false
	no.Visible = false
	for i = 5,0,-1 do
		q.Text = "PLEASE WAIT...\nSCRIPT CLOSE IN "..i.."s"
		task.wait(1)
	end
	gui:Destroy()
end)

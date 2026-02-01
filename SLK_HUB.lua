-- SLK GAMING LOADING UI
local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui", Player.PlayerGui)
gui.Name = "SLK_LOADING"

local main = Instance.new("Frame", gui)
main.Size = UDim2.fromScale(0.45, 0.35)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(255,255,255)
main.BorderSizePixel = 2
main.BorderColor3 = Color3.fromRGB(0,0,0)

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0.25,0)
title.BackgroundTransparency = 1
title.Text = "SLK HUB"
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.TextColor3 = Color3.fromRGB(0,0,0)

local by = Instance.new("TextLabel", main)
by.Size = UDim2.new(1,0,0.1,0)
by.Position = UDim2.new(0,0,0.22,0)
by.BackgroundTransparency = 1
by.Text = "By SLK GAMING"
by.TextScaled = true
by.Font = Enum.Font.Gotham
by.TextColor3 = Color3.fromRGB(0,0,0)

-- Welcome text
local welcome = Instance.new("TextLabel", main)
welcome.Size = UDim2.new(1,-20,0.15,0)
welcome.Position = UDim2.new(0,10,0.35,0)
welcome.BackgroundTransparency = 1
welcome.Text = "Welcome to script"
welcome.TextScaled = true
welcome.Font = Enum.Font.Gotham
welcome.TextColor3 = Color3.fromRGB(0,0,0)

-- Loading bar background
local barBG = Instance.new("Frame", main)
barBG.Size = UDim2.new(1,-40,0.08,0)
barBG.Position = UDim2.new(0,20,0.55,0)
barBG.BackgroundColor3 = Color3.fromRGB(0,0,0)
barBG.BorderSizePixel = 0

-- Loading bar fill
local bar = Instance.new("Frame", barBG)
bar.Size = UDim2.new(0,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(0,162,255)
bar.BorderSizePixel = 0

-- Percent
local percent = Instance.new("TextLabel", main)
percent.Size = UDim2.new(1,0,0.1,0)
percent.Position = UDim2.new(0,0,0.65,0)
percent.BackgroundTransparency = 1
percent.Text = "Loading 0%"
percent.TextScaled = true
percent.Font = Enum.Font.Code
percent.TextColor3 = Color3.fromRGB(0,0,0)

-- Binary text
local binary = Instance.new("TextLabel", main)
binary.Size = UDim2.new(1,0,0.1,0)
binary.Position = UDim2.new(0,0,0.78,0)
binary.BackgroundTransparency = 1
binary.Text = "10001010111001"
binary.TextScaled = true
binary.Font = Enum.Font.Code
binary.TextColor3 = Color3.fromRGB(0,0,0)

-- Binary animation
task.spawn(function()
	while gui.Parent do
		binary.Text = binary.Text:sub(2)..binary.Text:sub(1,1)
		task.wait(0.15)
	end
end)

-- Loading process
for i = 0,100 do
	bar:TweenSize(
		UDim2.new(i/100,0,1,0),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Linear,
		0.05,
		true
	)

	percent.Text = "Loading "..i.."%"

	if i == 25 then
		welcome.Text = "Hello Welcome to script"
	elseif i == 50 then
		welcome.Text = "Script will ready"
	elseif i == 75 then
		welcome.Text = "Wait for script"
	elseif i == 100 then
		welcome.Text = "Script has Working! ✅"
	end

	task.wait(0.05)
end

-- Fade & shrink
TweenService:Create(main, TweenInfo.new(0.6), {
	Size = UDim2.fromScale(0.1,0.1),
	BackgroundTransparency = 1
}):Play()

for _,v in pairs(main:GetDescendants()) do
	if v:IsA("TextLabel") or v:IsA("Frame") then
		TweenService:Create(v, TweenInfo.new(0.6), {Transparency = 1}):Play()
	end
end

task.wait(0.7)
gui:Destroy()

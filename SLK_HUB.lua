--// SLK HUB - LOADING ONLY
--// By SLKS-GAMING

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- CLEAR OLD
pcall(function()
	if PG:FindFirstChild("SLK_LOADING") then
		PG.SLK_LOADING:Destroy()
	end
end)

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SLK_LOADING"
gui.ResetOnSpawn = false
gui.Parent = PG

-- MAIN FRAME
local Main = Instance.new("Frame", gui)
Main.Size = UDim2.fromScale(0.55, 0.35)
Main.Position = UDim2.fromScale(0.225, 0.325)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
Main.BackgroundTransparency = 0.2
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

-- TITLE
local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1,0,0.25,0)
Title.BackgroundTransparency = 1
Title.Text = "SLK HUB"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 32
Title.TextColor3 = Color3.new(0,0,0)

-- BY
local By = Instance.new("TextLabel", Main)
By.Size = UDim2.new(1,0,0.1,0)
By.Position = UDim2.new(0,0,0.22,0)
By.BackgroundTransparency = 1
By.Text = "By SLKS-GAMING"
By.Font = Enum.Font.Gotham
By.TextSize = 14
By.TextColor3 = Color3.new(0,0,0)

-- BAR BG
local BarBG = Instance.new("Frame", Main)
BarBG.Size = UDim2.new(0.85,0,0.12,0)
BarBG.Position = UDim2.new(0.075,0,0.45,0)
BarBG.BackgroundColor3 = Color3.fromRGB(220,220,220)
BarBG.BackgroundTransparency = 0.4
BarBG.BorderSizePixel = 0

-- BAR
local Bar = Instance.new("Frame", BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.BackgroundTransparency = 0.15
Bar.BorderSizePixel = 0

-- PERCENT
local Percent = Instance.new("TextLabel", Main)
Percent.Size = UDim2.new(1,0,0.1,0)
Percent.Position = UDim2.new(0,0,0.58,0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.Font = Enum.Font.GothamBold
Percent.TextSize = 16
Percent.TextColor3 = Color3.new(0,0,0)

-- STATUS TEXT (DƯỚI THANH)
local Status = Instance.new("TextLabel", Main)
Status.Size = UDim2.new(1,0,0.15,0)
Status.Position = UDim2.new(0,0,0.7,0)
Status.BackgroundTransparency = 1
Status.Text = "Initializing..."
Status.Font = Enum.Font.Gotham
Status.TextSize = 16
Status.TextColor3 = Color3.new(0,0,0)

-- STATUS MAP
local statusText = {
	[0] = "Initializing...",
	[25] = "Loading assets...",
	[50] = "Setting UI...",
	[75] = "Almost done...",
	[100] = "Done!"
}

-- LOADING LOOP
for i = 0, 100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i .. "%"

	if statusText[i] then
		Status.Text = statusText[i]
	end

	task.wait(0.03)
end

-- DONE
task.wait(0.5)
-- Main:Destroy() -- để test, khi gắn menu thì bật dòng này

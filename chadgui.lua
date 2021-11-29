if game.CoreGui:FindFirstChild("ScreenGui") then
	game.CoreGui:FindFirstChild("ScreenGui"):Destroy()
	end


do
coroutine.wrap(function()
	repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LeaderboardGui")
	game:GetService("Players").LocalPlayer.PlayerGui.LeaderboardGui:Destroy()
end)()



local event = Instance.new("BindableEvent")
local CurrentPlayerSelected
local currentplayerspectating
local connection1
local connection2
local hungerconnection
local runesconnection
local livesconnection
local daysconnection
local charaddconnection
local charremoveconnection
local playerremovingconnection
-- Instances:



--------------------------------------------------------------------------


local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local PlayerName = Instance.new("TextLabel")
local Overlay = Instance.new("ImageLabel")
local Class = Instance.new("TextLabel")
local Overlay_2 = Instance.new("ImageLabel")
local PlayersHP = Instance.new("TextLabel")
local Overlay_3 = Instance.new("ImageLabel")
local HealthBar = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Race = Instance.new("TextLabel")
local Overlay_4 = Instance.new("ImageLabel")
local Lives = Instance.new("TextLabel")
local Overlay_5 = Instance.new("ImageLabel")
local Days = Instance.new("TextLabel")
local Overlay_6 = Instance.new("ImageLabel")
local Artifact = Instance.new("TextLabel")
local Overlay_7 = Instance.new("ImageLabel")
local Runes = Instance.new("TextLabel")
local Overlay_8 = Instance.new("ImageLabel")
local Silver = Instance.new("TextLabel")
local Overlay_9 = Instance.new("ImageLabel")
local FoodNumber = Instance.new("TextLabel")
local Overlay_10 = Instance.new("ImageLabel")
local Vamp = Instance.new("TextLabel")
local Overlay_11 = Instance.new("ImageLabel")
local Enchant = Instance.new("TextLabel")
local Overlay_12 = Instance.new("ImageLabel")
local FoodBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Overlay_13 = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = false
ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
MainFrame.BackgroundTransparency = 1.000
MainFrame.Position = UDim2.new(0.979218304, 0, 0.55886972, 0)
MainFrame.Size = UDim2.new(0.118994176, 150, 0.0643642098, 200)
MainFrame.Image = "rbxassetid://1327087642"
MainFrame.ImageTransparency = 0.800
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(20, 20, 190, 190)

ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 15, 0, 10)
ScrollingFrame.Size = UDim2.new(1, -30, 1, -20)
ScrollingFrame.BottomImage = "rbxassetid://3515608177"
ScrollingFrame.MidImage = "rbxassetid://3515608813"
ScrollingFrame.ScrollBarThickness = 10
ScrollingFrame.TopImage = "rbxassetid://3515609176"
ScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

PlayerName.Name = "PlayerName"
PlayerName.Parent = ScrollingFrame
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.BorderSizePixel = 0
PlayerName.Size = UDim2.new(1, 0, 0.0500000007, 0)
PlayerName.Font = Enum.Font.SourceSansSemibold
PlayerName.Text = "Name"
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 18.000
PlayerName.TextStrokeTransparency = 0.000
PlayerName.TextYAlignment = Enum.TextYAlignment.Top

Overlay.Name = "Overlay"
Overlay.Parent = PlayerName
Overlay.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay.BackgroundTransparency = 1.000
Overlay.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay.Size = UDim2.new(1, 0, 1, 0)
Overlay.ZIndex = 0
Overlay.Image = "rbxassetid://2739347995"
Overlay.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay.ScaleType = Enum.ScaleType.Slice
Overlay.SliceCenter = Rect.new(5, 5, 5, 5)

Class.Name = "Class"
Class.Parent = ScrollingFrame
Class.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class.BackgroundTransparency = 1.000
Class.BorderSizePixel = 0
Class.Position = UDim2.new(0, 0, 0.150000006, 0)
Class.Size = UDim2.new(1, 0, 0.0500000007, 0)
Class.Font = Enum.Font.SourceSansSemibold
Class.Text = "N/A"
Class.TextColor3 = Color3.fromRGB(255, 255, 255)
Class.TextSize = 18.000
Class.TextStrokeTransparency = 0.000
Class.TextYAlignment = Enum.TextYAlignment.Top

Overlay_2.Name = "Overlay"
Overlay_2.Parent = Class
Overlay_2.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_2.BackgroundTransparency = 1.000
Overlay_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_2.Size = UDim2.new(1, 0, 1, 0)
Overlay_2.ZIndex = 0
Overlay_2.Image = "rbxassetid://2739347995"
Overlay_2.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_2.ScaleType = Enum.ScaleType.Slice
Overlay_2.SliceCenter = Rect.new(5, 5, 5, 5)

PlayersHP.Name = "PlayersHP"
PlayersHP.Parent = ScrollingFrame
PlayersHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersHP.BackgroundTransparency = 1.000
PlayersHP.BorderSizePixel = 0
PlayersHP.ClipsDescendants = true
PlayersHP.Position = UDim2.new(0, 0, 0.0500000007, 0)
PlayersHP.Size = UDim2.new(1, 0, 0.0500000007, 0)
PlayersHP.ZIndex = 2
PlayersHP.Font = Enum.Font.SourceSansSemibold
PlayersHP.Text = "100"
PlayersHP.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayersHP.TextSize = 18.000
PlayersHP.TextStrokeTransparency = 0.000
PlayersHP.TextYAlignment = Enum.TextYAlignment.Top

Overlay_3.Name = "Overlay"
Overlay_3.Parent = PlayersHP
Overlay_3.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_3.BackgroundTransparency = 1.000
Overlay_3.ClipsDescendants = true
Overlay_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_3.Size = UDim2.new(1, 0, 1, 0)
Overlay_3.ZIndex = 0
Overlay_3.Image = "rbxassetid://2739347995"
Overlay_3.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_3.ScaleType = Enum.ScaleType.Slice
Overlay_3.SliceCenter = Rect.new(5, 5, 5, 5)

HealthBar.Name = "HealthBar"
HealthBar.Parent = ScrollingFrame
HealthBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
HealthBar.Position = UDim2.new(0, 0, 0.0500000007, 0)
HealthBar.Size = UDim2.new(1, 0, 0.0450000018, 0)

UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = HealthBar

Race.Name = "Race"
Race.Parent = ScrollingFrame
Race.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Race.BackgroundTransparency = 1.000
Race.BorderSizePixel = 0
Race.Position = UDim2.new(0, 0, 0.200000003, 0)
Race.Size = UDim2.new(1, 0, 0.0500000007, 0)
Race.Font = Enum.Font.SourceSansSemibold
Race.Text = "N/A"
Race.TextColor3 = Color3.fromRGB(255, 255, 255)
Race.TextSize = 18.000
Race.TextStrokeTransparency = 0.000
Race.TextYAlignment = Enum.TextYAlignment.Top

Overlay_4.Name = "Overlay"
Overlay_4.Parent = Race
Overlay_4.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_4.BackgroundTransparency = 1.000
Overlay_4.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_4.Size = UDim2.new(1, 0, 1, 0)
Overlay_4.ZIndex = 0
Overlay_4.Image = "rbxassetid://2739347995"
Overlay_4.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_4.ScaleType = Enum.ScaleType.Slice
Overlay_4.SliceCenter = Rect.new(5, 5, 5, 5)

Lives.Name = "Lives"
Lives.Parent = ScrollingFrame
Lives.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lives.BackgroundTransparency = 1.000
Lives.BorderSizePixel = 0
Lives.Position = UDim2.new(0, 0, 0.300000012, 0)
Lives.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Lives.Font = Enum.Font.SourceSansSemibold
Lives.Text = "N/A"
Lives.TextColor3 = Color3.fromRGB(255, 255, 255)
Lives.TextSize = 18.000
Lives.TextStrokeTransparency = 0.000
Lives.TextYAlignment = Enum.TextYAlignment.Top

Overlay_5.Name = "Overlay"
Overlay_5.Parent = Lives
Overlay_5.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_5.BackgroundTransparency = 1.000
Overlay_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_5.Size = UDim2.new(1, 0, 1, 0)
Overlay_5.ZIndex = 0
Overlay_5.Image = "rbxassetid://2739347995"
Overlay_5.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_5.ScaleType = Enum.ScaleType.Slice
Overlay_5.SliceCenter = Rect.new(5, 5, 5, 5)

Days.Name = "Days"
Days.Parent = ScrollingFrame
Days.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Days.BackgroundTransparency = 1.000
Days.BorderSizePixel = 0
Days.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Days.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Days.Font = Enum.Font.SourceSansSemibold
Days.Text = "N/A"
Days.TextColor3 = Color3.fromRGB(255, 255, 255)
Days.TextSize = 18.000
Days.TextStrokeTransparency = 0.000
Days.TextYAlignment = Enum.TextYAlignment.Top

Overlay_6.Name = "Overlay"
Overlay_6.Parent = Days
Overlay_6.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_6.BackgroundTransparency = 1.000
Overlay_6.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_6.Size = UDim2.new(1, 0, 1, 0)
Overlay_6.ZIndex = 0
Overlay_6.Image = "rbxassetid://2739347995"
Overlay_6.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_6.ScaleType = Enum.ScaleType.Slice
Overlay_6.SliceCenter = Rect.new(5, 5, 5, 5)

Artifact.Name = "Artifact"
Artifact.Parent = ScrollingFrame
Artifact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Artifact.BackgroundTransparency = 1.000
Artifact.BorderSizePixel = 0
Artifact.Position = UDim2.new(0, 0, 0.25, 0)
Artifact.Size = UDim2.new(1, 0, 0.0500000007, 0)
Artifact.Font = Enum.Font.SourceSansSemibold
Artifact.Text = "N/A"
Artifact.TextColor3 = Color3.fromRGB(255, 255, 255)
Artifact.TextSize = 18.000
Artifact.TextStrokeTransparency = 0.000
Artifact.TextYAlignment = Enum.TextYAlignment.Top

Overlay_7.Name = "Overlay"
Overlay_7.Parent = Artifact
Overlay_7.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_7.BackgroundTransparency = 1.000
Overlay_7.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_7.Size = UDim2.new(1, 0, 1, 0)
Overlay_7.ZIndex = 0
Overlay_7.Image = "rbxassetid://2739347995"
Overlay_7.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_7.ScaleType = Enum.ScaleType.Slice
Overlay_7.SliceCenter = Rect.new(5, 5, 5, 5)

Runes.Name = "Runes"
Runes.Parent = ScrollingFrame
Runes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Runes.BackgroundTransparency = 1.000
Runes.BorderSizePixel = 0
Runes.Position = UDim2.new(0, 0, 0.349999994, 0)
Runes.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Runes.Font = Enum.Font.SourceSansSemibold
Runes.Text = "N/A"
Runes.TextColor3 = Color3.fromRGB(255, 255, 255)
Runes.TextSize = 18.000
Runes.TextStrokeTransparency = 0.000
Runes.TextYAlignment = Enum.TextYAlignment.Top

Overlay_8.Name = "Overlay"
Overlay_8.Parent = Runes
Overlay_8.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_8.BackgroundTransparency = 1.000
Overlay_8.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_8.Size = UDim2.new(1, 0, 1, 0)
Overlay_8.ZIndex = 0
Overlay_8.Image = "rbxassetid://2739347995"
Overlay_8.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_8.ScaleType = Enum.ScaleType.Slice
Overlay_8.SliceCenter = Rect.new(5, 5, 5, 5)

Silver.Name = "Silver"
Silver.Parent = ScrollingFrame
Silver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Silver.BackgroundTransparency = 1.000
Silver.BorderSizePixel = 0
Silver.Position = UDim2.new(0.5, 0, 0.349999994, 0)
Silver.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Silver.Font = Enum.Font.SourceSansSemibold
Silver.Text = "N/A"
Silver.TextColor3 = Color3.fromRGB(255, 255, 255)
Silver.TextSize = 18.000
Silver.TextStrokeTransparency = 0.000
Silver.TextWrapped = true
Silver.TextYAlignment = Enum.TextYAlignment.Top

Overlay_9.Name = "Overlay"
Overlay_9.Parent = Silver
Overlay_9.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_9.BackgroundTransparency = 1.000
Overlay_9.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_9.Size = UDim2.new(1, 0, 1, 0)
Overlay_9.ZIndex = 0
Overlay_9.Image = "rbxassetid://2739347995"
Overlay_9.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_9.ScaleType = Enum.ScaleType.Slice
Overlay_9.SliceCenter = Rect.new(5, 5, 5, 5)

FoodNumber.Name = "FoodNumber"
FoodNumber.Parent = ScrollingFrame
FoodNumber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FoodNumber.BackgroundTransparency = 1.000
FoodNumber.BorderSizePixel = 0
FoodNumber.ClipsDescendants = true
FoodNumber.Position = UDim2.new(0, 0, 0.100000001, 0)
FoodNumber.Size = UDim2.new(1, 0, 0.0500000007, 0)
FoodNumber.ZIndex = 2
FoodNumber.Font = Enum.Font.SourceSansSemibold
FoodNumber.Text = "100"
FoodNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
FoodNumber.TextSize = 18.000
FoodNumber.TextStrokeTransparency = 0.000
FoodNumber.TextYAlignment = Enum.TextYAlignment.Top

Overlay_10.Name = "Overlay"
Overlay_10.Parent = FoodNumber
Overlay_10.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_10.BackgroundTransparency = 1.000
Overlay_10.ClipsDescendants = true
Overlay_10.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_10.Size = UDim2.new(1, 0, 1, 0)
Overlay_10.ZIndex = 0
Overlay_10.Image = "rbxassetid://2739347995"
Overlay_10.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_10.ScaleType = Enum.ScaleType.Slice
Overlay_10.SliceCenter = Rect.new(5, 5, 5, 5)

Vamp.Name = "Vamp"
Vamp.Parent = ScrollingFrame
Vamp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Vamp.BackgroundTransparency = 1.000
Vamp.BorderSizePixel = 0
Vamp.Position = UDim2.new(0, 0, 0.400000006, 0)
Vamp.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Vamp.Font = Enum.Font.SourceSansSemibold
Vamp.Text = "N/A"
Vamp.TextColor3 = Color3.fromRGB(255, 255, 255)
Vamp.TextSize = 18.000
Vamp.TextStrokeTransparency = 0.000
Vamp.TextYAlignment = Enum.TextYAlignment.Top

Overlay_11.Name = "Overlay"
Overlay_11.Parent = Vamp
Overlay_11.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_11.BackgroundTransparency = 1.000
Overlay_11.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_11.Size = UDim2.new(1, 0, 1, 0)
Overlay_11.ZIndex = 0
Overlay_11.Image = "rbxassetid://2739347995"
Overlay_11.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_11.ScaleType = Enum.ScaleType.Slice
Overlay_11.SliceCenter = Rect.new(5, 5, 5, 5)

Enchant.Name = "Enchant"
Enchant.Parent = ScrollingFrame
Enchant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Enchant.BackgroundTransparency = 1.000
Enchant.BorderSizePixel = 0
Enchant.Position = UDim2.new(0.5, 0, 0.400000006, 0)
Enchant.Size = UDim2.new(0.5, 0, 0.0500000007, 0)
Enchant.Font = Enum.Font.SourceSansSemibold
Enchant.Text = "N/A"
Enchant.TextColor3 = Color3.fromRGB(255, 255, 255)
Enchant.TextSize = 18.000
Enchant.TextStrokeTransparency = 0.000
Enchant.TextWrapped = true
Enchant.TextYAlignment = Enum.TextYAlignment.Top

Overlay_12.Name = "Overlay"
Overlay_12.Parent = Enchant
Overlay_12.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_12.BackgroundTransparency = 1.000
Overlay_12.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_12.Size = UDim2.new(1, 0, 1, 0)
Overlay_12.ZIndex = 0
Overlay_12.Image = "rbxassetid://2739347995"
Overlay_12.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_12.ScaleType = Enum.ScaleType.Slice
Overlay_12.SliceCenter = Rect.new(5, 5, 5, 5)

FoodBar.Name = "FoodBar"
FoodBar.Parent = ScrollingFrame
FoodBar.BackgroundColor3 = Color3.fromRGB(170, 85, 0)
FoodBar.Position = UDim2.new(0, 0, 0.100000001, 0)
FoodBar.Size = UDim2.new(1, 0, 0.0450000018, 0)
FoodBar.ZIndex = 0

UICorner_2.CornerRadius = UDim.new(0, 9)
UICorner_2.Parent = FoodBar

Overlay_13.Name = "Overlay"
Overlay_13.Parent = MainFrame
Overlay_13.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_13.BackgroundTransparency = 1.000
Overlay_13.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay_13.Size = UDim2.new(1, 0, 1, 0)
Overlay_13.ZIndex = 0
Overlay_13.Image = "rbxassetid://2739347995"
Overlay_13.ImageColor3 = Color3.fromRGB(245, 197, 130)
Overlay_13.ScaleType = Enum.ScaleType.Slice
Overlay_13.SliceCenter = Rect.new(5, 5, 5, 5)





function UpdateHealthbar(plr)
	if CurrentPlayerSelected and CurrentPlayerSelected.Character and CurrentPlayerSelected.Character:FindFirstChild("Humanoid") then
	
	local plrchar = CurrentPlayerSelected.Character or nil
	local humanoid = plrchar:FindFirstChild("Humanoid")


	if CurrentPlayerSelected.Character and CurrentPlayerSelected.Character:FindFirstChild("Humanoid") then
	local healthvalue = humanoid.Health or 0
	local maxhealthvalue = humanoid.MaxHealth or 0
	--local hungervalue = CurrentPlayerSelected.Data.Hunger.Value or 0
	--local livesvalue = CurrentPlayerSelected.Data.Lives.Value or 0

    local health = math.clamp(healthvalue / maxhealthvalue, 0, 1)
	--local food = math.clamp(hungervalue / 100, 0, 1)
	HealthBar.Size = UDim2.fromScale(health, 0.045)
	PlayersHP.Text = tostring(math.round(humanoid.Health))
	--FoodBar.Size = UDim2.fromScale(food, 0.045)
	--FoodNumber.Text = "Hunger : ".. tostring(math.round(hungervalue))
	--Lives.Text = "Lives: ".. tostring(math.round(livesvalue))
else
return
end
else 
	return
	end
end

local function updatefood()
	local hungervalue = CurrentPlayerSelected.Data.Hunger.Value or 0
	local food = math.clamp(hungervalue / 100, 0, 1)
	FoodBar.Size = UDim2.fromScale(food, 0.045)
	FoodNumber.Text = "Hunger : ".. tostring(math.round(hungervalue))
end

local function updatelives()
	local livesvalue = CurrentPlayerSelected.Data.Lives.Value or 0
	Lives.Text = "Lives: ".. tostring(math.round(livesvalue))
end



local function charremove()
	PlayersHP.Text = "N/A"
	FoodNumber.Text = "N/A"
	Days.Text = "N/A"
	Artifact.Text = "N/A"
	Silver.Text = "N/A"
	Runes.Text = "N/A"
	Race.Text = "N/A"
	Lives.Text = "N/A"

	if connection1 then
		connection1:Disconnect()
	end
	if connection2 then
		connection2:Disconnect()
	end

	if hungerconnection then
		hungerconnection:Disconnect()
	end
	if daysconnection then
		daysconnection:Disconnect()
	end
	if livesconnection then
		livesconnection:Disconnect()
	end
	if charaddconnection then
		charaddconnection:Disconnect()
	end
	if charremoveconnection then
		charremoveconnection:Disconnect()
	end
end

local function playerremove(player)
	if player == CurrentPlayerSelected then
	PlayerName.Text = "N/A"
	PlayersHP.Text = "N/A"
	FoodNumber.Text = "N/A"
	Days.Text = "N/A"
	Artifact.Text = "N/A"
	Silver.Text = "N/A"
	Runes.Text = "N/A"
	Race.Text = "N/A"
	Lives.Text = "N/A"
	Class.Text = "N/A"
	if connection1 then
		connection1:Disconnect()
	end
	if connection2 then
		connection2:Disconnect()
	end

	if hungerconnection then
		hungerconnection:Disconnect()
	end
	if daysconnection then
		daysconnection:Disconnect()
	end
	if livesconnection then
		livesconnection:Disconnect()
	end
	if charaddconnection then
		charaddconnection:Disconnect()
	end
	if charremoveconnection then
		charremoveconnection:Disconnect()
	end
	CurrentPlayerSelected = nil
	if playerremovingconnection then
		playerremovingconnection:Disconnect()
	end
	end
end


local function updatespy()
if CurrentPlayerSelected and CurrentPlayerSelected.Character and CurrentPlayerSelected.Character:FindFirstChild("Humanoid") then
PlayerName.Text = CurrentPlayerSelected.Name
local classtext = CurrentPlayerSelected.Data.Class.Value or "N/A"
Class.Text = tostring(classtext)

local data = CurrentPlayerSelected:FindFirstChild("Data")

local plrchar = CurrentPlayerSelected.Character or nil
local humanoid = plrchar:FindFirstChild("Humanoid") or nil

local hungervalue = data.Hunger.Value or 0
local livesvalue = data.Lives.Value or 0
local healthvalue = humanoid.Health or 0
local maxhealthvalue = humanoid.MaxHealth or 0
local daysvalue = data.Days.Value or 0
local artivalue = data.Artifact.Value or "N/A"
local silvervalue = data.Silver.Value or 0
local runesvalue = data.Runes.Value or 0
local racevalue = data.Race.Value or "N/A"
local vampvalue = data.IsVamp.Value or "N/A"
local enchantvalue = data.Enchant.Value or "N/A"

local food = math.clamp(hungervalue / 100, 0, 1)
local health = math.clamp(healthvalue / maxhealthvalue, 0, 1)
HealthBar.Size = UDim2.fromScale(health, 0.045)
PlayersHP.Text = tostring(math.round(healthvalue))
FoodBar.Size = UDim2.fromScale(food, 0.045)
FoodNumber.Text = "Hunger: ".. tostring(math.round(hungervalue))
Days.Text = "Days: ".. tostring(math.round(daysvalue))
Artifact.Text = "Artifact: ".. artivalue
Silver.Text = "Silver: ".. tostring(math.round(silvervalue))
Runes.Text = "Runes: ".. tostring(math.round(runesvalue))
Race.Text = "Race: ".. racevalue
Lives.Text = "Lives: ".. tostring(math.round(livesvalue))
Vamp.Text = "Vamp: ".. tostring(vampvalue)
Enchant.Text = "Enchant: ".. tostring(enchantvalue)


playerremovingconnection = game:GetService("Players").PlayerRemoving:Connect(playerremove)



charremoveconnection = CurrentPlayerSelected.CharacterRemoving:Connect(charremove)
connection1 = CurrentPlayerSelected.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(UpdateHealthbar)
connection2 = CurrentPlayerSelected.Character.Humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(UpdateHealthbar)
hungerconnection = CurrentPlayerSelected.Data.Hunger:GetPropertyChangedSignal("Value"):Connect(updatefood)
daysconnection = CurrentPlayerSelected.Data.Days:GetPropertyChangedSignal("Value"):Connect(UpdateHealthbar)
livesconnection = CurrentPlayerSelected.Data.Lives:GetPropertyChangedSignal("Value"):Connect(updatelives)
charaddconnection = CurrentPlayerSelected.CharacterAdded:Connect(UpdateHealthbar)
else
return
end
end





------------------------------------------------------------------------------------------------------------------------------------


















local LeaderboardGui = Instance.new("ScreenGui")
local PlayerLabel = Instance.new("TextLabel")
local Prestige = Instance.new("TextLabel")
local MainFrame = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local PlayerLabel_2 = Instance.new("TextLabel")
local Prestige_2 = Instance.new("TextLabel")

--Properties:

LeaderboardGui.Name = "Amungus"
LeaderboardGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LeaderboardGui.DisplayOrder = 1
LeaderboardGui.ResetOnSpawn = false

PlayerLabel.Name = "PlayerLabel"
PlayerLabel.Parent = game.StarterGui.LeaderboardGui.LeaderboardClient
PlayerLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerLabel.BackgroundTransparency = 1.000
PlayerLabel.BorderSizePixel = 0
PlayerLabel.Size = UDim2.new(1, 0, 0, 20)
PlayerLabel.Visible = false
PlayerLabel.Font = Enum.Font.SourceSansSemibold
PlayerLabel.Text = "          Lannis Shallow"
PlayerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerLabel.TextSize = 18.000
PlayerLabel.TextStrokeTransparency = 0.500
PlayerLabel.TextXAlignment = Enum.TextXAlignment.Left

Prestige.Name = "Prestige"
Prestige.Parent = PlayerLabel
Prestige.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Prestige.BackgroundTransparency = 1.000
Prestige.BorderSizePixel = 0
Prestige.Size = UDim2.new(0, 35, 0, 20)
Prestige.Visible = false
Prestige.Font = Enum.Font.SourceSansSemibold
Prestige.Text = "#???"
Prestige.TextColor3 = Color3.fromRGB(255, 255, 255)
Prestige.TextSize = 18.000
Prestige.TextStrokeTransparency = 0.500
Prestige.TextTransparency = 0.200
Prestige.TextXAlignment = Enum.TextXAlignment.Left

MainFrame.Name = "MainFrame"
MainFrame.Parent = LeaderboardGui
MainFrame.AnchorPoint = Vector2.new(1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
MainFrame.BackgroundTransparency = 1.000
MainFrame.Position = UDim2.new(1, 0, 0, 0)
MainFrame.Size = UDim2.new(0.0500000007, 150, 0, 200)
MainFrame.Image = "rbxassetid://1327087642"
MainFrame.ImageTransparency = 0.800
MainFrame.ScaleType = Enum.ScaleType.Slice
MainFrame.SliceCenter = Rect.new(20, 20, 190, 190)

ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 15, 0, 10)
ScrollingFrame.Size = UDim2.new(1, -30, 1, -20)
ScrollingFrame.BottomImage = "rbxassetid://3515608177"
ScrollingFrame.MidImage = "rbxassetid://3515608813"
ScrollingFrame.ScrollBarThickness = 10
ScrollingFrame.TopImage = "rbxassetid://3515609176"
ScrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

Prestige_2.Name = "Prestige"
Prestige_2.Parent = PlayerLabel_2
Prestige_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Prestige_2.BackgroundTransparency = 1.000
Prestige_2.BorderSizePixel = 0
Prestige_2.Size = UDim2.new(0, 35, 0, 20)
Prestige_2.Visible = false
Prestige_2.Font = Enum.Font.SourceSansSemibold
Prestige_2.Text = "#???"
Prestige_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Prestige_2.TextSize = 18.000
Prestige_2.TextStrokeTransparency = 0.500
Prestige_2.TextTransparency = 0.200
Prestige_2.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function ZYXB_fake_script() -- LeaderboardGui.LeaderboardClient 
	

	while true do
		wait() 
		if game.Players.LocalPlayer then
			break 
		end 
	end 
	while true do
		wait() 
		if game.Players.LocalPlayer.Name ~= "" then
			break 
		end 
	end 
	local mainFrame = MainFrame 
	local plr = game.Players.LocalPlayer 
	local plrLabel = PlayerLabel 
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false) 
	local plrTableMain = {} 
	local function getFullName(plar)
		return plar.Data:WaitForChild('oName', 9e9).Value  --[[fullName]]
	end 
	local function resizeManager()
		local plrsInGame = {} 
		
		for _, playr in pairs(game.Players:GetPlayers()) do
			if plrTableMain[playr] then
				local RaceName = playr:WaitForChild("RaceName", 9e9) if RaceName.Value == '' then repeat task.wait() until RaceName.Value ~= '' end
				
				table.insert(plrsInGame, playr) 
			end 
		end 
		
		table.sort(plrsInGame, function(P1, P2)
			if not P1 then
				return true
			end
			if not P2 then
				return false
			end
			
			local Name1 = getFullName(P1)
			local Name2 = getFullName(P2)
			
			local FirstLastName1 = Name1:sub(1, 4) == 'Lord' and Name1:sub(6) or Name1
			local FirstLastName2 = Name2:sub(1, 4) == 'Lord' and Name2:sub(6) or Name2
	
			local FirstName, LastName = FirstLastName1:match('(%w+) ?(.+)')
			local FirstName2, LastName2 = FirstLastName2:match('(%w+) ?(.+)')
	
			local Value1 = LastName if not Value1 then return P1.Name < P2.Name end
			local Value2 = LastName2 if not Value2 then return P1.Name < P2.Name end
	
			if Value1 ~= '' and Value2 == '' then return true end
			if Value1 == '' and Value2 ~= '' then return false end
			if Value1 < Value2 then return true end
			if Value2 < Value1 then return false end
	
			local Value3 = FirstName if not Value3 then return P1.Name < P2.Name end
			local Value4 = FirstName2 if not Value4 then return P1.Name < P2.Name end
	
			if Value3 < Value4 then return true end
			if Value4 < Value3 then return false end
	
			return P1.Name < P2.Name
		end)
		
		local reversed = {}
		
		for i = #plrsInGame, 1, -1 do
			table.insert(reversed, plrsInGame[i])
		end
		
		 for i, playrr in ipairs(reversed) do		
			if plrTableMain[playrr] then
				local playerFrame = plrTableMain[playrr] 
				playerFrame.Position = UDim2.new(0, 0, 0, (i - 1) * 20) 
				playerFrame.Visible = true 
			end 
		end 
		local v13 = #plrsInGame * 20 
		mainFrame.Size = UDim2.new(0.05, 150, 0, math.min(v13 + 20, 340)) 
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, v13) 
	end 
	local function createFunc(playyrr)
		if plrTableMain[playyrr] then
			return 
		end 
		local RaceName = playyrr:WaitForChild("RaceName", 9e9)
		local oName = playyrr.Data:WaitForChild("oName", 9e9)
		
		if playyrr.Data:FindFirstChild("Hidden") then return end
		
		local Rank = ""
		task.spawn(function()
			Rank = playyrr.Data:WaitForChild("Rank", 9e9)
			if (Rank) then
				Rank = "#"..Rank.Value.." "
			else
				Rank = ""
			end
		end)
		
		if RaceName.Value == '' then repeat task.wait() until RaceName.Value ~= '' end
		local newLabel = plrLabel:Clone()
			
		local stringvalue = Instance.new("StringValue", newLabel)
		local stringvalue2 = Instance.new("StringValue", newLabel)
		stringvalue.Name = "Name"
		stringvalue.Value = tostring(playyrr)
		stringvalue2.Name = "FakeName"
		stringvalue2.Value = getFullName(playyrr)
		
		
		plrTableMain[playyrr] = newLabel 
		newLabel.Visible = true 
		newLabel.Parent = ScrollingFrame 
		newLabel.Text = getFullName(playyrr) 
		
		
		local new = Instance.new("TextButton")
		new.Size = newLabel.Size
		new.AnchorPoint = newLabel.AnchorPoint
		new.Parent = newLabel
		new.SizeConstraint = newLabel.SizeConstraint
		new.BackgroundTransparency = 1
		new.TextTransparency = 1
		new.MouseButton1Click:Connect(function()
			if CurrentPlayerSelected == playyrr then
				ScreenGui.Enabled = false
				CurrentPlayerSelected = nil
				return
			else
				ScreenGui.Enabled = true
			end
			
			CurrentPlayerSelected = playyrr

			
			
			if connection1 then
				connection1:Disconnect()
			end
			if connection2 then
				connection2:Disconnect()
			end
		
			if hungerconnection then
				hungerconnection:Disconnect()
			end
			if daysconnection then
				daysconnection:Disconnect()
			end
			if livesconnection then
				livesconnection:Disconnect()
			end
			if charaddconnection then
				charaddconnection:Disconnect()
			end
			if charremoveconnection then
				charremoveconnection:Disconnect()
			end
			updatespy()
		end)
		
		new.MouseButton2Click:Connect(function()
			event.Event:Connect(function()
        if playyrr ~= game.Players.LocalPlayer then
				newLabel.TextColor3 = Color3.new(255, 255, 255)
        end
			end)
			if currentplayerspectating == playyrr then
				workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				currentplayerspectating = nil
        if playyrr ~= game.Players.LocalPlayer then
				newLabel.TextColor3 = Color3.new(255, 255, 255)
        end
				return
			end
			event:Fire()
      if playyrr ~= game.Players.LocalPlayer then
			newLabel.TextColor3 = Color3.new(1, 0, 0)
      end

			currentplayerspectating = playyrr
			workspace.CurrentCamera.CameraSubject = playyrr.Character
		end)
		
		
		
		task.spawn(function()
			for i = 1, 100 do
				if Rank ~= "" then
					newLabel.Text = Rank..getFullName(playyrr) 
					newLabel.Prestige.Text = Rank
					newLabel.Prestige.Visible = true
					break
				end
				task.wait(0.1)
			end
		end)
		if playyrr.Name == game.Players.LocalPlayer.Name then
			newLabel.TextColor3 = Color3.fromRGB(0, 255, 0) 
		end 
	
		oName.Changed:Connect(function()
			newLabel.Text = Rank..getFullName(playyrr) 
		end) 
		
		newLabel.MouseEnter:connect(function()
			newLabel.Text = Rank..playyrr.Name 
			newLabel.TextTransparency = 0.3 
		end) 
		newLabel.MouseLeave:connect(function()
			newLabel.Text = Rank..getFullName(playyrr)
			newLabel.TextTransparency = 0 
		end) 
		pcall(function()
			newLabel.Parent = ScrollingFrame 
		end) 
		resizeManager() 	
		return newLabel 
	end 
	game.Players.PlayerAdded:Connect(function(plrJoin)
		plrJoin:WaitForChild("Data", 9e9)
		if plrJoin.Name ~= "ROBLOX" then
			while true do
				task.wait() 
				if plrJoin:FindFirstChild("RaceName") ~= nil and plrJoin:FindFirstChild("RaceName").Value ~= "" then
					break 
				end 			
			end
			local RaceName = plrJoin:WaitForChild("RaceName", 9e9)
			createFunc(plrJoin) 
		end 
	end) 
	local function leaveManager(plor)
		if not plrTableMain[plor] then
			return 
		end 
		local plorLabel = plrTableMain[plor] 
		if plorLabel then
			plorLabel:Destroy() 
		end 
		plrTableMain[plor] = nil 
		resizeManager() 
	end 
	game.Players.PlayerRemoving:connect(function(plarr)
		if plarr.Name ~= "ROBLOX" then
			while true do
				task.wait() 
				if plarr:FindFirstChild("RaceName") ~= nil and plarr:FindFirstChild("RaceName").Value ~= "" then
					break 
				end 			
			end 
			leaveManager(plarr) 
		end 
	end) 
	for __, plarrrr in pairs(game.Players:GetPlayers()) do
		task.spawn(function()
			plarrrr:WaitForChild("Data", 9e9)
			if plarrrr.Name ~= "ROBLOX" then
				while true do
					task.wait() 
					if plarrrr:FindFirstChild("RaceName") ~= nil and plarrrr:FindFirstChild("RaceName").Value ~= "" then
						break 
					end 			
				end 
				createFunc(plarrrr) 
			end 
		end) 
	end 
	
end
coroutine.wrap(ZYXB_fake_script)()

end





















do
local bozoui = {}

local UserInputService = game:GetService("UserInputService")


function bozoui:CreateMainWindow()
	local fullbright

	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("ImageLabel")
	local Overlay = Instance.new("ImageLabel")
	local TabMain = Instance.new("Frame")
	local Overlay_2 = Instance.new("ImageLabel")
	local TabList = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Pages = Instance.new("Frame")
	local OpenClose = Instance.new("Frame")
	local openUI = Instance.new("UICorner")
	local OpenCloseOverlay = Instance.new("ImageLabel")
	local OpenGui = Instance.new("TextButton")
	local Mainn = Instance.new("Frame")

	local dragging
	local dragInput
	local dragStart
	local startPos

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScreenGui
	MainFrame.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
	MainFrame.BackgroundTransparency = 1.000
	MainFrame.Position = UDim2.new(0.385051668, 0, 0.11567501, 0)
	MainFrame.Size = UDim2.new(0.193, 0, 0.261, 0) 
	MainFrame.Image = "rbxassetid://1327087642"
	MainFrame.ImageTransparency = 0.600
	MainFrame.ScaleType = Enum.ScaleType.Slice
	MainFrame.SliceCenter = Rect.new(20, 20, 190, 190)

	Overlay.Name = "Overlay"
	Overlay.Parent = MainFrame
	Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay.BackgroundTransparency = 1.000
	Overlay.Position = UDim2.new(0.0308478065, 0, 0.0449999943, 0)
	Overlay.Size = UDim2.new(0.934152126, 0, 0.921139061, 0)
	Overlay.ZIndex = 0
	Overlay.Image = "rbxassetid://2739347995"
	Overlay.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay.ScaleType = Enum.ScaleType.Slice
	Overlay.SliceCenter = Rect.new(5, 5, 5, 5)

	TabMain.Name = "TabMain"
	TabMain.Parent = Mainn
	TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabMain.BackgroundTransparency = 1.000
	TabMain.Position = UDim2.new(0.0488046408, 0, 0.0601187646, 0)
	TabMain.Size = UDim2.new(0.19049415, 0, 0.887688875, 0)

	Overlay_2.Name = "Overlay"
	Overlay_2.Parent = TabMain
	Overlay_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay_2.BackgroundTransparency = 1.000
	Overlay_2.Size = UDim2.new(1, 0, 1, 0)
	Overlay_2.ZIndex = 0
	Overlay_2.Image = "rbxassetid://2739347995"
	Overlay_2.ImageColor3 = Color3.fromRGB(245, 197, 130)
	Overlay_2.ScaleType = Enum.ScaleType.Slice
	Overlay_2.SliceCenter = Rect.new(5, 5, 5, 5)

	TabList.Name = "TabList"
	TabList.Parent = TabMain
	TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabList.BackgroundTransparency = 1.000
	TabList.Position = UDim2.new(0, 0, 0.0218978096, 0)
	TabList.Size = UDim2.new(1, 0, 0.953771293, 0)

	UIListLayout.Parent = TabList
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.00999999978, 0)

	Pages.Name = "Pages"
	Pages.Parent = Mainn
	Pages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pages.BackgroundTransparency = 1.000
	Pages.Position = UDim2.new(0.254000008, 0, 0.0599999987, 0)
	Pages.Size = UDim2.new(0.699999988, 0, 0.888000011, 0)

	OpenClose.Name = "OpenClose"
	OpenClose.Parent = MainFrame
	OpenClose.BackgroundColor3 = Color3.fromRGB(166, 134, 101)
	OpenClose.Position = UDim2.new(0.030847894, 0, -0.0538141727, 0)
	OpenClose.Size = UDim2.new(0.934152007, 0, 0.0975814164, 0)

	openUI.Name = "openUI"
	openUI.Parent = OpenClose

	OpenCloseOverlay.Name = "OpenCloseOverlay"
	OpenCloseOverlay.Parent = OpenClose
	OpenCloseOverlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OpenCloseOverlay.BackgroundTransparency = 1.000
	OpenCloseOverlay.Size = UDim2.new(1.00000012, 0, 1.00000012, 0)
	OpenCloseOverlay.ZIndex = 0
	OpenCloseOverlay.Image = "rbxassetid://2739347995"
	OpenCloseOverlay.ImageColor3 = Color3.fromRGB(245, 197, 130)
	OpenCloseOverlay.ScaleType = Enum.ScaleType.Slice
	OpenCloseOverlay.SliceCenter = Rect.new(5, 5, 5, 5)

	OpenGui.Name = "OpenGui"
	OpenGui.Parent = OpenClose
	OpenGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OpenGui.BackgroundTransparency = 1.000
	OpenGui.Position = UDim2.new(0.833042443, 0, 0, 0)
	OpenGui.Size = UDim2.new(0.166957572, 0, 1, 0)
	OpenGui.Font = Enum.Font.SourceSans
	OpenGui.Text = "━"
	OpenGui.TextColor3 = Color3.fromRGB(0, 0, 0)
	OpenGui.TextScaled = true
	OpenGui.TextSize = 14.000
	OpenGui.TextWrapped = true

	Mainn.Name = "Mainn"
	Mainn.Parent = MainFrame
	Mainn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Mainn.BackgroundTransparency = 1.000
	Mainn.Size = UDim2.new(1, 0, 1, 0)

	local openedgui = true
	OpenGui.MouseButton1Click:Connect(function()
		if openedgui == true then
			Mainn.Visible = false
			MainFrame.ImageTransparency = 1
			Overlay.ImageTransparency = 1
			openedgui = false
		else
			Mainn.Visible = true
			openedgui = true
			MainFrame.ImageTransparency = 0.6
			Overlay.ImageTransparency = 0.6
		end

	end)

	local gui = OpenClose

	local function update(input)
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)



	local TabHandler = {}

	function TabHandler:CreateTab(name)
		name = name or "Unlabeled"
		local TextButton = Instance.new("TextButton")
		local Overlay_3 = Instance.new("ImageLabel")
		local UICorner = Instance.new("UICorner")
		local Page1 = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		TextButton.Parent = TabList
		TextButton.BackgroundColor3 = Color3.fromRGB(166, 134, 101)
		TextButton.Size = UDim2.new(0.850000024, 0, 0.107000001, 0)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = name
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 20
		TextButton.TextScaled = true
		TextButton.TextWrapped = true

		Overlay_3.Name = name
		Overlay_3.Parent = TextButton
		Overlay_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Overlay_3.BackgroundTransparency = 1.000
		Overlay_3.Size = UDim2.new(1, 0, 1.04999995, 0)
		Overlay_3.ZIndex = 0
		Overlay_3.Image = "rbxassetid://2739347995"
		Overlay_3.ImageColor3 = Color3.fromRGB(245, 197, 130)
		Overlay_3.ScaleType = Enum.ScaleType.Slice
		Overlay_3.SliceCenter = Rect.new(5, 5, 5, 5)

		UICorner.CornerRadius = UDim.new(0, 9)
		UICorner.Parent = TextButton

		Page1.Name = "Page1"
		Page1.Parent = Pages
		Page1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page1.BackgroundTransparency = 1.000
		Page1.BorderSizePixel = 0
		Page1.Size = UDim2.new(1, 0, 1, 0)
		Page1.BottomImage = "rbxassetid://3515608177"
		Page1.CanvasSize = UDim2.new(0, 0, 3, 0)
		Page1.MidImage = "rbxassetid://3515608813"
		Page1.ScrollBarThickness = 10
		Page1.TopImage = "rbxassetid://3515609176"
		Page1.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
		Page1.Visible = false

		UIListLayout_2.Parent = Page1
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0.00499999989, 0)


		TextButton.MouseButton1Click:Connect(function()
			for i,v in next, Pages:GetChildren() do
				v.Visible = false
			end
			Page1.Visible = true
		end)

		local ElementHandler = {}
        function ElementHandler:focus()
            for i,v in next, Pages:GetChildren() do
				v.Visible = false
			end
			Page1.Visible = true
        end

		function ElementHandler:CreateButton(btnText, butfunc)
			btnText = btnText or "unlabeled"
			butfunc = butfunc or function() end

			local Button = Instance.new("Frame")
			local TextButton_2 = Instance.new("TextButton")
			local Overlay_5 = Instance.new("ImageLabel")
			local TextLabel_2 = Instance.new("TextLabel")
			local UICorner_3 = Instance.new("UICorner")

			Button.Name = "Button"
			Button.Parent = Page1
			Button.BackgroundColor3 = Color3.fromRGB(166, 134, 101)
			Button.Position = UDim2.new(0.022327058, 0, 0.0110666938, 0)
			Button.Size = UDim2.new(0.907056034, 0, 0.0420861132, 0)
			

			TextButton_2.Parent = Button
			TextButton_2.BackgroundColor3 = Color3.fromRGB(124, 100, 75)
			TextButton_2.Position = UDim2.new(0.746478856, 0, 0.181818187, 0)
			TextButton_2.Size = UDim2.new(0.200000003, 0, 0.600000024, 0)
			TextButton_2.Font = Enum.Font.Gotham
			TextButton_2.Text = ""
			TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2.TextScaled = true
			TextButton_2.TextSize = 14.000
			TextButton_2.TextWrapped = true

			Overlay_5.Name = "Overlay"
			Overlay_5.Parent = Button
			Overlay_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Overlay_5.BackgroundTransparency = 1.000
			Overlay_5.Size = UDim2.new(1, 0, 1.04999995, 0)
			Overlay_5.ZIndex = 0
			Overlay_5.Image = "rbxassetid://2739347995"
			Overlay_5.ImageColor3 = Color3.fromRGB(245, 197, 130)
			Overlay_5.ScaleType = Enum.ScaleType.Slice
			Overlay_5.SliceCenter = Rect.new(5, 5, 5, 5)

			TextLabel_2.Parent = Button
			TextLabel_2.Text = btnText
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.Position = UDim2.new(0.0345057622, 0, 0, 0)
			TextLabel_2.Size = UDim2.new(0.711973131, 0, 1.00000012, 0)
			TextLabel_2.Font = Enum.Font.SourceSans
			TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_2.TextSize = 40.000
			TextLabel_2.TextWrapped = true
			TextLabel_2.TextScaled = true
			TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_3.Parent = Button

			TextButton_2.MouseButton1Click:Connect(function()
				butfunc()
			end)		
		end



		function ElementHandler:CreateToggle(togname, togfunc)
			local tog = false
			togname = togname or "unlabeled"
			togfunc = togfunc or function() end

			local ToggleButton = Instance.new("Frame")
			local Overlay_4 = Instance.new("ImageLabel")
			local TextLabel = Instance.new("TextLabel")
			local UICorner_2 = Instance.new("UICorner")
			local TextButton = Instance.new("TextButton")

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = Page1
			ToggleButton.BackgroundColor3 = Color3.fromRGB(166, 134, 101)
			ToggleButton.Position = UDim2.new(0.022327058, 0, 0.0110666938, 0)
			ToggleButton.Size = UDim2.new(0.907056034, 0, 0.0420861132, 0)
			

			Overlay_4.Name = "Overlay"
			Overlay_4.Parent = ToggleButton
			Overlay_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Overlay_4.BackgroundTransparency = 1.000
			Overlay_4.Size = UDim2.new(1, 0, 1.04999995, 0)
			Overlay_4.ZIndex = 0
			Overlay_4.Image = "rbxassetid://2739347995"
			Overlay_4.ImageColor3 = Color3.fromRGB(245, 197, 130)
			Overlay_4.ScaleType = Enum.ScaleType.Slice
			Overlay_4.SliceCenter = Rect.new(5, 5, 5, 5)

			TextLabel.Parent = ToggleButton
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.0345057622, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.711973131, 0, 1.00000012, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.TextSize = 40.000
			TextLabel.TextWrapped = true
			TextLabel.Text = togname
			TextLabel.TextScaled = true
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_2.Parent = ToggleButton

			TextButton.Parent = ToggleButton
			TextButton.BackgroundColor3 = Color3.fromRGB(124, 100, 75)
			TextButton.Position = UDim2.new(0.746478856, 0, 0.181818187, 0)
			TextButton.Size = UDim2.new(0.200000003, 0, 0.600000024, 0)
			TextButton.AutoButtonColor = false
			TextButton.Font = Enum.Font.Gotham
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.Text = ""
			TextButton.TextScaled = true
			TextButton.TextSize = 14.000
			TextButton.TextWrapped = true

			TextButton.MouseButton1Click:Connect(function()
				tog = not tog
				if tog == true then
					TextButton.Text = "X"
				else
					TextButton.Text = ""
				end
				togfunc(tog)
			end)
			return tog
		end







		return ElementHandler
	end
	return TabHandler
end


local falldmg;
local nostun;



local main = bozoui:CreateMainWindow()
local localplayertab = main:CreateTab("LocalPlayer")

localplayertab:focus()



localplayertab:CreateButton("Reset", function()
	game.Players.LocalPlayer.Character:BreakJoints()
end)



localplayertab:CreateButton("Wipe", function()
		game.Players.LocalPlayer.Character.FallDamage.RemoteEvent:FireServer(1000)
end)

local nostuntoggle = localplayertab:CreateToggle("NoStun", function(bool)
	nostun = bool
end)

local newtoggle = localplayertab:CreateToggle("NoFall", function(bool)
	falldmg = bool
end)

local worldtab = main:CreateTab("World")


coroutine.wrap(function()
	while true do
		task.wait(1)
		if nostun then
			if table.getn(game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name].Status:GetChildren()) >0 then
				for i,v in pairs(game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name].Status:GetChildren()) do
					v:Destroy()
				end
			end
		end
	end
end)()


coroutine.wrap(function()
	local t = {
		"Sprinting",
		"Action",
		"NoJump",
		"HeavyAttack",
		"LightAttack",
		"NoJump",
		"ForwardDash",
		"RecentDash",
		"ClimbCoolDown",
		"BrokenLeg",
		"Knocked",
		"Unconscious",
		"BrokenLeg",
		"BrokenRib",
		"BrokenArm",
		"NoDam",
		"NoDash",
		"Casting",
		"BeingExecuted",
		"IsClimbing"
	}
	repeat task.wait(0.5) until game:GetService("Workspace").AliveData:FindFirstChild(game.Players.LocalPlayer.Name) and game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name]:FindFirstChild("Status")
	game:GetService("Workspace").AliveData[game.Players.LocalPlayer.Name].Status.ChildAdded:Connect(function(child)
		if nostun == true and table.find(t, child.Name) then
			task.wait(0.1)
			child:remove()
		end
	end)
end)()




coroutine.wrap(function()
	local method 
	method = hookmetamethod(game, "__namecall", function(self, ...)
		if falldmg == true then
			if not checkcaller() and getnamecallmethod() == "FireServer" and self.Parent.Name == "FallDamage" then
				return 0
			end
		end
		return method(self, ...)
	end)
end)()

local nokillbricks = worldtab:CreateToggle("No Kill Bricks", function(onoff)
	onoff = onoff or false

	if onoff == true then
		for i,v in pairs(game.Workspace.Map.KillBricks:GetChildren()) do
			if v:IsA("Part") then
				v.CanTouch = false
			end
		end
	else
		for i,v in pairs(game.Workspace.Map.KillBricks:GetChildren()) do
			if v:IsA("Part") then
				v.CanTouch = true
			end
		end
	end
end)






local lightconnection
local shadowconnection
local fogconnection

local newtoggle = worldtab:CreateToggle("FullBright", function(onoff)
	onoff = onoff or false

	if lightconnection then
		lightconnection:Disconnect()
	end
	if shadowconnection then
		shadowconnection:Disconnect()
	end



	if onoff == true then
		lightconnection = game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
			game:GetService("Lighting").Brightness = 1
		end)
		shadowconnection = game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
			game:GetService("Lighting").GlobalShadows = false
		end)
		game:GetService("Lighting").Brightness = 1
		game:GetService("Lighting").GlobalShadows = false
	else
		game:GetService("Lighting").GlobalShadows = true
	end
end)

local newtoggle2 = worldtab:CreateToggle("NoFog", function(onoff)
	onoff = onoff or false

	if lightconnection then
		lightconnection:Disconnect()
	end
	



	if onoff == true then
		fogconnection = game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
			game:GetService("Lighting").FogEnd = 786543
		end)
		game:GetService("Lighting").FogEnd = 786543
	end
end)



return

end

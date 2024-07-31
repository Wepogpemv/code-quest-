local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "PurpleButtonGui"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.AnchorPoint = Vector2.new(0, 0)
frame.BackgroundTransparency = 1
frame.Parent = gui

local infoFrame = Instance.new("Frame")
infoFrame.Size = UDim2.new(0, 200, 0, 30)
infoFrame.Position = UDim2.new(0, 0, 0, 10)
infoFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoFrame.Parent = frame

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "t.me/CODE_QUEST_INFO"
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 14
textLabel.Parent = infoFrame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0, 0, 0, 40)
button.BackgroundColor3 = Color3.fromRGB(128, 0, 128)
button.Text = "Purple"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = frame

gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

button.MouseButton1Click:Connect(function()
    game:GetService("ReplicatedStorage").Remotes.Fire2:FireServer()
end)

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

local function makeRoundedCorners(instance, radius)
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, radius)
    uiCorner.Parent = instance
end

makeRoundedCorners(button, 10)
makeRoundedCorners(infoFrame, 10)
makeRoundedCorners(frame, 10)
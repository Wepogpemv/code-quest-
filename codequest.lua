repeat task.wait() until game:IsLoaded()

local function generateRandomString(length)
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    local str = ""
    for i = 1, length do
        local randIndex = math.random(1, #chars)
        str = str .. chars:sub(randIndex, randIndex)
    end
    return str
end

local randomString = generateRandomString(math.random(30, 50))

if not isfolder("Krasus") then
     makefolder("Krasus")
end
task.wait()
if not isfolder("Krasus/Autoexec") then
    makefolder("Krasus/Autoexec")
end
task.wait()
local files = listfiles("Krasus/Autoexec")
if #files >= 1 then
    for _,v in pairs(files) do
        local dadasd = readfile(v)
        loadstring(dadasd)()
    end
end

warn("Intro Loaded")

-- intro

local ScreenGui = Instance.new("ScreenGui")
local Frame1 = Instance.new("Frame")
local KrasusuZet = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local bar = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Bar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local IncrementValue

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "Krasusload"

Frame1.Name = "Frame1"
Frame1.Parent = ScreenGui
Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.ZIndex = 898888
Frame1.Position = UDim2.new(0, 0, -0.301470578, 0)
Frame1.Size = UDim2.new(1, 0, 2, 0)

KrasusuZet.Name = "Krasusu Zet"
KrasusuZet.Parent = Frame1
KrasusuZet.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KrasusuZet.BorderColor3 = Color3.fromRGB(0, 0, 0)
KrasusuZet.BorderSizePixel = 0
KrasusuZet.Position = UDim2.new(0.419719309, 0, 0.194122553, 0)
KrasusuZet.Size = UDim2.new(0.159489632, 0, 0.0597381219, 0)
KrasusuZet.Font = Enum.Font.SourceSansBold
KrasusuZet.Text = "KraSus Zet"
KrasusuZet.TextColor3 = Color3.fromRGB(255, 255, 255)
KrasusuZet.TextSize = 51.000

TextLabel.Parent = Frame1
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.331960052, 0, 0.293721199, 0)
TextLabel.Size = UDim2.new(0.346889913, 0, 0.0615763552, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Loading.."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 25.000

bar.Name = "bar"
bar.Parent = Frame1
bar.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(0.238306358, 0, 0.5454849, 0)
bar.Size = UDim2.new(0.532695353, 0, 0.0467980281, 0)

UICorner.Parent = bar

Bar.Name = "Bar"
Bar.Parent = bar
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.Size = UDim2.new(0.100000001, 0, 1, 0)

UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
UICorner_2.Parent = Bar

local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ContentProvider = game:GetService("ContentProvider")
local TweenService = game:GetService("TweenService")
local Background = Frame1

ReplicatedFirst:RemoveDefaultLoadingScreen()

local totalTime = 10
local startTime = os.time()

local function updateProgressBar(percentage)
    Background:WaitForChild("TextLabel").Text = "Loading: " .. percentage .. "%"
    TweenService:Create(Background.bar.Bar, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = UDim2.fromScale(percentage / 86, 1)}):Play()
end

local currentPercentage = 0
while os.time() - startTime < totalTime do
    currentPercentage = currentPercentage + 1
    local percentage = currentPercentage
    updateProgressBar(percentage)
    task.wait(0.1)
end

Background:WaitForChild("TextLabel").Text = "Loaded!"
wait(1.5)
task.wait()
ScreenGui.Enabled = false
task.wait()

print("Intro Loaded")

warn("Gui Loaded")
local function createMenu() -- All Gui
    local CoreGui = game:GetService("CoreGui")
	local HttpService = game:GetService("HttpService")

	local player = game.Players.LocalPlayer
	local menu = Instance.new("ScreenGui")
	menu.Parent = CoreGui
	menu.Name = randomString 
	
	local co = 0

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.Insert then
       if co == 0 then
menu.Enabled = false
co = 1
elseif co == 1 then
menu.Enabled = true
co = 0
end
    end
end


game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
	
	-- List Updates
	local butto = Instance.new("TextButton")
	butto.Parent = menu
	butto.Size = UDim2.new(0, 170, 0, 37)
	butto.Position = UDim2.new(0, -300, 0, 10)
	butto.Text = "List Of Updates"
	butto.TextSize = 15
	butto.TextColor3 = Color3.new(1, 1, 1)
	butto.BackgroundColor3 = Color3.fromRGB(30,30,30)
	butto.BackgroundTransparency = 0.1
	butto.Visible = false

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = butto
	
	local butto1 = Instance.new("TextButton")
	butto1.Parent = menu
	butto1.Size = UDim2.new(0, 170, 0, 87)
	butto1.Position = UDim2.new(0, -300, 0, 45)
	butto1.Text = ""
	butto1.TextSize = 15
	butto1.TextColor3 = Color3.new(1, 1, 1)
	butto1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	butto1.BackgroundTransparency = 0.1
	butto1.Visible = false

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = butto1
	
    local trext1 = Instance.new("TextLabel")
    trext1.Size = UDim2.new(0, 0, 0, 50)
    trext1.Position = UDim2.new(0, 85, 0, -13)
    trext1.Text = "[June 16nd.2024] KraSus Zet Release"
    trext1.TextSize = 7
    trext1.ZIndex = 4
    trext1.TextColor3 = Color3.fromRGB(255, 255, 255)
    trext1.BackgroundTransparency = 7
    trext1.Parent = butto1
	
	-- Open KraSus Zet
    local TweenService = game:GetService("TweenService")
    local menu1a = Instance.new("TextButton")
    menu1a.Size = UDim2.new(0, 50, 0, 50)
    menu1a.Position = UDim2.new(0, -200, 0.5, -160) 
    menu1a.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    menu1a.Text = ""
    menu1a.BackgroundTransparency = 0.1
    menu1a.ZIndex = 2
    menu1a.Parent = menu
    menu1a.Active = true
    menu1a.Draggable = true
    
    local endPosition = UDim2.new(0.5, 300, 0.5, -160)
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

    local tween = TweenService:Create(menu1a, tweenInfo, {Position = endPosition})
    tween:Play()

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 7)
    corner.Parent = menu1a

    local menu1 = Instance.new("Frame")
    menu1.Size = UDim2.new(0, 54, 0, 54)
    menu1.Position = UDim2.new(0, -2, 0, -2)
    menu1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    menu1.ZIndex = 1
    menu1.BackgroundTransparency = 0.1
    menu1.Parent = menu1a

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 7)
    corner.Parent = menu1

    local LogoM1 = Instance.new("ImageLabel")
    LogoM1.Size = UDim2.new(0, 75, 0, 80)
    LogoM1.Position = UDim2.new(0,-13,0,-18)
    LogoM1.BackgroundTransparency = 7
    LogoM1.Image = "rbxassetid://18191542775"
    LogoM1.ZIndex = 3
    LogoM1.Parent = menu1a

    local text1 = Instance.new("TextLabel")
    text1.Size = UDim2.new(0, 0, 0, 50)
    text1.Position = UDim2.new(0, 25, 0, 21)
    text1.Text = "KraSus Zet"
    text1.TextSize = 6
    text1.ZIndex = 4
    text1.TextColor3 = Color3.fromRGB(255, 255, 255)
    text1.BackgroundTransparency = 7
    text1.Parent = menu1a

	-- Gui
    local TweenService = game:GetService("TweenService") 
    local Gui1o = Instance.new("Frame")
    Gui1o.Size = UDim2.new(0, 410, 0, 234)
    Gui1o.Position = UDim2.new(0.5, -250, 0.5, -700)
    Gui1o.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Gui1o.BackgroundTransparency = 0.4
    Gui1o.BorderSizePixel = 2
    Gui1o.Active = true
    Gui1o.Draggable = true
    Gui1o.Parent = menu
    
    local endPosition = UDim2.new(0.5, -250, 0.5, -150)
    local endTransparency = 0.4
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

    local positionTween = TweenService:Create(Gui1o, tweenInfo, {Position = endPosition})
    local transparencyTween = TweenService:Create(Gui1o, tweenInfo, {BackgroundTransparency = endTransparency})

    positionTween:Play()
    transparencyTween:Play()

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 7)
    corner.Parent = Gui1o

    local Gui2o = Instance.new("Frame")
    Gui2o.Size = UDim2.new(0, 353, 0, 230)
    Gui2o.Position = UDim2.new(0,55,0,2)
    Gui2o.BackgroundColor3 = Color3.new(0, 0, 0)
    Gui2o.BorderSizePixel = 2
    Gui2o.Parent = Gui1o

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 7)
    corner.Parent = Gui2o
    
    local Gui3o = Instance.new("Frame")
    Gui3o.Size = UDim2.new(0, 45, 0, 230)
    Gui3o.Position = UDim2.new(0,2,0,2)
    Gui3o.BackgroundColor3 = Color3.new(0, 0, 0)
    Gui3o.BorderSizePixel = 2
    Gui3o.Parent = Gui1o

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 7)
    corner.Parent = Gui3o

    local Pal2= Instance.new("Frame")
    Pal2.Size = UDim2.new(0, 405, 0, 2)
    Pal2.Position = UDim2.new(0, 0, 0, 32)
    Pal2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
    Pal2.BackgroundTransparency = 0.2
    Pal2.BorderSizePixel = 0
    Pal2.Parent = Gui2o

    Gui2o.ClipsDescendants = true

    local menuTog = false

    local function menuTog()
        if menuTog then
            Gui1o:TweenPosition(UDim2.new(0.5, -250, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
            menuTog = false
        else
            Gui1o:TweenPosition(UDim2.new(0.5, -250, 0.5, -150), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
            menuTog = true
        end
    end

    menu1a.MouseButton1Click:Connect(menuTog)

    local Pal2= Instance.new("Frame")
    Pal2.Size = UDim2.new(0, 405, 0, 37)
    Pal2.Position = UDim2.new(0, -5, 0, -3)
    Pal2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Pal2.BackgroundTransparency = 0.2
    Pal2.BorderSizePixel = 0
    Pal2.Parent = Gui2o

    Gui2o.ClipsDescendants = true
    
    local Pal1 = Instance.new("Frame")
    Pal1.Size = UDim2.new(0, 2, 0, 36)
    Pal1.Position = UDim2.new(0, 35, 0, -2)
    Pal1.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
    Pal1.BackgroundTransparency = 0.4
    Pal1.BorderSizePixel = 0
    Pal1.Parent = Gui2o

    local LogoM4 = Instance.new("ImageLabel")
    LogoM4.Size = UDim2.new(0, 52, 0, 60)
    LogoM4.Position = UDim2.new(0, -8, 0, -13)
    LogoM4.BackgroundTransparency = 1
    LogoM4.Image = "rbxassetid://18191542775"
    LogoM4.Parent = Gui2o

    local text1 = Instance.new("TextLabel")
    text1.Size = UDim2.new(0, 0, 0, 50)
    text1.Position = UDim2.new(0, 115, 0, -6)
    text1.Text = "KraSus Zet"
    text1.TextSize = 23
    text1.TextColor3 = Color3.fromRGB(255, 255, 255)
    text1.BackgroundTransparency = 10
    text1.Parent = Gui2o    
	
	local text51 = Instance.new("TextLabel")
    text51.Size = UDim2.new(0, 0, 0, 50)
    text51.Position = UDim2.new(0, 226, 0, -5)
    text51.Text = "Beta"
    text51.TextSize = 20
    text51.TextColor3 = Color3.fromRGB(255, 255, 255)
    text51.BackgroundTransparency = 10
    text51.Parent = Gui2o
	
	local closeButton = Instance.new("TextButton")
	closeButton.Name = "CloseButton"
	closeButton.Size = UDim2.new(0, 42, 0, 42)
	closeButton.Position = UDim2.new(1, -37, 0, -3)
	closeButton.BackgroundTransparency = 10
	closeButton.Text = "X"
	closeButton.TextSize = 30
	closeButton.TextColor3 = Color3.new(250,250,250)
	closeButton.Parent = Gui2o

	-- close Gui

		local frrame = Instance.new("Frame")
		frrame.Size = UDim2.new(1, 0, 2, 0)
		frrame.Position = UDim2.new(0, 0, 0, -50) 
		frrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		frrame.BackgroundTransparency = 0.6
		frrame.BorderSizePixel = 0
		frrame.Parent = menu
		frrame.Visible = false

	    local Gui1oo = Instance.new("Frame")
	    Gui1oo.Size = UDim2.new(0, 300, 0, 140)
	    Gui1oo.Position = UDim2.new(0.3,0,0.2,0)
	    Gui1oo.BackgroundColor3 = Color3.fromRGB(0,0,0)
	    Gui1oo.BackgroundTransparency = 0.1
	    Gui1oo.BorderSizePixel = 2
	    Gui1oo.Parent = menu
		Gui1oo.Visible = false
    
	    local corner = Instance.new("UICorner")
	    corner.CornerRadius = UDim.new(0, 3)
	    corner.Parent = Gui1oo
    
	    local text661 = Instance.new("TextLabel")
	    text661.Size = UDim2.new(0, 0, 0, 50)
	    text661.Position = UDim2.new(0, 150, 0, 35)
	    text661.Text = "Do you want to close KraSus Zet without"
	    text661.TextSize = 11
	    text661.ZIndex = 4
	    text661.TextColor3 = Color3.fromRGB(255, 255, 255)
	    text661.BackgroundTransparency = 7
	    text661.Parent = Gui1oo
    
	    local text71 = Instance.new("TextLabel")
	    text71.Size = UDim2.new(0, 0, 0, 50)
	    text71.Position = UDim2.new(0, 150, 0, 50)
	    text71.Text = "being able to open it again?"
	    text71.TextSize = 11
	    text71.ZIndex = 4
	    text71.TextColor3 = Color3.fromRGB(255, 255, 255)
	    text71.BackgroundTransparency = 7
	    text71.Parent = Gui1oo
	
		local button11 = Instance.new("TextButton")
		button11.Parent = Gui1oo
		button11.Size = UDim2.new(0, 130, 0, 40)
		button11.Position = UDim2.new(0, 10, 0, 90)
		button11.Text = "No"
		button11.TextSize = 23
		button11.TextColor3 = Color3.new(90, 90, 90)
		button11.BackgroundColor3 = Color3.fromRGB(30,30,30)
		button11.BackgroundTransparency = 0.5

		local corner = Instance.new("UICorner")
	    corner.CornerRadius = UDim.new(0, 3)
	    corner.Parent = button11

		local buttonp1 = Instance.new("TextButton")
		buttonp1.Parent = Gui1oo
		buttonp1.Size = UDim2.new(0, 130, 0, 40)
		buttonp1.Position = UDim2.new(0, 160, 0, 90)
		buttonp1.Text = "Yes"
		buttonp1.TextSize = 23
		buttonp1.TextColor3 = Color3.new(90, 90, 90)
		buttonp1.BackgroundColor3 = Color3.fromRGB(30,30,30)
		buttonp1.BackgroundTransparency = 0.5

		local corner = Instance.new("UICorner")
	    corner.CornerRadius = UDim.new(0, 3)
	    corner.Parent = buttonp1
    
	    local texot1 = Instance.new("TextLabel")
	    texot1.Size = UDim2.new(0, 0, 0, 50)
	    texot1.Position = UDim2.new(0, 148, 0, 5)
	    texot1.Text = "Warning!"
	    texot1.TextSize = 25
	    texot1.ZIndex = 4
	    texot1.TextColor3 = Color3.fromRGB(255, 255, 255)
	    texot1.BackgroundTransparency = 7
	    texot1.Parent = Gui1oo
    
	    button11.MouseButton1Click:Connect(function()
	    	Gui1oo.Visible = false
	    	frrame.Visible = false         
			Gui1o.Visible = true
			menu1a.Visible = true
	    end)
    
	    buttonp1.MouseButton1Click:Connect(function()
	    	Gui1oo:Destroy()
	    	frrame:Destroy()
			Gui1o:Destroy()
			menu1a:Destroy()
			butto:Destroy()
			butto1:Destroy()
	    end)
	
	-- gui
	closeButton.MouseButton1Click:Connect(function()
		Gui1o.Visible = false
		menu1a.Visible = false
		frrame.Visible = true
		Gui1oo.Visible = true
	end)

    local LogoM1 = Instance.new("ImageLabel")
    LogoM1.Size = UDim2.new(0, 43, 0, 40)
    LogoM1.Position = UDim2.new(0.5, -22, 0.5, 73)
    LogoM1.BackgroundTransparency = 7
    LogoM1.Image = "rbxassetid://17252775511"
    LogoM1.ZIndex = 3
    LogoM1.Parent = Gui3o

    local LogM1 = Instance.new("TextButton")
    LogM1.Size = UDim2.new(0, 45, 0, 40)
    LogM1.Text = ""
    LogM1.Position = UDim2.new(0.5, -21, 0.5, 73)
    LogM1.BackgroundTransparency = 1
    LogM1.ZIndex = 3
    LogM1.Parent = Gui3o
    
    local Log1 = Instance.new("TextButton")
    Log1.Size = UDim2.new(0, 45, 0, 40)
    Log1.Text = ""
    Log1.Position = UDim2.new(0.5, -21, 0.5, 73)
    Log1.BackgroundTransparency = 1
    Log1.ZIndex = 3
    Log1.Visible = false
    Log1.Parent = Gui3o
    
	LogM1.MouseButton1Click:Connect(function()
		Gui2o:TweenPosition(UDim2.new(0, 2, 0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
		Gui3o:TweenPosition(UDim2.new(0, 363, 0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
		LogM1.Visible = false
		Log1.Visible = true
	end)

	Log1.MouseButton1Click:Connect(function()
		Gui2o:TweenPosition(UDim2.new(0,55,0,2), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
		Gui3o:TweenPosition(UDim2.new(0,2,0,2), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
		LogM1.Visible = true
		Log1.Visible = false
	end)
	
	-- tab 1
    local LogoM2 = Instance.new("ImageLabel")
    LogoM2.Size = UDim2.new(0, 38, 0, 40)
    LogoM2.Position = UDim2.new(0.5, -19, 0.5, -115)
    LogoM2.BackgroundTransparency = 7
    LogoM2.Image = "rbxassetid://17255706533"
    LogoM2.ZIndex = 3
    LogoM2.Parent = Gui3o

	local LogM2 = Instance.new("TextButton")
    LogM2.Size = UDim2.new(0, 45, 0, 40)
    LogM2.Text = ""
    LogM2.Position = UDim2.new(0.5, -21, 0.5, -115)
    LogM2.BackgroundTransparency = 1
    LogM2.ZIndex = 3
    LogM2.Parent = Gui3o
    
	local frame1 = Instance.new("Frame")
	frame1.Size = UDim2.new(1, 0, 2, 0)
	frame1.Position = UDim2.new(0, 0, 0, -50) 
	frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame1.BackgroundTransparency = 1
	frame1.BorderSizePixel = 0
	frame1.Parent = Gui2o
	frame1.Visible = false
    
    -- tab 2
    local LogoM3 = Instance.new("ImageLabel")
    LogoM3.Size = UDim2.new(0, 45, 0, 40)
    LogoM3.Position = UDim2.new(0.5, -22, 0.5, -70)
    LogoM3.BackgroundTransparency = 7
    LogoM3.Image = "rbxassetid://17263343732"
    LogoM3.ZIndex = 3
    LogoM3.Parent = Gui3o

	local LogM3 = Instance.new("TextButton")
    LogM3.Size = UDim2.new(0, 45, 0, 40)
    LogM3.Text = ""
    LogM3.Position = UDim2.new(0.5, -21, 0.5, -70)
    LogM3.BackgroundTransparency = 1
    LogM3.ZIndex = 3
    LogM3.Parent = Gui3o
    
	local frame2 = Instance.new("Frame")
	frame2.Size = UDim2.new(1, 0, 2, 0)
	frame2.Position = UDim2.new(0, 0, 0, -50) 
	frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame2.BackgroundTransparency = 1
	frame2.BorderSizePixel = 0
	frame2.Parent = Gui2o
	frame2.Visible = false

	-- tab 4
    local LogoM5 = Instance.new("ImageLabel")
    LogoM5.Size = UDim2.new(0, 38, 0, 40)
    LogoM5.Position = UDim2.new(0.5, -18, 0.5, -25)
    LogoM5.BackgroundTransparency = 7
    LogoM5.Image = "rbxassetid://17263534280"
    LogoM5.ZIndex = 3
    LogoM5.Parent = Gui3o

	local LogM5 = Instance.new("TextButton")
    LogM5.Size = UDim2.new(0, 45, 0, 40)
    LogM5.Text = ""
    LogM5.Position = UDim2.new(0.5, -21, 0.5, -25)
    LogM5.BackgroundTransparency = 1
    LogM5.ZIndex = 3
    LogM5.Parent = Gui3o

	local frame4 = Instance.new("Frame")
	frame4.Size = UDim2.new(1, 0, 2, 0)
	frame4.Position = UDim2.new(0, 0, 0, -50) 
	frame4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame4.BackgroundTransparency = 1
	frame4.BorderSizePixel = 0
	frame4.Parent = Gui2o
	frame4.Visible = false
	
    local Gui4o = Instance.new("Frame")
    Gui4o.Size = UDim2.new(0, 45, 0, 230)
    Gui4o.Position = UDim2.new(0,0,0,0)
    Gui4o.BackgroundColor3 = Color3.new(0, 0, 0)
    Gui4o.BorderSizePixel = 2
    Gui4o.BackgroundTransparency = 0.9
    Gui4o.ZIndex = 5
    Gui4o.Parent = Gui3o

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 7)
    corner.Parent = Gui4o
	
	LogM2.MouseButton1Click:Connect(function()
		frame1.Visible = true
		frame2.Visible = false
		frame4.Visible = false
	end)
	
	LogM3.MouseButton1Click:Connect(function()
		frame1.Visible = false
		frame2.Visible = true
		frame4.Visible = false
	end)
	
	LogM5.MouseButton1Click:Connect(function()
		frame1.Visible = false
		frame2.Visible = false
		frame4.Visible = true
	end)

	-- tab 1
	local button3 = Instance.new("TextButton")
	button3.Parent = frame1
	button3.Size = UDim2.new(0, 170, 0, 90)
	button3.Position = UDim2.new(0, 5, 0, 118)
	button3.Text = ""
	button3.TextSize = 23
	button3.TextColor3 = Color3.new(1, 1, 1)
	button3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	button3.BackgroundTransparency = 0.5
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = button3
	
	local text01 = Instance.new("TextLabel")
	text01.Size = UDim2.new(0, 0, 0, 50)
	text01.Position = UDim2.new(0, 85, 0, -10)
	text01.Text = "Krutoy Suslik"
	text01.TextSize = 18
	text01.TextColor3 = Color3.fromRGB(255, 255, 255)
	text01.BackgroundTransparency = 7
	text01.Parent = button3

	local tex0t1 = Instance.new("TextLabel")
	tex0t1.Size = UDim2.new(0, 0, 0, 50)
	tex0t1.Position = UDim2.new(0, 85, 0, 20)
	tex0t1.Text = "Krain1771"
	tex0t1.TextSize = 18
	tex0t1.TextColor3 = Color3.fromRGB(255, 255, 255)
	tex0t1.BackgroundTransparency = 7
	tex0t1.Parent = button3

	local Pal2= Instance.new("Frame")
	Pal2.Size = UDim2.new(0, 150, 0, 2)
	Pal2.Position = UDim2.new(0, 8, 0, 29)
	Pal2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Pal2.BackgroundTransparency = 0.2
	Pal2.BorderSizePixel = 0
	Pal2.Parent = button3

	local Pal2= Instance.new("Frame")
	Pal2.Size = UDim2.new(0, 150, 0, 2)
	Pal2.Position = UDim2.new(0, 8, 0, 59)
	Pal2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Pal2.BackgroundTransparency = 0.2
	Pal2.BorderSizePixel = 0
	Pal2.Parent = button3

	local textn1 = Instance.new("TextLabel")
	textn1.Size = UDim2.new(0, 0, 0, 50)
	textn1.Position = UDim2.new(0, 85, 0, 48)
	textn1.Text = "SLK Zet Team"
	textn1.TextSize = 18
	textn1.TextColor3 = Color3.fromRGB(255, 255, 255)
	textn1.BackgroundTransparency = 7
	textn1.Parent = button3

	local beutton2 = Instance.new("TextButton")
	beutton2.Parent = frame1
	beutton2.Size = UDim2.new(0, 170, 0, 30)
	beutton2.Position = UDim2.new(0, 5, 0, 90)
	beutton2.Text = "Creators"
	beutton2.TextSize = 20
	beutton2.TextColor3 = Color3.new(1, 1, 1)
	beutton2.BackgroundColor3 = Color3.fromRGB(30,30,30)
	beutton2.BackgroundTransparency = 0.5
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = beutton2

	local button4 = Instance.new("TextButton")
	button4.Parent = frame1
	button4.Size = UDim2.new(0, 170, 0, 40)
	button4.Position = UDim2.new(0, 5, 0, 213)
	button4.Text = ""
	button4.TextSize = 20
	button4.TextColor3 = Color3.new(1, 1, 1)
	button4.BackgroundColor3 = Color3.fromRGB(30,30,30)
	button4.BackgroundTransparency = 0.5
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = button4

	local button5 = Instance.new("TextButton")
	button5.Parent = frame1
	button5.Size = UDim2.new(0, 170, 0, 20)
	button5.Position = UDim2.new(0, 5, 0, 258)
	button5.Text = "Version 1.0.0"
	button5.TextSize = 15
	button5.TextColor3 = Color3.new(1, 1, 1)
	button5.BackgroundColor3 = Color3.fromRGB(30,30,30)
	button5.BackgroundTransparency = 0.5
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = button5

    local Log1 = Instance.new("ImageLabel")
    Log1.Size = UDim2.new(0, 45, 0, 45)
    Log1.Position = UDim2.new(0,0,0,-3)
    Log1.BackgroundTransparency = 7
    Log1.Image = "rbxassetid://17266375941"
    Log1.ZIndex = 3
    Log1.Parent = button4

	local Lo1 = Instance.new("TextButton")
    Lo1.Size = UDim2.new(0, 45, 0, 45)
    Lo1.Text = ""
    Lo1.Position = UDim2.new(0,0,0,0)
    Lo1.BackgroundTransparency = 1
    Lo1.ZIndex = 3
    Lo1.Parent = Log1
    
    Lo1.MouseButton1Click:Connect(function()
    	setclipboard("https//t.me//KrutoySuslik")
    end)
    
    local Log2 = Instance.new("ImageLabel")
    Log2.Size = UDim2.new(0, 45, 0, 45)
    Log2.Position = UDim2.new(0,60,0,-3)
    Log2.BackgroundTransparency = 7
    Log2.Image = "rbxassetid://17269858524"
    Log2.ZIndex = 3
    Log2.Parent = button4

	local Lo2 = Instance.new("TextButton")
    Lo2.Size = UDim2.new(0, 45, 0, 45)
    Lo2.Text = ""
    Lo2.Position = UDim2.new(0,0,0,0)
    Lo2.BackgroundTransparency = 1
    Lo2.ZIndex = 3
    Lo2.Parent = Log2
    
    Lo2.MouseButton1Click:Connect(function()
    	setclipboard("https://discord.com/invite/zschDHZ6SK")
    end)
    
    local Log3 = Instance.new("ImageLabel")
    Log3.Size = UDim2.new(0, 45, 0, 45)
    Log3.Position = UDim2.new(0,120,0,-3)
    Log3.BackgroundTransparency = 7
    Log3.Image = "rbxassetid://17273571690"
    Log3.ZIndex = 3
    Log3.Parent = button4

	local Lo3 = Instance.new("TextButton")
    Lo3.Size = UDim2.new(0, 45, 0, 45)
    Lo3.Text = ""
    Lo3.Position = UDim2.new(0,0,0,0)
    Lo3.BackgroundTransparency = 1
    Lo3.ZIndex = 3
    Lo3.Parent = Log3
    
    Lo3.MouseButton1Click:Connect(function()
    	setclipboard("https://youtube.com/@Krutoy-Suslik?si=bbHI3pnaVV9YV-it")
    end)
    
	local button6 = Instance.new("TextButton")
	button6.Parent = frame1
	button6.Size = UDim2.new(0, 170, 0, 167)
	button6.Position = UDim2.new(0, 180, 0, 87)
	button6.Text = ""
	button6.TextSize = 15
	button6.TextColor3 = Color3.new(1, 1, 1)
	button6.BackgroundColor3 = Color3.fromRGB(30,30,30)
	button6.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = button6

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 5)
	but1.Text = "Dark Dex V3"
	but1.TextSize = 10
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
	end)

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 28)
	but1.Text = "Dark Dex V2"
	but1.TextSize = 10
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Dex-V2-10310"))()
	end)

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 50)
	but1.Text = "Infinite Yield"
	but1.TextSize = 10
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 73)
	but1.Text = "Simply Spy"
	but1.TextSize = 10
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet"https://raw.githubusercontent.com/KrutoySuslik/Simply-Spy/main/Simple%20Spy%20Fix.txt")()
	end)

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 95)
	but1.Text = "Fly"
	but1.TextSize = 10
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KrutoySuslik/KraSus-Zet/main/Fly%20Gui"))()
	end)

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 118)
	but1.Text = "BTools, BTools+"
	but1.TextSize = 10
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)("") 
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
	end)

	local but1 = Instance.new("TextButton")
	but1.Parent = button6
	but1.Size = UDim2.new(0, 160, 0, 20)
	but1.Position = UDim2.new(0, 5, 0, 141)
	but1.Text = "Suslik Hub"
	but1.TextSize = 11
	but1.TextColor3 = Color3.new(1, 1, 1)
	but1.BackgroundColor3 = Color3.fromRGB(30,30,30)
	but1.BackgroundTransparency = 0.5

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 2)
	corner.Parent = but1

	but1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KrutoySuslik/-SuslikHub-/main/%7CSuslik%20Hub%7C%20%7CAll%20Scripts%7C"))()
	end)
	
	local button6 = Instance.new("TextButton")
	button6.Parent = frame1
	button6.Size = UDim2.new(0, 170, 0, 20)
	button6.Position = UDim2.new(0, 180, 0, 258)
	button6.Text = "List of Updates"
	button6.TextSize = 13
	button6.TextColor3 = Color3.new(1, 1, 1)
	button6.BackgroundColor3 = Color3.fromRGB(30,30,30)
	button6.BackgroundTransparency = 0.5
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = button6

	local clickCount = 0

	button6.MouseButton1Click:Connect(function()
	    clickCount = clickCount + 1

	    if clickCount == 1 then
	        butto.Visible = true
			butto1.Visible = true
			butto:TweenPosition(UDim2.new(0, 10, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
			butto1:TweenPosition(UDim2.new(0, 10, 0, 45), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
	    elseif clickCount == 2 then
			butto:TweenPosition(UDim2.new(0, -300, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
			butto1:TweenPosition(UDim2.new(0, -300, 0, 45), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 1, true)
			wait(1)
		    butto.Visible = false
			butto1.Visible = false
	        clickCount = 0
	    end
	end)

	-- tab 2
	local editorscroller = Instance.new("ScrollingFrame")
	local editor = Instance.new("TextBox")
	local uiaspectratioconstraint_3 = Instance.new("UIAspectRatioConstraint")
	local uiaspectratioconstraint_4 = Instance.new("UIAspectRatioConstraint")

	editorscroller.Name = "Editorscroller"
	editorscroller.Parent = frame2
	editorscroller.Active = true
	editorscroller.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	editorscroller.BorderSizePixel = 0
	editorscroller.Position = UDim2.new(0, 2, 0, 85)
	editorscroller.Size = UDim2.new(0, 375, 0, 155)
	editorscroller.ScrollBarThickness = 5
	editorscroller.AutomaticCanvasSize = Enum.AutomaticSize.XY
	
	editor.Parent = editorscroller
	editor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	editor.Size = UDim2.new(0, 600000, 0, 600000)
	editor.ClearTextOnFocus = false
	editor.BackgroundTransparency = 1
	editor.Font = Enum.Font.SourceSans
	editor.MultiLine = true
	editor.Text = ""
	editor.TextColor3 = Color3.fromRGB(255, 255, 255)
	editor.TextSize = 15
	editor.TextXAlignment = Enum.TextXAlignment.Left
	editor.TextYAlignment = Enum.TextYAlignment.Top

	uiaspectratioconstraint_3.Parent = editor
	uiaspectratioconstraint_3.AspectRatio = 1.916

	uiaspectratioconstraint_4.Parent = editorscroller
	uiaspectratioconstraint_4.AspectRatio = 2.250

	local execute = Instance.new("TextButton")
	execute.Name = "execute"
	execute.Parent = frame2
	execute.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
	execute.BackgroundTransparency = 0.800
	execute.BorderSizePixel = 0
	execute.Position = UDim2.new(0,3,0,245)
	execute.Size = UDim2.new(0, 82, 0, 30)
	execute.Font = Enum.Font.Arial
	execute.Text = "Execute"
	execute.TextColor3 = Color3.fromRGB(255, 255, 255)
	execute.TextSize = 15.000
	
	execute.MouseButton1Click:Connect(function()
		local scriptString = editor.Text
	    local success, errorMsg = pcall(function()
   	     local scriptFunc = loadstring(scriptString)
	        local result = scriptFunc()
	    end)

	    if not success then
	        warn("Error executing script: " .. errorMsg)
	    end
	end)

	local executec = Instance.new("TextButton")
	executec.Name = "execute"
	executec.Parent = frame2
	executec.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
	executec.BackgroundTransparency = 0.800
	executec.BorderSizePixel = 0
	executec.Position = UDim2.new(0,90,0,245)
	executec.Size = UDim2.new(0, 82, 0, 30)
	executec.Font = Enum.Font.Arial
	executec.Text = "Execute Clipboard"
	executec.TextColor3 = Color3.fromRGB(255, 255, 255)
	executec.TextSize = 10.500

	executec.MouseButton1Click:Connect(function()
	      local scriptString = getclipboard()
	      local success, errorMsg = pcall(function()
	          local scriptFunc = loadstring(scriptString)
	          scriptFunc()
	      end)
    
	      if not success then
	          warn("Error executing script: " .. errorMsg)
	      end
	  end)

	local clear = Instance.new("TextButton")
	clear.Name = "execute"
	clear.Parent = frame2
	clear.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
	clear.BackgroundTransparency = 0.800
	clear.BorderSizePixel = 0
	clear.Position = UDim2.new(0,179,0,245)
	clear.Size = UDim2.new(0, 82, 0, 30)
	clear.Font = Enum.Font.Arial
	clear.Text = "Clear"
	clear.TextColor3 = Color3.fromRGB(255, 255, 255)
	clear.TextSize = 15.000
	
	clear.MouseButton1Click:Connect(function()
		editor.Text = ""
	end)

	local clearr = Instance.new("TextButton")
	clearr.Name = "execute"
	clearr.Parent = frame2
	clearr.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
	clearr.BackgroundTransparency = 0.800
	clearr.BorderSizePixel = 0
	clearr.Position = UDim2.new(0,266,0,245)
	clearr.Size = UDim2.new(0, 82, 0, 30)
	clearr.Font = Enum.Font.Arial
	clearr.Text = "Paste"
	clearr.TextColor3 = Color3.fromRGB(255, 255, 255)
	clearr.TextSize = 15.000
	
	clearr.MouseButton1Click:Connect(function()
		 editor.Text = getclipboard()
	end)

	-- Tab 4
	local tet1 = Instance.new("TextLabel")
    tet1.Size = UDim2.new(0, 0, 0, 50)
    tet1.Position = UDim2.new(0, 175, 0, 200)
    tet1.Text = "And More Coming Soon"
    tet1.TextSize = 23
    tet1.TextColor3 = Color3.fromRGB(255, 255, 255)
    tet1.BackgroundTransparency = 3
    tet1.Parent = frame4
	
	local uu = Instance.new("TextButton")
	uu.Name = "heu3u3"
	uu.Size = UDim2.new(0, 150, 0, 25)
	uu.Position = UDim2.new(0,3,0,90)
	uu.BackgroundColor3 = Color3.fromRGB(20,20,20)
	uu.BorderSizePixel = 0
	uu.Font = Enum.Font.ArialBold
	uu.Text = "Language"
	uu.TextColor3 = Color3.fromRGB(255, 255, 255)
	uu.TextSize = 16
	uu.Parent = frame4
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = uu
	
	local ui = Instance.new("TextButton")
	ui.Name = "jsj"
	ui.Size = UDim2.new(0, 72, 0, 25)
	ui.Position = UDim2.new(0,3,0,120)
	ui.BackgroundColor3 = Color3.fromRGB(25,25,25)
	ui.BorderSizePixel = 0
	ui.Font = Enum.Font.ArialBold
	ui.Text = "Русский"
	ui.TextColor3 = Color3.fromRGB(255, 255, 255)
	ui.TextSize = 14
	ui.Parent = frame4
   
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = ui

	local uo = Instance.new("TextButton")
	uo.Name = "jsj"
	uo.Size = UDim2.new(0, 72, 0, 25)
	uo.Position = UDim2.new(0,81,0,120)
	uo.BackgroundColor3 = Color3.fromRGB(25,25,25)
	uo.BorderSizePixel = 0
	uo.Font = Enum.Font.ArialBold
	uo.Text = "English"
	uo.TextColor3 = Color3.fromRGB(255, 255, 255)
	uo.TextSize = 14
	uo.Parent = frame4
   
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = uo

    local lan = "eng"

    function change()
        if lan == "eng" then
            butto.Text = "List Of Updates"
            trext1.Text = "[June 16nd.2024] KraSus Zet Release"
            text51.Text = "Beta"
            text661.Text = "Do you want to close KraSus Zet without"
            text71.Text = "being able to open it again?"
            button11.Text = "No"
            buttonp1.Text = "Yes"
            texot1.Text = "Warning!"
            texot1.TextSize = 25
            text01.Text = "Krutoy Suslik"
            tex0t1.Text = "Krain1771"
            textn1.Text = "SLK Zet Team"
            beutton2.Text = "Creators"
            button5.Text = "Version 1.0.0"
            button6.Text = "List Of Updates"
            execute.Text = "Execute"
            executec.Text = "Execute clipboard"
            clear.Text = "Clear"
            clearr.Text = "Paste"
            tet1.Text = "And More Coming Soon"
            tet1.TextSize = 23
            uu.Text = "Language"
            executec.TextSize = 10.5
        elseif lan == "ru" then
            butto.Text = "Лист Обновлений"
            trext1.Text = "[02.16.2024] KraSus Zet Вышел"
            text51.Text = "Бета"
            text661.Text = "Вы хотите закрыть KraSus Zet, не"
            text71.Text = "имея возможности открыть его снова?"
            button11.Text = "Нет"
            buttonp1.Text = "Да"
            texot1.Text = "Предупреждение!"
            texot1.TextSize = 23
            text01.Text = "Крутой Суслик"
            tex0t1.Text = "Кран1771"
            textn1.Text = "SLK Zet Тима"
            beutton2.Text = "Создатели"
            button5.Text = "Версия 1.0.0"
            button6.Text = "Лист Обновлений"
            execute.Text = "Инжект"
            executec.Text = "Инжект Скопированого"
            executec.TextSize = 7
            clear.Text = "Очистить"
            clearr.Text = "Вставить"
            tet1.Text = "Многое Другое Уже Скоро"
            tet1.TextSize = 18
            uu.Text = "Язык"
        elseif lan ~= "ru" or "eng" then
            writefile("Krasus/language.txt", "eng")
        end
    end 
    change()
    if not isfile".Krasus/language.txt" then
        writefile("Krasus/language.txt", lan)
    elseif isfile"Krasus/language.txt" then
        lan = readfile("Krasus/language.txt")
        wait(0.2)
        change()
    end
    ui.MouseButton1Click:Connect(function()
        writefile("Krasus/language.txt", "ru")
        lan = "ru"
        change()
    end)

    uo.MouseButton1Click:Connect(function()
        writefile("Krasus/language.txt", "eng")
        lan = "eng"
        change()
    end)

    -- identifyexecutor()
    function identifyexecutor()
        return "KraSus Zet"
    end

	-- UNCheck()
	local function UNCheck()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KrutoySuslik/UNC/main/Check"))()
	end
end

createMenu() -- Script for creating a Gui
print("Gui Loaded")

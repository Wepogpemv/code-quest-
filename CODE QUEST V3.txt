	local function start()
	local dragSpeed = 0.25
	local UIS = cloneref(game:GetService('UserInputService'))
	local TweenService = cloneref(game:GetService('TweenService'))
	local a = Instance.new("ScreenGui")
	local Frame1 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local menu = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ImageButton = Instance.new("ImageButton")
	local ImageButton_2 = Instance.new("ImageButton")
	local ImageButton_3 = Instance.new("ImageButton")
	local TextButton = Instance.new("TextButton")
	local exec = Instance.new("Frame")
	local TextButton_2 = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextButton_3 = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local TextButton_4 = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UICorner_6 = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local TextBox = Instance.new("TextBox")
	local main = Instance.new("Frame")
	local cre = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local TextLabel_4 = Instance.new("TextLabel")
	local soc = Instance.new("Frame")
	local UICorner_8 = Instance.new("UICorner")
	local ImageButton_4 = Instance.new("ImageButton")
	local ImageButton_5 = Instance.new("ImageButton")
	local sc = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local dexbyp = Instance.new("TextButton")
	local UICorner_10 = Instance.new("UICorner")
	local dexv2 = Instance.new("TextButton")
	local UICorner_11 = Instance.new("UICorner")
	local BTools = Instance.new("TextButton")
	local UICorner_12 = Instance.new("UICorner")
	local BTools_2 = Instance.new("TextButton")
	local UICorner_13 = Instance.new("UICorner")
	local inf = Instance.new("TextButton")
	local UICorner_14 = Instance.new("UICorner")
	local set = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local TextLabel_5 = Instance.new("TextLabel")
	local UICorner_15 = Instance.new("UICorner")
	local Frame_3 = Instance.new("Frame")
	local UICorner_16 = Instance.new("UICorner")
	local ImageButton_6 = Instance.new("ImageButton")
	local function addStroke(instance)
		local stroke = Instance.new("UIStroke")
		stroke.Parent = instance
		stroke.Color = Color3.fromRGB(255, 255, 255)
		stroke.Thickness = 2
	end
	addStroke(Frame1)
	addStroke(Frame)
	addStroke(ScrollingFrame)
	addStroke(Frame_3)
	a.Name = "a"
	a.Parent = gethui()
	a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame1.Name = "Frame1"
	Frame1.Parent = a
	Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame1.BorderSizePixel = 0
	Frame1.Position = UDim2.new(0.0046293214, 0, 0.00944680255, 0)
	Frame1.Size = UDim2.new(0.491141886, 0, 0.746928811, 0)

	UICorner.Parent = Frame1

	menu.Name = "menu"
	menu.Parent = Frame1
	menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	menu.BackgroundTransparency = 1.000
	menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
	menu.BorderSizePixel = 0
	menu.Position = UDim2.new(0.891049206, 0, 0.826569378, 0)
	menu.Size = UDim2.new(0.107305937, 0, 0.140794218, 0)
	menu.Font = Enum.Font.SourceSans
	menu.Text = ">"
	menu.TextColor3 = Color3.fromRGB(255, 255, 255)
	menu.TextSize = 30.000

	Frame.Parent = Frame1
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(1.02737153, 0, -0.000922358013, 0)
	Frame.Size = UDim2.new(0.109589048, 0, 1, 0)
	Frame.Visible = false
	UICorner_2.Parent = Frame

	ImageButton.Parent = Frame
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.0160001125, 0, -0.00327077927, 0)
	ImageButton.Size = UDim2.new(1, 0, 0.151624545, 0)
	ImageButton.Image = "rbxassetid://17255706533"
	ImageButton.ImageColor3 = Color3.fromRGB(73, 2, 235)
	ImageButton_2.Parent = Frame
	ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton_2.BackgroundTransparency = 1.000
	ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton_2.BorderSizePixel = 0
	ImageButton_2.Position = UDim2.new(0.0838292465, 0, 0.145203963, 0)
	ImageButton_2.Size = UDim2.new(0.833333313, 0, 0.148014441, 0)
	ImageButton_2.Image = "rbxassetid://17722864840"

	ImageButton_3.Parent = Frame
	ImageButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton_3.BackgroundTransparency = 1.000
	ImageButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton_3.BorderSizePixel = 0
	ImageButton_3.Position = UDim2.new(0.0958393887, 0, 0.438434094, 0)
	ImageButton_3.Size = UDim2.new(0.833333313, 0, 0.148014441, 0)
	ImageButton_3.Image = "rbxassetid://17722871702"

	TextButton.Parent = Frame
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1.000
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.0638300553, 0, 0.84970808, 0)
	TextButton.Size = UDim2.new(0.916666687, 0, 0.148014441, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "X"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 34.000
	TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	exec.Name = "exec"
	exec.Parent = Frame1
	exec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	exec.BackgroundTransparency = 1.000
	exec.BorderColor3 = Color3.fromRGB(0, 0, 0)
	exec.BorderSizePixel = 0
	exec.Position = UDim2.new(1.04512253e-07, 0, 0.0108303251, 0)
	exec.Size = UDim2.new(0.906392634, 0, 0.985559583, 0)
	exec.Visible = false
	TextButton_2.Parent = exec
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.BackgroundTransparency = 1.000
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0.0138492882, 0, 0.821621537, 0)
	TextButton_2.Size = UDim2.new(0.309823692, 0, 0.142857149, 0)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = "Execute"
	TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.TextSize = 14.000
	local uiStroke = Instance.new("UIStroke") 
	uiStroke.Thickness = 2
	uiStroke.Color = Color3.fromRGB(255, 255, 255)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	uiStroke.Parent = TextButton_2
	UICorner_3.Parent = TextButton_2

	TextButton_3.Parent = exec
	TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.BackgroundTransparency = 1.000
	TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_3.BorderSizePixel = 0
	TextButton_3.Position = UDim2.new(0.342140347, 0, 0.821621537, 0)
	TextButton_3.Size = UDim2.new(0.29722923, 0, 0.139194146, 0)
	TextButton_3.Font = Enum.Font.SourceSans
	TextButton_3.Text = "Clear"
	TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.TextSize = 14.000
	local uiStroke2 = Instance.new("UIStroke") 
	uiStroke2.Thickness = 2
	uiStroke2.Color = Color3.fromRGB(255, 255, 255)
	uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	uiStroke2.Parent = TextButton_3
	UICorner_4.Parent = TextButton_3

	TextButton_4.Parent = exec
	TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_4.BackgroundTransparency = 1.000
	TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_4.BorderSizePixel = 0
	TextButton_4.Position = UDim2.new(0.660127521, 0, 0.825284541, 0)
	TextButton_4.Size = UDim2.new(0.337531477, 0, 0.139194146, 0)
	TextButton_4.Font = Enum.Font.SourceSans
	TextButton_4.Text = "Execute clipboard"
	TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_4.TextSize = 14.000
	local uiStroke3 = Instance.new("UIStroke") 
	uiStroke3.Thickness = 2
	uiStroke3.Color = Color3.fromRGB(255, 255, 255)
	uiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	uiStroke3.Parent = TextButton_4
	UICorner_5.Parent = TextButton_4

	ScrollingFrame.Parent = exec
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderColor3 = Color3.fromRGB(156, 156, 156)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.0125944586, 0, 0.025641026, 0)
	ScrollingFrame.Size = UDim2.new(0.984886587, 0, 0.754578769, 0)
	ScrollingFrame.CanvasSize = UDim2.new(0, 900, 0, 412)
	ScrollingFrame.ScrollBarThickness = 10

	UICorner_6.Parent = ScrollingFrame

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	TextBox.Parent = ScrollingFrame
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(-4.49935413e-08, 0, 0, 0)
	TextBox.Size = UDim2.new(0, 668, 0, 443)
	TextBox.Font = Enum.Font.Code
	TextBox.MultiLine = true
	TextBox.Text = "Your scripts"
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 13.000
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.TextYAlignment = Enum.TextYAlignment.Top
	TextBox.RichText  = true
	TextBox.ClearTextOnFocus = false
	main.Name = "main"
	main.Parent = Frame1
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.BackgroundTransparency = 1.000
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 0
	main.Position = UDim2.new(1.04512253e-07, 0, 0.0108303251, 0)
	main.Size = UDim2.new(0.906392634, 0, 0.985559583, 0)
	main.Visible = true

	cre.Name = "cre"
	cre.Parent = main
	cre.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	cre.BorderColor3 = Color3.fromRGB(0, 0, 0)
	cre.BorderSizePixel = 0
	cre.Position = UDim2.new(0.0225040615, 0, 0.0219780225, 0)
	cre.Size = UDim2.new(0.440806031, 0, 0.677655697, 0)

	UICorner_7.Parent = cre

	TextLabel.Parent = cre
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 0, 0.480457366, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.270270258, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Binary"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 25.000

	TextLabel_2.Parent = cre
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0, 0, 0.724636078, 0)
	TextLabel_2.Size = UDim2.new(1, 0, 0.270270258, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "SLK ZET"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 25.000

	TextLabel_3.Parent = cre
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Position = UDim2.new(0, 0, -0.0378378369, 0)
	TextLabel_3.Size = UDim2.new(1, 0, 0.270270258, 0)
	TextLabel_3.Font = Enum.Font.SourceSans
	TextLabel_3.Text = "Creators"
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextSize = 60.000
	TextLabel_3.TextWrapped = true

	TextLabel_4.Parent = cre
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.BackgroundTransparency = 1.000
	TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_4.BorderSizePixel = 0
	TextLabel_4.Position = UDim2.new(0, 0, 0.23555091, 0)
	TextLabel_4.Size = UDim2.new(1, 0, 0.270270258, 0)
	TextLabel_4.Font = Enum.Font.SourceSans
	TextLabel_4.Text = "CODE QUEST"
	TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.TextSize = 25.000

	soc.Name = "soc"
	soc.Parent = main
	soc.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	soc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	soc.BorderSizePixel = 0
	soc.Position = UDim2.new(0.0225040615, 0, 0.756560504, 0)
	soc.Size = UDim2.new(0.440806031, 0, 0.216117218, 0)

	UICorner_8.Parent = soc

	ImageButton_4.Parent = soc
	ImageButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton_4.BackgroundTransparency = 1.000
	ImageButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton_4.BorderSizePixel = 0
	ImageButton_4.Position = UDim2.new(0.0400000885, 0, 0.0310084447, 0)
	ImageButton_4.Size = UDim2.new(0.400000006, 0, 0.949152529, 0)
	ImageButton_4.Image = "rbxassetid://17266375941"

	ImageButton_5.Parent = soc
	ImageButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton_5.BackgroundTransparency = 1.000
	ImageButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton_5.BorderSizePixel = 0
	ImageButton_5.Position = UDim2.new(0.550000012, 0, 0.0310084447, 0)
	ImageButton_5.Size = UDim2.new(0.400000006, 0, 0.949152529, 0)
	ImageButton_5.Image = "rbxassetid://17273571690"

	sc.Name = "sc"
	sc.Parent = main
	sc.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	sc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	sc.BorderSizePixel = 0
	sc.Position = UDim2.new(0.498823583, 0, 0.0219780225, 0)
	sc.Size = UDim2.new(0.486146092, 0, 0.941391945, 0)

	UICorner_9.Parent = sc

	dexbyp.Name = "dexbyp"
	dexbyp.Parent = sc
	dexbyp.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	dexbyp.BorderColor3 = Color3.fromRGB(255, 255, 255)
	dexbyp.BorderSizePixel = 0
	dexbyp.Position = UDim2.new(0.0281521082, 0, 0.0155642023, 0)
	dexbyp.Size = UDim2.new(0.937823832, 0, 0.16731517, 0)
	dexbyp.Font = Enum.Font.SourceSans
	dexbyp.Text = "Bypassed Dark Dex V3"
	dexbyp.TextColor3 = Color3.fromRGB(255, 255, 255)
	dexbyp.TextSize = 23.000

	UICorner_10.Parent = dexbyp

	dexv2.Name = "dex v2"
	dexv2.Parent = sc
	dexv2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	dexv2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	dexv2.BorderSizePixel = 0
	dexv2.Position = UDim2.new(0.0281521082, 0, 0.217898831, 0)
	dexv2.Size = UDim2.new(0.937823832, 0, 0.16731517, 0)
	dexv2.Font = Enum.Font.SourceSans
	dexv2.Text = "Dark Dex V2"
	dexv2.TextColor3 = Color3.fromRGB(255, 255, 255)
	dexv2.TextSize = 23.000

	UICorner_11.Parent = dexv2

	BTools.Name = "BTools"
	BTools.Parent = sc
	BTools.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	BTools.BorderColor3 = Color3.fromRGB(255, 255, 255)
	BTools.BorderSizePixel = 0
	BTools.Position = UDim2.new(0.0281521082, 0, 0.416342407, 0)
	BTools.Size = UDim2.new(0.937823832, 0, 0.16731517, 0)
	BTools.Font = Enum.Font.SourceSans
	BTools.Text = "BTools"
	BTools.TextColor3 = Color3.fromRGB(255, 255, 255)
	BTools.TextSize = 23.000

	UICorner_12.Parent = BTools

	BTools_2.Name = "BTools+"
	BTools_2.Parent = sc
	BTools_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	BTools_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	BTools_2.BorderSizePixel = 0
	BTools_2.Position = UDim2.new(0.0279999487, 0, 0.613000035, 0)
	BTools_2.Size = UDim2.new(0.937823832, 0, 0.16731517, 0)
	BTools_2.Font = Enum.Font.SourceSans
	BTools_2.Text = "BTools+"
	BTools_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	BTools_2.TextSize = 23.000

	UICorner_13.Parent = BTools_2

	inf.Name = "inf"
	inf.Parent = sc
	inf.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	inf.BorderColor3 = Color3.fromRGB(255, 255, 255)
	inf.BorderSizePixel = 0
	inf.Position = UDim2.new(0.0279999487, 0, 0.808000028, 0)
	inf.Size = UDim2.new(0.937823832, 0, 0.16731517, 0)
	inf.Font = Enum.Font.SourceSans
	inf.Text = "Infinite Yield"
	inf.TextColor3 = Color3.fromRGB(255, 255, 255)
	inf.TextSize = 23.000

	UICorner_14.Parent = inf

	set.Name = "set"
	set.Parent = Frame1
	set.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	set.BackgroundTransparency = 1.000
	set.BorderColor3 = Color3.fromRGB(0, 0, 0)
	set.BorderSizePixel = 0
	set.Position = UDim2.new(1.04512253e-07, 0, 0.0108303251, 0)
	set.Size = UDim2.new(0.906392634, 0, 0.985559583, 0)
	set.Visible = false


	TextLabel_5.Parent = set
	TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.BackgroundTransparency = 1.000
	TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_5.BorderSizePixel = 0
	TextLabel_5.Position = UDim2.new(0.0907161459, 0, 0.152020633, 0)
	TextLabel_5.Size = UDim2.new(0, 200, 0, 50)
	TextLabel_5.Font = Enum.Font.SourceSans
	TextLabel_5.Text = "Unlock fps"
	TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.TextSize = 49.000

	local TextButton_s = Instance.new("TextButton")
	TextButton_s.Parent = set
	TextButton_s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_s.BackgroundTransparency = 1.000
	TextButton_s.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_s.BorderSizePixel = 0
	TextButton_s.Position = UDim2.new(0.0181432292, 0, 0.147080407, 0)
	TextButton_s.Size = UDim2.new(0, 57, 0, 50)
	TextButton_s.Font = Enum.Font.SourceSans
	TextButton_s.Text = "☐"
	TextButton_s.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_s.TextScaled = true
	local das = false
	TextButton_s.MouseButton1Click:Connect(function()
		if das == false then
			TextButton_s.Text = "✓"
			setfpscap(0)
			
			das = true
		elseif das == true then
			TextButton_s.Text = "☐"
			setfpscap(60)
			das = false
		end
	end)
	
	
	Frame_3.Parent = a
	Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.853845, 0, 0.029159002, 0)
	Frame_3.Size = UDim2.new(0.0724639967, 0, 0.156782463, 0)
	Frame_3.Visible = false
	UICorner_16.Parent = Frame_3

	ImageButton_6.Parent = Frame_3
	ImageButton_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton_6.BackgroundTransparency = 1.000
	ImageButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton_6.BorderSizePixel = 0
	ImageButton_6.Position = UDim2.new(-0.249772966, 0, -0.0525355525, 0)
	ImageButton_6.Size = UDim2.new(1.4906255, 0, 1.56909943, 0)
	ImageButton_6.Image = "rbxassetid://103499747572504"


	local function enableDrag(frame, handle)
		local dragToggle = nil
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
			TweenService:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end
		local inputObject = handle or frame

		inputObject.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragToggle then
				updateInput(input)
			end
		end)
	end


	enableDrag(Frame1)
	enableDrag(Frame_3, ImageButton_6)

	local da = false
	menu.MouseButton1Click:Connect(function()
		if da == false then
			menu.Text = "<"
			Frame.Visible = true
			
			da = true
		elseif da == true then
			menu.Text = ">"
			Frame.Visible = false
			da = false
		end
	end)
	TextButton.MouseButton1Click:Connect(function()
		Frame1.Visible = false
		Frame_3.Visible = true
	end)

	ImageButton_6.MouseButton1Click:Connect(function()
		Frame1.Visible = true
		Frame_3.Visible = false
	end)



	TextButton_2.MouseButton1Click:Connect(function()
		local scriptString = TextBox.Text
		local success, errorMsg = pcall(function()
			local scriptFunc = loadstring(scriptString)
			local result = scriptFunc()
		end)

		if not success then
			warn("Error" .. errorMsg)
		end
	end)

	TextButton_3.MouseButton1Click:Connect(function()
		TextBox.Text = ""
	end)

	dexbyp.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end)

	dexv2.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
	end)

	BTools.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
	end)

	BTools_2.MouseButton1Click:Connect(function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end)

	inf.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)

	TextButton_4.MouseButton1Click:Connect(function()
		  local scriptString = getclipboard()
		  local success, errorMsg = pcall(function()
			  local scriptFunc = loadstring(scriptString)
			  scriptFunc()
		  end)
		
		  if not success then
			  warn("Error executing script: " .. errorMsg)
		  end
	end)	

	if not isfolder("Autoexec") then
		makefolder("Autoexec")
	end
	task.wait()
	local files = listfiles("Autoexec")
	if #files >= 1 then
		for _,v in pairs(files) do
			local dadasd = readfile(v)
			loadstring(dadasd)()
		end
	end
	local highlightLabel = Instance.new("TextLabel")
	highlightLabel.Parent = TextBox
	highlightLabel.BackgroundTransparency = 1
	highlightLabel.Size = UDim2.new(1, 0, 1, 0)
	highlightLabel.TextSize = 13
	highlightLabel.Font = Enum.Font.Code
	highlightLabel.TextXAlignment = Enum.TextXAlignment.Left
	highlightLabel.TextYAlignment = Enum.TextYAlignment.Top
	highlightLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	highlightLabel.RichText = true
	highlightLabel.Text = ""
	local editor = TextBox
	local keywords = {
		{words = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}, color = Color3.fromRGB(255, 0, 0)},
		{words = {"FireServer", "getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "coroutine", "delay", "require", "spawn", "time"}, color = Color3.fromRGB(0, 255, 0)},
		{words = {"cache.invalidate", "cache.iscached", "cache.replace", "cloneref", "compareinstances", "checkcaller", "clonefunction", "getcallingscript", "getscriptclosure", "hookfunction", "iscclosure", "islclosure", "istartecutorclosure", "loadstring", "newcclosure", "rconsoleclear", "rconsolecreate", "rconsoledestroy", "rconsoleinput", "rconsoleprint", "rconsolesettitle", "crypt.base64encode", "crypt.base64decode", "crypt.encrypt", "crypt.decrypt", "crypt.generatebytes", "crypt.generatekey", "crypt.hash", "debug.getconstant", "debug.getconstants", "debug.getinfo", "debug.getproto", "debug.getprotos", "debug.getstack", "debug.getupvalue", "debug.getupvalues", "debug.setconstant", "debug.setstack", "debug.setupvalue", "readfile", "listfiles", "writefile", "makefolder", "appendfile", "isfile", "isfolder", "delfolder", "delfile", "loadfile", "dofile", "isrbxactive", "mouse1click", "mouse1press", "mouse1release", "mouse2click", "mouse2press", "mouse2release", "mousemoveabs", "mousemoverel", "mousescroll", "fireclickdetector", "getcallbackvalue", "getconnections", "getcustomasset", "gethiddenproperty", "sethiddenproperty", "gethui", "getinstances", "getnilinstances", "isscriptable", "setscriptable", "setrbxclipboard", "getrawmetatable", "hookmetamethod", "getnamecallmethod", "isreadonly", "setrawmetatable", "setreadonly", "identifyexecutor", "lz4compress", "lz4decompress", "messagebox", "queue_on_teleport", "request", "setclipboard", "setfpscap", "getgc", "getgenv", "getloadedmodules", "getrenv", "getrunningscripts", "getscriptbytecode", "getscripthash", "getscripts", "getsenv", "getthreadidentity", "setthreadidentity", "Drawing", "Drawing.new", "Drawing.Fonts", "isrenderobj", "getrenderproperty", "setrenderproperty", "cleardrawcache", "WebSocket", "WebSocket.connect"}, color = Color3.fromRGB(0, 0, 255)}
	}

	local defaultColor = Color3.fromRGB(255, 255, 255)

	local function applySyntaxHighlighting()
		local text = editor.Text
		local highlightedText = text
		
		local allKeywords = {}
		for _, keywordGroup in pairs(keywords) do
			for _, word in ipairs(keywordGroup.words) do
				table.insert(allKeywords, word)
			end
		end
		highlightedText = highlightedText:gsub("(%w+)", function(word)
			for _, keyword in ipairs(allKeywords) do
				if word == keyword then
					return word
				end
			end
			return "<font color=\"rgb(" .. math.floor(defaultColor.r * 255) .. "," .. math.floor(defaultColor.g * 255) .. "," .. math.floor(defaultColor.b * 255) .. ")\">" .. word .. "</font>"
		end)
		for _, keywordGroup in pairs(keywords) do
			for _, word in ipairs(keywordGroup.words) do
				local escapedWord = word:gsub("([%%%^%$%(%)%.%[%]%*%+%-%?])", "%%%1")
				local pattern = "(%f[%w]" .. escapedWord .. "%f[%W])"
				highlightedText = highlightedText:gsub(pattern, function(match)
					return "<font color=\"rgb(" .. math.floor(keywordGroup.color.r * 255) .. "," .. math.floor(keywordGroup.color.g * 255) .. "," .. math.floor(keywordGroup.color.b * 255) .. ")\">" .. match .. "</font>"
				end)
			end
		end

		highlightLabel.Text = highlightedText
	end

	editor:GetPropertyChangedSignal("Text"):Connect(applySyntaxHighlighting)

	applySyntaxHighlighting()
	local ImageButton_4 = Instance.new("ImageButton")
	ImageButton_4.Parent = Frame
ImageButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_4.BackgroundTransparency = 1.000
ImageButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_4.BorderSizePixel = 0
ImageButton_4.Position = UDim2.new(0.083828859, 0, 0.292052537, 0)
ImageButton_4.Size = UDim2.new(0.833333313, 0, 0.148014441, 0)
ImageButton_4.Image = "rbxassetid://106923464267057"

local sc = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Frame_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UICorner_6 = Instance.new("UICorner")
local TextBox_2 = Instance.new("TextBox")
local TextButton_3 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

sc.Name = "sc"
sc.Parent = Frame1
sc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sc.BackgroundTransparency = 1
sc.BorderColor3 = Color3.fromRGB(0, 0, 0)
sc.BorderSizePixel = 0
sc.Position = UDim2.new(0, 0, 0.01, 0)
sc.Size = UDim2.new(0.906392634, 0, 0.985559583, 0) -- Уменьшил размер фрейма
sc.Visible = false
ScrollingFrame.Parent = sc
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0116163949, 0, 0.00459968671, 0)
ScrollingFrame.Size = UDim2.new(0.969980061, 0, 0.771001935, 0)
UICorner.Parent = ScrollingFrame

Frame.Parent = ScrollingFrame
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, -20, 0, 55) -- Установил размер фрейма в процентах от ширины родителя
Frame.Position = UDim2.new(0, 10, 0, 10) -- Отступы от краёв

UICorner_2.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0.5, -10, 1, 0) -- Назначаем размер как 50% от ширины фрейма
TextLabel.Position = UDim2.new(0, 10, 0, 0) -- Отступ слева
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Script Name"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.55, 0, 0.15, 0)
TextButton.Size = UDim2.new(0.2, -10, 0.7, 0) -- Кнопка "Delete" занимает 20% ширины фрейма
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Delete"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

UICorner_3.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.8, 0, 0.15, 0)
TextButton_2.Size = UDim2.new(0.2, -10, 0.7, 0) -- Кнопка "Execute" занимает 20% ширины фрейма
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Execute"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true

UICorner_4.Parent = TextButton_2

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

Frame_2.Parent = sc
Frame_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.83, 0)
Frame_2.Size = UDim2.new(1, 0, 0.15, 0) -- Уменьшил размер фрейма

UICorner_5.Parent = Frame_2

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0.338323355, 0, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Script Name"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

ScrollingFrame_2.Parent = Frame_2
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(156, 156, 156)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0.349420786, 0, 0.108108111, 0)
ScrollingFrame_2.Size = UDim2.new(0.378599077, 0, 0.76448977, 0)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 900, 0, 412)
ScrollingFrame_2.ScrollBarThickness = 10

UICorner_6.Parent = ScrollingFrame_2

TextBox_2.Parent = ScrollingFrame_2
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BackgroundTransparency = 1.000
TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(-4.49935413e-08, 0, 0, 0)
TextBox_2.Size = UDim2.new(0, 668, 0, 443)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.MultiLine = true
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextSize = 14.000
TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
TextBox_2.TextYAlignment = Enum.TextYAlignment.Top
addStroke(ScrollingFrame_2)
TextButton_3.Parent = Frame_2
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.744011879, 0, 0.108108111, 0)
TextButton_3.Size = UDim2.new(0.239520952, 0, 0.729729712, 0)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Create"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextWrapped = true
local uiStroke5 = Instance.new("UIStroke") 
uiStroke5.Thickness = 2
uiStroke5.Color = Color3.fromRGB(255, 255, 255)
uiStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

uiStroke5.Parent = TextButton_3
UICorner_7.Parent = TextButton_3


local TextBoxScriptName = TextBox 
local TextBoxScriptContent = TextBox_2 
local CreateButton = TextButton_3
local ScrollingFrameScripts = ScrollingFrame
local TemplateFrame = Instance.new("Frame")
TemplateFrame.Name = "TemplateFrame"
TemplateFrame.Size = UDim2.new(0, 500, 0, 55)
TemplateFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local UICorner_2 = Instance.new("UICorner")
UICorner_2.Parent = TemplateFrame

local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "TextLabel"
TextLabel.Size = UDim2.new(0.4, 0, 0.909090936, 0)
TextLabel.Position = UDim2.new(0.02, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Script Name"
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.Parent = TemplateFrame

local TextButton = Instance.new("TextButton")
TextButton.Name = "TextButton"
TextButton.Size = UDim2.new(0.15, 0, 0.727272749, 0)
TextButton.Position = UDim2.new(0.46, 0, 0.129629627, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 2
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Text = "Delete"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.Parent = TemplateFrame
local uiStroke7 = Instance.new("UIStroke") 
uiStroke7.Thickness = 2
uiStroke7.Color = Color3.fromRGB(255, 255, 255)
uiStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

uiStroke7.Parent = TextButton
local UICorner_3 = Instance.new("UICorner")
UICorner_3.Parent = TextButton

local TextButton_2 = Instance.new("TextButton")
TextButton_2.Name = "TextButton_2"
TextButton_2.Size = UDim2.new(0.25, 0, 0.727272749, 0) 
TextButton_2.Position = UDim2.new(0.63, 0, 0.129629627, 0)
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 2
TextButton_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Text = "Execute"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.Parent = TemplateFrame
local uiStroke6 = Instance.new("UIStroke") 
uiStroke6.Thickness = 2
uiStroke6.Color = Color3.fromRGB(255, 255, 255)
uiStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

uiStroke6.Parent = TextButton_2
local UICorner_4 = Instance.new("UICorner")
UICorner_4.Parent = TextButton_2

local function UpdateScriptList()
    -- Очистка старых элементов
    for _, child in pairs(ScrollingFrameScripts:GetChildren()) do
        if child:IsA("Frame") and child ~= TemplateFrame then
            child:Destroy()
        end
    end
    
    -- Создание папки, если её нет
    if not isfolder("scripts") then
        makefolder("scripts")
    end

    -- Получение списка файлов
    local files = listfiles("scripts/")

    for _, file in ipairs(files) do
        local scriptName = file:match("([^/]+)%.lua$")
        local newFrame = TemplateFrame:Clone()
        
        -- Настройка размеров и позиций
        newFrame.Size = UDim2.new(1, 0, 0, 55)
        newFrame.TextLabel.Size = UDim2.new(0.4, 0, 1, 0)
        newFrame.TextButton.Size = UDim2.new(0.2, 0, 0.7, 0)
        newFrame.TextButton_2.Size = UDim2.new(0.3, 0, 0.7, 0)
        
        -- Пропорции для кнопок
        newFrame.TextButton.Position = UDim2.new(0.4, 0, 0.15, 0)
        newFrame.TextButton_2.Position = UDim2.new(0.65, 0, 0.15, 0)
        
        newFrame.TextLabel.Text = scriptName
        newFrame.Parent = ScrollingFrameScripts
        
        -- Обработчики событий
        newFrame.TextButton.MouseButton1Click:Connect(function()
            delfile(file)
            UpdateScriptList()
        end)

        newFrame.TextButton_2.MouseButton1Click:Connect(function()
            local scriptString = readfile(file)
            local success, errorMsg = pcall(function()
                local scriptFunc = loadstring(scriptString)
                local result = scriptFunc()
            end)

            if not success then
                warn("Error: " .. errorMsg)
            end
        end)
    end
end

CreateButton.MouseButton1Click:Connect(function()
    local scriptName = TextBoxScriptName.Text
    local scriptContent = TextBoxScriptContent.Text

    if scriptName ~= "" and scriptContent ~= "" then
        writefile("scripts/" .. scriptName .. ".lua", scriptContent)
        UpdateScriptList()
        TextBoxScriptName.Text = ""
        TextBoxScriptContent.Text = ""
    else
        print("Введите название и содержимое скрипта.")
    end
end)

UpdateScriptList()

	ImageButton.MouseButton1Click:Connect(function()
		exec.Visible = false
		set.Visible = false
		main.Visible = true
		sc.Visible = false
		ImageButton_4.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton_3.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton.ImageColor3 = Color3.fromRGB(73, 2, 235)
	end)

	ImageButton_2.MouseButton1Click:Connect(function()
		exec.Visible = true
		set.Visible = false
		main.Visible = false
		sc.Visible = false
		ImageButton_4.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton_3.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton_2.ImageColor3 = Color3.fromRGB(73, 2, 235)
		ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
	end)

	ImageButton_3.MouseButton1Click:Connect(function()
		exec.Visible = false
		set.Visible = true
		main.Visible = false
		sc.Visible = false
		ImageButton_4.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton_3.ImageColor3 = Color3.fromRGB(73, 2, 235)
		ImageButton_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
	end)
	ImageButton_4.MouseButton1Click:Connect(function()
		exec.Visible = false
		set.Visible = false
		main.Visible = false
		sc.Visible = true
		ImageButton_4.ImageColor3 = Color3.fromRGB(73, 2, 235)
		ImageButton_3.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)		
	end)

	end

	local HttpService = cloneref(game:GetService("HttpService"))
	local player = game.Players.LocalPlayer
	local menu = Instance.new("ScreenGui")
	menu.Parent = gethui()

	local frrame = Instance.new("Frame")
	frrame.Size = UDim2.new(1, 0, 2, 0)
	frrame.Position = UDim2.new(0, 0, 0, -50)
	frrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frrame.BackgroundTransparency = 0.6
	frrame.BorderSizePixel = 0
	frrame.Parent = menu
	frrame.Visible = true

	local Gui1oo = Instance.new("Frame")
	Gui1oo.Size = UDim2.new(0, 370, 0, 200)
	Gui1oo.Position = UDim2.new(0.5, -185, 0.5, -100)
	Gui1oo.BackgroundColor3 = Color3.fromRGB(0,0,0)
	Gui1oo.BackgroundTransparency = 0.1
	Gui1oo.BorderSizePixel = 2
	Gui1oo.Parent = menu
	Gui1oo.Visible = true

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = Gui1oo

	local text1 = Instance.new("TextLabel")
	text1.Size = UDim2.new(0, 0, 0, 50)
	text1.Position = UDim2.new(0,180,0,20)
	text1.Text = "Code Quest"
	text1.TextSize = 30
	text1.TextColor3 = Color3.fromRGB(220,220,220)
	text1.BackgroundTransparency = 10
	text1.Parent = Gui1oo

	local text2 = Instance.new("TextLabel")
	text2.Size = UDim2.new(0, 0, 0, 50)
	text2.Position = UDim2.new(0,5,0,-15)
	text2.Text = "Version: 1.0.0"
	text2.TextSize = 9
	text2.TextColor3 = Color3.fromRGB(230,230,230)
	text2.BackgroundTransparency = 10
	text2.Parent = Gui1oo
	text2.TextXAlignment = Enum.TextXAlignment.Left

	local closeButton = Instance.new("TextButton")
	closeButton.Size = UDim2.new(0, 20, 0, 20)
	closeButton.Position = UDim2.new(1, -25, 0, 5)
	closeButton.Text = "X"
	closeButton.TextSize = 18
	closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	closeButton.Parent = Gui1oo

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = closeButton

	local keyInput = Instance.new("TextBox")
	keyInput.Size = UDim2.new(0, 333, 0, 30)
	keyInput.Position = UDim2.new(0,20,0,80)
	keyInput.PlaceholderText = "Enter key"
	keyInput.Text = ""
	keyInput.Parent = Gui1oo
	keyInput.TextColor3 = Color3.fromRGB(235,235,235)
	keyInput.BackgroundColor3 = Color3.fromRGB(24,24,24)

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = keyInput

	local keyButton = Instance.new("TextButton")
	keyButton.Size = UDim2.new(0, 150, 0, 40)
	keyButton.Position = UDim2.new(0,203,0,130)
	keyButton.Text = "Continue"
	keyButton.TextSize = 17
	keyButton.Parent = Gui1oo
	keyButton.TextColor3 = Color3.fromRGB(235,235,235)
	keyButton.BackgroundColor3 = Color3.fromRGB(24,24,24)

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = keyButton

	local copis = Instance.new("TextButton")
	copis.Size = UDim2.new(0, 150, 0, 40)
	copis.Position = UDim2.new(0,20,0,130)
	copis.Text = "Copy Link"
	copis.TextSize = 17
	copis.Parent = Gui1oo
	copis.TextColor3 = Color3.fromRGB(235,235,235)
	copis.BackgroundColor3 = Color3.fromRGB(24,24,24)

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 3)
	corner.Parent = copis
	local hwid = string.gsub(game:GetService("RbxAnalyticsService"):GetClientId(), "-", "")
	copis.MouseButton1Click:Connect(function()
		setclipboard("https://keyrblx.com/getkey/AlysseAndroid?hwid=" .. hwid)
	end)

	if player.Name == "proplayeronehun" then
		Gui1oo:Destroy()
		frrame:Destroy()
		start()
	end

	local a = game:HttpGet("https://api.keyrblx.com/api/key/me?name=AlysseAndroid&hwid=" .. hwid)
	local data = HttpService:JSONDecode(a)
	if data.finish == true then
		Gui1oo:Destroy()
		frrame:Destroy()
		start()
	end



	keyButton.MouseButton1Click:Connect(function()
	local a = game:HttpGet("https://api.keyrblx.com/api/key/me?name=AlysseAndroid&hwid=" .. hwid)
	local data = HttpService:JSONDecode(a)
	if data.finish == true then
		keyInput.Text = "Correct key"
		wait(1)
		Gui1oo:Destroy()
		frrame:Destroy()
		start()
	else
		keyInput.PlaceholderText = "Invalid key"
		keyInput.Text = ""
		wait(3)
		keyInput.PlaceholderText = "Enter key"
	end
	end)

	closeButton.MouseButton1Click:Connect(function()
	Gui1oo:Destroy()
	frrame:Destroy()
	end)

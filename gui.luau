local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local QuestX = {}
QuestX.__index = QuestX

-- Улучшенная цветовая схема
local COLORS = {
    BACKGROUND = Color3.fromRGB(15, 15, 20),
    ACCENT = Color3.fromRGB(255, 0, 0),
    ACCENT2 = Color3.fromRGB(200, 0, 0),
    TEXT = Color3.fromRGB(255, 255, 255),
    SUBTEXT = Color3.fromRGB(200, 200, 200),
    BORDER = Color3.fromRGB(30, 30, 40),
    HOVER = Color3.fromRGB(40, 40, 50),
    GLOW = Color3.fromRGB(255, 0, 0),
    SUCCESS = Color3.fromRGB(0, 255, 0),
    ERROR = Color3.fromRGB(255, 0, 0)
}

-- Анимации
local ANIMATIONS = {
    HOVER = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    CLICK = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    GLOW = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
    SLIDE = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
}

function QuestX.new()
    local self = setmetatable({}, QuestX)
    
    -- Создаем основной экран
    self.screenGui = Instance.new("ScreenGui")
    self.screenGui.Name = "QuestX"
    self.screenGui.ResetOnSpawn = false
    
    -- Создаем эффект размытия фона
    local blur = Instance.new("BlurEffect")
    blur.Size = 0
    blur.Parent = game:GetService("Lighting")
    
    -- Создаем главный контейнер
    self.mainFrame = Instance.new("Frame")
    self.mainFrame.Name = "MainFrame"
    self.mainFrame.Size = UDim2.new(0, 500, 0, 600)
    self.mainFrame.Position = UDim2.new(0.5, -250, 0.5, -300)
    self.mainFrame.BackgroundColor3 = COLORS.BACKGROUND
    self.mainFrame.BorderSizePixel = 0
    self.mainFrame.Parent = self.screenGui
    
    -- Добавляем скругление углов
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 12)
    uiCorner.Parent = self.mainFrame
    
    -- Добавляем эффект свечения
    local glow = Instance.new("ImageLabel")
    glow.Name = "Glow"
    glow.Size = UDim2.new(1.1, 0, 1.1, 0)
    glow.Position = UDim2.new(-0.05, 0, -0.05, 0)
    glow.BackgroundTransparency = 1
    glow.Image = "rbxassetid://4996891970"
    glow.ImageColor3 = COLORS.GLOW
    glow.ImageTransparency = 0.8
    glow.Parent = self.mainFrame
    
    -- Анимация свечения
    TweenService:Create(glow, ANIMATIONS.GLOW, {ImageTransparency = 0.6}):Play()
    
    -- Создаем заголовок
    self.title = Instance.new("TextLabel")
    self.title.Name = "Title"
    self.title.Size = UDim2.new(1, 0, 0, 50)
    self.title.Position = UDim2.new(0, 0, 0, 0)
    self.title.BackgroundTransparency = 1
    self.title.Text = "QUEST X"
    self.title.TextColor3 = COLORS.TEXT
    self.title.TextSize = 28
    self.title.Font = Enum.Font.GothamBlack
    self.title.Parent = self.mainFrame
    
    -- Добавляем подзаголовок
    local subtitle = Instance.new("TextLabel")
    subtitle.Name = "Subtitle"
    subtitle.Size = UDim2.new(1, 0, 0, 20)
    subtitle.Position = UDim2.new(0, 0, 0, 35)
    subtitle.BackgroundTransparency = 1
    subtitle.Text = "PREMIUM EXPLOIT"
    subtitle.TextColor3 = COLORS.ACCENT
    subtitle.TextSize = 14
    subtitle.Font = Enum.Font.GothamBold
    subtitle.Parent = self.mainFrame
    
    -- Создаем кнопку закрытия
    self.closeButton = Instance.new("TextButton")
    self.closeButton.Name = "CloseButton"
    self.closeButton.Size = UDim2.new(0, 40, 0, 40)
    self.closeButton.Position = UDim2.new(1, -45, 0, 5)
    self.closeButton.BackgroundTransparency = 1
    self.closeButton.Text = "×"
    self.closeButton.TextColor3 = COLORS.TEXT
    self.closeButton.TextSize = 28
    self.closeButton.Font = Enum.Font.GothamBlack
    self.closeButton.Parent = self.mainFrame
    
    -- Создаем панель вкладок
    self.tabBar = Instance.new("Frame")
    self.tabBar.Name = "TabBar"
    self.tabBar.Size = UDim2.new(1, 0, 0, 50)
    self.tabBar.Position = UDim2.new(0, 0, 0, 50)
    self.tabBar.BackgroundColor3 = COLORS.BORDER
    self.tabBar.BorderSizePixel = 0
    self.tabBar.Parent = self.mainFrame
    
    -- Добавляем скругление для панели вкладок
    local tabCorner = Instance.new("UICorner")
    tabCorner.CornerRadius = UDim.new(0, 8)
    tabCorner.Parent = self.tabBar
    
    -- Создаем контейнер для контента
    self.contentContainer = Instance.new("Frame")
    self.contentContainer.Name = "ContentContainer"
    self.contentContainer.Size = UDim2.new(1, 0, 1, -100)
    self.contentContainer.Position = UDim2.new(0, 0, 0, 100)
    self.contentContainer.BackgroundTransparency = 1
    self.contentContainer.Parent = self.mainFrame
    
    -- Создаем вкладки
    local tabs = {
        {name = "Главная", icon = "🏠"},
        {name = "Скрипты", icon = "📜"},
        {name = "Настройки", icon = "⚙️"},
        {name = "Премиум", icon = "⭐"}
    }
    local tabButtons = {}
    local tabContents = {}
    
    -- Создаем содержимое для каждой вкладки
    for i, tab in ipairs(tabs) do
        local tabContent = Instance.new("Frame")
        tabContent.Name = tab.name .. "Content"
        tabContent.Size = UDim2.new(1, 0, 1, 0)
        tabContent.Position = UDim2.new(0, 0, 0, 0)
        tabContent.BackgroundTransparency = 1
        tabContent.Visible = i == 1
        tabContent.Parent = self.contentContainer
        
        -- Добавляем специфичное содержимое для каждой вкладки
        if tab.name == "Главная" then
            -- Добавляем карточку статуса
            local statusCard = Instance.new("Frame")
            statusCard.Name = "StatusCard"
            statusCard.Size = UDim2.new(1, -40, 0, 100)
            statusCard.Position = UDim2.new(0, 20, 0, 20)
            statusCard.BackgroundColor3 = COLORS.BORDER
            statusCard.Parent = tabContent
            
            local cardCorner = Instance.new("UICorner")
            cardCorner.CornerRadius = UDim.new(0, 8)
            cardCorner.Parent = statusCard
            
            local statusIcon = Instance.new("TextLabel")
            statusIcon.Name = "StatusIcon"
            statusIcon.Size = UDim2.new(0, 40, 0, 40)
            statusIcon.Position = UDim2.new(0, 20, 0.5, -20)
            statusIcon.BackgroundTransparency = 1
            statusIcon.Text = "✅"
            statusIcon.TextSize = 24
            statusIcon.Font = Enum.Font.GothamBold
            statusIcon.Parent = statusCard
            
            local statusLabel = Instance.new("TextLabel")
            statusLabel.Name = "StatusLabel"
            statusLabel.Size = UDim2.new(1, -100, 0, 30)
            statusLabel.Position = UDim2.new(0, 80, 0.5, -15)
            statusLabel.BackgroundTransparency = 1
            statusLabel.Text = "Статус: Активен"
            statusLabel.TextColor3 = COLORS.SUCCESS
            statusLabel.TextSize = 18
            statusLabel.Font = Enum.Font.GothamBold
            statusLabel.Parent = statusCard
            
            -- Добавляем статистику
            local statsFrame = Instance.new("Frame")
            statsFrame.Name = "StatsFrame"
            statsFrame.Size = UDim2.new(1, -40, 0, 120)
            statsFrame.Position = UDim2.new(0, 20, 0, 140)
            statsFrame.BackgroundColor3 = COLORS.BORDER
            statsFrame.Parent = tabContent
            
            local statsCorner = Instance.new("UICorner")
            statsCorner.CornerRadius = UDim.new(0, 8)
            statsCorner.Parent = statsFrame
            
            local statsTitle = Instance.new("TextLabel")
            statsTitle.Name = "StatsTitle"
            statsTitle.Size = UDim2.new(1, 0, 0, 30)
            statsTitle.Position = UDim2.new(0, 0, 0, 10)
            statsTitle.BackgroundTransparency = 1
            statsTitle.Text = "Статистика"
            statsTitle.TextColor3 = COLORS.TEXT
            statsTitle.TextSize = 20
            statsTitle.Font = Enum.Font.GothamBold
            statsTitle.Parent = statsFrame
            
            -- Добавляем элементы статистики
            local stats = {
                {name = "Запущено скриптов", value = "0"},
                {name = "Время работы", value = "0:00"},
                {name = "Премиум статус", value = "Активен"}
            }
            
            for j, stat in ipairs(stats) do
                local statFrame = Instance.new("Frame")
                statFrame.Name = stat.name .. "Stat"
                statFrame.Size = UDim2.new(1, -20, 0, 30)
                statFrame.Position = UDim2.new(0, 10, 0, 40 + (j-1) * 35)
                statFrame.BackgroundTransparency = 1
                statFrame.Parent = statsFrame
                
                local statName = Instance.new("TextLabel")
                statName.Name = "Name"
                statName.Size = UDim2.new(0.6, 0, 1, 0)
                statName.Position = UDim2.new(0, 0, 0, 0)
                statName.BackgroundTransparency = 1
                statName.Text = stat.name
                statName.TextColor3 = COLORS.SUBTEXT
                statName.TextSize = 14
                statName.Font = Enum.Font.Gotham
                statName.Parent = statFrame
                
                local statValue = Instance.new("TextLabel")
                statValue.Name = "Value"
                statValue.Size = UDim2.new(0.4, 0, 1, 0)
                statValue.Position = UDim2.new(0.6, 0, 0, 0)
                statValue.BackgroundTransparency = 1
                statValue.Text = stat.value
                statValue.TextColor3 = COLORS.TEXT
                statValue.TextSize = 14
                statValue.Font = Enum.Font.GothamBold
                statValue.Parent = statFrame
            end
        elseif tab.name == "Скрипты" then
            -- Создаем поиск
            local searchFrame = Instance.new("Frame")
            searchFrame.Name = "SearchFrame"
            searchFrame.Size = UDim2.new(1, -40, 0, 40)
            searchFrame.Position = UDim2.new(0, 20, 0, 20)
            searchFrame.BackgroundColor3 = COLORS.BORDER
            searchFrame.Parent = tabContent
            
            local searchCorner = Instance.new("UICorner")
            searchCorner.CornerRadius = UDim.new(0, 8)
            searchCorner.Parent = searchFrame
            
            local searchBox = Instance.new("TextBox")
            searchBox.Name = "SearchBox"
            searchBox.Size = UDim2.new(1, -20, 1, -10)
            searchBox.Position = UDim2.new(0, 10, 0, 5)
            searchBox.BackgroundTransparency = 1
            searchBox.Text = ""
            searchBox.PlaceholderText = "Поиск скриптов..."
            searchBox.TextColor3 = COLORS.TEXT
            searchBox.PlaceholderColor3 = COLORS.SUBTEXT
            searchBox.TextSize = 16
            searchBox.Font = Enum.Font.Gotham
            searchBox.Parent = searchFrame
            
            -- Создаем список скриптов
            local scriptList = Instance.new("ScrollingFrame")
            scriptList.Name = "ScriptList"
            scriptList.Size = UDim2.new(1, -40, 1, -80)
            scriptList.Position = UDim2.new(0, 20, 0, 80)
            scriptList.BackgroundTransparency = 1
            scriptList.Parent = tabContent
            
            -- Добавляем примеры скриптов
            local scripts = {
                {name = "Infinite Yield", description = "Продвинутый админ скрипт"},
                {name = "Dark Dex", description = "Инспектор объектов"},
                {name = "Remote Spy", description = "Отслеживание удаленных событий"},
                {name = "Simple Spy", description = "Простой отладчик"}
            }
            
            for j, script in ipairs(scripts) do
                local scriptButton = Instance.new("TextButton")
                scriptButton.Name = script.name
                scriptButton.Size = UDim2.new(1, 0, 0, 60)
                scriptButton.Position = UDim2.new(0, 0, 0, (j-1) * 70)
                scriptButton.BackgroundColor3 = COLORS.BORDER
                scriptButton.Text = ""
                scriptButton.Parent = scriptList
                
                local buttonCorner = Instance.new("UICorner")
                buttonCorner.CornerRadius = UDim.new(0, 8)
                buttonCorner.Parent = scriptButton
                
                local scriptName = Instance.new("TextLabel")
                scriptName.Name = "Name"
                scriptName.Size = UDim2.new(1, -20, 0, 25)
                scriptName.Position = UDim2.new(0, 10, 0, 5)
                scriptName.BackgroundTransparency = 1
                scriptName.Text = script.name
                scriptName.TextColor3 = COLORS.TEXT
                scriptName.TextSize = 16
                scriptName.Font = Enum.Font.GothamBold
                scriptName.Parent = scriptButton
                
                local scriptDesc = Instance.new("TextLabel")
                scriptDesc.Name = "Description"
                scriptDesc.Size = UDim2.new(1, -20, 0, 20)
                scriptDesc.Position = UDim2.new(0, 10, 0, 35)
                scriptDesc.BackgroundTransparency = 1
                scriptDesc.Text = script.description
                scriptDesc.TextColor3 = COLORS.SUBTEXT
                scriptDesc.TextSize = 14
                scriptDesc.Font = Enum.Font.Gotham
                scriptDesc.Parent = scriptButton
                
                -- Добавляем эффекты при наведении
                scriptButton.MouseEnter:Connect(function()
                    TweenService:Create(scriptButton, ANIMATIONS.HOVER, {BackgroundColor3 = COLORS.HOVER}):Play()
                end)
                
                scriptButton.MouseLeave:Connect(function()
                    TweenService:Create(scriptButton, ANIMATIONS.HOVER, {BackgroundColor3 = COLORS.BORDER}):Play()
                end)
                
                -- Добавляем эффект при нажатии
                scriptButton.MouseButton1Down:Connect(function()
                    TweenService:Create(scriptButton, ANIMATIONS.CLICK, {Size = UDim2.new(0.98, 0, 0, 58)}):Play()
                end)
                
                scriptButton.MouseButton1Up:Connect(function()
                    TweenService:Create(scriptButton, ANIMATIONS.CLICK, {Size = UDim2.new(1, 0, 0, 60)}):Play()
                end)
            end
        elseif tab.name == "Настройки" then
            local settingsList = Instance.new("ScrollingFrame")
            settingsList.Name = "SettingsList"
            settingsList.Size = UDim2.new(1, -40, 1, -40)
            settingsList.Position = UDim2.new(0, 20, 0, 20)
            settingsList.BackgroundTransparency = 1
            settingsList.Parent = tabContent
            
            -- Добавляем настройки
            local settings = {
                {name = "Тема", type = "toggle"},
                {name = "Анимации", type = "toggle"},
                {name = "Звуки", type = "toggle"},
                {name = "Автозапуск", type = "toggle"},
                {name = "Язык", type = "dropdown", options = {"Русский", "English"}}
            }
            
            for j, setting in ipairs(settings) do
                local settingFrame = Instance.new("Frame")
                settingFrame.Name = setting.name .. "Setting"
                settingFrame.Size = UDim2.new(1, 0, 0, 50)
                settingFrame.Position = UDim2.new(0, 0, 0, (j-1) * 60)
                settingFrame.BackgroundColor3 = COLORS.BORDER
                settingFrame.Parent = settingsList
                
                local settingCorner = Instance.new("UICorner")
                settingCorner.CornerRadius = UDim.new(0, 8)
                settingCorner.Parent = settingFrame
                
                local settingLabel = Instance.new("TextLabel")
                settingLabel.Name = "Label"
                settingLabel.Size = UDim2.new(0.7, 0, 1, 0)
                settingLabel.Position = UDim2.new(0, 0, 0, 0)
                settingLabel.BackgroundTransparency = 1
                settingLabel.Text = setting.name
                settingLabel.TextColor3 = COLORS.TEXT
                settingLabel.TextSize = 16
                settingLabel.Font = Enum.Font.Gotham
                settingLabel.Parent = settingFrame
                
                if setting.type == "toggle" then
                    local toggle = Instance.new("Frame")
                    toggle.Name = "Toggle"
                    toggle.Size = UDim2.new(0, 40, 0, 20)
                    toggle.Position = UDim2.new(0.85, 0, 0.5, -10)
                    toggle.BackgroundColor3 = COLORS.BORDER
                    toggle.Parent = settingFrame
                    
                    local toggleCorner = Instance.new("UICorner")
                    toggleCorner.CornerRadius = UDim.new(0, 10)
                    toggleCorner.Parent = toggle
                    
                    local toggleButton = Instance.new("Frame")
                    toggleButton.Name = "Button"
                    toggleButton.Size = UDim2.new(0, 16, 0, 16)
                    toggleButton.Position = UDim2.new(0, 2, 0.5, -8)
                    toggleButton.BackgroundColor3 = COLORS.ACCENT
                    toggleButton.Parent = toggle
                    
                    local buttonCorner = Instance.new("UICorner")
                    buttonCorner.CornerRadius = UDim.new(0, 8)
                    buttonCorner.Parent = toggleButton
                    
                    -- Добавляем функционал переключения
                    toggle.MouseButton1Click:Connect(function()
                        local isEnabled = toggleButton.Position.X.Scale > 0.5
                        TweenService:Create(toggleButton, ANIMATIONS.CLICK, {
                            Position = UDim2.new(isEnabled and 0 or 0.5, 2, 0.5, -8)
                        }):Play()
                    end)
                elseif setting.type == "dropdown" then
                    local dropdown = Instance.new("TextButton")
                    dropdown.Name = "Dropdown"
                    dropdown.Size = UDim2.new(0, 100, 0, 30)
                    dropdown.Position = UDim2.new(0.85, 0, 0.5, -15)
                    dropdown.BackgroundColor3 = COLORS.BORDER
                    dropdown.Text = setting.options[1]
                    dropdown.TextColor3 = COLORS.TEXT
                    dropdown.TextSize = 14
                    dropdown.Font = Enum.Font.Gotham
                    dropdown.Parent = settingFrame
                    
                    local dropdownCorner = Instance.new("UICorner")
                    dropdownCorner.CornerRadius = UDim.new(0, 6)
                    dropdownCorner.Parent = dropdown
                end
            end
        elseif tab.name == "Премиум" then
            -- Создаем карточку премиум
            local premiumCard = Instance.new("Frame")
            premiumCard.Name = "PremiumCard"
            premiumCard.Size = UDim2.new(1, -40, 0, 200)
            premiumCard.Position = UDim2.new(0, 20, 0, 20)
            premiumCard.BackgroundColor3 = COLORS.BORDER
            premiumCard.Parent = tabContent
            
            local cardCorner = Instance.new("UICorner")
            cardCorner.CornerRadius = UDim.new(0, 12)
            cardCorner.Parent = premiumCard
            
            -- Добавляем градиент
            local gradient = Instance.new("UIGradient")
            gradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, COLORS.ACCENT),
                ColorSequenceKeypoint.new(1, COLORS.ACCENT2)
            })
            gradient.Parent = premiumCard
            
            local premiumTitle = Instance.new("TextLabel")
            premiumTitle.Name = "Title"
            premiumTitle.Size = UDim2.new(1, 0, 0, 40)
            premiumTitle.Position = UDim2.new(0, 0, 0, 20)
            premiumTitle.BackgroundTransparency = 1
            premiumTitle.Text = "PREMIUM"
            premiumTitle.TextColor3 = COLORS.TEXT
            premiumTitle.TextSize = 32
            premiumTitle.Font = Enum.Font.GothamBlack
            premiumTitle.Parent = premiumCard
            
            local premiumDesc = Instance.new("TextLabel")
            premiumDesc.Name = "Description"
            premiumDesc.Size = UDim2.new(1, -40, 0, 60)
            premiumDesc.Position = UDim2.new(0, 20, 0, 70)
            premiumDesc.BackgroundTransparency = 1
            premiumDesc.Text = "Получите доступ к эксклюзивным функциям и премиум скриптам"
            premiumDesc.TextColor3 = COLORS.SUBTEXT
            premiumDesc.TextSize = 16
            premiumDesc.Font = Enum.Font.Gotham
            premiumDesc.TextWrapped = true
            premiumDesc.Parent = premiumCard
            
            local upgradeButton = Instance.new("TextButton")
            upgradeButton.Name = "UpgradeButton"
            upgradeButton.Size = UDim2.new(0, 200, 0, 40)
            upgradeButton.Position = UDim2.new(0.5, -100, 0, 140)
            upgradeButton.BackgroundColor3 = COLORS.ACCENT
            upgradeButton.Text = "АПГРЕЙД"
            upgradeButton.TextColor3 = COLORS.TEXT
            upgradeButton.TextSize = 18
            upgradeButton.Font = Enum.Font.GothamBold
            upgradeButton.Parent = premiumCard
            
            local buttonCorner = Instance.new("UICorner")
            buttonCorner.CornerRadius = UDim.new(0, 8)
            buttonCorner.Parent = upgradeButton
            
            -- Добавляем эффекты для кнопки
            upgradeButton.MouseEnter:Connect(function()
                TweenService:Create(upgradeButton, ANIMATIONS.HOVER, {BackgroundColor3 = COLORS.ACCENT2}):Play()
            end)
            
            upgradeButton.MouseLeave:Connect(function()
                TweenService:Create(upgradeButton, ANIMATIONS.HOVER, {BackgroundColor3 = COLORS.ACCENT}):Play()
            end)
        end
        
        table.insert(tabContents, tabContent)
    end
    
    -- Создаем кнопки вкладок
    for i, tab in ipairs(tabs) do
        local tabButton = Instance.new("TextButton")
        tabButton.Name = tab.name .. "Tab"
        tabButton.Size = UDim2.new(1 / #tabs, 0, 1, 0)
        tabButton.Position = UDim2.new((i - 1) / #tabs, 0, 0, 0)
        tabButton.BackgroundTransparency = 1
        tabButton.Text = tab.icon .. " " .. tab.name
        tabButton.TextColor3 = COLORS.TEXT
        tabButton.TextSize = 16
        tabButton.Font = Enum.Font.Gotham
        tabButton.Parent = self.tabBar
        
        -- Добавляем эффект при наведении
        tabButton.MouseEnter:Connect(function()
            TweenService:Create(tabButton, ANIMATIONS.HOVER, {TextColor3 = COLORS.ACCENT}):Play()
        end)
        
        tabButton.MouseLeave:Connect(function()
            TweenService:Create(tabButton, ANIMATIONS.HOVER, {TextColor3 = COLORS.TEXT}):Play()
        end)
        
        -- Добавляем функционал переключения вкладок
        tabButton.MouseButton1Click:Connect(function()
            for j, content in ipairs(tabContents) do
                content.Visible = j == i
            end
        end)
        
        table.insert(tabButtons, tabButton)
    end
    
    -- Добавляем функционал перетаскивания
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        self.mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    self.title.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = self.mainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    self.title.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    -- Добавляем функционал закрытия
    self.closeButton.MouseButton1Click:Connect(function()
        TweenService:Create(blur, ANIMATIONS.SLIDE, {Size = 0}):Play()
        TweenService:Create(self.mainFrame, ANIMATIONS.SLIDE, {
            Position = UDim2.new(0.5, -250, 0.5, 300)
        }):Play()
        wait(0.3)
        self:Destroy()
    end)
    
    -- Анимация появления
    blur.Size = 20
    TweenService:Create(blur, ANIMATIONS.SLIDE, {Size = 0}):Play()
    self.mainFrame.Position = UDim2.new(0.5, -250, 0.5, 300)
    TweenService:Create(self.mainFrame, ANIMATIONS.SLIDE, {
        Position = UDim2.new(0.5, -250, 0.5, -300)
    }):Play()
    
    -- Показываем GUI
    self.screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    
    return self
end

function QuestX:Destroy()
    self.screenGui:Destroy()
end

return QuestX 
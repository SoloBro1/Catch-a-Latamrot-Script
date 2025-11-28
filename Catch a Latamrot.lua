-- LATAMROT HELPER WITH KEY SYSTEM
-- Discord: https://discord.gg/UsHxrHuH
-- Key: Latamrot2025

local Players = game:GetService("Players")
local plr = Players.LocalPlayer

-- ========================================
-- KEY SYSTEM CONFIGURATION
-- ========================================
local DISCORD_LINK = "https://discord.gg/UsHxrHuH"
local CORRECT_KEY = "Latamrot2025"

-- ========================================
-- KEY SYSTEM GUI
-- ========================================
local function createKeySystem()
    local KeyGui = Instance.new("ScreenGui")
    KeyGui.Name = "KeySystemGUI"
    KeyGui.ResetOnSpawn = false
    KeyGui.Parent = plr:WaitForChild("PlayerGui")
    
    -- Background Blur
    local Blur = Instance.new("Frame")
    Blur.Size = UDim2.new(1, 0, 1, 0)
    Blur.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Blur.BackgroundTransparency = 0.3
    Blur.BorderSizePixel = 0
    Blur.Parent = KeyGui
    
    -- Main Frame
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 400, 0, 250)
    Frame.Position = UDim2.new(0.5, -200, 0.5, -125)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Frame.BorderSizePixel = 0
    Frame.Parent = KeyGui
    
    local FrameCorner = Instance.new("UICorner")
    FrameCorner.CornerRadius = UDim.new(0, 12)
    FrameCorner.Parent = Frame
    
    local FrameStroke = Instance.new("UIStroke")
    FrameStroke.Color = Color3.fromRGB(255, 100, 0)
    FrameStroke.Thickness = 3
    FrameStroke.Parent = Frame
    
    -- Title
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -40, 0, 50)
    Title.Position = UDim2.new(0, 20, 0, 15)
    Title.BackgroundTransparency = 1
    Title.Text = "🔒 KEY SYSTEM"
    Title.TextColor3 = Color3.fromRGB(255, 100, 0)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 24
    Title.Parent = Frame
    
    -- Subtitle
    local Subtitle = Instance.new("TextLabel")
    Subtitle.Size = UDim2.new(1, -40, 0, 25)
    Subtitle.Position = UDim2.new(0, 20, 0, 55)
    Subtitle.BackgroundTransparency = 1
    Subtitle.Text = "Enter the key to use Latamrot Helper"
    Subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
    Subtitle.Font = Enum.Font.Gotham
    Subtitle.TextSize = 14
    Subtitle.Parent = Frame
    
    -- Key Input
    local KeyInput = Instance.new("TextBox")
    KeyInput.Size = UDim2.new(1, -40, 0, 45)
    KeyInput.Position = UDim2.new(0, 20, 0, 95)
    KeyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    KeyInput.BorderSizePixel = 0
    KeyInput.Text = ""
    KeyInput.PlaceholderText = "Enter your key here..."
    KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
    KeyInput.Font = Enum.Font.Gotham
    KeyInput.TextSize = 16
    KeyInput.ClearTextOnFocus = false
    KeyInput.Parent = Frame
    
    local InputCorner = Instance.new("UICorner")
    InputCorner.CornerRadius = UDim.new(0, 8)
    InputCorner.Parent = KeyInput
    
    -- Get Key Button
    local GetKeyBtn = Instance.new("TextButton")
    GetKeyBtn.Size = UDim2.new(0.48, 0, 0, 45)
    GetKeyBtn.Position = UDim2.new(0, 20, 0, 160)
    GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    GetKeyBtn.BorderSizePixel = 0
    GetKeyBtn.Text = "🔑 Get Key"
    GetKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    GetKeyBtn.Font = Enum.Font.GothamBold
    GetKeyBtn.TextSize = 16
    GetKeyBtn.Parent = Frame
    
    local GetKeyCorner = Instance.new("UICorner")
    GetKeyCorner.CornerRadius = UDim.new(0, 8)
    GetKeyCorner.Parent = GetKeyBtn
    
    -- Use Key Button
    local UseKeyBtn = Instance.new("TextButton")
    UseKeyBtn.Size = UDim2.new(0.48, 0, 0, 45)
    UseKeyBtn.Position = UDim2.new(0.52, 0, 0, 160)
    UseKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    UseKeyBtn.BorderSizePixel = 0
    UseKeyBtn.Text = "✓ Use Key"
    UseKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    UseKeyBtn.Font = Enum.Font.GothamBold
    UseKeyBtn.TextSize = 16
    UseKeyBtn.Parent = Frame
    
    local UseKeyCorner = Instance.new("UICorner")
    UseKeyCorner.CornerRadius = UDim.new(0, 8)
    UseKeyCorner.Parent = UseKeyBtn
    
    -- Status Label
    local StatusLabel = Instance.new("TextLabel")
    StatusLabel.Size = UDim2.new(1, -40, 0, 20)
    StatusLabel.Position = UDim2.new(0, 20, 0, 220)
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Text = ""
    StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    StatusLabel.Font = Enum.Font.Gotham
    StatusLabel.TextSize = 12
    StatusLabel.Parent = Frame
    
    -- Button Animations
    GetKeyBtn.MouseEnter:Connect(function()
        GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
    end)
    
    GetKeyBtn.MouseLeave:Connect(function()
        GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    end)
    
    UseKeyBtn.MouseEnter:Connect(function()
        UseKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 230, 0)
    end)
    
    UseKeyBtn.MouseLeave:Connect(function()
        UseKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    end)
    
    -- Get Key Button Function (COPY + OPEN DISCORD)
    GetKeyBtn.MouseButton1Click:Connect(function()
        -- Copy to clipboard
        setclipboard(DISCORD_LINK)
        
        -- Try to open Discord link
        pcall(function()
            if syn and syn.request then
                syn.request({
                    Url = DISCORD_LINK,
                    Method = "GET"
                })
            elseif request then
                request({
                    Url = DISCORD_LINK,
                    Method = "GET"
                })
            end
        end)
        
        -- Try alternative method to open browser
        pcall(function()
            game:GetService("GuiService"):OpenBrowserWindow(DISCORD_LINK)
        end)
        
        StatusLabel.Text = "✅ Discord link copied & opened! Join server for key."
        StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        wait(3)
        GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
        StatusLabel.Text = ""
    end)
    
    -- Use Key Button Function
    UseKeyBtn.MouseButton1Click:Connect(function()
        local enteredKey = KeyInput.Text
        
        if enteredKey == "" then
            StatusLabel.Text = "❌ Please enter a key!"
            StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            return
        end
        
        if enteredKey == CORRECT_KEY then
            StatusLabel.Text = "✅ Key accepted! Loading script..."
            StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
            UseKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            
            wait(1)
            KeyGui:Destroy()
            loadMainScript()
        else
            StatusLabel.Text = "❌ Invalid key! Check Discord for correct key."
            StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
            UseKeyBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            wait(1.5)
            UseKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        end
    end)
end

-- ========================================
-- MAIN SCRIPT
-- ========================================
function loadMainScript()
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    
    local connections = {}
    local threads = {}
    local originalPromptSettings = {}
    
    -- SET SPEED 40 ON STARTUP
    task.spawn(function()
        wait(0.5)
        local char = plr.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = 40
            print("⚡ Speed set: 40")
        end
    end)
    
    -- GUI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "LatamrotHelperGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = plr:WaitForChild("PlayerGui")
    
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 220, 0, 410)
    Frame.Position = UDim2.new(0, 20, 0, 100)
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui
    
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 10)
    
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 35)
    Title.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
    Title.Text = "🎯 Latamrot Helper"
    Title.TextColor3 = Color3.new(1,1,1)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Title.Parent = Frame
    
    Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 10)
    
    -- CLOSE BUTTON
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 32, 0, 32)
    CloseBtn.Position = UDim2.new(1, -34, 0, 1.5)
    CloseBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = Color3.new(1,1,1)
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 20
    CloseBtn.BorderSizePixel = 0
    CloseBtn.Parent = Title
    
    local closeBtnCorner = Instance.new("UICorner", CloseBtn)
    closeBtnCorner.CornerRadius = UDim.new(0, 6)
    
    local closeBtnStroke = Instance.new("UIStroke", CloseBtn)
    closeBtnStroke.Color = Color3.fromRGB(255, 255, 255)
    closeBtnStroke.Thickness = 2
    closeBtnStroke.Transparency = 0.5
    
    CloseBtn.MouseEnter:Connect(function()
        CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        closeBtnStroke.Transparency = 0
        CloseBtn.TextSize = 22
    end)
    
    CloseBtn.MouseLeave:Connect(function()
        CloseBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
        closeBtnStroke.Transparency = 0.5
        CloseBtn.TextSize = 20
    end)
    
    local Status = Instance.new("TextLabel")
    Status.Size = UDim2.new(1, -20, 0, 20)
    Status.Position = UDim2.new(0, 10, 0, 385)
    Status.BackgroundTransparency = 1
    Status.Text = "Loading..."
    Status.TextColor3 = Color3.new(1,1,1)
    Status.Font = Enum.Font.Gotham
    Status.TextSize = 12
    Status.Parent = Frame
    
    local instantGrabEnabled = false
    local noClipEnabled = false
    local noRagdollEnabled = false
    local flyEnabled = false
    local espEnabled = false
    local myDropZone = nil
    local myBaseName = ""
    local espObjects = {}
    local customSpeed = 40
    local lastBestUnitModel = nil
    local isGrabbing = false
    local cachedPrompts = {}
    local scriptEnabled = true
    local flyConnection = nil
    local bodyVelocity = nil
    local bodyGyro = nil
    
    -- Full script shutdown function
    local function shutdownScript()
        print("🛑 Shutting down script...")
        scriptEnabled = false
        
        instantGrabEnabled = false
        noClipEnabled = false
        noRagdollEnabled = false
        flyEnabled = false
        espEnabled = false
        
        if flyConnection then
            flyConnection:Disconnect()
            flyConnection = nil
        end
        if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
        if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
        
        for _, obj in pairs(espObjects) do
            if obj then pcall(function() obj:Destroy() end) end
        end
        espObjects = {}
        
        for _, conn in pairs(connections) do
            if conn then pcall(function() conn:Disconnect() end) end
        end
        connections = {}
        
        print("🔄 Restoring prompts...")
        local restored = 0
        for prompt, settings in pairs(originalPromptSettings) do
            if prompt and prompt.Parent then
                pcall(function()
                    prompt.HoldDuration = settings.HoldDuration
                    prompt.MaxActivationDistance = settings.MaxActivationDistance
                    restored = restored + 1
                end)
            end
        end
        print("✅ Prompts restored:", restored)
        originalPromptSettings = {}
        
        task.wait(0.2)
        local char = plr.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = 40
            print("✅ Speed set: 40")
        end
        
        if char then
            for _, part in pairs(char:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
            print("✅ Collision enabled")
        end
        
        cachedPrompts = {}
        print("✅ Latamrot Helper fully disabled!")
        
        task.wait(0.2)
        if ScreenGui then ScreenGui:Destroy() end
    end
    
    CloseBtn.MouseButton1Click:Connect(function()
        CloseBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        CloseBtn.Text = "..."
        task.wait(0.1)
        shutdownScript()
    end)
    
    -- Button 1: Instant Grab
    local GrabBtn = Instance.new("TextButton")
    GrabBtn.Size = UDim2.new(1, -20, 0, 35)
    GrabBtn.Position = UDim2.new(0, 10, 0, 45)
    GrabBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    GrabBtn.Text = "⚡ Instant Grab: OFF"
    GrabBtn.TextColor3 = Color3.new(1,1,1)
    GrabBtn.Font = Enum.Font.GothamBold
    GrabBtn.TextSize = 14
    GrabBtn.Parent = Frame
    Instance.new("UICorner", GrabBtn).CornerRadius = UDim.new(0, 8)
    
    GrabBtn.MouseButton1Click:Connect(function()
        instantGrabEnabled = not instantGrabEnabled
        GrabBtn.Text = instantGrabEnabled and "⚡ Instant Grab: ON" or "⚡ Instant Grab: OFF"
        GrabBtn.BackgroundColor3 = instantGrabEnabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(150, 0, 0)
    end)
    
    -- Button 2: TP to Base
    local TPBtn = Instance.new("TextButton")
    TPBtn.Size = UDim2.new(1, -20, 0, 35)
    TPBtn.Position = UDim2.new(0, 10, 0, 85)
    TPBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
    TPBtn.Text = "🏠 TP to Base"
    TPBtn.TextColor3 = Color3.new(1,1,1)
    TPBtn.Font = Enum.Font.GothamBold
    TPBtn.TextSize = 14
    TPBtn.Parent = Frame
    Instance.new("UICorner", TPBtn).CornerRadius = UDim.new(0, 8)
    
    TPBtn.MouseButton1Click:Connect(function()
        if myDropZone then
            local char = plr.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = myDropZone.CFrame + Vector3.new(0, 5, 0)
                Status.Text = "✅ Teleported!"
                wait(1)
                Status.Text = "Ready"
            end
        else
            Status.Text = "❌ Zone not found!"
        end
    end)
    
    -- Button 3: NoClip
    local NoClipBtn = Instance.new("TextButton")
    NoClipBtn.Size = UDim2.new(1, -20, 0, 35)
    NoClipBtn.Position = UDim2.new(0, 10, 0, 125)
    NoClipBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    NoClipBtn.Text = "NoClip: OFF"
    NoClipBtn.TextColor3 = Color3.new(1,1,1)
    NoClipBtn.Font = Enum.Font.GothamBold
    NoClipBtn.TextSize = 14
    NoClipBtn.Parent = Frame
    Instance.new("UICorner", NoClipBtn).CornerRadius = UDim.new(0, 8)
    
    NoClipBtn.MouseButton1Click:Connect(function()
        noClipEnabled = not noClipEnabled
        NoClipBtn.Text = noClipEnabled and "NoClip: ON" or "NoClip: OFF"
        NoClipBtn.BackgroundColor3 = noClipEnabled and Color3.fromRGB(200, 0, 200) or Color3.fromRGB(150, 0, 0)
    end)
    
    -- Button 4: NoRagdoll
    local NoRagdollBtn = Instance.new("TextButton")
    NoRagdollBtn.Size = UDim2.new(1, -20, 0, 35)
    NoRagdollBtn.Position = UDim2.new(0, 10, 0, 165)
    NoRagdollBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    NoRagdollBtn.Text = "🛡️ NoRagdoll: OFF"
    NoRagdollBtn.TextColor3 = Color3.new(1,1,1)
    NoRagdollBtn.Font = Enum.Font.GothamBold
    NoRagdollBtn.TextSize = 14
    NoRagdollBtn.Parent = Frame
    Instance.new("UICorner", NoRagdollBtn).CornerRadius = UDim.new(0, 8)
    
    NoRagdollBtn.MouseButton1Click:Connect(function()
        noRagdollEnabled = not noRagdollEnabled
        NoRagdollBtn.Text = noRagdollEnabled and "🛡️ NoRagdoll: ON" or "🛡️ NoRagdoll: OFF"
        NoRagdollBtn.BackgroundColor3 = noRagdollEnabled and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(150, 0, 0)
    end)
    
    -- Button 5: Fly
    local FlyBtn = Instance.new("TextButton")
    FlyBtn.Size = UDim2.new(1, -20, 0, 35)
    FlyBtn.Position = UDim2.new(0, 10, 0, 205)
    FlyBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    FlyBtn.Text = "✈️ Fly: OFF"
    FlyBtn.TextColor3 = Color3.new(1,1,1)
    FlyBtn.Font = Enum.Font.GothamBold
    FlyBtn.TextSize = 14
    FlyBtn.Parent = Frame
    Instance.new("UICorner", FlyBtn).CornerRadius = UDim.new(0, 8)
    
    -- Button 6: Best Unit ESP
    local ESPBtn = Instance.new("TextButton")
    ESPBtn.Size = UDim2.new(1, -20, 0, 35)
    ESPBtn.Position = UDim2.new(0, 10, 0, 245)
    ESPBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    ESPBtn.Text = "👁️ Best Unit ESP: OFF"
    ESPBtn.TextColor3 = Color3.new(1,1,1)
    ESPBtn.Font = Enum.Font.GothamBold
    ESPBtn.TextSize = 13
    ESPBtn.Parent = Frame
    Instance.new("UICorner", ESPBtn).CornerRadius = UDim.new(0, 8)
    
    -- FLY
    local function startFly()
        local char = plr.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return end
        
        local hrp = char.HumanoidRootPart
        
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.Parent = hrp
        
        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bodyGyro.P = 9e4
        bodyGyro.Parent = hrp
        
        flyConnection = RunService.Heartbeat:Connect(function()
            if not flyEnabled or not char or not char:FindFirstChild("HumanoidRootPart") then
                if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
                if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
                if flyConnection then flyConnection:Disconnect() flyConnection = nil end
                return
            end
            
            local camera = workspace.CurrentCamera
            local speed = customSpeed
            
            local x, y, z = 0, 0, 0
            
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then z = -1 end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then z = 1 end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then x = -1 end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then x = 1 end
            
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then y = 1 end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then y = -1 end
            
            local direction = camera.CFrame:VectorToWorldSpace(Vector3.new(x, 0, z))
            local velocity = direction * speed + Vector3.new(0, y * speed, 0)
            
            bodyVelocity.Velocity = velocity
            bodyGyro.CFrame = camera.CFrame
        end)
    end
    
    local function stopFly()
        if flyConnection then flyConnection:Disconnect() flyConnection = nil end
        if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
        if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
    end
    
    FlyBtn.MouseButton1Click:Connect(function()
        flyEnabled = not flyEnabled
        FlyBtn.Text = flyEnabled and "✈️ Fly: ON" or "✈️ Fly: OFF"
        FlyBtn.BackgroundColor3 = flyEnabled and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(150, 0, 0)
        
        if flyEnabled then
            startFly()
        else
            stopFly()
        end
    end)
    
    -- SPEED HACK
    local SpeedLabel = Instance.new("TextLabel")
    SpeedLabel.Size = UDim2.new(1, -20, 0, 20)
    SpeedLabel.Position = UDim2.new(0, 10, 0, 290)
    SpeedLabel.BackgroundTransparency = 1
    SpeedLabel.Text = "⚡ Speed Hack (40-500)"
    SpeedLabel.TextColor3 = Color3.new(1,1,1)
    SpeedLabel.Font = Enum.Font.GothamBold
    SpeedLabel.TextSize = 13
    SpeedLabel.TextXAlignment = Enum.TextXAlignment.Left
    SpeedLabel.Parent = Frame
    
    local SpeedInput = Instance.new("TextBox")
    SpeedInput.Size = UDim2.new(0.5, -15, 0, 30)
    SpeedInput.Position = UDim2.new(0, 10, 0, 315)
    SpeedInput.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    SpeedInput.Text = "40"
    SpeedInput.PlaceholderText = "40-500"
    SpeedInput.TextColor3 = Color3.new(1,1,1)
    SpeedInput.Font = Enum.Font.Gotham
    SpeedInput.TextSize = 14
    SpeedInput.Parent = Frame
    Instance.new("UICorner", SpeedInput).CornerRadius = UDim.new(0, 8)
    
    local SetSpeedBtn = Instance.new("TextButton")
    SetSpeedBtn.Size = UDim2.new(0.5, -15, 0, 30)
    SetSpeedBtn.Position = UDim2.new(0.5, 5, 0, 315)
    SetSpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    SetSpeedBtn.Text = "Set Speed"
    SetSpeedBtn.TextColor3 = Color3.new(1,1,1)
    SetSpeedBtn.Font = Enum.Font.GothamBold
    SetSpeedBtn.TextSize = 13
    SetSpeedBtn.Parent = Frame
    Instance.new("UICorner", SetSpeedBtn).CornerRadius = UDim.new(0, 8)
    
    local ResetSpeedBtn = Instance.new("TextButton")
    ResetSpeedBtn.Size = UDim2.new(1, -20, 0, 25)
    ResetSpeedBtn.Position = UDim2.new(0, 10, 0, 350)
    ResetSpeedBtn.BackgroundColor3 = Color3.fromRGB(200, 100, 0)
    ResetSpeedBtn.Text = "Reset to Normal (40)"
    ResetSpeedBtn.TextColor3 = Color3.new(1,1,1)
    ResetSpeedBtn.Font = Enum.Font.Gotham
    ResetSpeedBtn.TextSize = 12
    ResetSpeedBtn.Parent = Frame
    Instance.new("UICorner", ResetSpeedBtn).CornerRadius = UDim.new(0, 8)
    
    local function setSpeed(speed)
        if not scriptEnabled then return end
        local char = plr.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = speed
            customSpeed = speed
            Status.Text = "Speed: " .. speed
            wait(1)
            Status.Text = "Ready"
        end
    end
    
    SetSpeedBtn.MouseButton1Click:Connect(function()
        local inputSpeed = tonumber(SpeedInput.Text)
        if inputSpeed then
            if inputSpeed < 40 then inputSpeed = 40 end
            if inputSpeed > 500 then inputSpeed = 500 end
            SpeedInput.Text = tostring(inputSpeed)
            setSpeed(inputSpeed)
            SetSpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            wait(0.2)
            SetSpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        end
    end)
    
    ResetSpeedBtn.MouseButton1Click:Connect(function()
        SpeedInput.Text = "40"
        setSpeed(40)
        ResetSpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        wait(0.2)
        ResetSpeedBtn.BackgroundColor3 = Color3.fromRGB(200, 100, 0)
    end)
    
    task.spawn(function()
        while scriptEnabled do
            wait(1)
            if not scriptEnabled then break end
            local char = plr.Character
            if char and char:FindFirstChild("Humanoid") then
                if char.Humanoid.WalkSpeed ~= customSpeed then
                    char.Humanoid.WalkSpeed = customSpeed
                end
            end
        end
    end)
    
    -- PROMPT MODIFICATION
    local function modifyPrompt(prompt)
        if not originalPromptSettings[prompt] then
            originalPromptSettings[prompt] = {
                HoldDuration = prompt.HoldDuration,
                MaxActivationDistance = prompt.MaxActivationDistance
            }
        end
        prompt.HoldDuration = 0
        prompt.MaxActivationDistance = math.max(prompt.MaxActivationDistance, 10)
    end
    
    -- PROMPT CACHING
    task.spawn(function()
        wait(3)
        local count = 0
        for _, obj in pairs(workspace:GetDescendants()) do
            if not scriptEnabled then break end
            if obj:IsA("ProximityPrompt") then
                modifyPrompt(obj)
                table.insert(cachedPrompts, obj)
                count = count + 1
            end
            if count % 100 == 0 then task.wait() end
        end
    end)
    
    local conn1 = workspace.DescendantAdded:Connect(function(obj)
        if not scriptEnabled then return end
        if obj:IsA("ProximityPrompt") then
            task.wait(0.05)
            modifyPrompt(obj)
            table.insert(cachedPrompts, obj)
        end
    end)
    table.insert(connections, conn1)
    
    task.spawn(function()
        while scriptEnabled do
            wait(5)
            if not scriptEnabled then break end
            
            local cleanedCache = {}
            for _, prompt in pairs(cachedPrompts) do
                if prompt and prompt.Parent then
                    table.insert(cleanedCache, prompt)
                end
            end
            cachedPrompts = cleanedCache
            
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("ProximityPrompt") then
                    local found = false
                    for _, cached in pairs(cachedPrompts) do
                        if cached == obj then
                            found = true
                            break
                        end
                    end
                    
                    if not found then
                        modifyPrompt(obj)
                        table.insert(cachedPrompts, obj)
                    end
                end
            end
        end
    end)
    
    -- INSTANT GRAB
    local function tryGrabUnit()
        local char = plr.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return false end
        
        local root = char.HumanoidRootPart
        local closestPrompt = nil
        local minDist = math.huge
        
        for i = #cachedPrompts, 1, -1 do
            local prompt = cachedPrompts[i]
            if not prompt or not prompt.Parent then
                table.remove(cachedPrompts, i)
            elseif prompt.Enabled then
                local dist = (root.Position - prompt.Parent.Position).Magnitude
                if dist <= prompt.MaxActivationDistance and dist < minDist then
                    closestPrompt = prompt
                    minDist = dist
                end
            end
        end
        
        if not closestPrompt then
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("ProximityPrompt") and obj.Enabled and obj.Parent then
                    local dist = (root.Position - obj.Parent.Position).Magnitude
                    if dist <= obj.MaxActivationDistance and dist < minDist then
                        closestPrompt = obj
                        minDist = dist
                        modifyPrompt(obj)
                        table.insert(cachedPrompts, obj)
                    end
                end
            end
        end
        
        if closestPrompt then
            pcall(function()
                closestPrompt.HoldDuration = 0
                task.wait(0.01)
                fireproximityprompt(closestPrompt)
                task.wait(0.01)
                fireproximityprompt(closestPrompt)
            end)
            return true
        end
        return false
    end
    
    local conn2 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not scriptEnabled then return end
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.F and instantGrabEnabled and not isGrabbing then
            isGrabbing = true
            task.spawn(function()
                local success = tryGrabUnit()
                if success then
                    Status.Text = "⚡ GRABBED!"
                else
                    Status.Text = "❌ Nothing nearby"
                end
                task.wait(0.5)
                Status.Text = "Ready"
                isGrabbing = false
            end)
        end
    end)
    table.insert(connections, conn2)
    
    -- PARSER
    local function parseMoneyPerSec(text)
        if not text then return 0 end
        if text:lower():find("vender") then return 0 end
        if not text:find("/Seg") and not text:find("/seg") then return 0 end
        
        local lowerText = text:lower()
        local num
        
        num = lowerText:match("[s$]/?(%d+%.?%d*)m/seg")
        if num then return tonumber(num) * 1000000 end
        
        num = lowerText:match("[s$]/?(%d+%.?%d*)k/seg")
        if num then return tonumber(num) * 1000 end
        
        num = lowerText:match("[s$]/?(%d+)/seg")
        if num then return tonumber(num) end
        
        return 0
    end
    
    -- ESP
    local function clearESP()
        for _, obj in pairs(espObjects) do
            if obj then pcall(function() obj:Destroy() end) end
        end
        espObjects = {}
    end
    
    local function findBestUnit()
        local bestUnit = nil
        local maxValue = 0
        local count = 0
        
        for _, obj in pairs(workspace:GetDescendants()) do
            if not scriptEnabled then break end
            if obj:IsA("Model") and obj:FindFirstChild("HumanoidRootPart") then
                if not Players:GetPlayerFromCharacter(obj) then
                    for _, gui in pairs(obj:GetDescendants()) do
                        if gui:IsA("BillboardGui") then
                            for _, label in pairs(gui:GetDescendants()) do
                                if label:IsA("TextLabel") then
                                    local value = parseMoneyPerSec(label.Text)
                                    if value > maxValue then
                                        maxValue = value
                                        local displayValue
                                        if value >= 1000000 then
                                            displayValue = string.format("$%.1fM/sec", value/1000000)
                                        elseif value >= 1000 then
                                            displayValue = string.format("$%.1fK/sec", value/1000)
                                        else
                                            displayValue = string.format("$%.0f/sec", value)
                                        end
                                        bestUnit = {model = obj, value = value, displayValue = displayValue}
                                    end
                                end
                            end
                        end
                    end
                end
            end
            count = count + 1
            if count % 50 == 0 then task.wait() end
        end
        
        return bestUnit
    end
    
    local function updateESP()
        if not scriptEnabled then return end
        task.spawn(function()
            local bestUnit = findBestUnit()
            
            if bestUnit then
                if bestUnit.model ~= lastBestUnitModel then
                    clearESP()
                    lastBestUnitModel = bestUnit.model
                    
                    local hrp = bestUnit.model:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local highlight = Instance.new("Highlight")
                        highlight.FillColor = Color3.fromRGB(255, 255, 0)
                        highlight.OutlineColor = Color3.fromRGB(255, 215, 0)
                        highlight.FillTransparency = 0.3
                        highlight.OutlineTransparency = 0
                        highlight.Parent = bestUnit.model
                        table.insert(espObjects, highlight)
                        
                        local billboard = Instance.new("BillboardGui")
                        billboard.Size = UDim2.new(0, 200, 0, 60)
                        billboard.Adornee = hrp
                        billboard.AlwaysOnTop = true
                        billboard.StudsOffset = Vector3.new(0, 4, 0)
                        billboard.Parent = hrp
                        
                        local text = Instance.new("TextLabel")
                        text.Size = UDim2.new(1, 0, 1, 0)
                        text.BackgroundTransparency = 1
                        text.Text = "💎 BEST UNIT 💎\n" .. bestUnit.displayValue
                        text.TextColor3 = Color3.fromRGB(255, 255, 0)
                        text.TextStrokeTransparency = 0
                        text.TextStrokeColor3 = Color3.new(0, 0, 0)
                        text.Font = Enum.Font.GothamBold
                        text.TextSize = 16
                        text.Parent = billboard
                        
                        table.insert(espObjects, billboard)
                        print("💎 ESP updated:", bestUnit.displayValue)
                    end
                end
            else
                clearESP()
                lastBestUnitModel = nil
            end
        end)
    end
    
    ESPBtn.MouseButton1Click:Connect(function()
        espEnabled = not espEnabled
        ESPBtn.Text = espEnabled and "👁️ Best Unit ESP: ON" or "👁️ Best Unit ESP: OFF"
        ESPBtn.BackgroundColor3 = espEnabled and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(150, 0, 0)
        
        if espEnabled then
            lastBestUnitModel = nil
            updateESP()
        else
            clearESP()
            lastBestUnitModel = nil
        end
    end)
    
    -- ESP AUTO-UPDATE
    task.spawn(function()
        while true do
            wait(3)
            if not scriptEnabled then break end
            if espEnabled then 
                updateESP()
            end
        end
    end)
    
    -- BASE SEARCH
    task.spawn(function()
        wait(2)
        if not scriptEnabled then return end
        Status.Text = "🔍 Searching..."
        local baseFolder = workspace:FindFirstChild("Base")
        if not baseFolder then Status.Text = "❌ No Base folder" return end
        
        for _, base in pairs(baseFolder:GetChildren()) do
            local valuesFolder = base:FindFirstChild("Values")
            if valuesFolder then
                local ownerId = valuesFolder:FindFirstChild("Owner_id")
                if ownerId and ownerId:IsA("NumberValue") and ownerId.Value == plr.UserId then
                    myBaseName = base.Name
                    for _, part in pairs(base:GetDescendants()) do
                        if part:IsA("BasePart") then
                            local color = part.Color
                            if (color.R > 0.7 and color.G > 0.7 and color.B < 0.4) or 
                               part.Name:lower():find("multiplicador") then
                                myDropZone = part
                                Status.Text = myBaseName .. " ✅"
                                TPBtn.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
                                TPBtn.Text = "🏠 " .. myBaseName
                                return
                            end
                        end
                    end
                    Status.Text = myBaseName .. " ⚠️"
                    return
                end
            end
        end
        Status.Text = "❌ Base not found"
    end)
    
    -- NOCLIP and NORAGDOLL
    local lastNoClipUpdate = 0
    local lastNoRagdollUpdate = 0
    
    local conn3 = RunService.Heartbeat:Connect(function()
        if not scriptEnabled then return end
        local now = tick()
        local char = plr.Character
        if not char then return end
        
        if noRagdollEnabled and (now - lastNoRagdollUpdate) > 0.1 then
            lastNoRagdollUpdate = now
            local humanoid = char:FindFirstChild("Humanoid")
            if humanoid then
                if humanoid.PlatformStand then humanoid.PlatformStand = false end
                if humanoid.Sit then humanoid.Sit = false end
                if humanoid:GetState() ~= Enum.HumanoidStateType.Running and 
                   humanoid:GetState() ~= Enum.HumanoidStateType.RunningNoPhysics then
                    humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                end
            end
        end
        
        if noClipEnabled and (now - lastNoClipUpdate) > 0.05 then
            lastNoClipUpdate = now
            for _, part in pairs(char:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
    table.insert(connections, conn3)
    
    print("✅ Latamrot Helper loaded! Speed: 40")
end

-- ========================================
-- START
-- ========================================
createKeySystem()

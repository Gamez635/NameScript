local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local gui = Instance.new("ScreenGui")
gui.Name = "SimpleGuiLibraryV5"
gui.Parent = CoreGui
gui.ResetOnSpawn = false

-- ==================== X BUTTON (OPEN/CLOSE) ====================
local openCloseBtn = Instance.new("TextButton")
openCloseBtn.Size = UDim2.new(0, 25, 0, 25)
openCloseBtn.Position = UDim2.new(0, 15, 0, 15)
openCloseBtn.Text = "❌"
openCloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
openCloseBtn.TextColor3 = Color3.new(1, 1, 1)
openCloseBtn.Font = Enum.Font.GothamBold
openCloseBtn.TextSize = 14
openCloseBtn.Parent = gui
Instance.new("UICorner", openCloseBtn).CornerRadius = UDim.new(0, 8)

-- ==================== DRAGGABLE FUNCTION ====================
local function makeDraggable(frame)
    local dragging, dragInput, dragStart, startPos
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
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end

-- ==================== MAIN GUI ====================
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 115, 0, 300)
main.Position = UDim2.new(0.5, -57, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(50, 0, 100)
main.BorderSizePixel = 0
main.Parent = gui
makeDraggable(main)

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)

local stroke = Instance.new("UIStroke", main)
stroke.Color = Color3.fromRGB(200, 200, 200)
stroke.Thickness = 1

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 20)
title.BackgroundTransparency = 1
title.Text = "INFJUMP + GRAVITY + TP"
title.TextColor3 = Color3.fromRGB(255, 180, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 9
title.Parent = main

local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(1, -10, 1, -30)
contentFrame.Position = UDim2.new(0, 5, 0, 25)
contentFrame.BackgroundTransparency = 1
contentFrame.ScrollBarThickness = 4
contentFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
contentFrame.Parent = main

local listLayout = Instance.new("UIListLayout", contentFrame)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 4)

local function createButton(name, color)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -8, 0, 18)
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 8
    btn.Text = name
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
    btn.Parent = contentFrame
    return btn
end

local function createTextBox(placeholder, defaultText)
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(1, -8, 0, 18)
    box.BackgroundColor3 = Color3.fromRGB(100, 40, 160)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.Gotham
    box.TextSize = 8
    box.PlaceholderText = placeholder
    box.Text = defaultText or ""
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 5)
    box.Parent = contentFrame
    return box
end

-- Buttons
local infJumpBtn = createButton("Inf Jump: Off", Color3.fromRGB(80, 20, 140))
local customJumpBtn = createButton("Custom JP: Off", Color3.fromRGB(80, 20, 140))
local jumpPowerBox = createTextBox("Jump Power", "50")

local speedBtn = createButton("Speed: Off", Color3.fromRGB(80, 20, 140))
local speedBox = createTextBox("WalkSpeed", "16")

local gravityBtn = createButton("Gravity: Off", Color3.fromRGB(80, 20, 140))
local gravityBox = createTextBox("Gravity", "196.2")

local clickTPBtn = createButton("Click TP: Off", Color3.fromRGB(80, 20, 140))
local clickTweenBtn = createButton("Click Tween: Off", Color3.fromRGB(80, 20, 140))
local tweenSpeedBox = createTextBox("Tween Time (s)", "0.5")

local deleteToolsBtn = createButton("Delete Tools: Off", Color3.fromRGB(80, 20, 140))
local autoBlockBtn = createButton("Auto Block: Off", Color3.fromRGB(80, 20, 140))

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -8, 0, 18)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
statusLabel.Font = Enum.Font.GothamSemibold
statusLabel.TextSize = 8
statusLabel.Text = "Ready"
statusLabel.Parent = contentFrame

-- Variables
local isInfJump = false
local isCustomJump = false
local isCustomSpeed = false
local isCustomGravity = false
local isClickTP = false
local isClickTween = false
local isDeleteTools = false
local isAutoBlock = false

local jumpPower = 50
local walkSpeed = 16
local customGravity = 196.2
local tweenTime = 0.5

local jumpConnection, deleteConnection, autoBlockConnection, autoBlockPlatform

local function updateStatus()
    statusLabel.Text = string.format("IJ:%s | JP:%s(%d) | Sp:%d | Gr:%.1f | CTP:%s | CTW:%s",
        isInfJump and "On" or "Off",
        isCustomJump and "On" or "Off", jumpPower,
        walkSpeed, customGravity,
        isClickTP and "On" or "Off", isClickTween and "On" or "Off")
end

local function enableInfJump()
    if jumpConnection then jumpConnection:Disconnect() end
    jumpConnection = UserInputService.JumpRequest:Connect(function()
        local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
    end)
end

local function disableInfJump()
    if jumpConnection then jumpConnection:Disconnect() jumpConnection = nil end
end

local function updateJumpPower()
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.JumpPower = isCustomJump and jumpPower or 50
    end
end

local function updateWalkSpeed()
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.WalkSpeed = isCustomSpeed and walkSpeed or 16 end
end

local function updateGravity()
    Workspace.Gravity = isCustomGravity and customGravity or 196.2
end

local function enableClickTP()
    Mouse.Button1Down:Connect(function()
        if not isClickTP then return end
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then root.CFrame = CFrame.new(Mouse.Hit.Position + Vector3.new(0,5,0)) end
    end)
end

local function enableClickTween()
    Mouse.Button1Down:Connect(function()
        if not isClickTween then return end
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then
            local target = Mouse.Hit.Position + Vector3.new(0,5,0)
            TweenService:Create(root, TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(target)}):Play()
        end
    end)
end

local function enableDeleteTools()
    if deleteConnection then deleteConnection:Disconnect() end
    deleteConnection = Mouse.Button1Down:Connect(function()
        if not isDeleteTools then return end
        local target = Mouse.Target
        if target and target:IsDescendantOf(Workspace) and not target:IsDescendantOf(LocalPlayer.Character) then
            target:Destroy()
        end
    end)
end

local function disableDeleteTools()
    if deleteConnection then deleteConnection:Disconnect() deleteConnection = nil end
end

local function enableAutoBlock()
    if autoBlockConnection then return end
    autoBlockConnection = RunService.Heartbeat:Connect(function()
        if not isAutoBlock then return end
        local char = LocalPlayer.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if not root or not humanoid then return end

        if root.Velocity.Y > -8 then
            if autoBlockPlatform then autoBlockPlatform:Destroy() autoBlockPlatform = nil end
            return
        end

        local feetPosition = root.Position - Vector3.new(0, humanoid.HipHeight, 0)
        local rayParams = RaycastParams.new()
        rayParams.FilterDescendantsInstances = {char}
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        rayParams.IgnoreWater = true

        local ray = Workspace:Raycast(feetPosition, Vector3.new(0, -100000, 0), rayParams)
        if ray and ray.Distance < 18 then
            if autoBlockPlatform then autoBlockPlatform:Destroy() autoBlockPlatform = nil end
            return
        end

        local platformPos = feetPosition - Vector3.new(0, 1.5, 0)
        if not autoBlockPlatform or not autoBlockPlatform.Parent then
            autoBlockPlatform = Instance.new("Part")
            autoBlockPlatform.Size = Vector3.new(8, 2, 8)
            autoBlockPlatform.Anchored = true
            autoBlockPlatform.CanCollide = true
            autoBlockPlatform.Transparency = 0.3
            autoBlockPlatform.Color = Color3.fromRGB(80, 20, 140)
            autoBlockPlatform.Material = Enum.Material.Neon
            autoBlockPlatform.Parent = Workspace
        end
        autoBlockPlatform.CFrame = CFrame.new(platformPos)
    end)
end

local function disableAutoBlock()
    if autoBlockConnection then autoBlockConnection:Disconnect() autoBlockConnection = nil end
    if autoBlockPlatform then autoBlockPlatform:Destroy() autoBlockPlatform = nil end
end

-- ==================== CONNECTIONS ====================
infJumpBtn.MouseButton1Click:Connect(function()
    isInfJump = not isInfJump
    infJumpBtn.Text = isInfJump and "Inf Jump: On" or "Inf Jump: Off"
    if isInfJump then enableInfJump() else disableInfJump() end
    updateStatus()
end)

customJumpBtn.MouseButton1Click:Connect(function()
    isCustomJump = not isCustomJump
    customJumpBtn.Text = isCustomJump and "Custom JP: On" or "Custom JP: Off"
    updateJumpPower()
    updateStatus()
end)

jumpPowerBox.FocusLost:Connect(function(enter)
    if enter then
        local n = tonumber(jumpPowerBox.Text)
        if n and n >= 0 then
            jumpPower = n
            updateJumpPower()
        end
        updateStatus()
    end
end)

speedBtn.MouseButton1Click:Connect(function()
    isCustomSpeed = not isCustomSpeed
    speedBtn.Text = isCustomSpeed and "Speed: On" or "Speed: Off"
    updateWalkSpeed()
    updateStatus()
end)

speedBox.FocusLost:Connect(function(enter)
    if enter then
        local n = tonumber(speedBox.Text)
        if n and n >= 0 then walkSpeed = n end
        if isCustomSpeed then updateWalkSpeed() end
        updateStatus()
    end
end)

gravityBtn.MouseButton1Click:Connect(function()
    isCustomGravity = not isCustomGravity
    gravityBtn.Text = isCustomGravity and "Gravity: On" or "Gravity: Off"
    updateGravity()
    updateStatus()
end)

gravityBox.FocusLost:Connect(function(enter)
    if enter then
        local n = tonumber(gravityBox.Text)
        if n and n >= 0 then customGravity = n end
        if isCustomGravity then updateGravity() end
        updateStatus()
    end
end)

clickTPBtn.MouseButton1Click:Connect(function()
    isClickTP = not isClickTP
    clickTPBtn.Text = isClickTP and "Click TP: On" or "Click TP: Off"
    if isClickTP then enableClickTP() end
    updateStatus()
end)

clickTweenBtn.MouseButton1Click:Connect(function()
    isClickTween = not isClickTween
    clickTweenBtn.Text = isClickTween and "Click Tween: On" or "Click Tween: Off"
    if isClickTween then enableClickTween() end
    updateStatus()
end)

tweenSpeedBox.FocusLost:Connect(function(enter)
    if enter then
        local n = tonumber(tweenSpeedBox.Text)
        if n and n > 0 then tweenTime = n end
        updateStatus()
    end
end)

deleteToolsBtn.MouseButton1Click:Connect(function()
    isDeleteTools = not isDeleteTools
    deleteToolsBtn.Text = isDeleteTools and "Delete Tools: On" or "Delete Tools: Off"
    if isDeleteTools then enableDeleteTools() else disableDeleteTools() end
    updateStatus()
end)

autoBlockBtn.MouseButton1Click:Connect(function()
    isAutoBlock = not isAutoBlock
    autoBlockBtn.Text = isAutoBlock and "Auto Block: On" or "Auto Block: Off"
    if isAutoBlock then enableAutoBlock() else disableAutoBlock() end
    updateStatus()
end)

-- X Button Open/Close
local isOpen = true
openCloseBtn.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    main.Visible = isOpen
    openCloseBtn.Text = isOpen and "❌" or "➕"
    openCloseBtn.BackgroundColor3 = isOpen and Color3.fromRGB(200,50,50) or Color3.fromRGB(50,200,50)
end)

-- Character Added
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.3)
    updateJumpPower()
    if isCustomSpeed then updateWalkSpeed() end
    if isCustomGravity then updateGravity() end
    if isInfJump then enableInfJump() end
    if isAutoBlock then enableAutoBlock() end
end)

updateStatus()
print("✅ Script Loaded Successfully!")

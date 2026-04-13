local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local gui = Instance.new("ScreenGui")
gui.Name = "SimpleGuiLibraryV5"
gui.Parent = CoreGui
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = false

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

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 100, 0, 100)
main.Position = UDim2.new(0.5, -50, 0.5, -50)
main.BackgroundColor3 = Color3.fromRGB(50, 0, 100)
main.BorderSizePixel = 0
main.Visible = true
main.Parent = gui
makeDraggable(main)
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)
local stroke = Instance.new("UIStroke", main)
stroke.Color = Color3.fromRGB(200, 200, 200)
stroke.Thickness = 1
stroke.Transparency = 0.7

local openCloseBtn = Instance.new("TextButton")
openCloseBtn.Size = UDim2.new(0, 20, 0, 20)
openCloseBtn.Position = UDim2.new(0, 10, 0, 30)
openCloseBtn.Text = "❌"
openCloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
openCloseBtn.TextColor3 = Color3.new(1, 1, 1)
openCloseBtn.Font = Enum.Font.GothamBold
openCloseBtn.TextSize = 12
openCloseBtn.Parent = gui
Instance.new("UICorner", openCloseBtn).CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 15)
title.Position = UDim2.new(0, 0, 0, 2)
title.BackgroundTransparency = 1
title.Text = "INFJUMP + GRAVITY"
title.TextColor3 = Color3.fromRGB(255, 180, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 8
title.Parent = main

local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(0.9, 0, 0, 75)
contentFrame.Position = UDim2.new(0.05, 0, 0, 18)
contentFrame.BackgroundTransparency = 1
contentFrame.ScrollBarThickness = 3
contentFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 100, 0)
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 200)
contentFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
contentFrame.Parent = main
local listLayout = Instance.new("UIListLayout", contentFrame)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 2)

local function createButton(name, color)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -6, 0, 15)
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 8
    btn.Text = name
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
    btn.Parent = contentFrame
    return btn
end

local function createTextBox(placeholder, color, defaultText)
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(1, -6, 0, 15)
    box.BackgroundColor3 = color
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.Gotham
    box.TextSize = 8
    box.PlaceholderText = placeholder
    box.Text = defaultText or ""
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 5)
    box.Parent = contentFrame
    return box
end

local infJumpBtn = createButton("Inf J.: Off", Color3.fromRGB(80, 20, 140))
local jumpPowerBox = createTextBox("J. Power", Color3.fromRGB(100, 40, 160), "50")

local superJumpBtn = createButton("Super J.: Off", Color3.fromRGB(80, 20, 140))
local superJumpPowerBox = createTextBox("S.J. Power", Color3.fromRGB(100, 40, 160), "100")

local extremeJumpBtn = createButton("Ext. J.: Off", Color3.fromRGB(80, 20, 140))
local extremeJumpPowerBox = createTextBox("E.J. Power", Color3.fromRGB(100, 40, 160), "150")

local highestJumpBtn = createButton("High J.: Off", Color3.fromRGB(80, 20, 140))
local highestJumpPowerBox = createTextBox("H.J. Power", Color3.fromRGB(100, 40, 160), "200")

local speedBtn = createButton("Speed: Off", Color3.fromRGB(80, 20, 140))
local speedBox = createTextBox("Speed", Color3.fromRGB(100, 40, 160), "16")

local gravityBtn = createButton("Gravity: Off", Color3.fromRGB(80, 20, 140))
local gravityBox = createTextBox("Gravity", Color3.fromRGB(100, 40, 160), "196.2")

local deleteToolsBtn = createButton("Del. Tools: Off", Color3.fromRGB(80, 20, 140))
local autoBlockBtn = createButton("Auto Block: Off", Color3.fromRGB(80, 20, 140))

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -6, 0, 15)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
statusLabel.Font = Enum.Font.GothamSemibold
statusLabel.TextSize = 8
statusLabel.Text = "Off | 50 | Off | Off | Off | 16 | Off | Off (196.2) | Off"
statusLabel.Parent = contentFrame

local isInfJump = false
local isSuperJump = false
local isExtremeJump = false
local isHighestJump = false
local isCustomSpeed = false
local isCustomGravity = false
local isDeleteTools = false
local isAutoBlock = false

local jumpPower = 50
local superJumpPower = 100
local extremeJumpPower = 150
local highestJumpPower = 200
local walkSpeed = 16
local customGravity = 196.2

local jumpConnection
local deleteConnection
local autoBlockConnection
local autoBlockPlatform

local function updateStatus()
    statusLabel.Text = string.format("%s | %d | %s | %s | %s | %d | %s | %s (%.1f) | %s",
        isInfJump and "On" or "Off", jumpPower,
        isSuperJump and "On" or "Off",
        isExtremeJump and "On" or "Off",
        isHighestJump and "On" or "Off",
        walkSpeed,
        isDeleteTools and "On" or "Off",
        isCustomGravity and "On" or "Off",
        isCustomGravity and customGravity or 196.2,
        isAutoBlock and "On" or "Off"
    )
end

local function enableInfJump()
    if jumpConnection then jumpConnection:Disconnect() end
    jumpConnection = UserInputService.JumpRequest:Connect(function()
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end
    end)
end

local function disableInfJump()
    if jumpConnection then jumpConnection:Disconnect() jumpConnection = nil end
end

local function updateJumpPower()
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    if isSuperJump then hum.JumpPower = superJumpPower
    elseif isExtremeJump then hum.JumpPower = extremeJumpPower
    elseif isHighestJump then hum.JumpPower = highestJumpPower
    else hum.JumpPower = jumpPower end
end

local function updateWalkSpeed()
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then hum.WalkSpeed = isCustomSpeed and walkSpeed or 16 end
end

local function updateGravity()
    if isCustomGravity and customGravity >= 0 then
        Workspace.Gravity = customGravity
    else
        Workspace.Gravity = 196.2
    end
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
            if autoBlockPlatform then
                autoBlockPlatform:Destroy()
                autoBlockPlatform = nil
            end
            return
        end

        local feetPosition = root.Position - Vector3.new(0, humanoid.HipHeight, 0)

        local rayParams = RaycastParams.new()
        rayParams.FilterDescendantsInstances = {char}
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        rayParams.IgnoreWater = true

        local ray = Workspace:Raycast(feetPosition, Vector3.new(0, -100000, 0), rayParams)
        local hasCloseGround = ray and ray.Distance < 18

        if hasCloseGround then
            if autoBlockPlatform then
                autoBlockPlatform:Destroy()
                autoBlockPlatform = nil
            end
            return
        end

        local platformPos = feetPosition - Vector3.new(0, 1.5, 0)
        if not autoBlockPlatform or not autoBlockPlatform.Parent then
            autoBlockPlatform = Instance.new("Part")
            autoBlockPlatform.Name = "AutoBlockPlatform"
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
    if autoBlockConnection then
        autoBlockConnection:Disconnect()
        autoBlockConnection = nil
    end
    if autoBlockPlatform then
        autoBlockPlatform:Destroy()
        autoBlockPlatform = nil
    end
end

infJumpBtn.MouseButton1Click:Connect(function()
    isInfJump = not isInfJump
    infJumpBtn.Text = isInfJump and "Inf J.: On" or "Inf J.: Off"
    if isInfJump then enableInfJump() else disableInfJump() end
    updateStatus()
end)

jumpPowerBox.FocusLost:Connect(function(enter)
    if enter then
        local n = tonumber(jumpPowerBox.Text)
        if n and n >= 0 then jumpPower = n updateJumpPower() end
        updateStatus()
    end
end)

superJumpBtn.MouseButton1Click:Connect(function()
    isSuperJump = not isSuperJump
    isExtremeJump = false
    isHighestJump = false
    superJumpBtn.Text = isSuperJump and "Super J.: On" or "Super J.: Off"
    extremeJumpBtn.Text = "Ext. J.: Off"
    highestJumpBtn.Text = "High J.: Off"
    updateJumpPower()
    if isSuperJump and not isInfJump then enableInfJump() end
    updateStatus()
end)

superJumpPowerBox.FocusLost:Connect(function(enter)
    if enter then
        local n = tonumber(superJumpPowerBox.Text)
        if n and n >= 0 then superJumpPower = n if isSuperJump then updateJumpPower() end end
        updateStatus()
    end
end)

extremeJumpBtn.MouseButton1Click:Connect(function()
    isExtremeJump = not isExtremeJump
    isSuperJump = false
    isHighestJump = false
    extremeJumpBtn.Text = isExtremeJump and "Ext. J.: On" or "Ext. J.: Off"
    superJumpBtn.Text = "Super J.: Off"
    highestJumpBtn.Text = "High J.: Off"
    updateJumpPower()
    if isExtremeJump and not isInfJump then enableInfJump() end
    updateStatus()
end)

highestJumpBtn.MouseButton1Click:Connect(function()
    isHighestJump = not isHighestJump
    isSuperJump = false
    isExtremeJump = false
    highestJumpBtn.Text = isHighestJump and "High J.: On" or "High J.: Off"
    superJumpBtn.Text = "Super J.: Off"
    extremeJumpBtn.Text = "Ext. J.: Off"
    updateJumpPower()
    if isHighestJump and not isInfJump then enableInfJump() end
    updateStatus()
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
        if n and n >= 0 then walkSpeed = n if isCustomSpeed then updateWalkSpeed() end end
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
        if n and n >= 0 then
            customGravity = n
            if isCustomGravity then updateGravity() end
        end
        updateStatus()
    end
end)

deleteToolsBtn.MouseButton1Click:Connect(function()
    isDeleteTools = not isDeleteTools
    deleteToolsBtn.Text = isDeleteTools and "Del. Tools: On" or "Del. Tools: Off"
    if isDeleteTools then enableDeleteTools() else disableDeleteTools() end
    updateStatus()
end)

autoBlockBtn.MouseButton1Click:Connect(function()
    isAutoBlock = not isAutoBlock
    autoBlockBtn.Text = isAutoBlock and "Auto Block: On" or "Auto Block: Off"
    if isAutoBlock then enableAutoBlock() else disableAutoBlock() end
    updateStatus()
end)

LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(0.1)
    if isInfJump or isSuperJump or isExtremeJump or isHighestJump then
        enableInfJump()
    end
    if isCustomSpeed then updateWalkSpeed() end
    if isCustomGravity then updateGravity() end
    if isAutoBlock then enableAutoBlock() end
    updateJumpPower()
end)

LocalPlayer.CharacterRemoving:Connect(function()
    disableInfJump()
    disableDeleteTools()
    disableAutoBlock()
end)

local isOpen = true
openCloseBtn.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    main.Visible = isOpen
    openCloseBtn.Text = isOpen and "❌" or "➕"
    openCloseBtn.BackgroundColor3 = isOpen and Color3.fromRGB(200,50,50) or Color3.fromRGB(50,200,50)
end)

title.Text = "INFJUMP + GRAVITY READY!"
updateStatus()

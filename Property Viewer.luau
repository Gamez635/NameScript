--// Simple GUI Library (Property Viewer/Editor)
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SimplePropertyGui"
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

-- Main Frame (Instance List)
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 220, 0, 320)
MainFrame.Position = UDim2.new(0.02, 0, 0.15, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 55)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ZIndex = 2
MainFrame.Parent = ScreenGui
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)

-- Title
local Title = Instance.new("TextLabel")
Title.Text = "Property Editor"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(35, 45, 75)
Title.TextColor3 = Color3.fromRGB(255, 160, 80)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.ZIndex = 3
Title.Parent = MainFrame

-- Instance List
local InstanceList = Instance.new("ScrollingFrame")
InstanceList.Size = UDim2.new(1, -10, 0, 260)
InstanceList.Position = UDim2.new(0, 5, 0, 40)
InstanceList.BackgroundTransparency = 1
InstanceList.ScrollBarThickness = 4
InstanceList.ScrollBarImageColor3 = Color3.fromRGB(255, 160, 80)
InstanceList.ZIndex = 3
InstanceList.Parent = MainFrame

-- Properties Frame
local PropertiesFrame = Instance.new("Frame")
PropertiesFrame.Size = UDim2.new(0, 180, 0, 320)
PropertiesFrame.Position = UDim2.new(1.1, 0, 0, 0)
PropertiesFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 55)
PropertiesFrame.Visible = false
PropertiesFrame.ZIndex = 2
PropertiesFrame.Parent = MainFrame
Instance.new("UICorner", PropertiesFrame).CornerRadius = UDim.new(0, 8)

local PropertiesList = Instance.new("ScrollingFrame")
PropertiesList.Size = UDim2.new(1, -10, 1, -10)
PropertiesList.Position = UDim2.new(0, 5, 0, 5)
PropertiesList.BackgroundTransparency = 1
PropertiesList.CanvasSize = UDim2.new(0, 0, 0, 0)
PropertiesList.ScrollBarThickness = 4
PropertiesList.ScrollBarImageColor3 = Color3.fromRGB(255, 160, 80)
PropertiesList.ZIndex = 3
PropertiesList.Parent = PropertiesFrame

-- Open/Close Button
local OpenClose = Instance.new("TextButton")
OpenClose.Name = "OpenCloseBtn"
OpenClose.Text = "Close"
OpenClose.Size = UDim2.new(0, 80, 0, 30)
OpenClose.Position = UDim2.new(0, 10, 1, -40)
OpenClose.BackgroundColor3 = Color3.fromRGB(255, 120, 50)
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.Font = Enum.Font.GothamBold
OpenClose.TextSize = 14
OpenClose.ZIndex = 10
OpenClose.Parent = ScreenGui
OpenClose.AnchorPoint = Vector2.new(0, 0)
Instance.new("UICorner", OpenClose).CornerRadius = UDim.new(0, 5)

-- Instance Data
local instanceCache, expanded, selectedInstance = {}, {}, nil
local yOffset, guiVisible, updateDebounce = 0, true, false

-- Update Properties Panel
local function updateProperties()
    for _, child in ipairs(PropertiesList:GetChildren()) do
        if child:IsA("TextLabel") or child:IsA("TextBox") or child:IsA("TextButton") then
            child:Destroy()
        end
    end
    if not selectedInstance then
        PropertiesFrame.Visible = false
        return
    end
    PropertiesFrame.Visible = true
    local propOffset = 0

    local function addPropertyLabel(name, value)
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -10, 0, 20)
        label.Position = UDim2.new(0, 5, 0, propOffset)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(230, 230, 230)
        label.Text = name .. ": " .. tostring(value)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.Gotham
        label.TextSize = 12
        label.ZIndex = 3
        label.Parent = PropertiesList
        propOffset = propOffset + 20
    end

    local function addPropertyTextBox(name, value, onChange)
        local textBox = Instance.new("TextBox")
        textBox.Size = UDim2.new(1, -10, 0, 20)
        textBox.Position = UDim2.new(0, 5, 0, propOffset)
        textBox.BackgroundColor3 = Color3.fromRGB(55, 65, 95)
        textBox.TextColor3 = Color3.fromRGB(230, 230, 230)
        textBox.Text = tostring(value)
        textBox.Font = Enum.Font.Gotham
        textBox.TextSize = 12
        textBox.ZIndex = 3
        textBox.Parent = PropertiesList
        Instance.new("UICorner", textBox).CornerRadius = UDim.new(0, 4)
        textBox.FocusLost:Connect(function(enterPressed)
            if enterPressed then
                local success, err = pcall(onChange, textBox.Text)
                if not success then
                    warn("Error updating property " .. name .. ": " .. err)
                    textBox.Text = tostring(value)
                end
            end
        end)
        propOffset = propOffset + 25
    end

    local function addPropertyCheckBox(name, value, onChange)
        local checkBox = Instance.new("TextButton")
        checkBox.Size = UDim2.new(1, -10, 0, 20)
        checkBox.Position = UDim2.new(0, 5, 0, propOffset)
        checkBox.BackgroundColor3 = Color3.fromRGB(55, 65, 95)
        checkBox.TextColor3 = Color3.fromRGB(230, 230, 230)
        checkBox.Text = name .. ": " .. (value and "✔" or " ")
        checkBox.Font = Enum.Font.Gotham
        checkBox.TextSize = 12
        checkBox.ZIndex = 3
        checkBox.Parent = PropertiesList
        Instance.new("UICorner", checkBox).CornerRadius = UDim.new(0, 4)
        checkBox.MouseButton1Click:Connect(function()
            local success, err = pcall(onChange, not value)
            if success then
                checkBox.Text = name .. ": " .. (not value and "✔" or " ")
            else
                warn("Error updating property " .. name .. ": " .. err)
            end
        end)
        propOffset = propOffset + 25
    end

    local success, err = pcall(function()
        addPropertyTextBox("Name", selectedInstance.Name or "Unnamed", function(text)
            selectedInstance.Name = text
        end)
        addPropertyLabel("ClassName", selectedInstance.ClassName or "Unknown")
        if selectedInstance:IsA("BasePart") then
            addPropertyTextBox("Position.X", selectedInstance.Position.X, function(text)
                selectedInstance.Position = Vector3.new(tonumber(text) or selectedInstance.Position.X, selectedInstance.Position.Y, selectedInstance.Position.Z)
            end)
            addPropertyTextBox("Position.Y", selectedInstance.Position.Y, function(text)
                selectedInstance.Position = Vector3.new(selectedInstance.Position.X, tonumber(text) or selectedInstance.Position.Y, selectedInstance.Position.Z)
            end)
            addPropertyTextBox("Position.Z", selectedInstance.Position.Z, function(text)
                selectedInstance.Position = Vector3.new(selectedInstance.Position.X, selectedInstance.Position.Y, tonumber(text) or selectedInstance.Position.Z)
            end)
            addPropertyTextBox("Size.X", selectedInstance.Size.X, function(text)
                selectedInstance.Size = Vector3.new(tonumber(text) or selectedInstance.Size.X, selectedInstance.Size.Y, selectedInstance.Size.Z)
            end)
            addPropertyTextBox("Size.Y", selectedInstance.Size.Y, function(text)
                selectedInstance.Size = Vector3.new(selectedInstance.Size.X, tonumber(text) or selectedInstance.Size.Y, selectedInstance.Size.Z)
            end)
            addPropertyTextBox("Size.Z", selectedInstance.Size.Z, function(text)
                selectedInstance.Size = Vector3.new(selectedInstance.Size.X, selectedInstance.Size.Y, tonumber(text) or selectedInstance.Size.Z)
            end)
            addPropertyTextBox("Transparency", selectedInstance.Transparency, function(text)
                selectedInstance.Transparency = tonumber(text) or selectedInstance.Transparency
            end)
        elseif selectedInstance:IsA("Script") then
            addPropertyCheckBox("Enabled", selectedInstance.Enabled, function(value)
                selectedInstance.Enabled = value
            end)
        end
    end)
    if not success then
        warn("Error loading properties: ", err)
    end
    PropertiesList.CanvasSize = UDim2.new(0, 0, 0, propOffset)
end

-- Add Instance to Tree
local function addInstanceToTree(obj, depth, parentFrame)
    if not obj or depth > 3 then
        if not obj then warn("addInstanceToTree: Object is nil") end
        return
    end

    local success, result = pcall(function()
        local indent = depth * 15
        local children = obj:GetChildren() or {}
        local hasChildren = #children > 0
        local instanceName = obj.Name ~= "" and obj.Name or obj.ClassName or "Unnamed"

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, -10, 0, 20)
        frame.Position = UDim2.new(0, 5, 0, yOffset)
        frame.BackgroundTransparency = 1
        frame.ZIndex = 3
        frame.Parent = parentFrame

        local expandBtn = Instance.new("TextButton")
        expandBtn.Size = UDim2.new(0, 15, 0, 15)
        expandBtn.Position = UDim2.new(0, indent, 0, 2)
        expandBtn.BackgroundTransparency = 1
        expandBtn.Text = hasChildren and "+" or ""
        expandBtn.TextColor3 = Color3.fromRGB(230, 230, 230)
        expandBtn.Font = Enum.Font.Gotham
        expandBtn.TextSize = 12
        expandBtn.ZIndex = 3
        expandBtn.Parent = frame

        local label = Instance.new("TextButton")
        label.Size = UDim2.new(1, -indent - 25, 0, 15)
        label.Position = UDim2.new(0, indent + 20, 0, 2)
        label.BackgroundColor3 = Color3.fromRGB(65, 75, 95)
        label.TextColor3 = Color3.fromRGB(230, 230, 230)
        label.Text = instanceName .. " (" .. obj.ClassName .. ")"
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.Gotham
        label.TextSize = 12
        label.ZIndex = 3
        label.Parent = frame
        Instance.new("UICorner", label).CornerRadius = UDim.new(0, 4)

        yOffset = yOffset + 20
        table.insert(instanceCache, {Instance = obj, Frame = frame, Depth = depth})

        expandBtn.MouseButton1Click:Connect(function()
            if hasChildren then
                expanded[obj] = not expanded[obj]
                refreshInstanceList()
                print("Expanded/Collapsed:", instanceName)
            end
        end)

        label.MouseButton1Click:Connect(function()
            selectedInstance = obj
            updateProperties()
            print("Selected:", instanceName, "(" .. obj.ClassName .. ")")
        end)

        if expanded[obj] then
            for _, child in ipairs(children) do
                addInstanceToTree(child, depth + 1, parentFrame)
            end
        end
    end)

    if not success then
        warn("Error in addInstanceToTree:", result)
    end
end

-- Refresh Instance List
local function refreshInstanceList()
    if updateDebounce then return end
    updateDebounce = true

    for _, v in ipairs(instanceCache) do
        if v.Frame then v.Frame:Destroy() end
    end
    instanceCache = {}
    yOffset = 0

    local services = game:GetChildren()
    for _, service in ipairs(services) do
        local success, result = pcall(function()
            addInstanceToTree(service, 0, InstanceList)
            if service:IsA("ReplicatedStorage") or service:IsA("Workspace") then
                for _, child in ipairs(service:GetChildren()) do
                    if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") or child:IsA("Part") or child:IsA("Script") then
                        addInstanceToTree(child, 1, InstanceList)
                    end
                end
            end
        end)
        if not success then
            warn("Error loading service:", service and service.Name or "unknown", result)
        end
    end

    InstanceList.CanvasSize = UDim2.new(0, 0, 0, yOffset)
    print("Instance list refreshed, total items:", #instanceCache)

    task.wait(0.1)
    updateDebounce = false
end

-- Open/Close Button
OpenClose.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    MainFrame.Visible = guiVisible
    PropertiesFrame.Visible = guiVisible and selectedInstance ~= nil
    OpenClose.Text = guiVisible and "Close" or "Open"
    print("Open/Close toggled, visible:", guiVisible)
end)

-- Hover Effect
local function addHoverEffect(button)
    local original = button.BackgroundColor3
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = original:Lerp(Color3.new(1,1,1),0.2)}):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = original}):Play()
    end)
end
addHoverEffect(OpenClose)

-- Init
print("Initializing GUI...")
refreshInstanceList()
print("✅ Simple Property Editor GUI Loaded")

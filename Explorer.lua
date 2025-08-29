--// Explorer GUI Library (Fixed Show Remotes, No Hotkeys)
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ExplorerGui"
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

-- Main Frame
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
Title.Text = "Explorer"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(35, 45, 75)
Title.TextColor3 = Color3.fromRGB(255, 160, 80)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.ZIndex = 3
Title.Parent = MainFrame

-- Search Bar
local SearchBar = Instance.new("TextBox")
SearchBar.Size = UDim2.new(1, -30, 0, 25)
SearchBar.Position = UDim2.new(0, 5, 0, 35)
SearchBar.BackgroundColor3 = Color3.fromRGB(55, 65, 95)
SearchBar.TextColor3 = Color3.fromRGB(230, 230, 230)
SearchBar.PlaceholderText = "Search..."
SearchBar.Font = Enum.Font.Gotham
SearchBar.TextSize = 14
SearchBar.ZIndex = 3
SearchBar.Parent = MainFrame
Instance.new("UICorner", SearchBar).CornerRadius = UDim.new(0, 5)

-- Clear Search Button
local ClearSearchBtn = Instance.new("TextButton")
ClearSearchBtn.Size = UDim2.new(0, 20, 0, 20)
ClearSearchBtn.Position = UDim2.new(1, -25, 0, 37)
ClearSearchBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
ClearSearchBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearSearchBtn.Text = "X"
ClearSearchBtn.Font = Enum.Font.GothamBold
ClearSearchBtn.TextSize = 12
ClearSearchBtn.ZIndex = 3
ClearSearchBtn.Parent = MainFrame
Instance.new("UICorner", ClearSearchBtn).CornerRadius = UDim.new(0, 5)

-- Path Display Label
local PathDisplay = Instance.new("TextLabel")
PathDisplay.Size = UDim2.new(1, -10, 0, 25)
PathDisplay.Position = UDim2.new(0, 5, 1, -85)
PathDisplay.BackgroundColor3 = Color3.fromRGB(55, 65, 95)
PathDisplay.TextColor3 = Color3.fromRGB(230, 230, 230)
PathDisplay.Text = "Click Copy Path to show path"
PathDisplay.Font = Enum.Font.Gotham
PathDisplay.TextSize = 12
PathDisplay.TextTruncate = Enum.TextTruncate.AtEnd
PathDisplay.TextXAlignment = Enum.TextXAlignment.Left
PathDisplay.ZIndex = 3
PathDisplay.Parent = MainFrame
Instance.new("UICorner", PathDisplay).CornerRadius = UDim.new(0, 5)

-- Instance List
local InstanceList = Instance.new("ScrollingFrame")
InstanceList.Size = UDim2.new(1, -10, 0, 170)
InstanceList.Position = UDim2.new(0, 5, 0, 65)
InstanceList.BackgroundTransparency = 1
InstanceList.ScrollBarThickness = 4
InstanceList.ScrollBarImageColor3 = Color3.fromRGB(255, 160, 80)
InstanceList.ZIndex = 3
InstanceList.Parent = MainFrame

-- Properties Panel
local PropertiesFrame = Instance.new("Frame")
PropertiesFrame.Size = UDim2.new(0, 180, 0, 120)
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

-- Buttons Factory
local function makeButton(name, text, pos, size, color, parent)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Text = text
    btn.Size = size
    btn.Position = pos
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 12
    btn.ZIndex = 3
    btn.Parent = parent
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
    return btn
end

local RefreshBtn  = makeButton("RefreshBtn","Refresh", UDim2.new(0,5,1,-55), UDim2.new(0.33,-5,0,25), Color3.fromRGB(255,120,50), MainFrame)
local DeleteBtn   = makeButton("DeleteBtn","Delete",  UDim2.new(0.33,0,1,-55), UDim2.new(0.33,-5,0,25), Color3.fromRGB(200,50,50), MainFrame)
local FilterBtn   = makeButton("FilterBtn","Filter",  UDim2.new(0.66,0,1,-55), UDim2.new(0.33,-5,0,25), Color3.fromRGB(50,150,200), MainFrame)
local CopyPathBtn = makeButton("CopyPathBtn","Copy Path", UDim2.new(0,5,1,-30), UDim2.new(0.5,-5,0,25), Color3.fromRGB(100,150,50), MainFrame)
local ShowRemotesBtn = makeButton("ShowRemotesBtn","Show Remotes", UDim2.new(0.5,0,1,-30), UDim2.new(0.5,-5,0,25), Color3.fromRGB(150,100,200), MainFrame)

local OpenClose = makeButton("OpenCloseBtn","Close", UDim2.new(0,10,1,-40), UDim2.new(0,80,0,30), Color3.fromRGB(255,120,50), ScreenGui)
OpenClose.AnchorPoint = Vector2.new(0,0)
OpenClose.Font = Enum.Font.GothamBold
OpenClose.TextSize = 14
OpenClose.ZIndex = 10

-- Instance Data
local instanceCache, expanded, selectedInstance = {}, {}, nil
local yOffset, classFilter, guiVisible, searchDebounce, showRemotes = 0, nil, true, false, false

-- Update Properties Panel
local function updateProperties()
    for _, child in ipairs(PropertiesList:GetChildren()) do
        if child:IsA("TextLabel") then child:Destroy() end
    end
    if not selectedInstance then PropertiesFrame.Visible = false return end
    PropertiesFrame.Visible = true
    local propOffset = 0
    local function addProperty(name, value)
        local PropLabel = Instance.new("TextLabel")
        PropLabel.Size = UDim2.new(1,-10,0,20)
        PropLabel.Position = UDim2.new(0,5,0,propOffset)
        PropLabel.BackgroundTransparency = 1
        PropLabel.TextColor3 = Color3.fromRGB(230,230,230)
        PropLabel.Text = name..": "..tostring(value)
        PropLabel.TextXAlignment = Enum.TextXAlignment.Left
        PropLabel.Font = Enum.Font.Gotham
        PropLabel.TextSize = 12
        PropLabel.ZIndex = 3
        PropLabel.Parent = PropertiesList
        propOffset += 20
    end
    local ok, err = pcall(function()
        addProperty("Name", selectedInstance.Name or "Unnamed")
        addProperty("ClassName", selectedInstance.ClassName or "Unknown")
        if selectedInstance:IsA("BasePart") then
            addProperty("Position", tostring(selectedInstance.Position))
        end
    end)
    if not ok then warn("Property error:", err) end
    PropertiesList.CanvasSize = UDim2.new(0,0,0,propOffset)
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

        if showRemotes and not (obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction")) and depth > 0 then
            return
        end

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
        expandBtn.TextColor3 = Color3.fromRGB(230,230,230)
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
                if not showRemotes or child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
                    if not classFilter or child:IsA(classFilter) then
                        addInstanceToTree(child, depth + 1, parentFrame)
                    end
                end
            end
        end
    end)

    if not success then
        warn("Error in addInstanceToTree:", result)
    end
end

-- Refresh Instance List
function refreshInstanceList()
    if searchDebounce then return end
    searchDebounce = true

    for _, v in ipairs(instanceCache) do
        if v.Frame then v.Frame:Destroy() end
    end
    instanceCache = {}
    yOffset = 0

    local services = game:GetChildren()
    for _, service in ipairs(services) do
        local success, result = pcall(function()
            if service then
                local searchText = SearchBar.Text:lower()
                local matchesSearch = searchText == "" or service.Name:lower():find(searchText)
                local matchesFilter = not classFilter or service:IsA(classFilter)
                if showRemotes then
                    if service:IsA("ReplicatedStorage") or service:IsA("Workspace") then
                        for _, child in ipairs(service:GetChildren()) do
                            if (child:IsA("RemoteEvent") or child:IsA("RemoteFunction")) and
                               (searchText == "" or child.Name:lower():find(searchText)) then
                                if not classFilter or child:IsA(classFilter) then
                                    addInstanceToTree(child, 0, InstanceList)
                                end
                            end
                        end
                    end
                else
                    if matchesSearch and matchesFilter then
                        addInstanceToTree(service, 0, InstanceList)
                    end
                    if service:IsA("ReplicatedStorage") or service:IsA("Workspace") then
                        for _, child in ipairs(service:GetChildren()) do
                            if (child:IsA("RemoteEvent") or child:IsA("RemoteFunction") or child:IsA("Part")) and
                               (searchText == "" or child.Name:lower():find(searchText)) then
                                if not classFilter or child:IsA(classFilter) then
                                    addInstanceToTree(child, 1, InstanceList)
                                end
                            end
                        end
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
    searchDebounce = false
end

-- Buttons
RefreshBtn.MouseButton1Click:Connect(function()
    refreshInstanceList()
    print("Refresh button clicked")
end)

DeleteBtn.MouseButton1Click:Connect(function()
    if selectedInstance and selectedInstance:IsDescendantOf(workspace) then
        local success, result = pcall(function()
            selectedInstance:Destroy()
            print("Deleted:", selectedInstance.Name)
            selectedInstance = nil
            refreshInstanceList()
            updateProperties()
        end)
        if not success then
            warn("Error deleting instance:", result)
        end
    else
        print("❌ Cannot delete this instance")
    end
end)

FilterBtn.MouseButton1Click:Connect(function()
    classFilter = SearchBar.Text ~= "" and SearchBar.Text or nil
    showRemotes = false
    ShowRemotesBtn.Text = "Show Remotes"
    print("Filter set to:", classFilter or "None")
    refreshInstanceList()
end)

ShowRemotesBtn.MouseButton1Click:Connect(function()
    showRemotes = not showRemotes
    ShowRemotesBtn.Text = showRemotes and "Clear Remotes" or "Show Remotes"
    classFilter = nil
    SearchBar.Text = ""
    print("Show Remotes:", showRemotes)
    refreshInstanceList()
end)

CopyPathBtn.MouseButton1Click:Connect(function()
    if not selectedInstance then
        PathDisplay.Text = "No instance selected"
        print("❌ No instance selected for Copy Path")
        return
    end
    local ok, path = pcall(function() return selectedInstance:GetFullName() end)
    if ok then
        PathDisplay.Text = path
        if setclipboard then
            setclipboard(path)
            print("✅ Copied path to clipboard: " .. path)
        else
            print("✅ Path displayed: " .. path .. " (Right-click PathDisplay to copy in Studio)")
        end
    else
        PathDisplay.Text = "Error copying path"
        print("❌ Error copying path:", path)
    end
end)

OpenClose.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    MainFrame.Visible = guiVisible
    PropertiesFrame.Visible = guiVisible and selectedInstance ~= nil
    OpenClose.Text = guiVisible and "Close" or "Open"
    print("Open/Close toggled, visible:", guiVisible)
end)

ClearSearchBtn.MouseButton1Click:Connect(function()
    SearchBar.Text = ""
    classFilter = nil
    showRemotes = false
    ShowRemotesBtn.Text = "Show Remotes"
    print("Search and filters cleared")
    refreshInstanceList()
end)

-- Search Filter
SearchBar.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        print("Search triggered:", SearchBar.Text)
        refreshInstanceList()
    end
end)

-- Hover Effects
local function addHoverEffect(button)
    local original = button.BackgroundColor3
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = original:Lerp(Color3.new(1,1,1),0.2)}):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = original}):Play()
    end)
end
for _, btn in ipairs({RefreshBtn, DeleteBtn, FilterBtn, CopyPathBtn, ShowRemotesBtn, ClearSearchBtn, OpenClose}) do
    addHoverEffect(btn)
end

-- Init
print("Initializing GUI...")
refreshInstanceList()
print("✅ Explorer GUI Loaded (Show Remotes Fixed, No Hotkeys)")

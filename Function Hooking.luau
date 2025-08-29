--// Simple GUI Library (Function Hooking)
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FunctionHookGui"
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

-- Main Frame (Script List)
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
Title.Text = "Function Hook"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(35, 45, 75)
Title.TextColor3 = Color3.fromRGB(255, 160, 80)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.ZIndex = 3
Title.Parent = MainFrame

-- Script List
local ScriptList = Instance.new("ScrollingFrame")
ScriptList.Size = UDim2.new(1, -10, 0, 260)
ScriptList.Position = UDim2.new(0, 5, 0, 40)
ScriptList.BackgroundTransparency = 1
ScriptList.ScrollBarThickness = 4
ScriptList.ScrollBarImageColor3 = Color3.fromRGB(255, 160, 80)
ScriptList.ZIndex = 3
ScriptList.Parent = MainFrame

-- Log Frame
local LogFrame = Instance.new("Frame")
LogFrame.Size = UDim2.new(0, 180, 0, 320)
LogFrame.Position = UDim2.new(1.1, 0, 0, 0)
LogFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 55)
LogFrame.Visible = false
LogFrame.ZIndex = 2
LogFrame.Parent = MainFrame
Instance.new("UICorner", LogFrame).CornerRadius = UDim.new(0, 8)

local LogList = Instance.new("ScrollingFrame")
LogList.Size = UDim2.new(1, -10, 1, -10)
LogList.Position = UDim2.new(0, 5, 0, 5)
LogList.BackgroundTransparency = 1
LogList.CanvasSize = UDim2.new(0, 0, 0, 0)
LogList.ScrollBarThickness = 4
LogList.ScrollBarImageColor3 = Color3.fromRGB(255, 160, 80)
LogList.ZIndex = 3
LogList.Parent = LogFrame

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

-- Data
local scriptCache, expanded, selectedScript, callLogs = {}, {}, nil, {}
local yOffset, guiVisible, updateDebounce = 0, true, false
local maxLogs = 50 -- Batas maksimum log

-- Update Log Panel
local function updateLogPanel()
    for _, child in ipairs(LogList:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end
    if not selectedScript then
        LogFrame.Visible = false
        return
    end
    LogFrame.Visible = true
    local logOffset = 0
    for i = #callLogs, 1, -1 do
        local log = callLogs[i]
        if log.script == selectedScript then
            local label = Instance.new("TextLabel")
            label.Size = UDim2.new(1, -10, 0, 20)
            label.Position = UDim2.new(0, 5, 0, logOffset)
            label.BackgroundTransparency = 1
            label.TextColor3 = Color3.fromRGB(230, 230, 230)
            label.Text = log.text
            label.TextXAlignment = Enum.TextXAlignment.Left
            label.TextYAlignment = Enum.TextYAlignment.Top
            label.Font = Enum.Font.Gotham
            label.TextSize = 12
            label.ZIndex = 3
            label.Parent = LogList
            logOffset = logOffset + 20
        end
    end
    LogList.CanvasSize = UDim2.new(0, 0, 0, logOffset)
end

-- Hook Metamethods
local function hookMetamethods()
    local success, err = pcall(function()
        if hookmetamethod then
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                local method = getnamecallmethod()
                local args = {...}
                local caller = "Unknown (Client)"
                if getcallingscript then
                    local script = getcallingscript()
                    caller = script and script.Name or caller
                end
                local argString = ""
                for i, arg in ipairs(args) do
                    argString = argString .. (i > 1 and ", " or "") .. tostring(arg)
                end
                local scriptInstance = getcallingscript and getcallingscript() or nil
                local success, result = pcall(oldNamecall, self, ...)
                local returnString = success and tostring(result) or "Error: " .. tostring(result)
                local logText = "Script: " .. caller .. " | Method: " .. (method or "Unknown") .. " | Args: [" .. argString .. "] | Return: " .. returnString
                table.insert(callLogs, {script = scriptInstance, text = logText})
                if #callLogs > maxLogs then
                    table.remove(callLogs, 1)
                end
                if scriptInstance and scriptInstance == selectedScript then
                    updateLogPanel()
                end
                if success then
                    return result
                else
                    error(result)
                end
            end)

            local oldIndex
            oldIndex = hookmetamethod(game, "__index", function(self, key)
                local caller = "Unknown (Client)"
                if getcallingscript then
                    local script = getcallingscript()
                    caller = script and script.Name or caller
                end
                local scriptInstance = getcallingscript and getcallingscript() or nil
                local success, result = pcall(oldIndex, self, key)
                local returnString = success and tostring(result) or "Error: " .. tostring(result)
                local logText = "Script: " .. caller .. " | Index: " .. tostring(key) .. " | Return: " .. returnString
                table.insert(callLogs, {script = scriptInstance, text = logText})
                if #callLogs > maxLogs then
                    table.remove(callLogs, 1)
                end
                if scriptInstance and scriptInstance == selectedScript then
                    updateLogPanel()
                end
                if success then
                    return result
                else
                    error(result)
                end
            end)
        else
            warn("hookmetamethod not supported by this executor")
        end
    end)
    if not success then
        warn("Error hooking metamethods: ", err)
    end
end

-- Add Script to Tree
local function addScriptToTree(obj, depth, parentFrame)
    if not obj or depth > 3 then
        if not obj then warn("addScriptToTree: Object is nil") end
        return
    end

    local success, result = pcall(function()
        if not (obj:IsA("Script") or obj:IsA("LocalScript")) and depth > 0 then
            return
        end
        local indent = depth * 15
        local children = obj:GetChildren() or {}
        local hasChildren = #children > 0
        local scriptName = obj.Name ~= "" and obj.Name or obj.ClassName or "Unnamed"

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
        label.Text = scriptName .. " (" .. obj.ClassName .. ")"
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.Gotham
        label.TextSize = 12
        label.ZIndex = 3
        label.Parent = frame
        Instance.new("UICorner", label).CornerRadius = UDim.new(0, 4)

        yOffset = yOffset + 20
        table.insert(scriptCache, {Instance = obj, Frame = frame, Depth = depth})

        expandBtn.MouseButton1Click:Connect(function()
            if hasChildren then
                expanded[obj] = not expanded[obj]
                refreshScriptList()
                print("Expanded/Collapsed:", scriptName)
            end
        end)

        label.MouseButton1Click:Connect(function()
            selectedScript = obj
            updateLogPanel()
            print("Selected:", scriptName, "(" .. obj.ClassName .. ")")
        end)

        if expanded[obj] then
            for _, child in ipairs(children) do
                addScriptToTree(child, depth + 1, parentFrame)
            end
        end
    end)

    if not success then
        warn("Error in addScriptToTree:", result)
    end
end

-- Refresh Script List
local function refreshScriptList()
    if updateDebounce then return end
    updateDebounce = true

    for _, v in ipairs(scriptCache) do
        if v.Frame then v.Frame:Destroy() end
    end
    scriptCache = {}
    yOffset = 0

    local services = game:GetChildren()
    for _, service in ipairs(services) do
        local success, result = pcall(function()
            if service:IsA("ReplicatedStorage") or service:IsA("Workspace") or service:IsA("ServerScriptService") then
                addScriptToTree(service, 0, ScriptList)
                for _, child in ipairs(service:GetChildren()) do
                    if child:IsA("Script") or child:IsA("LocalScript") then
                        addScriptToTree(child, 1, ScriptList)
                    end
                end
            end
        end)
        if not success then
            warn("Error loading service:", service and service.Name or "unknown", result)
        end
    end

    ScriptList.CanvasSize = UDim2.new(0, 0, 0, yOffset)
    print("Script list refreshed, total items:", #scriptCache)

    task.wait(0.1)
    updateDebounce = false
end

-- Open/Close Button
OpenClose.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    MainFrame.Visible = guiVisible
    LogFrame.Visible = guiVisible and selectedScript ~= nil
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
hookMetamethods()
refreshScriptList()
print("✅ Function Hook GUI Loaded")

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0, 70, 0, 70)
logo.Position = UDim2.new(0, 15, 0.5, -35)
logo.BackgroundColor3 = Color3.fromRGB(0, 165, 255)
logo.Text = "V23"
logo.TextColor3 = Color3.new(1,1,1)
logo.Font = Enum.Font.GothamBlack
logo.TextSize = 32
logo.Active = true
logo.Draggable = true
logo.Parent = gui
Instance.new("UICorner", logo).CornerRadius = UDim.new(1, 0)
local logoStroke = Instance.new("UIStroke", logo)
logoStroke.Color = Color3.new(1,1,1)
logoStroke.Thickness = 3

local dragHint = Instance.new("TextLabel")
dragHint.Size = UDim2.new(0, 180, 0, 40)
dragHint.Position = UDim2.new(0, 95, 0.5, -20)
dragHint.BackgroundTransparency = 0.7
dragHint.BackgroundColor3 = Color3.fromRGB(0,0,0)
dragHint.Text = "HP: Sentuh + geser\nPC: Klik + drag"
dragHint.TextColor3 = Color3.fromRGB(220, 255, 220)
dragHint.Font = Enum.Font.GothamSemibold
dragHint.TextSize = 13
dragHint.TextXAlignment = Enum.TextXAlignment.Left
dragHint.Parent = gui
Instance.new("UICorner", dragHint).CornerRadius = UDim.new(0, 8)

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 300, 0, 300)
main.Position = UDim2.new(0.5, -150, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(18, 18, 38)
main.Visible = false
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 18)
local mainStroke = Instance.new("UIStroke", main)
mainStroke.Color = Color3.fromRGB(0, 165, 255)
mainStroke.Thickness = 2.2

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(1, -20, 1, -65)
scroll.Position = UDim2.new(0, 10, 0, 60)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 5
scroll.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 140)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.Parent = main

local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0, 10)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent = scroll

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 36)
title.BackgroundTransparency = 1
title.Text = "V23 Multi-Part"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextXAlignment = Enum.TextXAlignment.Center
title.Parent = main

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 22)
status.Position = UDim2.new(0, 0, 0, 36)
status.BackgroundTransparency = 1
status.Text = "Acts: 0"
status.TextColor3 = Color3.fromRGB(100, 220, 255)
status.Font = Enum.Font.GothamSemibold
status.TextSize = 14
status.TextXAlignment = Enum.TextXAlignment.Center
status.Parent = main

local actions = {}
local autoAdd = false
local lastTime = 0
local playing = false
local paused = false
local playbackSpeed = 1.0

local dragging, dragInput, dragStart, startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

main.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

local function createButton(text, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 42)
    btn.BackgroundColor3 = color
    btn.Text = text
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 15
    btn.Parent = scroll
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)
    btn.MouseButton1Click:Connect(function() callback(btn) end)
    task.defer(function()
        scroll.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y + 30)
    end)
    return btn
end

logo.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    logo.Text = main.Visible and "X" or "V23"
    logo.TextSize = main.Visible and 40 or 32
    logo.BackgroundColor3 = main.Visible and Color3.fromRGB(220, 60, 60) or Color3.fromRGB(0, 165, 255)
end)

createButton("Record: OFF", Color3.fromRGB(200, 60, 60), function(self)
    autoAdd = not autoAdd
    self.Text = autoAdd and "Record: ON" or "Record: OFF"
    self.BackgroundColor3 = autoAdd and Color3.fromRGB(60, 200, 90) or Color3.fromRGB(200, 60, 60)
end)

createButton("Download Parts", Color3.fromRGB(0, 160, 255), function()
    if #actions < 10 then
        status.Text = "Minimal 10 acts!"
        task.delay(2, function() status.Text = "Acts: "..#actions end)
        return
    end
    status.Text = "Saving parts..."
    local partSize = 1500
    local total = math.ceil(#actions / partSize)
    local timestamp = os.date("%Y%m%d_%H%M%S")
    for p = 1, total do
        local s = (p-1)*partSize + 1
        local e = math.min(p*partSize, #actions)
        local code = "-- V23 Part "..p.."/"..total.." ("..(e-s+1).." acts) - "..timestamp.."\n"
        code ..= "local cam=workspace.CurrentCamera plr=game.Players.LocalPlayer char=plr.Character or plr.CharacterAdded:Wait() "
        code ..= "local hum=char:WaitForChild('Humanoid',5) hrp=char:WaitForChild('HumanoidRootPart',5) "
        code ..= "if not(hum and hrp)then return end task.wait(1.2)\n\n"
        for i = s, e do
            local a = actions[i]
            local d = (i==s and 0 or math.max(0.016, a.Delay))
            local cf = a.CamCFrame
            local x,y,z,r1,r2,r3,r4,r5,r6,r7,r8,r9 = cf:components()
            code ..= string.format("cam.CFrame=CFrame.new(%.3f,%.3f,%.3f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f) ",x,y,z,r1,r2,r3,r4,r5,r6,r7,r8,r9)
            code ..= string.format("cam.FieldOfView=%.2f ",a.CamFOV)
            if a.MoveDir.Magnitude > 0.01 then
                code ..= string.format("hum:Move(Vector3.new(%.3f,0,%.3f),true) ",a.MoveDir.X,a.MoveDir.Z)
            else
                code ..= "hum:Move(Vector3.zero,true) "
            end
            code ..= string.format("hrp.AssemblyLinearVelocity=Vector3.new(%.3f,%.3f,%.3f) ",a.Vel.X,a.Vel.Y,a.Vel.Z)
            code ..= string.format("hrp.CFrame=CFrame.new(%.3f,%.3f,%.3f) ",a.Pos.X,a.Pos.Y,a.Pos.Z)
            if a.Jump then code ..= "hum.Jump=true " end
            code ..= string.format("task.wait(%.4f)\n", d)
        end
        if writefile then
            writefile("V23_"..timestamp.."_Part"..p.."_of_"..total..".lua", code)
        end
        task.wait(0.07)
    end
    status.Text = "Parts saved! ("..total..")"
    task.delay(2.5, function() status.Text = "Acts: "..#actions end)
end)

createButton("Download All Parts", Color3.fromRGB(0, 220, 180), function()
    if #actions < 10 then
        status.Text = "Minimal 10 acts!"
        task.delay(2, function() status.Text = "Acts: "..#actions end)
        return
    end
    status.Text = "Saving full..."
    local timestamp = os.date("%Y%m%d_%H%M%S")
    local code = "-- V23 Full Path ("..#actions.." acts) - "..timestamp.."\n"
    code ..= "local cam=workspace.CurrentCamera plr=game.Players.LocalPlayer char=plr.Character or plr.CharacterAdded:Wait() "
    code ..= "local hum=char:WaitForChild('Humanoid',5) hrp=char:WaitForChild('HumanoidRootPart',5) "
    code ..= "if not(hum and hrp)then return end task.wait(1.5)\n\n"
    for i, a in ipairs(actions) do
        local d = (i==1 and 0 or math.max(0.016, a.Delay))
        local cf = a.CamCFrame
        local x,y,z,r1,r2,r3,r4,r5,r6,r7,r8,r9 = cf:components()
        code ..= string.format("cam.CFrame=CFrame.new(%.3f,%.3f,%.3f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f) ",x,y,z,r1,r2,r3,r4,r5,r6,r7,r8,r9)
        code ..= string.format("cam.FieldOfView=%.2f ",a.CamFOV)
        if a.MoveDir.Magnitude > 0.01 then
            code ..= string.format("hum:Move(Vector3.new(%.3f,0,%.3f),true) ",a.MoveDir.X,a.MoveDir.Z)
        else
            code ..= "hum:Move(Vector3.zero,true) "
        end
        code ..= string.format("hrp.AssemblyLinearVelocity=Vector3.new(%.3f,%.3f,%.3f) ",a.Vel.X,a.Vel.Y,a.Vel.Z)
        code ..= string.format("hrp.CFrame=CFrame.new(%.3f,%.3f,%.3f) ",a.Pos.X,a.Pos.Y,a.Pos.Z)
        if a.Jump then code ..= "hum.Jump=true " end
        code ..= string.format("task.wait(%.4f)\n", d)
    end
    if writefile then
        writefile("V23_Full_"..timestamp..".lua", code)
    end
    status.Text = "Full saved!"
    task.delay(2.5, function() status.Text = "Acts: "..#actions end)
end)

createButton("Clear All Data", Color3.fromRGB(200, 70, 70), function()
    actions = {}
    status.Text = "Acts: 0"
end)

createButton("Play All", Color3.fromRGB(70, 200, 70), function(self)
    if playing then
        playing = false
        paused = false
        self.Text = "Play All"
        self.BackgroundColor3 = Color3.fromRGB(70, 200, 70)
        status.Text = "Acts: "..#actions
        return
    end
    if #actions == 0 then
        status.Text = "No data!"
        task.delay(2, function() status.Text = "Acts: "..#actions end)
        return
    end
    playing = true
    paused = false
    self.Text = "STOP"
    self.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
    status.Text = "Playing... 0/"..#actions
    task.spawn(function()
        local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hum = char:WaitForChild("Humanoid", 8)
        local hrp = char:WaitForChild("HumanoidRootPart", 8)
        local cam = workspace.CurrentCamera
        if not (hum and hrp and cam) then
            status.Text = "Char error"
            playing = false
            return
        end
        task.wait(0.8)
        for i, a in ipairs(actions) do
            if not playing then break end
            if paused then
                repeat task.wait(0.1) until not paused or not playing
                if not playing then break end
            end
            cam.CFrame = a.CamCFrame
            cam.FieldOfView = a.CamFOV
            hum:Move(a.MoveDir * Vector3.new(1,0,1), true)
            hrp.AssemblyLinearVelocity = a.Vel
            hrp.CFrame = CFrame.new(a.Pos)
            if a.Jump then hum.Jump = true end
            local delay = (i == 1 and 0 or math.max(0.016, a.Delay))
            task.wait(delay / playbackSpeed)
            if i % 60 == 0 then
                status.Text = "Playing... "..i.."/"..#actions
            end
        end
        playing = false
        paused = false
        status.Text = "Done!"
        self.Text = "Play All"
        self.BackgroundColor3 = Color3.fromRGB(70, 200, 70)
        task.delay(2, function() status.Text = "Acts: "..#actions end)
    end)
end)

createButton("Pause / Resume", Color3.fromRGB(255, 160, 50), function(self)
    if not playing then return end
    paused = not paused
    self.Text = paused and "RESUME" or "PAUSE"
    self.BackgroundColor3 = paused and Color3.fromRGB(90, 160, 255) or Color3.fromRGB(255, 160, 50)
end)

createButton("Speed: 1.0×", Color3.fromRGB(140, 100, 255), function(self)
    playbackSpeed = playbackSpeed + 0.25
    if playbackSpeed > 2.0 then playbackSpeed = 0.5 end
    self.Text = "Speed: "..string.format("%.1f", playbackSpeed).."×"
end)

task.spawn(function()
    while true do
        task.wait(0.033)
        if not autoAdd then continue end
        local char = LocalPlayer.Character
        if not char then continue end
        local hum = char:FindFirstChild("Humanoid")
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local cam = Workspace.CurrentCamera
        if not (hum and hrp and cam) then continue end
        local now = tick()
        if now - lastTime < 0.032 then continue end
        table.insert(actions, {
            Pos = hrp.Position,
            Vel = hrp.AssemblyLinearVelocity,
            MoveDir = hum.MoveDirection,
            Jump = hum.Jump,
            CamCFrame = cam.CFrame,
            CamFOV = cam.FieldOfView,
            Delay = now - lastTime
        })
        status.Text = "Acts: " .. #actions
        lastTime = now
    end
end)

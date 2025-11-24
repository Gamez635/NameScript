--// TRUE HUMAN RECORDER V10 - FULL CAMERA + MOVEMENT (Fokus Layar Ikut!)
--// Kamera ikut arah pandang kamu saat rekam → pas playback 100% sama!

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local gui = Instance.new("ScreenGui")
gui.Name = "TrueRecorderV10"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local function drag(frame)
    local dragging, startPos, startMouse
    frame.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true; startMouse = i.Position; startPos = frame.Position
        end
    end)
    frame.InputChanged:Connect(function(i)
        if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = i.Position - startMouse
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                      startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    frame.InputEnded:Connect(function() dragging = false end)
end

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 190, 0, 340)
main.Position = UDim2.new(0.5, -95, 0.5, -170)
main.BackgroundColor3 = Color3.fromRGB(10, 120, 255)
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)
drag(main)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,38)
title.BackgroundTransparency = 1
title.Text = "V10 + Camera"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 17
title.Parent = main

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(0.92,0,0,290)
scroll.Position = UDim2.new(0.04,0,0,40)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 5
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.Parent = main

local actions = {}
local lastSavePoint = nil
local autoAdd = false
local lastTime = 0

local count = Instance.new("TextLabel")
count.Size = UDim2.new(1,0,0,26)
count.BackgroundTransparency = 1
count.Text = "Acts: 0 | Saved: 0"
count.TextColor3 = Color3.fromRGB(100,255,255)
count.Font = Enum.Font.GothamBold
count.Parent = scroll

local yPos = 30
local function btn(name, col, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1,-10,0,34)
    b.Position = UDim2.new(0,5,0,yPos)
    b.BackgroundColor3 = col
    b.Text = name
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 13
    b.Parent = scroll
    Instance.new("UICorner", b).CornerRadius = UDim.new(0,10)
    b.MouseButton1Click:Connect(function(...) callback(b, ...) end)
    yPos = yPos + 40
end

-- TOMBOL AUTO RECORD
btn("Auto Record: OFF", Color3.fromRGB(255,60,60), function(self)
    autoAdd = not autoAdd
    self.Text = autoAdd and "Auto Record: ON" or "Auto Record: OFF"
    self.BackgroundColor3 = autoAdd and Color3.fromRGB(0,255,100) or Color3.fromRGB(255,60,60)
end)

-- SAVE AS RESPAWN POINT
btn("SAVE AS RESPAWN POINT", Color3.fromRGB(0,255,0), function()
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart
    lastSavePoint = { CFrame = hrp.CFrame, Velocity = hrp.Velocity }
    count.Text = "Acts: " .. #actions .. " | Saved: " .. (#savedPoints + 1)
    title.Text = "Respawn Point Saved!"
    task.delay(2, function() title.Text = "V10 + Camera" end)
end)

-- RECORDING LOOP + CAMERA RECORD!!!
task.spawn(function()
    while task.wait(0.033) do
        if not autoAdd then continue end
        local char = LocalPlayer.Character
        if not char or not char:FindFirstChild("Humanoid") or not char:FindFirstChild("HumanoidRootPart") then continue end

        local hum = char.Humanoid
        local hrp = char.HumanoidRootPart
        local now = tick()
        if now - lastTime < 0.032 then continue end

        table.insert(actions, {
            Pos = hrp.Position,
            Vel = hrp.Velocity,
            MoveDir = hum.MoveDirection,
            Jump = hum.Jump,
            -- TAMBAHAN KAMERA (ini yang kamu mau!)
            CamCFrame = Camera.CFrame,
            CamFOV = Camera.FieldOfView,
            Delay = now - lastTime
        })

        count.Text = "Acts: " .. #actions .. " | Saved: 0"
        lastTime = now
    end
end)

-- RESPAWN KE SAVE POINT
LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(1)
    if not lastSavePoint then return end
    local hrp = char:WaitForChild("HumanoidRootPart", 5)
    local hum = char:WaitForChild("Humanoid", 5)
    if not hrp or not hum then return end
    hum:ChangeState(Enum.HumanoidStateType.Physics)
    task.wait(0.1)
    hrp.CFrame = lastSavePoint.CFrame
    hrp.Velocity = lastSavePoint.Velocity
    task.wait(0.2)
    hum:ChangeState(Enum.HumanoidStateType.Running)
    title.Text = "Back to Save Point!"
    task.delay(2, function() title.Text = "V10 + Camera" end)
end)

-- COPY SCRIPT DENGAN KAMERA FULL!!!
btn("Copy Full Script + Camera", Color3.fromRGB(0,230,255), function()
    if #actions < 5 then
        title.Text = "Record dulu!"
        task.delay(2, function() title.Text = "V10 + Camera" end)
        return
    end

    local code = {
        "local plr = game.Players.LocalPlayer",
        "local cam = game:GetService('Workspace').CurrentCamera",
        "local char = plr.Character or plr.CharacterAdded:Wait()",
        "local hum = char:WaitForChild('Humanoid')",
        "local hrp = char:WaitForChild('HumanoidRootPart')",
        "task.wait(2)",
        ""
    }

    for i, act in ipairs(actions) do
        local d = i == 1 and 0 or math.max(0.02, act.Delay)

        -- Kamera ikut
        table.insert(code, string.format("cam.CFrame = CFrame.new(%.4f,%.4f,%.4f, %.6f,%.6f,%.6f, %.6f,%.6f,%.6f, %.6f,%.6f,%.6f)",
            act.CamCFrame.Position.X, act.CamCFrame.Position.Y, act.CamCFrame.Position.Z,
            act.CamCFrame:components()
        ))
        table.insert(code, string.format("cam.FieldOfView = %.2f", act.CamFOV))

        -- Gerakin karakter
        if act.MoveDir.Magnitude > 0 then
            table.insert(code, string.format("hum:Move(Vector3.new(%.4f,0,%.4f), true)", act.MoveDir.X, act.MoveDir.Z))
        else
            table.insert(code, "hum:Move(Vector3.new(), true)")
        end
        table.insert(code, string.format("hrp.AssemblyLinearVelocity = Vector3.new(%.4f,%.4f,%.4f)", act.Vel.X, act.Vel.Y, act.Vel.Z))
        table.insert(code, string.format("hrp.CFrame = CFrame.new(%.4f,%.4f,%.4f) * (hrp.CFrame - hrp.Position)", act.Pos.X, act.Pos.Y, act.Pos.Z))
        if act.Jump then table.insert(code, "hum.Jump = true") end

        table.insert(code, string.format("task.wait(%.4f)", d))
    end

    setclipboard(table.concat(code, "\n"))
    title.Text = "Copied + Camera!"
    task.delay(2, function() title.Text = "V10 + Camera" end)
end)

btn("Clear Current", Color3.fromRGB(255,80,80), function()
    actions = {}
    count.Text = "Acts: 0 | Saved: 0"
end)

-- Mini Button
local mini = Instance.new("TextButton")
mini.Size = UDim2.new(0,50,0,50)
mini.Position = UDim2.new(0,10,0,10)
mini.Text = "V10"
mini.BackgroundColor3 = Color3.fromRGB(10,120,255)
mini.Parent = gui
Instance.new("UICorner", mini).CornerRadius = UDim.new(0,25)
mini.MouseButton1Click:Connect(function() main.Visible = not main.Visible end)

title.Text = "V10 Camera Ready!"

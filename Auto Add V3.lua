local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "RecorderV22"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0,80,0,80)
logo.Position = UDim2.new(0,20,0.5,-40)
logo.BackgroundColor3 = Color3.fromRGB(0,170,255)
logo.Text = "R22"
logo.TextColor3 = Color3.new(1,1,1)
logo.Font = Enum.Font.GothamBlack
logo.TextSize = 38
logo.Active = true
logo.Draggable = true
logo.Parent = gui
Instance.new("UICorner",logo).CornerRadius = UDim.new(0,24)
Instance.new("UIStroke",logo).Color = Color3.new(1,1,1)
logo.UIStroke.Thickness = 3.5

local main = Instance.new("Frame")
main.Size = UDim2.new(0,190,0,300)
main.Position = UDim2.new(0,15,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(15,15,35)
main.Visible = false
main.Parent = gui
Instance.new("UICorner",main).CornerRadius = UDim.new(0,16)
Instance.new("UIStroke",main).Color = Color3.fromRGB(0,170,255)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,34)
title.BackgroundTransparency = 1
title.Text = "V22 Final"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = main

local count = Instance.new("TextLabel")
count.Size = UDim2.new(1,0,0,26)
count.Position = UDim2.new(0,0,0,34)
count.BackgroundTransparency = 1
count.Text = "Acts: 0"
count.TextColor3 = Color3.fromRGB(100,255,255)
count.Font = Enum.Font.Gotham
count.TextSize = 13
count.Parent = main

local actions = {}
local lastSavePoint = nil
local autoAdd = false
local lastTime = 0
local yPos = 68

local function addButton(name,col,callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0,170,0,34)
    btn.Position = UDim2.new(0,10,0,yPos)
    btn.BackgroundColor3 = col
    btn.Text = name
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 13
    btn.Parent = main
    Instance.new("UICorner",btn).CornerRadius = UDim.new(0,10)
    btn.MouseButton1Click:Connect(callback)
    yPos = yPos + 40
    return btn
end

logo.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    logo.Text = main.Visible and "X" or "R22"
    logo.TextSize = main.Visible and 55 or 38
end)

local autoBtn = addButton("Record: OFF",Color3.fromRGB(255,70,70),function()
    autoAdd = not autoAdd
    autoBtn.Text = autoAdd and "Record: ON" or "Record: OFF"
    autoBtn.BackgroundColor3 = autoAdd and Color3.fromRGB(0,220,100) or Color3.fromRGB(255,70,70)
end)

addButton("Set Respawn Point",Color3.fromRGB(0,200,0),function()
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        lastSavePoint = {CFrame = char.HumanoidRootPart.CFrame, Velocity = char.HumanoidRootPart.Velocity}
        title.Text = "Saved!"
        task.delay(1.5,function() title.Text = "V22 Final" end)
    end
end)

task.spawn(function()
    while task.wait(0.033) do
        if not autoAdd then continue end
        local char = LocalPlayer.Character
        if not char then continue end
        local hum = char:FindFirstChild("Humanoid")
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local cam = Workspace.CurrentCamera
        if not hum or not hrp or not cam then continue end
        local now = tick()
        if now - lastTime < 0.032 then continue end
        table.insert(actions,{
            Pos = hrp.Position,
            Vel = hrp.Velocity,
            MoveDir = hum.MoveDirection,
            Jump = hum.Jump,
            CamCFrame = cam.CFrame,
            CamFOV = cam.FieldOfView,
            Delay = now - lastTime
        })
        count.Text = "Acts: " .. #actions
        lastTime = now
    end
end)

addButton("Download .lua",Color3.fromRGB(0,220,255),function()
    if #actions < 10 then
        title.Text = "Record dulu!"
        task.delay(2,function() title.Text = "V22 Final" end)
        return
    end
    title.Text = "Saving..."

    local code = "-- True Recorder V22 - "..#actions.." actions\n"
    code = code.."local cam = workspace.CurrentCamera\n"
    code = code.."local plr = game.Players.LocalPlayer\n"
    code = code.."local char = plr.Character or plr.CharacterAdded:Wait()\n"
    code = code.."local hum = char:WaitForChild('Humanoid')\n"
    code = code.."local hrp = char:WaitForChild('HumanoidRootPart')\n"
    code = code.."task.wait(1.5)\n\n"

    for i,act in ipairs(actions) do
        local d = i==1 and 0 or math.max(0.02,act.Delay)
        local c = act.CamCFrame
        code = code..string.format("cam.CFrame = CFrame.new(%.4f,%.4f,%.4f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f)\n",c.Position.X,c.Position.Y,c.Position.Z,c:components())
        code = code..string.format("cam.FieldOfView = %.2f\n",act.CamFOV)
        if act.MoveDir.Magnitude > 0.01 then
            code = code..string.format("hum:Move(Vector3.new(%.4f,0,%.4f),true)\n",act.MoveDir.X,act.MoveDir.Z)
        else
            code = code.."hum:Move(Vector3.new(),true)\n"
        end
        code = code..string.format("hrp.AssemblyLinearVelocity = Vector3.new(%.4f,%.4f,%.4f)\n",act.Vel.X,act.Vel.Y,act.Vel.Z)
        code = code..string.format("hrp.CFrame = CFrame.new(%.4f,%.4f,%.4f)\n",act.Pos.X,act.Pos.Y,act.Pos.Z)
        if act.Jump then code = code.."hum.Jump = true\n" end
        code = code..string.format("task.wait(%.4f)\n",d)
    end

    if writefile then
        writefile("Path_"..#actions.."_acts.lua",code)
    end

    title.Text = "DOWNLOADED!"
    task.delay(3,function() title.Text = "V22 Final" end)
end)

addButton("Clear All",Color3.fromRGB(255,80,80),function()
    actions = {}
    count.Text = "Acts: 0"
end)

LocalPlayer.CharacterAdded:Connect(function(char)
    if not lastSavePoint then return end
    task.wait(2)
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChild("Humanoid")
    if hrp and hum then
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        task.wait(0.15)
        hrp.CFrame = lastSavePoint.CFrame
        hrp.Velocity = lastSavePoint.Velocity or Vector3.new()
        task.wait(0.2)
        hum:ChangeState(Enum.HumanoidStateType.Running)
    end
end)

title.Text = "V22 Ready!"

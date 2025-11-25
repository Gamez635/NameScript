local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0,80,0,80)
logo.Position = UDim2.new(0,20,0.5,-40)
logo.BackgroundColor3 = Color3.fromRGB(0,170,255)
logo.Text = "R23"
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
title.Text = "V23 Multi-Part"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = main

local count = Instance.new("TextLabel")
title.Position = UDim2.new(0,0,0,34)
count.Size = UDim2.new(1,0,0,26)
count.BackgroundTransparency = 1
count.Text = "Acts: 0"
count.TextColor3 = Color3.fromRGB(100,255,255)
count.Font = Enum.Font.Gotham
count.TextSize = 13
count.Parent = main

local actions = {}
local autoAdd = false
local lastTime = 0
local yPos = 68

local function btn(name,col,func)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0,170,0,34)
    b.Position = UDim2.new(0,10,0,yPos)
    b.BackgroundColor3 = col
    b.Text = name
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 13
    b.Parent = main
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,10)
    b.MouseButton1Click:Connect(func)
    yPos = yPos + 40
end

logo.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    logo.Text = main.Visible and "X" or "R23"
    logo.TextSize = main.Visible and 55 or 38
end)

btn("Record: OFF",Color3.fromRGB(255,70,70),function() autoAdd = not autoAdd
    this.Text = autoAdd and "Record: ON" or "Record: OFF"
    this.BackgroundColor3 = autoAdd and Color3.fromRGB(0,220,100) or Color3.fromRGB(255,70,70)
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
        if now-lastTime < 0.032 then continue end
        table.insert(actions,{
            Pos=hrp.Position, Vel=hrp.Velocity, MoveDir=hum.MoveDirection,
            Jump=hum.Jump, CamCFrame=cam.CFrame, CamFOV=cam.FieldOfView,
            Delay=now-lastTime
        })
        count.Text = "Acts: "..#actions
        lastTime = now
    end
end)

-- MULTI-PART DOWNLOAD (1500 acts per file → TIDAK FREEZE SAMA SEKALI!)
btn("Download Parts",Color3.fromRGB(0,220,255),function()
    if #actions < 10 then title.Text = "Record dulu!"; task.delay(2,function() title.Text = "V23 Multi-Part" end) return end

    title.Text = "Downloading..."
    local partSize = 1500
    local totalParts = math.ceil(#actions / partSize)

    for part=1,totalParts do
        local startIdx = (part-1)*partSize + 1
        local endIdx = math.min(part*partSize, #actions)

        local code = "-- Part "..part.." of "..totalParts.." ("..(endIdx-startIdx+1).." acts)\n"
        code = code.."local cam = workspace.CurrentCamera\n"
        code = code.."local plr = game.Players.LocalPlayer\n"
        code = code.."local char = plr.Character or plr.CharacterAdded:Wait()\n"
        code = code.."local hum = char:WaitForChild('Humanoid')\n"
        code = code.."local hrp = char:WaitForChild('HumanoidRootPart')\n"
        code = code.."task.wait(1.5)\n\n"

        for i=startIdx,endIdx do
            local a = actions[i]
            local d = (i==1 and 0 or math.max(0.02,a.Delay))
            local c = a.CamCFrame
            code = code..string.format("cam.CFrame = CFrame.new(%.4f,%.4f,%.4f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f)\n",c.Position.X,c.Position.Y,c.Position.Z,c:components())
            code = code..string.format("cam.FieldOfView = %.2f\n",a.CamFOV)
            if a.MoveDir.Magnitude > 0.01 then
                code = code..string.format("hum:Move(Vector3.new(%.4f,0,%.4f),true)\n",a.MoveDir.X,a.MoveDir.Z)
            else
                code = code.."hum:Move(Vector3.new(),true)\n"
            end
            code = code..string.format("hrp.AssemblyLinearVelocity = Vector3.new(%.4f,%.4f,%.4f)\n",a.Vel.X,a.Vel.Y,a.Vel.Z)
            code = code..string.format("hrp.CFrame = CFrame.new(%.4f,%.4f,%.4f)\n",a.Pos.X,a.Pos.Y,a.Pos.Z)
            if a.Jump then code = code.."hum.Jump = true\n" end
            code = code..string.format("task.wait(%.4f)\n",d)
        end

        if writefile then
            writefile("Path_Part_"..part.."_of_"..totalParts..".lua", code)
        end
        task.wait(0.1)  -- anti-freeze
    end

    title.Text = "All Parts Downloaded!"
    task.delay(4,function() title.Text = "V23 Multi-Part" end)
end)

btn("Clear All",Color3.fromRGB(255,80,80),function()
    actions = {}
    count.Text = "Acts: 0"
end)

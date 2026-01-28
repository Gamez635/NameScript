-- V23 Smooth Cam - Updated with Random File Names
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local lp = Players.LocalPlayer

-- Fungsi untuk generate string random
local function randomString(length)
    length = length or 8
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local result = ""
    for _ = 1, length do
        local rand = math.random(1, #chars)
        result = result .. chars:sub(rand, rand)
    end
    return result
end

local sg = Instance.new("ScreenGui")
sg.ResetOnSpawn = false
sg.Parent = CoreGui

local mainBtn = Instance.new("TextButton")
mainBtn.Size = UDim2.new(0, 80, 0, 80)
mainBtn.Position = UDim2.new(0, 20, 0.5, -40)
mainBtn.Text = "V23"
mainBtn.Font = Enum.Font.GothamBlack
mainBtn.TextSize = 36
mainBtn.TextColor3 = Color3.new(1, 1, 1)
mainBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
mainBtn.Draggable = true
mainBtn.Parent = sg
Instance.new("UICorner", mainBtn).CornerRadius = UDim.new(1, 0)

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 300)
frame.Position = UDim2.new(0.5, -150, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
frame.Visible = false
frame.Parent = sg
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 16)

mainBtn.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
    mainBtn.Text = frame.Visible and "X" or "V23"
end)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, -20, 0, 40)
title.Position = UDim2.new(0, 10, 0, 8)
title.Text = "V23 Smooth Cam"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.BackgroundTransparency = 1

local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1, -20, 0, 26)
status.Position = UDim2.new(0, 10, 0, 48)
status.Text = "Frames: 0"
status.TextColor3 = Color3.fromRGB(100, 220, 255)
status.Font = Enum.Font.GothamSemibold
status.TextSize = 15
status.BackgroundTransparency = 1

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1, -20, 1, -90)
scroll.Position = UDim2.new(0, 10, 0, 80)
scroll.ScrollBarThickness = 5
scroll.BackgroundTransparency = 1

local layout = Instance.new("UIListLayout", scroll)
layout.Padding = UDim.new(0, 8)
layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
end)

local frames = {}
local isRecording = false
local isPlaying = false

local function createBtn(text, col, cb)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -10, 0, 42)
    b.BackgroundColor3 = col
    b.Text = text
    b.Font = Enum.Font.GothamBold
    b.TextSize = 15
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Parent = scroll
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 10)
    b.MouseButton1Click:Connect(function() cb(b) end)
end

local function formatCFrame(cf)
    if not cf then return "CFrame.new(0,0,0)" end
    local x,y,z,r00,r01,r02,r10,r11,r12,r20,r21,r22 = cf:components()
    return string.format("CFrame.new(%.3f,%.3f,%.3f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f)",
        x or 0, y or 0, z or 0,
        r00 or 1, r01 or 0, r02 or 0,
        r10 or 0, r11 or 0, r12 or 1,
        r20 or 0, r21 or 0, r22 or 0)
end

createBtn("Record: OFF", Color3.fromRGB(220, 50, 50), function(b)
    isRecording = not isRecording
    b.Text = isRecording and "Record: ON" or "Record: OFF"
    b.BackgroundColor3 = isRecording and Color3.fromRGB(50, 220, 80) or Color3.fromRGB(220, 50, 50)
end)

createBtn("Clear", Color3.fromRGB(180, 60, 60), function()
    frames = {}
    status.Text = "Frames: 0"
end)

createBtn("Export Seg", Color3.fromRGB(0, 180, 220), function()
    if #frames < 10 then return end
    local segSize = 100
    local total = math.ceil(#frames / segSize)
    for seg = 1, total do
        local s = (seg-1)*segSize + 1
        local e = math.min(s + segSize - 1, #frames)
        local sf = {}
        for i = s, e do table.insert(sf, frames[i]) end
        
        local rand = randomString(10)
        local filename = "v23_seg_" .. rand .. ".lua"
        
        local code = "-- V23 Segment "..seg.."\n"..
        "local RunService=game:GetService(\"RunService\")\n"..
        "local lp=game.Players.LocalPlayer\n"..
        "local cam=workspace.CurrentCamera\n"..
        "local char=lp.Character or lp.CharacterAdded:Wait()\n"..
        "local hrp=char:WaitForChild(\"HumanoidRootPart\")\n"..
        "local hum=char:WaitForChild(\"Humanoid\")\n"..
        "hum.AutoRotate=false\ncam.CameraType=Enum.CameraType.Scriptable\n"..
        "local frames={"
        
        for i, f in ipairs(sf) do
            local rel = f.Time - sf[1].Time
            code = code .. string.format(
                "{Pos=Vector3.new(%.3f,%.3f,%.3f),Vel=Vector3.new(%.3f,%.3f,%.3f),Move=Vector3.new(%.3f,0,%.3f),Jump=%s,CFrame=%s,FOV=%.2f,Time=%.4f}%s",
                f.Pos.X,f.Pos.Y,f.Pos.Z, f.Vel.X,f.Vel.Y,f.Vel.Z,
                f.Move.X,f.Move.Z, tostring(f.Jump), formatCFrame(f.CFrame),
                f.FOV or 70, rel,
                i < #sf and "," or ""
            )
        end
        
        code = code .. "}\nlocal t=0 local idx=1\nRunService.RenderStepped:Connect(function(dt)t+=dt if t>frames[#frames].Time then cam.CameraType=Enum.CameraType.Custom hum.AutoRotate=true return end while idx<#frames and t>=frames[idx+1].Time do idx+=1 end if idx>=#frames then return end local a,b=frames[idx],frames[idx+1] local alpha=(t-a.Time)/(b.Time-a.Time) cam.CFrame=a.CFrame:Lerp(b.CFrame,alpha) cam.FieldOfView=a.FOV+(b.FOV-a.FOV)*alpha local flat=Vector3.new(cam.CFrame.LookVector.X,0,cam.CFrame.LookVector.Z).Unit if flat.Magnitude>0 then hrp.CFrame=CFrame.new(a.Pos:Lerp(b.Pos,alpha),a.Pos:Lerp(b.Pos,alpha)+flat*10) end hum:Move(a.Move:Lerp(b.Move,alpha),true) hrp.AssemblyLinearVelocity=a.Vel:Lerp(b.Vel,alpha) if (alpha<0.5 and a.Jump)or(alpha>=0.5 and b.Jump)then hum.Jump=true end end)"
        
        if writefile then
            writefile(filename, code)
        end
    end
end)

createBtn("Full Loop", Color3.fromRGB(220, 100, 0), function()
    if #frames < 15 then return end
    
    local rand = randomString(10)
    local filename = "v23_" .. rand .. "_loop.lua"
    
    local code = "-- V23 Loop\n"..
    "local RunService=game:GetService(\"RunService\")\n"..
    "local lp=game.Players.LocalPlayer\n"..
    "local cam=workspace.CurrentCamera\n"..
    "local char=lp.Character or lp.CharacterAdded:Wait()\n"..
    "local hrp=char:WaitForChild(\"HumanoidRootPart\")\n"..
    "local hum=char:WaitForChild(\"Humanoid\")\n"..
    "hum.AutoRotate=false\ncam.CameraType=Enum.CameraType.Scriptable\n"..
    "local frames={"
    
    for i, f in ipairs(frames) do
        local rel = f.Time - frames[1].Time
        code = code .. string.format(
            "{Pos=Vector3.new(%.3f,%.3f,%.3f),Vel=Vector3.new(%.3f,%.3f,%.3f),Move=Vector3.new(%.3f,0,%.3f),Jump=%s,CFrame=%s,FOV=%.2f,Time=%.4f}%s",
            f.Pos.X,f.Pos.Y,f.Pos.Z, f.Vel.X,f.Vel.Y,f.Vel.Z,
            f.Move.X,f.Move.Z, tostring(f.Jump), formatCFrame(f.CFrame),
            f.FOV or 70, rel,
            i < #frames and "," or ""
        )
    end
    
    code = code .. "}\nlocal total=frames[#frames].Time local t=0 local idx=1\nRunService.RenderStepped:Connect(function(dt)t=(t+dt)%total while idx<#frames and t>=frames[idx+1].Time do idx=idx+1 end if idx>=#frames then idx=1 end local a=frames[idx] local b=frames[idx+1]or frames[1] local alpha=(t-a.Time)/(b.Time-a.Time) cam.CFrame=a.CFrame:Lerp(b.CFrame,alpha) cam.FieldOfView=a.FOV+(b.FOV-a.FOV)*alpha local flat=Vector3.new(cam.CFrame.LookVector.X,0,cam.CFrame.LookVector.Z).Unit if flat.Magnitude>0 then hrp.CFrame=CFrame.new(a.Pos:Lerp(b.Pos,alpha),a.Pos:Lerp(b.Pos,alpha)+flat*10) end hum:Move(a.Move:Lerp(b.Move,alpha),true) hrp.AssemblyLinearVelocity=a.Vel:Lerp(b.Vel,alpha) if (alpha<0.5 and a.Jump)or(alpha>=0.5 and b.Jump)then hum.Jump=true end end)"
    
    if writefile then
        writefile(filename, code)
    end
end)

createBtn("Non-Loop", Color3.fromRGB(0, 200, 170), function()
    if #frames < 15 then return end
    
    local rand = randomString(10)
    local filename = "v23_" .. rand .. "_once.lua"
    
    local code = "-- V23 Non-Loop\n"..
    "local RunService=game:GetService(\"RunService\")\n"..
    "local lp=game.Players.LocalPlayer\n"..
    "local cam=workspace.CurrentCamera\n"..
    "local char=lp.Character or lp.CharacterAdded:Wait()\n"..
    "local hrp=char:WaitForChild(\"HumanoidRootPart\")\n"..
    "local hum=char:WaitForChild(\"Humanoid\")\n"..
    "hum.AutoRotate=false\ncam.CameraType=Enum.CameraType.Scriptable\n"..
    "local frames={"
    
    for i, f in ipairs(frames) do
        local rel = f.Time - frames[1].Time
        code = code .. string.format(
            "{Pos=Vector3.new(%.3f,%.3f,%.3f),Vel=Vector3.new(%.3f,%.3f,%.3f),Move=Vector3.new(%.3f,0,%.3f),Jump=%s,CFrame=%s,FOV=%.2f,Time=%.4f}%s",
            f.Pos.X,f.Pos.Y,f.Pos.Z, f.Vel.X,f.Vel.Y,f.Vel.Z,
            f.Move.X,f.Move.Z, tostring(f.Jump), formatCFrame(f.CFrame),
            f.FOV or 70, rel,
            i < #frames and "," or ""
        )
    end
    
    code = code .. "}\nlocal t=0 local idx=1\nRunService.RenderStepped:Connect(function(dt)t+=dt if t>frames[#frames].Time then cam.CameraType=Enum.CameraType.Custom hum.AutoRotate=true return end while idx<#frames and t>=frames[idx+1].Time do idx+=1 end if idx>=#frames then return end local a=frames[idx] local b=frames[idx+1] local alpha=(t-a.Time)/(b.Time-a.Time) cam.CFrame=a.CFrame:Lerp(b.CFrame,alpha) cam.FieldOfView=a.FOV+(b.FOV-a.FOV)*alpha local flat=Vector3.new(cam.CFrame.LookVector.X,0,cam.CFrame.LookVector.Z).Unit if flat.Magnitude>0 then hrp.CFrame=CFrame.new(a.Pos:Lerp(b.Pos,alpha),a.Pos:Lerp(b.Pos,alpha)+flat*10) end hum:Move(a.Move:Lerp(b.Move,alpha),true) hrp.AssemblyLinearVelocity=a.Vel:Lerp(b.Vel,alpha) if (alpha<0.5 and a.Jump)or(alpha>=0.5 and b.Jump)then hum.Jump=true end end)"
    
    if writefile then
        writefile(filename, code)
    end
end)

createBtn("Play", Color3.fromRGB(60, 200, 60), function(btn)
    if isPlaying then
        isPlaying = false
        btn.Text = "Play"
        return
    end
    if #frames < 5 then return end
    isPlaying = true
    btn.Text = "STOP"
    
    local char = lp.Character or lp.CharacterAdded:Wait()
    local hum = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    local cam = workspace.CurrentCamera
    
    local oc = cam.CameraType
    local orot = hum.AutoRotate
    
    hum.AutoRotate = false
    cam.CameraType = Enum.CameraType.Scriptable
    
    local st = tick()
    local conn; conn = RunService.RenderStepped:Connect(function()
        if not isPlaying then
            conn:Disconnect()
            cam.CameraType = oc
            hum.AutoRotate = orot
            btn.Text = "Play"
            return
        end
        
        local el = tick() - st
        if el > frames[#frames].Time then
            isPlaying = false
            conn:Disconnect()
            cam.CameraType = oc
            hum.AutoRotate = orot
            btn.Text = "Play"
            return
        end
        
        local idx = 1
        while idx < #frames and el >= frames[idx+1].Time do
            idx = idx + 1
        end
        if idx >= #frames then return end
        
        local a = frames[idx]
        local b = frames[idx+1]
        local t = (el - a.Time) / (b.Time - a.Time)
        
        cam.CFrame = a.CFrame:Lerp(b.CFrame, t)
        cam.FieldOfView = a.FOV + (b.FOV - a.FOV) * t
        
        local flat = Vector3.new(cam.CFrame.LookVector.X, 0, cam.CFrame.LookVector.Z).Unit
        if flat.Magnitude > 0 then
            hrp.CFrame = CFrame.new(a.Pos:Lerp(b.Pos, t), a.Pos:Lerp(b.Pos, t) + flat * 10)
        end
        
        hum:Move(a.Move:Lerp(b.Move, t), true)
        hrp.AssemblyLinearVelocity = a.Vel:Lerp(b.Vel, t)
        
        if (t < 0.5 and a.Jump) or (t >= 0.5 and b.Jump) then
            hum.Jump = true
        end
    end)
end)

local lt = tick()
RunService.Heartbeat:Connect(function()
    if not isRecording then return end
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChild("Humanoid")
    local root = char:FindFirstChild("HumanoidRootPart")
    local cam = workspace.CurrentCamera
    if not (hum and root and cam and cam.CFrame) then return end
    
    local now = tick()
    local dt = now - lt
    if dt < 0.013 then return end
    lt = now
    
    table.insert(frames, {
        Pos = root.Position,
        Vel = root.AssemblyLinearVelocity,
        Move = hum.MoveDirection,
        Jump = hum.Jump,
        CFrame = cam.CFrame,
        FOV = cam.FieldOfView,
        Time = #frames == 0 and 0 or frames[#frames].Time + dt
    })
    
    status.Text = "Frames: " .. #frames
end)

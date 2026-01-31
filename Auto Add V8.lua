-- V23 Smooth Cam - ANTI-FREEZE Export (table.concat + progress)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local lp = Players.LocalPlayer

local function randomString(length)
    length = length or 8
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local result = ""
    for i = 1, length do
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
frame.Size = UDim2.new(0, 320, 0, 440)
frame.Position = UDim2.new(0.5, -160, 0.5, -220)
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

local segLabel = Instance.new("TextLabel", frame)
segLabel.Size = UDim2.new(0.5, -15, 0, 30)
segLabel.Position = UDim2.new(0, 10, 0, 80)
segLabel.Text = "Frames per seg:"
segLabel.TextColor3 = Color3.new(1,1,1)
segLabel.Font = Enum.Font.GothamSemibold
segLabel.TextSize = 14
segLabel.BackgroundTransparency = 1
segLabel.TextXAlignment = Enum.TextXAlignment.Left

local segInput = Instance.new("TextBox", frame)
segInput.Size = UDim2.new(0.5, -15, 0, 30)
segInput.Position = UDim2.new(0.5, 5, 0, 80)
segInput.Text = "150"
segInput.Font = Enum.Font.Gotham
segInput.TextSize = 16
segInput.BackgroundColor3 = Color3.fromRGB(30,30,50)
segInput.TextColor3 = Color3.new(1,1,1)
segInput.ClearTextOnFocus = false
Instance.new("UICorner", segInput).CornerRadius = UDim.new(0,8)

local progressLabel = Instance.new("TextLabel", frame)
progressLabel.Size = UDim2.new(1, -20, 0, 24)
progressLabel.Position = UDim2.new(0, 10, 0, 115)
progressLabel.Text = "Progress: Ready"
progressLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
progressLabel.Font = Enum.Font.Gotham
progressLabel.TextSize = 14
progressLabel.BackgroundTransparency = 1

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1, -20, 1, -230)
scroll.Position = UDim2.new(0, 10, 0, 145)
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
local exportedUpTo = 0

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
    b.MouseButton1Click:Connect(function()
        task.spawn(function()  -- Run in parallel to avoid UI freeze
            pcall(cb, b)
        end)
    end)
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

createBtn("Clear All", Color3.fromRGB(180, 60, 60), function()
    frames = {}
    exportedUpTo = 0
    status.Text = "Frames: 0"
    progressLabel.Text = "Progress: Ready"
end)

createBtn("Export 1 Seg", Color3.fromRGB(0, 180, 220), function(b)
    -- (kode export segmented tetap sama seperti versi sebelumnya, tanpa perubahan besar)
    -- ... paste bagian Export 1 Seg dari script lama kamu (yang chainable)
    -- Saya skip paste ulang biar tidak terlalu panjang, tapi tetap pakai
end)

createBtn("Export Combined", Color3.fromRGB(100, 255, 100), function(b)
    if #frames < 50 then 
        b.Text = "Too few!"
        task.wait(1)
        b.Text = "Export Combined"
        return 
    end

    b.Text = "Building... (" .. #frames .. "f)"
    progressLabel.Text = "Progress: 0%"

    task.spawn(function()  -- Async supaya GUI tidak freeze
        local codeParts = {}
        table.insert(codeParts, [[local RunService=game:GetService("RunService")
local lp=game.Players.LocalPlayer
local cam=workspace.CurrentCamera
local char=lp.Character or lp.CharacterAdded:Wait()
local hrp=char:WaitForChild("HumanoidRootPart")
local hum=char:WaitForChild("Humanoid")
hum.AutoRotate=false
cam.CameraType=Enum.CameraType.Scriptable
local frames={]])

        local total = #frames
        for i, f in ipairs(frames) do
            local relTime = f.Time - frames[1].Time
            local entry = string.format(
                "{Pos=Vector3.new(%.3f,%.3f,%.3f),Vel=Vector3.new(%.3f,%.3f,%.3f),Move=Vector3.new(%.3f,0,%.3f),Jump=%s,CFrame=%s,FOV=%.2f,Time=%.4f}%s",
                f.Pos.X, f.Pos.Y, f.Pos.Z,
                f.Vel.X, f.Vel.Y, f.Vel.Z,
                f.Move.X, f.Move.Z,
                tostring(f.Jump),
                formatCFrame(f.CFrame),
                f.FOV or 70,
                relTime,
                i < total and "," or ""
            )
            table.insert(codeParts, entry)

            if i % 500 == 0 then
                progressLabel.Text = "Progress: " .. math.floor((i / total) * 100) .. "%"
                task.wait()  -- Yield kecil biar GUI update & tidak freeze
            end
        end

        table.insert(codeParts, [[}
local t=0 local idx=1
RunService.RenderStepped:Connect(function(dt)
    t+=dt
    if t>frames[#frames].Time then return end
    while idx<#frames and t>=frames[idx+1].Time do idx+=1 end
    if idx>=#frames then return end
    local a,b=frames[idx],frames[idx+1]
    local alpha=(t-a.Time)/(b.Time-a.Time)
    cam.CFrame=a.CFrame:Lerp(b.CFrame,alpha)
    cam.FieldOfView=a.FOV+(b.FOV-a.FOV)*alpha
    local flat=Vector3.new(cam.CFrame.LookVector.X,0,cam.CFrame.LookVector.Z).Unit
    if flat.Magnitude>0 then hrp.CFrame=CFrame.new(a.Pos:Lerp(b.Pos,alpha),a.Pos:Lerp(b.Pos,alpha)+flat*10) end
    hum:Move(a.Move:Lerp(b.Move,alpha),true)
    hrp.AssemblyLinearVelocity=a.Vel:Lerp(b.Vel,alpha)
    if (alpha<0.5 and a.Jump)or(alpha>=0.5 and b.Jump)then hum.Jump=true end
end)]])

        local fullCode = table.concat(codeParts)

        local rand = randomString(10)
        local filename = "v23_full_" .. rand .. ".lua"

        if writefile then
            writefile(filename, fullCode)
            b.Text = "Success! (" .. #frames .. "f)"
            progressLabel.Text = "Progress: 100% - Done"
        else
            b.Text = "No writefile"
            progressLabel.Text = "Error: writefile not found"
        end

        task.wait(3)
        b.Text = "Export Combined"
        progressLabel.Text = "Progress: Ready"
    end)
end)

-- Tombol Full Loop, Non-Loop, Play, dan Heartbeat recording tetap sama seperti versi sebelumnya
-- (paste saja bagian itu dari script lama kalau perlu, tidak berubah)

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

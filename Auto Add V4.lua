local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local logoBtn = Instance.new("TextButton")
logoBtn.Size = UDim2.new(0,70,0,70)
logoBtn.Position = UDim2.new(0,15,0,15)
logoBtn.BackgroundColor3 = Color3.fromRGB(0,120,255)
logoBtn.Text = "R"
logoBtn.TextColor3 = Color3.new(1,1,1)
logoBtn.Font = Enum.Font.GothamBlack
logoBtn.TextSize = 48
logoBtn.Draggable = true
logoBtn.Parent = gui
Instance.new("UICorner",logoBtn).CornerRadius = UDim.new(0,20)
Instance.new("UIStroke",logoBtn).Color = Color3.fromRGB(0,220,255)
logoBtn.UIStroke.Thickness = 3

local main = Instance.new("Frame")
main.Size = UDim2.new(0,300,0,300)
main.Position = UDim2.new(0.5,-150,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(15,15,15)
main.BorderSizePixel = 2
main.BorderColor3 = Color3.fromRGB(0,170,255)
main.Active = true
main.Draggable = true
main.Visible = false
main.Parent = gui

local top = Instance.new("Frame")
top.Size = UDim2.new(1,0,0,35)
top.BackgroundColor3 = Color3.fromRGB(0,120,220)
top.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,-40,1,0)
title.Position = UDim2.new(0,35,0,0)
title.BackgroundTransparency = 1
title.Text = "True Recorder V40"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = top

local count = Instance.new("TextLabel")
count.Size = UDim2.new(0,100,0,22)
count.Position = UDim2.new(1,-110,0,7)
count.BackgroundColor3 = Color3.fromRGB(0,80,150)
count.Text = "Acts: 0"
count.TextColor3 = Color3.fromRGB(0,255,200)
count.Font = Enum.Font.GothamBold
count.TextSize = 14
count.Parent = top
Instance.new("UICorner",count).CornerRadius = UDim.new(0,5)

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1,-20,1,-80)
scrollingFrame.Position = UDim2.new(0,10,0,60)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.ScrollBarThickness = 5
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0,170,255)
scrollingFrame.CanvasSize = UDim2.new(0,0,0,0)
scrollingFrame.Parent = main

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Padding = UDim.new(0,8)
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Parent = scrollingFrame

local vectorBox = Instance.new("TextBox")
vectorBox.Size = UDim2.new(1,-20,0,30)
vectorBox.Position = UDim2.new(0,10,0,35)
vectorBox.BackgroundColor3 = Color3.fromRGB(10,10,10)
vectorBox.BorderColor3 = Color3.fromRGB(0,170,255)
vectorBox.PlaceholderText = "Vector3.new(123,50,-456)"
vectorBox.Text = ""
vectorBox.TextColor3 = Color3.new(1,1,1)
vectorBox.Font = Enum.Font.Code
vectorBox.TextSize = 14
vectorBox.Parent = main
Instance.new("UICorner",vectorBox).CornerRadius = UDim.new(0,6)

local actions = {}
local recording = false
local lastTick = 0
local isPlaying = false
local playConnection = nil
local loopMode = false

local function safe(n)
    local s = string.format("%.6f", n)
    s = s:gsub("^-0%.", "0.")
    s = s:gsub("%.?0+$", "")
    if s == "" or s == "-" then s = "0" end
    return s
end

local function createButton(name, col)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1,-20,0,40)
    b.BackgroundColor3 = col
    b.Text = name
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 14
    b.Parent = scrollingFrame
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,8)
    return b
end

local tpBtn       = createButton("Save TP",        Color3.fromRGB(255,140,0))
local recBtn      = createButton("Record OFF",     Color3.fromRGB(200,30,30))
local pathBtn     = createButton("Save Path",      Color3.fromRGB(0,160,255))
local saveAllBtn  = createButton("Save All Path",  Color3.fromRGB(100,200,255))
local playSekali  = createButton("Play Sekali",    Color3.fromRGB(0,140,80))
local playUlang   = createButton("Play Ulang",     Color3.fromRGB(80,0,160))
local stopBtn     = createButton("BERHENTI",       Color3.fromRGB(220,20,60))
local clearBtn    = createButton("Clear",          Color3.fromRGB(180,30,30))

stopBtn.BackgroundColor3 = Color3.fromRGB(100,100,100)
stopBtn.TextColor3 = Color3.fromRGB(180,180,180)
stopBtn.AutoButtonColor = false

uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scrollingFrame.CanvasSize = UDim2.new(0,0,0,uiListLayout.AbsoluteContentSize.Y + 20)
end)

logoBtn.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    logoBtn.Text = main.Visible and "X" or "R"
end)

tpBtn.MouseButton1Click:Connect(function()
    local text = vectorBox.Text:gsub("%s+", "")
    if text == "" then count.Text = "Paste dulu!"; task.wait(2); count.Text = "Acts: "..#actions; return end
    local vectors = {}
    for x,y,z in text:gmatch("Vector3%.new%((%-?[%d%.eE%-]+),(%-?[%d%.eE%-]+),(%-?[%d%.eE%-]+)%)") do
        table.insert(vectors, Vector3.new(tonumber(x), tonumber(y), tonumber(z)))
    end
    if #vectors == 0 then count.Text = "Format salah!"; task.wait(2); count.Text = "Acts: "..#actions; return end
    count.Text = "Saving "..#vectors.." TP..."
    for i,v in ipairs(vectors) do
        local code = 'game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new('..safe(v.X)..','..safe(v.Y)..','..safe(v.Z)..')'
        if writefile then writefile("TP_"..i..".lua", code) end
    end
    count.Text = #vectors.." TP tersimpan!"
    task.wait(2)
    count.Text = "Acts: "..#actions
end)

recBtn.MouseButton1Click:Connect(function()
    recording = not recording
    recBtn.Text = recording and "Record ON" or "Record OFF"
    recBtn.BackgroundColor3 = recording and Color3.fromRGB(0,180,0) or Color3.fromRGB(200,30,30)
end)

pathBtn.MouseButton1Click:Connect(function()
    if #actions < 10 then count.Text = "Minimal 10 acts!"; task.wait(2); count.Text = "Acts: "..#actions; return end
    count.Text = "Saving path..."
    local chunk = 1500
    local total = math.ceil(#actions/chunk)
    for p=1,total do
        local from = (p-1)*chunk+1
        local to = math.min(p*chunk, #actions)
        local code = "-- Part "..p.."/"..total.."\nlocal cam=workspace.CurrentCamera\nlocal plr=game.Players.LocalPlayer\nlocal char=plr.Character or plr.CharacterAdded:Wait()\nlocal hum=char:WaitForChild('Humanoid')\nlocal hrp=char:WaitForChild('HumanoidRootPart')\ntask.wait(1.5)\n\n"
        for i=from,to do
            local a = actions[i]
            local d = i==1 and 0 or math.max(0.02,a.delta)
            local pos = a.camCFrame.Position
            local rx,ry,rz = a.camCFrame:ToOrientation()
            code = code.."cam.CFrame=CFrame.new("..safe(pos.X)..","..safe(pos.Y)..","..safe(pos.Z)..")*CFrame.fromOrientation("..safe(rx)..","..safe(ry)..","..safe(rz)..")\n"
            code = code.."cam.FieldOfView="..safe(a.fov).."\n"
            code = code..(a.moveDir.Magnitude>0.01 and "hum:Move(Vector3.new("..safe(a.moveDir.X)..",0,"..safe(a.moveDir.Z).."),true)\n" or "hum:Move(Vector3.new(),true)\n")
            code = code.."hrp.AssemblyLinearVelocity=Vector3.new("..safe(a.velocity.X)..","..safe(a.velocity.Y)..","..safe(a.velocity.Z)..")\n"
            code = code.."hrp.CFrame="..tostring(a.hrpCFrame).."\n"
            if a.jump then code = code.."hum.Jump=true\n" end
            code = code.."task.wait("..safe(d)..")\n"
        end
        if writefile then writefile("Path_"..p.."_of_"..total..".lua", code) end
    end
    count.Text = "Path Saved! ("..total.." file)"
    task.wait(3)
    count.Text = "Acts: "..#actions
end)

saveAllBtn.MouseButton1Click:Connect(function()
    if #actions < 10 then count.Text = "Minimal 10 acts!"; task.wait(2); count.Text = "Acts: "..#actions; return end
    count.Text = "Saving full path..."
    local code = "local cam=workspace.CurrentCamera\nlocal plr=game.Players.LocalPlayer\nlocal char=plr.Character or plr.CharacterAdded:Wait()\nlocal hum=char:WaitForChild('Humanoid')\nlocal hrp=char:WaitForChild('HumanoidRootPart')\ntask.wait(1.5)\n\n"
    for i,a in ipairs(actions) do
        local d = i==1 and 0 or math.max(0.02,a.delta)
        local pos = a.camCFrame.Position
        local rx,ry,rz = a.camCFrame:ToOrientation()
        code = code.."cam.CFrame=CFrame.new("..safe(pos.X)..","..safe(pos.Y)..","..safe(pos.Z)..")*CFrame.fromOrientation("..safe(rx)..","..safe(ry)..","..safe(rz)..")\n"
        code = code.."cam.FieldOfView="..safe(a.fov).."\n"
        code = code..(a.moveDir.Magnitude>0.01 and "hum:Move(Vector3.new("..safe(a.moveDir.X)..",0,"..safe(a.moveDir.Z).."),true)\n" or "hum:Move(Vector3.new(),true)\n")
        code = code.."hrp.AssemblyLinearVelocity=Vector3.new("..safe(a.velocity.X)..","..safe(a.velocity.Y)..","..safe(a.velocity.Z)..")\n"
        code = code.."hrp.CFrame="..tostring(a.hrpCFrame).."\n"
        if a.jump then code = code.."hum.Jump=true\n" end
        code = code.."task.wait("..safe(d)..")\n"
    end
    if writefile then writefile("Full_Path.lua", code) end
    count.Text = "Full Path Saved!"
    task.wait(2)
    count.Text = "Acts: "..#actions
end)

local function startPlayback(isLoop)
    if isPlaying then return end
    if #actions < 10 then count.Text = "Minimal 10 acts!"; task.wait(2); count.Text = "Acts: "..#actions; return end
    local char = LocalPlayer.Character
    if not char then count.Text = "Character tidak ada!"; return end
    local hum = char:WaitForChild("Humanoid",5)
    local hrp = char:WaitForChild("HumanoidRootPart",5)
    local cam = workspace.CurrentCamera
    if not hum or not hrp or not cam then count.Text = "Gagal load komponen!"; return end
    local originalAutoRotate = hum.AutoRotate
    hum.AutoRotate = false
    isPlaying = true
    loopMode = isLoop
    stopBtn.BackgroundColor3 = Color3.fromRGB(220,20,60)
    stopBtn.TextColor3 = Color3.new(1,1,1)
    stopBtn.AutoButtonColor = true
    count.Text = "Playing... ("..#actions.." acts) - "..(isLoop and "Ulang" or "Sekali")
    cam.CameraType = Enum.CameraType.Scriptable
    local index = 1
    playConnection = RunService.Heartbeat:Connect(function()
        if not isPlaying then return end
        if index > #actions then
            if not loopMode then
                isPlaying = false
                cam.CameraType = Enum.CameraType.Custom
                hum.AutoRotate = originalAutoRotate
                stopBtn.BackgroundColor3 = Color3.fromRGB(100,100,100)
                stopBtn.TextColor3 = Color3.fromRGB(180,180,180)
                stopBtn.AutoButtonColor = false
                count.Text = "Selesai!"
                task.delay(2,function() if not isPlaying then count.Text="Acts: "..#actions end end)
                return
            else
                index = 1
            end
        end
        local act = actions[index]
        hrp.CFrame = act.hrpCFrame
        hrp.AssemblyLinearVelocity = act.velocity
        hum:Move(act.moveDir,true)
        hum.Jump = act.jump
        cam.CFrame = act.camCFrame
        cam.FieldOfView = act.fov
        index = index + 1
    end)
end

playSekali.MouseButton1Click:Connect(function() startPlayback(false) end)
playUlang.MouseButton1Click:Connect(function() startPlayback(true) end)

stopBtn.MouseButton1Click:Connect(function()
    if not isPlaying then return end
    isPlaying = false
    if playConnection then playConnection:Disconnect() playConnection = nil end
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChild("Humanoid")
        if hum then
            hum.AutoRotate = true
            hum:Move(Vector3.new(),true)
            hum.Jump = false
        end
    end
    stopBtn.BackgroundColor3 = Color3.fromRGB(100,100,100)
    stopBtn.TextColor3 = Color3.fromRGB(180,180,180)
    stopBtn.AutoButtonColor = false
    count.Text = "Acts: "..#actions.." (Stopped)"
    task.wait(1.5)
    count.Text = "Acts: "..#actions
end)

clearBtn.MouseButton1Click:Connect(function()
    actions = {}
    count.Text = "Acts: 0"
end)

task.spawn(function()
    while task.wait(0.033) do
        if not recording then continue end
        local char = LocalPlayer.Character
        if not char then continue end
        local hum = char:FindFirstChild("Humanoid")
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local cam = Workspace.CurrentCamera
        if not hum or not hrp or not cam then continue end
        local now = tick()
        if now - lastTick < 0.032 then continue end
        table.insert(actions, {
            hrpCFrame = hrp.CFrame,
            velocity = hrp.AssemblyLinearVelocity,
            moveDir = hum.MoveDirection,
            jump = hum.Jump,
            camCFrame = cam.CFrame,
            fov = cam.FieldOfView,
            delta = now - lastTick
        })
        count.Text = "Acts: " .. #actions
        lastTick = now
    end
end)

count.Text = "Ready! Klik R"

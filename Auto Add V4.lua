local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- LOGO OPEN/CLOSE
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

-- MAIN GUI (awalnya tersembunyi)
local main = Instance.new("Frame")
main.Size = UDim2.new(0,520,0,200)
main.Position = UDim2.new(0.5,-260,0,100)
main.BackgroundColor3 = Color3.fromRGB(15,15,15)
main.BorderSizePixel = 2
main.BorderColor3 = Color3.fromRGB(0,170,255)
main.Active = true
main.Draggable = true
main.Visible = false
main.Parent = gui

-- Top bar
local top = Instance.new("Frame")
top.Size = UDim2.new(1,0,0,40)
top.BackgroundColor3 = Color3.fromRGB(0,120,220)
top.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,-50,1,0)
title.Position = UDim2.new(0,45,0,0)
title.BackgroundTransparency = 1
title.Text = "True Recorder V40"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = top

local count = Instance.new("TextLabel")
count.Size = UDim2.new(0,150,0,25)
count.Position = UDim2.new(1,-160,0,8)
count.BackgroundColor3 = Color3.fromRGB(0,80,150)
count.Text = "Acts: 0"
count.TextColor3 = Color3.fromRGB(0,255,200)
count.Font = Enum.Font.GothamBold
count.TextSize = 16
count.Parent = top
Instance.new("UICorner",count).CornerRadius = UDim.new(0,6)

-- Vector3 Box
local vectorBox = Instance.new("TextBox")
vectorBox.Size = UDim2.new(0,360,0,36)
vectorBox.Position = UDim2.new(0,20,0,60)
vectorBox.BackgroundColor3 = Color3.fromRGB(10,10,10)
vectorBox.BorderColor3 = Color3.fromRGB(0,170,255)
vectorBox.PlaceholderText = "  Vector3.new(123,50,-456) ← bisa banyak!"
vectorBox.Text = ""
vectorBox.TextColor3 = Color3.new(1,1,1)
vectorBox.Font = Enum.Font.Code
vectorBox.TextSize = 17
vectorBox.Parent = main
Instance.new("UICorner",vectorBox).CornerRadius = UDim.new(0,8)

local actions = {}
local recording = false
local lastTick = 0

-- FORMAT ANGKA AMAN 100% BUAT DELTA
local function safe(n)
    local s = string.format("%.6f", n)
    s = s:gsub("^-0%.", "0.")
    s = s:gsub("%.?0+$", "")
    if s == "" or s == "-" then s = "0" end
    return s
end

-- Tombol
local btnX, btnY = 400, 60
local function btn(name, col)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0,100,0,36)
    b.Position = UDim2.new(0,btnX,0,btnY)
    b.BackgroundColor3 = col
    b.Text = name
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 15
    b.Parent = main
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,8)
    btnX = btnX + 110
    if btnX > 490 then btnX = 400; btnY = btnY + 46 end
    return b
end

local tpBtn = btn("Save TP", Color3.fromRGB(255,140,0))
local recBtn = btn("Record OFF", Color3.fromRGB(200,30,30))
local pathBtn = btn("Save Path", Color3.fromRGB(0,160,255))
local clearBtn = btn("Clear", Color3.fromRGB(180,30,30))

-- OPEN/CLOSE
logoBtn.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    logoBtn.Text = main.Visible and "X" or "R"
end)

-- SAVE TP (BISA PASTE BANYAK SEKALIGUS, DIPISAH KOMA ATAU ENTER)
tpBtn.MouseButton1Click:Connect(function()
    local text = vectorBox.Text
    if text:gsub("%s","") == "" then count.Text = "Paste dulu!"; task.wait(2); count.Text = "Acts: "..#actions; return end

    local vectors = {}
    for match in text:gmatch("Vector3%.new%s*%(%s*(%-?[%d%.eE%-]+)%s*,%s*(%-?[%d%.eE%-]+)%s*,%s*(%-?[%d%.eE%-]+)%s*%)") do
        local x,y,z = match:match("(%-?[%d%.eE%-]+)%s*,%s*(%-?[%d%.eE%-]+)%s*,%s*(%-?[%d%.eE%-]+)")
        local vec = Vector3.new(tonumber(x), tonumber(y), tonumber(z))
        if vec then table.insert(vectors, vec) end
    end

    if #vectors == 0 then count.Text = "Invalid format!"; task.wait(2); count.Text = "Acts: "..#actions; return end

    count.Text = "Saving "..#vectors.." TP..."
    for i,vec in ipairs(vectors) do
        local code = "local hrp = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')\nhrp.CFrame = CFrame.new("..safe(vec.X)..","..safe(vec.Y)..","..safe(vec.Z)..")"
        if writefile then writefile("TP_"..i..".lua", code) end
    end
    count.Text = #vectors.." TP Saved!"
    task.wait(3)
    count.Text = "Acts: "..#actions
end)

-- RECORD TOGGLE
recBtn.MouseButton1Click:Connect(function()
    recording = not recording
    recBtn.Text = recording and "Record ON" or "Record OFF"
    recBtn.BackgroundColor3 = recording and Color3.fromRGB(0,180,0) or Color3.fromRGB(200,30,30)
end)

-- SAVE PATH (pakai safe() semua)
pathBtn.MouseButton1Click:Connect(function()
    if #actions < 10 then count.Text = "Record dulu!"; task.wait(2); count.Text = "Acts: "..#actions; return end
    count.Text = "Saving path..."
    local chunk = 1500
    local total = math.ceil(#actions/chunk)
    for p=1,total do
        local from = (p-1)*chunk + 1
        local to = math.min(p*chunk, #actions)
        local code = "-- Part "..p.."/"..total.."\nlocal cam=workspace.CurrentCamera\nlocal plr=game.Players.LocalPlayer\nlocal char=plr.Character or plr.CharacterAdded:Wait()\nlocal hum=char:WaitForChild('Humanoid')\nlocal hrp=char:WaitForChild('HumanoidRootPart')\ntask.wait(1.5)\n\n"
        for i=from,to do
            local a = actions[i]
            local d = i==1 and 0 or math.max(0.02,a.d)
            local pos = a.c.Position
            local rx,ry,rz = a.c:ToOrientation()
            code=code.."cam.CFrame=CFrame.new("..safe(pos.X)..","..safe(pos.Y)..","..safe(pos.Z)..")*CFrame.fromOrientation("..safe(rx)..","..safe(ry)..","..safe(rz)..")\n"
            code=code.."cam.FieldOfView="..safe(a.f).."\n"
            code=code..(a.m.Magnitude>0.01 and "hum:Move(Vector3.new("..safe(a.m.X)..",0,"..safe(a.m.Z).."),true)\n" or "hum:Move(Vector3.new(),true)\n")
            code=code.."hrp.AssemblyLinearVelocity=Vector3.new("..safe(a.v.X)..","..safe(a.v.Y)..","..safe(a.v.Z)..")\n"
            code=code.."hrp.CFrame=CFrame.new("..safe(a.p.X)..","..safe(a.p.Y)..","..safe(a.p.Z)..")\n"
            if a.j then code=code.."hum.Jump=true\n" end
            code=code.."task.wait("..safe(d)..")\n"
        end
        if writefile then writefile("Path_"..p.."_of_"..total..".lua", code) end
    end
    count.Text = "Path Saved!"
    task.wait(3); count.Text = "Acts: "..#actions
end)

clearBtn.MouseButton1Click:Connect(function()
    actions = {}
    count.Text = "Acts: 0"
end)

-- RECORD LOOP
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
        table.insert(actions, {p=hrp.Position,v=hrp.Velocity,m=hum.MoveDirection,j=hum.Jump,c=cam.CFrame,f=cam.FieldOfView,d=now-lastTick})
        count.Text = "Acts: "..#actions
        lastTick = now
    end
end)

count.Text = "V40 Ready! Klik R"

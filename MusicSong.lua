local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local gui = Instance.new("ScreenGui")
gui.Name = "MusicPlayerX"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local main = Instance.new("Frame")
main.Size = UDim2.new(0,280,0,160)
main.Position = UDim2.new(0.5,-140,0.5,-80)
main.BackgroundColor3 = Color3.fromRGB(18,18,18)
main.BorderSizePixel = 0
main.ClipsDescendants = true
main.Visible = true
main.Parent = gui

Instance.new("UICorner",main).CornerRadius = UDim.new(0,12)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(60,60,60)
stroke.Thickness = 1.5
stroke.Transparency = 0.3
stroke.Parent = main

local btnClose = Instance.new("TextButton")
btnClose.Size = UDim2.new(0,24,0,24)
btnClose.Position = UDim2.new(1,-28,0,4)
btnClose.BackgroundTransparency = 1
btnClose.Text = "×"
btnClose.TextColor3 = Color3.fromRGB(255,90,90)
btnClose.Font = Enum.Font.GothamBold
btnClose.TextSize = 20
btnClose.Parent = main

btnClose.MouseButton1Click:Connect(function()
    if currentSound then currentSound:Destroy() end
    gui:Destroy()
end)

local btnToggle = Instance.new("TextButton")
btnToggle.Size = UDim2.new(0,40,0,40)
btnToggle.Position = UDim2.new(0,15,0,15)
btnToggle.BackgroundColor3 = Color3.fromRGB(25,25,45)
btnToggle.Text = "X"
btnToggle.TextColor3 = Color3.fromRGB(200,200,255)
btnToggle.Font = Enum.Font.GothamBlack
btnToggle.TextSize = 22
btnToggle.Parent = CoreGui
Instance.new("UICorner",btnToggle).CornerRadius = UDim.new(1,0)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,-40,0,24)
title.Position = UDim2.new(0,38,0,8)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextColor3 = Color3.fromRGB(240,240,240)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Text = "Music Player"
title.Parent = main

local idFrame = Instance.new("Frame")
idFrame.Size = UDim2.new(1,-16,0,32)
idFrame.Position = UDim2.new(0,8,0,36)
idFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
idFrame.Parent = main
Instance.new("UICorner",idFrame).CornerRadius = UDim.new(0,8)

local idInput = Instance.new("TextBox")
idInput.Size = UDim2.new(1,-80,1,0)
idInput.Position = UDim2.new(0,6,0,0)
idInput.BackgroundTransparency = 1
idInput.Font = Enum.Font.Gotham
idInput.TextSize = 14
idInput.TextColor3 = Color3.fromRGB(220,220,220)
idInput.PlaceholderText = "Audio ID"
idInput.PlaceholderColor3 = Color3.fromRGB(140,140,140)
idInput.Text = ""
idInput.Parent = idFrame

local playBtn = Instance.new("TextButton")
playBtn.Size = UDim2.new(0,70,1,0)
playBtn.Position = UDim2.new(1,-76,0,0)
playBtn.BackgroundColor3 = Color3.fromRGB(50,150,50)
playBtn.Text = "▶ Play"
playBtn.TextColor3 = Color3.new(1,1,1)
playBtn.Font = Enum.Font.GothamBold
playBtn.TextSize = 12
playBtn.Parent = idFrame
Instance.new("UICorner",playBtn).CornerRadius = UDim.new(0,6)

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1,-16,0,18)
status.Position = UDim2.new(0,8,0,72)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Gotham
status.TextSize = 12
status.TextColor3 = Color3.fromRGB(255,180,100)
status.TextXAlignment = Enum.TextXAlignment.Center
status.Text = ""
status.Parent = main

local progressFrame = Instance.new("Frame")
progressFrame.Size = UDim2.new(1,-16,0,6)
progressFrame.Position = UDim2.new(0,8,0,94)
progressFrame.BackgroundColor3 = Color3.fromRGB(45,45,45)
progressFrame.Parent = main
Instance.new("UICorner",progressFrame).CornerRadius = UDim.new(0,3)

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0,0,1,0)
progressBar.BackgroundColor3 = Color3.fromRGB(100,200,100)
progressBar.BorderSizePixel = 0
progressBar.Parent = progressFrame
Instance.new("UICorner",progressBar).CornerRadius = UDim.new(0,3)

local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1,-16,0,14)
timeLabel.Position = UDim2.new(0,8,0,104)
timeLabel.BackgroundTransparency = 1
timeLabel.Font = Enum.Font.Gotham
timeLabel.TextSize = 12
timeLabel.TextColor3 = Color3.fromRGB(160,160,160)
timeLabel.TextXAlignment = Enum.TextXAlignment.Left
timeLabel.Text = "00:00 / 00:00"
timeLabel.Parent = main

local playPause = Instance.new("TextButton")
playPause.Size = UDim2.new(0,44,0,44)
playPause.Position = UDim2.new(0.5,-70,1,-54)
playPause.BackgroundColor3 = Color3.fromRGB(60,160,60)
playPause.Text = "▶"
playPause.TextColor3 = Color3.new(1,1,1)
playPause.Font = Enum.Font.GothamBold
playPause.TextSize = 24
playPause.Parent = main
Instance.new("UICorner",playPause).CornerRadius = UDim.new(0,22)

local loopBtn = Instance.new("TextButton")
loopBtn.Size = UDim2.new(0,44,0,44)
loopBtn.Position = UDim2.new(0.5,-22,1,-54)
loopBtn.BackgroundColor3 = Color3.fromRGB(70,70,100)
loopBtn.Text = "↻"
loopBtn.TextColor3 = Color3.new(1,1,1)
loopBtn.Font = Enum.Font.GothamBold
loopBtn.TextSize = 22
loopBtn.Parent = main
Instance.new("UICorner",loopBtn).CornerRadius = UDim.new(0,22)

local stopLoopBtn = Instance.new("TextButton")
stopLoopBtn.Size = UDim2.new(0,44,0,44)
stopLoopBtn.Position = UDim2.new(0.5,26,1,-54)
stopLoopBtn.BackgroundColor3 = Color3.fromRGB(140,50,50)
stopLoopBtn.Text = "■↻"
stopLoopBtn.TextColor3 = Color3.new(1,1,1)
stopLoopBtn.Font = Enum.Font.GothamBold
stopLoopBtn.TextSize = 20
stopLoopBtn.Parent = main
Instance.new("UICorner",stopLoopBtn).CornerRadius = UDim.new(0,22)

local volumeBtn = Instance.new("TextButton")
volumeBtn.Size = UDim2.new(0,44,0,44)
volumeBtn.Position = UDim2.new(0.5,74,1,-54)
volumeBtn.BackgroundColor3 = Color3.fromRGB(200,150,50)
volumeBtn.Text = "🔊"
volumeBtn.TextColor3 = Color3.new(1,1,1)
volumeBtn.Font = Enum.Font.GothamBold
volumeBtn.TextSize = 20
volumeBtn.Parent = main
Instance.new("UICorner",volumeBtn).CornerRadius = UDim.new(0,22)

local currentSound = nil
local isPlaying = false
local volumeLevel = 0.5
local isLooped = false

local function formatTime(sec)
    sec = sec or 0
    return string.format("%02d:%02d", math.floor(sec/60), math.floor(sec%60))
end

local function showStatus(msg, col)
    status.Text = msg
    status.TextColor3 = col or Color3.fromRGB(255,180,100)
    task.delay(4,function() if status.Text == msg then status.Text = "" end end)
end

local function createSound(id)
    if currentSound then
        currentSound:Stop()
        currentSound:Destroy()
        currentSound = nil
    end
    currentSound = Instance.new("Sound")
    currentSound.SoundId = "rbxassetid://" .. tostring(id)
    currentSound.Volume = volumeLevel
    currentSound.Looped = isLooped
    currentSound.Parent = SoundService
    local ok = pcall(function() currentSound.Loaded:Wait(8) end)
    if not ok or not currentSound.IsLoaded then
        showStatus("Gagal load audio", Color3.fromRGB(255,80,80))
        currentSound:Destroy()
        currentSound = nil
        return
    end
    progressBar.Size = UDim2.new(0,0,1,0)
    timeLabel.Text = "00:00 / " .. formatTime(currentSound.TimeLength)
    currentSound:Play()
    isPlaying = true
    playPause.Text = "⏸"
    playPause.BackgroundColor3 = Color3.fromRGB(180,50,50)
    showStatus("Playing ID: " .. id, Color3.fromRGB(100,255,100))
end

local function updateProgress()
    if currentSound and currentSound.Parent and isPlaying then
        local p = currentSound.TimePosition / currentSound.TimeLength
        p = math.clamp(p, 0, 1)
        progressBar.Size = UDim2.new(p, 0, 1, 0)
        timeLabel.Text = formatTime(currentSound.TimePosition) .. " / " .. formatTime(currentSound.TimeLength)
    end
end

playBtn.MouseButton1Click:Connect(function()
    local txt = idInput.Text:match("%d+")
    local id = tonumber(txt)
    if id and id > 0 then
        createSound(id)
        idInput.Text = ""
    else
        showStatus("Masukkan ID angka yang valid", Color3.fromRGB(255,200,100))
    end
end)

playPause.MouseButton1Click:Connect(function()
    if currentSound then
        if isPlaying then
            currentSound:Pause()
            isPlaying = false
            playPause.Text = "▶"
            playPause.BackgroundColor3 = Color3.fromRGB(60,160,60)
        else
            currentSound:Play()
            isPlaying = true
            playPause.Text = "⏸"
            playPause.BackgroundColor3 = Color3.fromRGB(180,50,50)
        end
    end
end)

loopBtn.MouseButton1Click:Connect(function()
    isLooped = not isLooped
    loopBtn.BackgroundColor3 = isLooped and Color3.fromRGB(100,180,100) or Color3.fromRGB(70,70,100)
    if currentSound then currentSound.Looped = isLooped end
    showStatus(isLooped and "Loop: ON" or "Loop: OFF")
end)

stopLoopBtn.MouseButton1Click:Connect(function()
    if currentSound then
        currentSound:Stop()
        currentSound.Looped = false
        isPlaying = false
        playPause.Text = "▶"
        playPause.BackgroundColor3 = Color3.fromRGB(60,160,60)
        isLooped = false
        loopBtn.BackgroundColor3 = Color3.fromRGB(70,70,100)
        showStatus("Stopped + Loop OFF")
    end
end)

volumeBtn.MouseButton1Click:Connect(function()
    volumeLevel = volumeLevel == 0.5 and 0.8 or 0.5
    volumeBtn.Text = volumeLevel == 0.8 and "🔇" or "🔊"
    if currentSound then currentSound.Volume = volumeLevel end
end)

progressFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and currentSound then
        local mouse = UserInputService:GetMouseLocation()
        local rel = math.clamp((mouse.X - progressFrame.AbsolutePosition.X) / progressFrame.AbsoluteSize.X, 0, 1)
        currentSound.TimePosition = rel * currentSound.TimeLength
    end
end)

RunService.Heartbeat:Connect(updateProgress)

btnToggle.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
end)

local dragStart, startPos
main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = input.Position
        startPos = main.Position
    end
end)

main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = nil
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragStart and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

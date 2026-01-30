local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer

-- Buat ScreenGui
local GUI = Instance.new("ScreenGui")
GUI.Name = "RealTimeClockMini"
GUI.ResetOnSpawn = false
GUI.Parent = CoreGui

-- Frame utama (diperbesar sedikit biar muat player info & toggle)
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 180, 0, 90)
Main.Position = UDim2.new(0.5, -90, 0.12, 0)
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Parent = GUI

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = Main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(60, 60, 60)
stroke.Thickness = 1.2
stroke.Transparency = 0.4
stroke.Parent = Main

-- Player Info (kiri atas)
local PlayerThumb = Instance.new("ImageLabel")
PlayerThumb.Size = UDim2.new(0, 32, 0, 32)
PlayerThumb.Position = UDim2.new(0, 8, 0, 8)
PlayerThumb.BackgroundTransparency = 1
PlayerThumb.Image = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
PlayerThumb.Parent = Main

local PlayerName = Instance.new("TextLabel")
PlayerName.Size = UDim2.new(1, -50, 0, 20)
PlayerName.Position = UDim2.new(0, 48, 0, 14)
PlayerName.BackgroundTransparency = 1
PlayerName.Font = Enum.Font.GothamSemibold
PlayerName.TextSize = 14
PlayerName.TextColor3 = Color3.fromRGB(220, 220, 220)
PlayerName.TextXAlignment = Enum.TextXAlignment.Left
PlayerName.Text = LocalPlayer.Name
PlayerName.Parent = Main

-- Label waktu (yang warnanya berubah + kedip)
local TimeLabel = Instance.new("TextLabel")
TimeLabel.Size = UDim2.new(1, -16, 0, 42)
TimeLabel.Position = UDim2.new(0, 8, 0, 38)
TimeLabel.BackgroundTransparency = 1
TimeLabel.Font = Enum.Font.GothamBold
TimeLabel.TextSize = 34
TimeLabel.TextXAlignment = Enum.TextXAlignment.Center
TimeLabel.Text = "00:00:00"
TimeLabel.Parent = Main

-- Label AM/PM (hanya muncul di mode 12 jam)
local AMPMLabel = Instance.new("TextLabel")
AMPMLabel.Size = UDim2.new(0, 40, 0, 18)
AMPMLabel.Position = UDim2.new(1, -48, 0, 48)
AMPMLabel.BackgroundTransparency = 1
AMPMLabel.Font = Enum.Font.Gotham
AMPMLabel.TextSize = 14
AMPMLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
AMPMLabel.TextXAlignment = Enum.TextXAlignment.Right
AMPMLabel.Visible = false
AMPMLabel.Text = "AM"
AMPMLabel.Parent = Main

-- Label tanggal
local DateLabel = Instance.new("TextLabel")
DateLabel.Size = UDim2.new(1, -16, 0, 16)
DateLabel.Position = UDim2.new(0, 8, 1, -24)
DateLabel.BackgroundTransparency = 1
DateLabel.Font = Enum.Font.Gotham
DateLabel.TextSize = 13
DateLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
DateLabel.TextXAlignment = Enum.TextXAlignment.Center
DateLabel.Text = "Senin, 1 Januari 2025"
DateLabel.Parent = Main

-- Tombol toggle 12/24 jam (pojok kanan bawah)
local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 34, 0, 18)
ToggleBtn.Position = UDim2.new(1, -42, 1, -22)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleBtn.BorderSizePixel = 0
ToggleBtn.Font = Enum.Font.Gotham
ToggleBtn.TextSize = 11
ToggleBtn.TextColor3 = Color3.new(1,1,1)
ToggleBtn.Text = "24H"
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0,4)
ToggleBtn.Parent = Main

-- Tombol tutup
local btnClose = Instance.new("TextButton")
btnClose.Size = UDim2.new(0, 24, 0, 24)
btnClose.Position = UDim2.new(1, -28, 0, 4)
btnClose.BackgroundTransparency = 1
btnClose.Text = "×"
btnClose.TextColor3 = Color3.fromRGB(255, 90, 90)
btnClose.Font = Enum.Font.GothamBold
btnClose.TextSize = 20
btnClose.Parent = Main

btnClose.MouseButton1Click:Connect(function()
    GUI:Destroy()
end)

-- =============================================
--     Setting & Warna
-- =============================================

local use12Hour = false  -- default 24 jam

local function getTimeTheme(hour)
    if hour >= 5 and hour < 9 then return Color3.fromRGB(255, 210, 120)     -- pagi
    elseif hour >= 9 and hour < 16 then return Color3.fromRGB(240, 245, 255) -- siang
    elseif hour >= 16 and hour < 19 then return Color3.fromRGB(255, 180, 100) -- sore
    else return Color3.fromRGB(200, 220, 255) end                             -- malam
end

-- Toggle 12/24 jam
ToggleBtn.MouseButton1Click:Connect(function()
    use12Hour = not use12Hour
    ToggleBtn.Text = use12Hour and "12H" or "24H"
    AMPMLabel.Visible = use12Hour
end)

-- =============================================
--          Update real-time
-- =============================================

local blinkState = true
local lastSecond = -1

local function updateTime()
    local t = os.date("*t")
    local hour = t.hour
    local minute = t.min
    local second = t.sec
    
    local displayHour = hour
    local ampm = ""
    
    if use12Hour then
        if hour == 0 then
            displayHour = 12
            ampm = "AM"
        elseif hour == 12 then
            displayHour = 12
            ampm = "PM"
        elseif hour > 12 then
            displayHour = hour - 12
            ampm = "PM"
        else
            displayHour = hour
            ampm = "AM"
        end
    end
    
    -- Format waktu
    local timeStr = string.format("%02d:%02d", displayHour, minute)
    if blinkState then
        timeStr = timeStr .. ":"
    else
        timeStr = timeStr .. " "
    end
    timeStr = timeStr .. string.format("%02d", second)
    
    TimeLabel.Text = timeStr
    TimeLabel.TextColor3 = getTimeTheme(hour)
    
    AMPMLabel.Text = ampm
    
    -- Tanggal
    local hari = {"Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu"}
    local bulan = {"Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"}
    
    DateLabel.Text = string.format("%s, %d %s %d", hari[t.wday], t.day, bulan[t.month], t.year)
end

-- Update pertama
updateTime()

-- Heartbeat untuk update detik + blink
RunService.Heartbeat:Connect(function()
    local now = os.time()
    if now ~= lastSecond then
        lastSecond = now
        blinkState = not blinkState
        updateTime()
    end
end)

-- =============================================
--          Draggable
-- =============================================

local dragStart, startPos

Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = input.Position
        startPos = Main.Position
    end
end)

Main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = nil
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragStart and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

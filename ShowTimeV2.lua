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

-- Frame utama
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 160, 0, 68)
Main.Position = UDim2.new(0.5, -80, 0.12, 0)
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

-- Label waktu (yang warnanya berubah)
local TimeLabel = Instance.new("TextLabel")
TimeLabel.Size = UDim2.new(1, -16, 1, -12)
TimeLabel.Position = UDim2.new(0, 8, 0, 6)
TimeLabel.BackgroundTransparency = 1
TimeLabel.Font = Enum.Font.GothamBold
TimeLabel.TextSize = 34
TimeLabel.TextXAlignment = Enum.TextXAlignment.Center
TimeLabel.Text = "00:00:00"
TimeLabel.Parent = Main

-- Label tanggal (tetap abu-abu lembut)
local DateLabel = Instance.new("TextLabel")
DateLabel.Size = UDim2.new(1, -16, 0, 16)
DateLabel.Position = UDim2.new(0, 8, 1, -22)
DateLabel.BackgroundTransparency = 1
DateLabel.Font = Enum.Font.Gotham
DateLabel.TextSize = 13
DateLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
DateLabel.TextXAlignment = Enum.TextXAlignment.Center
DateLabel.Text = "Senin, 1 Januari 2025"
DateLabel.Parent = Main

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
--     Warna sesuai waktu (pagi, siang, sore, malam)
-- =============================================

local function getTimeTheme(hour)
    if hour >= 5 and hour < 9 then
        -- Pagi cerah (kuning-oranye lembut)
        return Color3.fromRGB(255, 210, 120)
    elseif hour >= 9 and hour < 16 then
        -- Siang terang (putih kebiruan)
        return Color3.fromRGB(240, 245, 255)
    elseif hour >= 16 and hour < 19 then
        -- Sore hangat (oranye keemasan)
        return Color3.fromRGB(255, 180, 100)
    else
        -- Malam (biru muda ke ungu lembut / putih dingin)
        return Color3.fromRGB(200, 220, 255)
    end
end

-- =============================================
--          Update real-time
-- =============================================

local function updateTime()
    local t = os.date("*t")
    
    -- Format jam
    local timeStr = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
    TimeLabel.Text = timeStr
    
    -- Ubah warna jam sesuai jam saat ini
    TimeLabel.TextColor3 = getTimeTheme(t.hour)
    
    -- Tanggal
    local hari = {"Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu"}
    local bulan = {
        "Januari","Februari","Maret","April","Mei","Juni",
        "Juli","Agustus","September","Oktober","November","Desember"
    }
    
    local dateStr = string.format(
        "%s, %d %s %d",
        hari[t.wday],
        t.day,
        bulan[t.month],
        t.year
    )
    DateLabel.Text = dateStr
end

-- Jalankan pertama kali
updateTime()

-- Update setiap detik (pakai Heartbeat + cek detik)
local lastSecond = -1
RunService.Heartbeat:Connect(function()
    local now = os.time()
    if now ~= lastSecond then
        lastSecond = now
        updateTime()
    end
end)

-- =============================================
--          Draggable
-- =============================================

local dragStart, startPos

local function updateInputPosition(input)
    local pos = input.Position
    if input.UserInputType == Enum.UserInputType.Touch then
        pos = input.Position
    end
    return pos
end

Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 
        or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = updateInputPosition(input)
        startPos = Main.Position
    end
end)

Main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 
        or input.UserInputType == Enum.UserInputType.Touch then
        dragStart = nil
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragStart and (input.UserInputType == Enum.UserInputType.MouseMovement 
        or input.UserInputType == Enum.UserInputType.Touch) then
        local currentPos = updateInputPosition(input)
        local delta = currentPos - dragStart
        
        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

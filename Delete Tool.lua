--// Simple Delete Tool GUI
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true -- Agar GUI tidak terpengaruh oleh inset layar

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 160, 0, 120)
Frame.Position = UDim2.new(0.05, 0, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35) -- Warna latar lebih gelap dan modern
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Visible = true
Frame.Parent = ScreenGui

-- Menambahkan efek corner radius untuk tampilan lebih halus
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame

-- Menambahkan shadow untuk efek kedalaman
local UIShadow = Instance.new("UIStroke")
UIShadow.Thickness = 2
UIShadow.Color = Color3.fromRGB(0, 0, 0)
UIShadow.Transparency = 0.7
UIShadow.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Text = "Delete Tool"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(40, 40, 50) -- Warna header lebih gelap
Title.TextColor3 = Color3.fromRGB(200, 200, 255) -- Warna teks lebih lembut
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.Parent = Frame

local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Text = "Activate: OFF"
ToggleBtn.Size = UDim2.new(1, -10, 0, 45)
ToggleBtn.Position = UDim2.new(0, 5, 0, 40)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70) -- Warna tombol lebih netral
ToggleBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
ToggleBtn.Font = Enum.Font.Gotham
ToggleBtn.TextSize = 16
ToggleBtn.Parent = Frame

-- Menambahkan corner radius untuk tombol
local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = ToggleBtn

-- Open/Close Button
local OpenClose = Instance.new("TextButton")
OpenClose.Text = "Open"
OpenClose.Size = UDim2.new(0, 70, 0, 35)
OpenClose.Position = UDim2.new(0.05, 0, 0.3, 0)
OpenClose.BackgroundColor3 = Color3.fromRGB(0, 120, 255) -- Warna biru lebih modern
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.Font = Enum.Font.GothamBold
OpenClose.TextSize = 16
OpenClose.Parent = ScreenGui

local OpenCloseCorner = Instance.new("UICorner")
OpenCloseCorner.CornerRadius = UDim.new(0, 6)
OpenCloseCorner.Parent = OpenClose

-- Logic
local deleteActive = false
local guiVisible = true

ToggleBtn.MouseButton1Click:Connect(function()
    deleteActive = not deleteActive
    if deleteActive then
        ToggleBtn.Text = "Activate: ON"
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 120) -- Hijau modern saat ON
    else
        ToggleBtn.Text = "Activate: OFF"
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 60) -- Merah modern saat OFF
    end
end)

OpenClose.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    Frame.Visible = guiVisible
    OpenClose.Text = guiVisible and "Close" or "Open"
end)

-- Click Delete System
mouse.Button1Down:Connect(function()
    if deleteActive then
        if mouse.Target and mouse.Target:IsDescendantOf(workspace) then
            mouse.Target:Destroy()
        end
    end
end)

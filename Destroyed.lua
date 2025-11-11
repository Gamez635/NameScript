-- ==============================================
--  DESTROYER GUI – KECIL 200x200 (FIXED & CLEAN)
-- ==============================================

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
local Title = Instance.new("TextLabel", Frame)
local Close = Instance.new("TextButton", Frame)
local Search = Instance.new("TextBox", Frame)
local Clear = Instance.new("TextButton", Frame)
local List = Instance.new("ScrollingFrame", Frame)
local Layout = Instance.new("UIListLayout", List)

-- === UKURAN KECIL: 200x200 ===
Frame.Size = UDim2.new(0, 200, 0, 200)
Frame.Position = UDim2.new(0.1, 0, 0.1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Frame.Active = true
Frame.Draggable = true
Frame.BorderSizePixel = 0

-- Title
Title.Text = "Destroyer"
Title.Size = UDim2.new(1, -25, 0, 18)
Title.Position = UDim2.new(0, 5, 0, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 11
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button
Close.Text = "X"
Close.Size = UDim2.new(0, 18, 0, 18)
Close.Position = UDim2.new(1, -20, 0, 1)
Close.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
Close.TextColor3 = Color3.new(1, 1, 1)
Close.Font = Enum.Font.GothamBold
Close.TextSize = 12
Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Search Box
Search.PlaceholderText = "Cari..."
Search.Size = UDim2.new(1, -10, 0, 18)
Search.Position = UDim2.new(0, 5, 0, 20)
Search.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Search.TextColor3 = Color3.new(1, 1, 1)
Search.Font = Enum.Font.Code
Search.TextSize = 11
Search.ClearTextOnFocus = false

-- Clear Button
Clear.Text = "Clear"
Clear.Size = UDim2.new(1, -10, 0, 18)
Clear.Position = UDim2.new(0, 5, 0, 40)
Clear.BackgroundColor3 = Color3.fromRGB(90, 20, 20)
Clear.TextColor3 = Color3.new(1, 1, 1)
Clear.Font = Enum.Font.Gotham
Clear.TextSize = 11

-- List Area
List.Size = UDim2.new(1, -10, 1, -62)
List.Position = UDim2.new(0, 5, 0, 60)
List.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
List.BorderSizePixel = 0
List.ScrollBarThickness = 4
List.CanvasSize = UDim2.new(0, 0, 0, 0)

Layout.Padding = UDim.new(0, 1)
Layout.SortOrder = Enum.SortOrder.Name

-- === DEBOUNCE & UPDATE LIST ===
local debounce = false
local function UpdateList(filter)
    if debounce then return end
    debounce = true

    -- Bersihkan
    for _, v in List:GetChildren() do
        if v:IsA("TextButton") then v:Destroy() end
    end

    local count = 0
    for _, obj in workspace:GetDescendants() do
        if obj.Name:lower():find((filter or ""):lower()) then
            count += 1

            local B = Instance.new("TextButton", List)
            B.Size = UDim2.new(1, 0, 0, 22)
            B.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
            B.TextColor3 = Color3.new(1, 1, 1)
            B.Font = Enum.Font.Code
            B.TextSize = 10
            B.TextXAlignment = Enum.TextXAlignment.Left
            B.Text = obj.Name
            B.TextTruncate = Enum.TextTruncate.AtEnd

            -- === TOMBOL KECIL: Copy Nama ===
            local copyName = Instance.new("TextButton", B)
            copyName.Size = UDim2.new(0, 40, 0, 16)
            copyName.Position = UDim2.new(1, -82, 0.5, -8)
            copyName.BackgroundColor3 = Color3.fromRGB(0, 110, 190)
            copyName.TextColor3 = Color3.new(1, 1, 1)
            copyName.Font = Enum.Font.GothamBold
            copyName.TextSize = 9
            copyName.Text = "Nama"

            -- === TOMBOL KECIL: Copy Log ===
            local copyLog = Instance.new("TextButton", B)
            copyLog.Size = UDim2.new(0, 40, 0, 16)
            copyLog.Position = UDim2.new(1, -40, 0.5, -8)
            copyLog.BackgroundColor3 = Color3.fromRGB(0, 140, 70)
            copyLog.TextColor3 = Color3.new(1, 1, 1)
            copyLog.Font = Enum.Font.GothamBold
            copyLog.TextSize = 9
            copyLog.Text = "Log"

            -- Hover sederhana
            local function hover(btn, enter)
                btn.BackgroundColor3 = enter and Color3.fromRGB(100,100,100) or (btn == copyName and Color3.fromRGB(0,110,190) or Color3.fromRGB(0,140,70))
            end
            copyName.MouseEnter:Connect(function() hover(copyName, true) end)
            copyName.MouseLeave:Connect(function() hover(copyName, false) end)
            copyLog.MouseEnter:Connect(function() hover(copyLog, true) end)
            copyLog.MouseLeave:Connect(function() hover(copyLog, false) end)

            -- === AKSI: Copy Nama ===
            copyName.MouseButton1Click:Connect(function()
                setclipboard(obj.Name)
                copyName.Text = "OK"
                copyName.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
                wait(0.7)
                copyName.Text = "Nama"
                copyName.BackgroundColor3 = Color3.fromRGB(0, 110, 190)
            end)

            -- === AKSI: Copy Log (FindFirstChild) ===
            copyLog.MouseButton1Click:Connect(function()
                local safeName = obj.Name:gsub([["]], [[\""]]):gsub("\n", "")
                local code = [[
local obj = workspace:FindFirstChild("]] .. safeName .. [[")
if obj then
    obj:Destroy()
end]]
                setclipboard(code)
                copyLog.Text = "OK"
                copyLog.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
                wait(0.7)
                copyLog.Text = "Log"
                copyLog.BackgroundColor3 = Color3.fromRGB(0, 140, 70)
            end)

            -- Klik item = destroy langsung
            B.MouseButton1Click:Connect(function()
                if obj and obj.Parent then
                    obj:Destroy()
                    B.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
                    wait(0.3)
                    UpdateList(Search.Text)
                end
            end)
        end
    end

    -- Update canvas
    wait()
    List.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y)

    debounce = false
end

-- === EVENT: Search + Debounce ===
Search:GetPropertyChangedSignal("Text"):Connect(function()
    if not debounce then
        spawn(function()
            wait(0.3)
            UpdateList(Search.Text)
        end)
    end
end)

Clear.MouseButton1Click:Connect(function()
    Search.Text = ""
    UpdateList("")
end)

-- Inisialisasi
UpdateList("")

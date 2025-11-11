local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local GUI = Instance.new("ScreenGui", game.CoreGui)
GUI.ResetOnSpawn = false
GUI.Name = "DestroyerGUI"

local Main = Instance.new("Frame", GUI)
Main.Size = UDim2.fromOffset(380, 420)
Main.Position = UDim2.new(0.5, -190, 0, 20)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderSizePixel = 0
Main.Active = true

Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 14)

local Top = Instance.new("Frame", Main)
Top.Size = UDim2.new(1, 0, 0, 42)
Top.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Top.BorderSizePixel = 0
Instance.new("UICorner", Top).CornerRadius = UDim.new(0, 14)

local Title = Instance.new("TextLabel", Top)
Title.Size = UDim2.new(1, -60, 1, 0)
Title.Position = UDim2.new(0, 16, 0, 0)
Title.Text = "Destroyer GUI V3"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 17
Title.TextXAlignment = Enum.TextXAlignment.Left

local Close = Instance.new("TextButton", Top)
Close.Size = UDim2.fromOffset(36, 36)
Close.Position = UDim2.new(1, -40, 0, 3)
Close.Text = "×"
Close.TextColor3 = Color3.new(1,1,1)
Close.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18
Close.BorderSizePixel = 0
Instance.new("UICorner", Close).CornerRadius = UDim.new(0, 10)
Close.MouseButton1Click:Connect(function() GUI:Destroy() end)

local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1, -24, 1, -54)
Content.Position = UDim2.new(0, 12, 0, 46)
Content.BackgroundTransparency = 1
local UIList = Instance.new("UIListLayout", Content)
UIList.Padding = UDim.new(0, 10)
UIList.SortOrder = Enum.SortOrder.LayoutOrder

local DeleteMode = false
local DeleteLog = ""
local DeletedPaths = {}

local DeleteBtn = Instance.new("TextButton", Content)
DeleteBtn.Size = UDim2.new(1, 0, 0, 40)
DeleteBtn.Text = "Delete & Destroy"
DeleteBtn.TextColor3 = Color3.new(1,1,1)
DeleteBtn.BackgroundColor3 = Color3.fromRGB(130, 20, 20)
DeleteBtn.Font = Enum.Font.GothamSemibold
DeleteBtn.TextSize = 15
DeleteBtn.BorderSizePixel = 0
Instance.new("UICorner", DeleteBtn).CornerRadius = UDim.new(0, 10)

local SearchQuick = Instance.new("TextBox", Content)
SearchQuick.Size = UDim2.new(1, 0, 0, 35)
SearchQuick.PlaceholderText = "Quick Search Object..."
SearchQuick.Text = ""
SearchQuick.TextColor3 = Color3.new(1,1,1)
SearchQuick.BackgroundColor3 = Color3.fromRGB(50,50,50)
SearchQuick.Font = Enum.Font.Gotham
SearchQuick.TextSize = 14
SearchQuick.BorderSizePixel = 0
Instance.new("UICorner", SearchQuick).CornerRadius = UDim.new(0,8)

local ClearBtn = Instance.new("TextButton", Content)
ClearBtn.Size = UDim2.new(1, 0, 0, 35)
ClearBtn.Text = "Clear All Logs"
ClearBtn.TextColor3 = Color3.new(1,1,1)
ClearBtn.BackgroundColor3 = Color3.fromRGB(80,20,20)
ClearBtn.Font = Enum.Font.GothamSemibold
ClearBtn.TextSize = 15
ClearBtn.BorderSizePixel = 0
Instance.new("UICorner", ClearBtn).CornerRadius = UDim.new(0, 10)

local CopyBtnV1 = Instance.new("TextButton", Content)
CopyBtnV1.Size = UDim2.new(1, 0, 0, 40)
CopyBtnV1.Text = "Copy Log (List)"
CopyBtnV1.TextColor3 = Color3.new(1,1,1)
CopyBtnV1.BackgroundColor3 = Color3.fromRGB(20,110,20)
CopyBtnV1.Font = Enum.Font.GothamSemibold
CopyBtnV1.TextSize = 15
CopyBtnV1.BorderSizePixel = 0
Instance.new("UICorner", CopyBtnV1).CornerRadius = UDim.new(0, 10)

local CopyBtnV2 = Instance.new("TextButton", Content)
CopyBtnV2.Size = UDim2.new(1, 0, 0, 40)
CopyBtnV2.Text = "Copy Log V2 (Code)"
CopyBtnV2.TextColor3 = Color3.new(1,1,1)
CopyBtnV2.BackgroundColor3 = Color3.fromRGB(20, 80, 140)
CopyBtnV2.Font = Enum.Font.GothamSemibold
CopyBtnV2.TextSize = 15
CopyBtnV2.BorderSizePixel = 0
Instance.new("UICorner", CopyBtnV2).CornerRadius = UDim.new(0, 10)

local LogBox = Instance.new("TextBox", Content)
LogBox.Size = UDim2.new(1, 0, 0, 150)
LogBox.Text = ""
LogBox.TextColor3 = Color3.fromRGB(180,255,180)
LogBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
LogBox.BorderSizePixel = 0
LogBox.Font = Enum.Font.Code
LogBox.TextSize = 12
LogBox.TextXAlignment = Enum.TextXAlignment.Left
LogBox.TextYAlignment = Enum.TextYAlignment.Top
LogBox.TextWrapped = true
LogBox.TextEditable = false
Instance.new("UICorner", LogBox).CornerRadius = UDim.new(0, 10)

local function generate()
    local lines = {"local function sd(p)local o=game local r=p while r~='' do local d=r:find('.',1,true) local n if d then n=r:sub(1,d-1) r=r:sub(d+1) else n=r r='' end o=o:FindFirstChild(n) if not o then return end end if o then o:Destroy() end end"}
    for _,v in ipairs(DeletedPaths) do
        table.insert(lines,'sd("'..v..'")')
    end
    return table.concat(lines,"\n")
end

DeleteBtn.MouseButton1Click:Connect(function()
    DeleteMode = not DeleteMode
    DeleteBtn.Text = DeleteMode and "DELETE MODE: ON" or "Delete & Destroy"
    DeleteBtn.BackgroundColor3 = DeleteMode and Color3.fromRGB(200,30,30) or Color3.fromRGB(130,20,20)
end)

Mouse.Button1Down:Connect(function()
    if DeleteMode and Mouse.Target then
        local t = Mouse.Target
        local p = t:GetFullName()
        t:Destroy()
        DeleteLog = DeleteLog..p.."\n"
        table.insert(DeletedPaths,p)
        LogBox.Text = generate()
    end
end)

CopyBtnV1.MouseButton1Click:Connect(function()
    setclipboard(DeleteLog)
end)

CopyBtnV2.MouseButton1Click:Connect(function()
    setclipboard(generate())
end)

ClearBtn.MouseButton1Click:Connect(function()
    DeleteLog = ""
    DeletedPaths = {}
    LogBox.Text = ""
end)

SearchQuick:GetPropertyChangedSignal("Text"):Connect(function()
    local q = SearchQuick.Text:lower()
    if q == "" then return end
    for _,obj in ipairs(workspace:GetDescendants()) do
        if obj.Name:lower():find(q) then
            LogBox.Text = obj:GetFullName()
            break
        end
    end
end)

local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    Main.Position = UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
end
Top.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
        dragging=true dragStart=input.Position startPos=Main.Position local c;c=input.Changed:Connect(function()if input.UserInputState==Enum.UserInputState.End then dragging=false c:Disconnect()end end)
    end
end)
Top.InputChanged:Connect(function(input)
    if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then dragInput=input end
end)
UIS.InputChanged:Connect(function(input) if input==dragInput and dragging then update(input) end end)

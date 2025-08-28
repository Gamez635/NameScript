--// Chat Logger GUI Library
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.02, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Transparency = 0.6
UIStroke.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Text = "Chat Logger"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Title.TextColor3 = Color3.fromRGB(200, 200, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.Parent = MainFrame

-- Search Bar
local SearchBar = Instance.new("TextBox")
SearchBar.Size = UDim2.new(1, -10, 0, 30)
SearchBar.Position = UDim2.new(0, 5, 0, 45)
SearchBar.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
SearchBar.TextColor3 = Color3.fromRGB(220, 220, 220)
SearchBar.PlaceholderText = "Search by player or message..."
SearchBar.Font = Enum.Font.Gotham
SearchBar.TextSize = 16
SearchBar.Parent = MainFrame

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 6)
SearchCorner.Parent = SearchBar

-- Chat Log
local ChatLog = Instance.new("ScrollingFrame")
ChatLog.Size = UDim2.new(1, -10, 1, -110)
ChatLog.Position = UDim2.new(0, 5, 0, 80)
ChatLog.BackgroundTransparency = 1
ChatLog.CanvasSize = UDim2.new(0, 0, 0, 0)
ChatLog.ScrollBarThickness = 5
ChatLog.Parent = MainFrame

-- Buttons
local ClearBtn = Instance.new("TextButton")
ClearBtn.Text = "Clear Log"
ClearBtn.Size = UDim2.new(0.45, -5, 0, 30)
ClearBtn.Position = UDim2.new(0, 5, 1, -35)
ClearBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
ClearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearBtn.Font = Enum.Font.Gotham
ClearBtn.TextSize = 16
ClearBtn.Parent = MainFrame

local ClearCorner = Instance.new("UICorner")
ClearCorner.CornerRadius = UDim.new(0, 6)
ClearCorner.Parent = ClearBtn

local SaveBtn = Instance.new("TextButton")
SaveBtn.Text = "Save Log"
SaveBtn.Size = UDim2.new(0.45, -5, 0, 30)
SaveBtn.Position = UDim2.new(0.55, 0, 1, -35)
SaveBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
SaveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveBtn.Font = Enum.Font.Gotham
SaveBtn.TextSize = 16
SaveBtn.Parent = MainFrame

local SaveCorner = Instance.new("UICorner")
SaveCorner.CornerRadius = UDim.new(0, 6)
SaveCorner.Parent = SaveBtn

-- Open/Close Button
local OpenClose = Instance.new("TextButton")
OpenClose.Text = "Close"
OpenClose.Size = UDim2.new(0, 80, 0, 35)
OpenClose.Position = UDim2.new(0.02, 0, 0.15, 0)
OpenClose.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.Font = Enum.Font.GothamBold
OpenClose.TextSize = 16
OpenClose.Parent = ScreenGui

local OpenCloseCorner = Instance.new("UICorner")
OpenCloseCorner.CornerRadius = UDim.new(0, 6)
OpenCloseCorner.Parent = OpenClose

-- Chat Log Data
local chatLogs = {}
local logCount = 0

-- Add Chat Message to Log
local function addChatMessage(speaker, message)
	local timestamp = os.date("%H:%M:%S")
	local logText = string.format("[%s] %s: %s", timestamp, speaker, message)
	local LogEntry = Instance.new("TextLabel")
	LogEntry.Size = UDim2.new(1, -10, 0, 25)
	LogEntry.Position = UDim2.new(0, 5, 0, logCount * 30)
	LogEntry.BackgroundTransparency = 1
	LogEntry.TextColor3 = Color3.fromRGB(220, 220, 220)
	LogEntry.Text = logText
	LogEntry.Font = Enum.Font.Gotham
	LogEntry.TextSize = 14
	LogEntry.TextXAlignment = Enum.TextXAlignment.Left
	LogEntry.Parent = ChatLog

	logCount = logCount + 1
	ChatLog.CanvasSize = UDim2.new(0, 0, 0, logCount * 30)
	table.insert(chatLogs, {Timestamp = timestamp, Speaker = speaker, Message = message})
end

-- Filter Chat Log
SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
	local searchText = SearchBar.Text:lower()
	for _, label in pairs(ChatLog:GetChildren()) do
		if label:IsA("TextLabel") then
			local visible = searchText == "" or label.Text:lower():find(searchText)
			label.Visible = visible
		end
	end
end)

-- Clear Log
ClearBtn.MouseButton1Click:Connect(function()
	for _, label in pairs(ChatLog:GetChildren()) do
		if label:IsA("TextLabel") then
			label:Destroy()
		end
	end
	chatLogs = {}
	logCount = 0
	ChatLog.CanvasSize = UDim2.new(0, 0, 0, 0)
end)

-- Save Log
SaveBtn.MouseButton1Click:Connect(function()
	local json = HttpService:JSONEncode(chatLogs)
	print("Chat Log Saved (JSON):", json)
	-- Untuk menyimpan ke file, kamu perlu server backend atau plugin eksternal
end)

-- Open/Close Logic
local guiVisible = true
OpenClose.MouseButton1Click:Connect(function()
	guiVisible = not guiVisible
	TweenService:Create(MainFrame, TweenInfo.new(0.3), {Position = UDim2.new(guiVisible and 0.02 or -0.5, 0, 0.2, 0)}):Play()
	OpenClose.Text = guiVisible and "Close" or "Open"
end)

-- Capture Chat Messages
Players.PlayerChatted:Connect(function(playerName, message, recipient)
	local speaker = playerName or "Unknown"
	addChatMessage(speaker, message)
end)

-- Button Hover Effects
local function addHoverEffect(button)
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(button.BackgroundColor3.r * 255 * 1.2, button.BackgroundColor3.g * 255 * 1.2, button.BackgroundColor3.b * 255 * 1.2)}):Play()
	end)
	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = button.Name == "ClearBtn" and Color3.fromRGB(180, 60, 60) or button.Name == "SaveBtn" and Color3.fromRGB(0, 120, 255) or Color3.fromRGB(0, 120, 255)}):Play()
	end)
end

addHoverEffect(ClearBtn)
addHoverEffect(SaveBtn)
addHoverEffect(OpenClose)

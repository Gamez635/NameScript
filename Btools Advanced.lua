--// Btools Advanced GUI Library
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer
local mouse = player:GetMouse()

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 250, 0, 400)
MainFrame.Position = UDim2.new(0.02, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
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
Title.Text = "Btools Advanced"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
Title.TextColor3 = Color3.fromRGB(200, 200, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.Parent = MainFrame

local ToolList = Instance.new("ScrollingFrame")
ToolList.Size = UDim2.new(1, -10, 1, -50)
ToolList.Position = UDim2.new(0, 5, 0, 45)
ToolList.BackgroundTransparency = 1
ToolList.CanvasSize = UDim2.new(0, 0, 0, 300)
ToolList.ScrollBarThickness = 5
ToolList.Parent = MainFrame

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

-- Tool Data
local tools = {
	{ Name = "Move", Icon = "rbxassetid://123456789" }, -- Ganti dengan ID ikon asli
	{ Name = "Resize", Icon = "rbxassetid://123456789" },
	{ Name = "Rotate", Icon = "rbxassetid://123456789" },
	{ Name = "Paint", Icon = "rbxassetid://123456789" },
	{ Name = "Material", Icon = "rbxassetid://123456789" },
	{ Name = "Snap-to-Grid", Icon = "rbxassetid://123456789" },
	{ Name = "Undo", Icon = "rbxassetid://123456789" },
	{ Name = "Redo", Icon = "rbxassetid://123456789" },
}
local currentTool = nil
local deleteActive = false
local history = {} -- Untuk menyimpan aksi undo/redo
local historyIndex = 0

-- Tool Button Creation
local function createToolButton(tool, index)
	local Button = Instance.new("TextButton")
	Button.Size = UDim2.new(1, -10, 0, 40)
	Button.Position = UDim2.new(0, 5, 0, (index - 1) * 45)
	Button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
	Button.TextColor3 = Color3.fromRGB(220, 220, 220)
	Button.Text = tool.Name
	Button.Font = Enum.Font.Gotham
	Button.TextSize = 16
	Button.Parent = ToolList

	local BtnCorner = Instance.new("UICorner")
	BtnCorner.CornerRadius = UDim.new(0, 6)
	BtnCorner.Parent = Button

	-- Hover Effect
	Button.MouseEnter:Connect(function()
		TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 80, 90)}):Play()
	end)
	Button.MouseLeave:Connect(function()
		if currentTool ~= tool.Name then
			TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(60, 60, 70)}):Play()
		end
	end)

	-- Tool Selection
	Button.MouseButton1Click:Connect(function()
		currentTool = tool.Name
		for _, btn in pairs(ToolList:GetChildren()) do
			if btn:IsA("TextButton") then
				btn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
			end
		end
		TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 180, 120)}):Play()
		deleteActive = (tool.Name == "Delete")
	end)
end

for i, tool in ipairs(tools) do
	createToolButton(tool, i)
end

-- Open/Close Logic
local guiVisible = true
OpenClose.MouseButton1Click:Connect(function()
	guiVisible = not guiVisible
	TweenService:Create(MainFrame, TweenInfo.new(0.3), {Position = UDim2.new(guiVisible and 0.02 or -0.5, 0, 0.2, 0)}):Play()
	OpenClose.Text = guiVisible and "Close" or "Open"
end)

-- History Management
local function addToHistory(action, part)
	table.insert(history, historyIndex + 1, {Action = action, Part = part, Properties = {}})
	historyIndex = historyIndex + 1
	for i = #history, historyIndex + 1, -1 do
		history[i] = nil
	end
end

-- Tool Logic
mouse.Button1Down:Connect(function()
	if not currentTool or not mouse.Target or not mouse.Target:IsDescendantOf(workspace) then return end
	local target = mouse.Target
	if currentTool == "Delete" and deleteActive then
		addToHistory("Delete", target)
		target:Destroy()
	elseif currentTool == "Move" then
		-- Contoh sederhana, implementasi penuh membutuhkan plugin handles
		addToHistory("Move", target)
		target.Position = target.Position + Vector3.new(0, 5, 0)
	elseif currentTool == "Resize" then
		addToHistory("Resize", target)
		target.Size = target.Size + Vector3.new(1, 1, 1)
	elseif currentTool == "Paint" then
		addToHistory("Paint", target)
		target.BrickColor = BrickColor.Random()
	end
end)

-- Undo/Redo
local function undo()
	if historyIndex > 0 then
		local action = history[historyIndex]
		-- Implementasi undo sederhana, perlu logika lebih lanjut
		historyIndex = historyIndex - 1
	end
end

local function redo()
	if historyIndex < #history then
		historyIndex = historyIndex + 1
		local action = history[historyIndex]
		-- Implementasi redo sederhana
	end
end

for _, tool in ipairs(tools) do
	if tool.Name == "Undo" then
		ToolList:GetChildren()[#tools]:MouseButton1Click:Connect(undo)
	elseif tool.Name == "Redo" then
		ToolList:GetChildren()[#tools]:MouseButton1Click:Connect(redo)
	end
end

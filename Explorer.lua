--// Fixed Explorer GUI Library
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.Name = "ExplorerGui"

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 450)
MainFrame.Position = UDim2.new(0.02, 0, 0.15, 0)
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
Title.Text = "Explorer"
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
SearchBar.PlaceholderText = "Search instances..."
SearchBar.Font = Enum.Font.Gotham
SearchBar.TextSize = 16
SearchBar.Parent = MainFrame

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 6)
SearchCorner.Parent = SearchBar

-- Instance List
local InstanceList = Instance.new("ScrollingFrame")
InstanceList.Size = UDim2.new(1, -10, 1, -110)
InstanceList.Position = UDim2.new(0, 5, 0, 80)
InstanceList.BackgroundTransparency = 1
InstanceList.CanvasSize = UDim2.new(0, 0, 0, 0)
InstanceList.ScrollBarThickness = 5
InstanceList.Parent = MainFrame

-- Buttons
local RefreshBtn = Instance.new("TextButton")
RefreshBtn.Name = "RefreshBtn"
RefreshBtn.Text = "Refresh"
RefreshBtn.Size = UDim2.new(0.45, -5, 0, 30)
RefreshBtn.Position = UDim2.new(0, 5, 1, -35)
RefreshBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
RefreshBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
RefreshBtn.Font = Enum.Font.Gotham
RefreshBtn.TextSize = 16
RefreshBtn.Parent = MainFrame

local RefreshCorner = Instance.new("UICorner")
RefreshCorner.CornerRadius = UDim.new(0, 6)
RefreshCorner.Parent = RefreshBtn

local OpenClose = Instance.new("TextButton")
OpenClose.Name = "OpenCloseBtn"
OpenClose.Text = "Close"
OpenClose.Size = UDim2.new(0, 80, 0, 35)
OpenClose.Position = UDim2.new(0.02, 0, 0.1, 0)
OpenClose.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.Font = Enum.Font.GothamBold
OpenClose.TextSize = 16
OpenClose.Parent = ScreenGui

local OpenCloseCorner = Instance.new("UICorner")
OpenCloseCorner.CornerRadius = UDim.new(0, 6)
OpenCloseCorner.Parent = OpenClose

-- Instance Data
local instanceCache = {}
local expanded = {}
local yOffset = 0

-- Function to Add Instance to Tree
local function addInstanceToTree(instance, depth, parentFrame)
	if not instance then return end -- Cegah error jika instance nil
	local indent = depth * 20
	local hasChildren = #instance:GetChildren() > 0
	local instanceName = instance.Name ~= "" and instance.Name or instance.ClassName
	
	local InstanceFrame = Instance.new("Frame")
	InstanceFrame.Size = UDim2.new(1, -10, 0, 25)
	InstanceFrame.Position = UDim2.new(0, 5, 0, yOffset)
	InstanceFrame.BackgroundTransparency = 1
	InstanceFrame.Parent = parentFrame
	
	local ExpandBtn = Instance.new("TextButton")
	ExpandBtn.Size = UDim2.new(0, 20, 0, 20)
	ExpandBtn.Position = UDim2.new(0, indent, 0, 2)
	ExpandBtn.BackgroundTransparency = 1
	ExpandBtn.Text = hasChildren and (expanded[instance] and "▼" or "▶") or ""
	ExpandBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
	ExpandBtn.Font = Enum.Font.Gotham
	ExpandBtn.TextSize = 14
	ExpandBtn.Parent = InstanceFrame
	
	local InstanceLabel = Instance.new("TextButton")
	InstanceLabel.Size = UDim2.new(1, -indent - 30, 0, 20)
	InstanceLabel.Position = UDim2.new(0, indent + 25, 0, 2)
	InstanceLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
	InstanceLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
	InstanceLabel.Text = instanceName .. " (" .. instance.ClassName .. ")"
	InstanceLabel.TextXAlignment = Enum.TextXAlignment.Left
	InstanceLabel.Font = Enum.Font.Gotham
	InstanceLabel.TextSize = 14
	InstanceLabel.Parent = InstanceFrame
	
	local LabelCorner = Instance.new("UICorner")
	LabelCorner.CornerRadius = UDim.new(0, 4)
	LabelCorner.Parent = InstanceLabel
	
	yOffset = yOffset + 25
	table.insert(instanceCache, {Instance = instance, Frame = InstanceFrame, Depth = depth})
	
	-- Hover Effect
	InstanceLabel.MouseEnter:Connect(function()
		TweenService:Create(InstanceLabel, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(80, 80, 90)}):Play()
	end)
	InstanceLabel.MouseLeave:Connect(function()
		TweenService:Create(InstanceLabel, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(60, 60, 70)}):Play()
	end)
	
	-- Expand/Collapse
	ExpandBtn.MouseButton1Click:Connect(function()
		if hasChildren then
			expanded[instance] = not expanded[instance]
			ExpandBtn.Text = expanded[instance] and "▼" or "▶"
			refreshInstanceList()
		end
	end)
	
	-- Instance Selection
	InstanceLabel.MouseButton1Click:Connect(function()
		print("Selected: " .. instanceName .. " (" .. instance.ClassName .. ")")
	end)
	
	if expanded[instance] then
		for _, child in ipairs(instance:GetChildren()) do
			addInstanceToTree(child, depth + 1, parentFrame)
		end
	end
end

-- Refresh Instance List
local function refreshInstanceList()
	-- Clear existing list
	for _, item in ipairs(instanceCache) do
		if item.Frame then
			item.Frame:Destroy()
		end
	end
	instanceCache = {}
	yOffset = 0
	
	-- List of services to explore
	local services = {
		game:GetService("Workspace"),
		game:GetService("ReplicatedStorage"),
		game:GetService("Players"),
		game:GetService("Lighting"),
		game:GetService("StarterGui"),
	}
	
	-- Apply search filter
	local searchText = SearchBar.Text:lower()
	for _, service in ipairs(services) do
		if searchText == "" or service.Name:lower():find(searchText) then
			addInstanceToTree(service, 0, InstanceList)
		end
	end
	
	InstanceList.CanvasSize = UDim2.new(0, 0, 0, yOffset)
end

-- Initial Load
refreshInstanceList()

-- Search Filter
SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
	refreshInstanceList()
end)

-- Refresh Button
RefreshBtn.MouseButton1Click:Connect(function()
	refreshInstanceList()
end)

-- Open/Close Logic
local guiVisible = true
OpenClose.MouseButton1Click:Connect(function()
	guiVisible = not guiVisible
	TweenService:Create(MainFrame, TweenInfo.new(0.3), {Position = UDim2.new(guiVisible and 0.02 or -0.5, 0, 0.15, 0)}):Play()
	OpenClose.Text = guiVisible and "Close" or "Open"
end)

-- Hover Effects for Buttons
local function addHoverEffect(button)
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(button.BackgroundColor3.r * 255 * 1.2, button.BackgroundColor3.g * 255 * 1.2, button.BackgroundColor3.b * 255 * 1.2)}):Play()
	end)
	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 120, 255)}):Play()
	end)
end

addHoverEffect(RefreshBtn)
addHoverEffect(OpenClose)

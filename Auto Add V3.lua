--// TRUE RECORDER V17 – FINAL NO LIMIT + NO 200K ERROR
--// Bisa 100.000+ action → copy jadi beberapa bagian otomatis

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "RecorderV17"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- Logo besar
local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0, 80, 0, 80)
logo.Position = UDim2.new(0, 20, 0.5, -40)
logo.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
logo.Text = "R17"
logo.TextColor3 = Color3.new(1,1,1)
logo.Font = Enum.Font.GothamBlack
logo.TextSize = 38
logo.Active = true
logo.Draggable = true
logo.Parent = gui
Instance.new("UICorner", logo).CornerRadius = UDim.new(0, 24)
Instance.new("UIStroke", logo).Color = Color3.new(1,1,1); logo.UIStroke.Thickness = 3.5

-- Menu
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 190, 0, 300)
main.Position = UDim2.new(0, 15, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
main.Visible = false
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)
Instance.new("UIStroke", main).Color = Color3.fromRGB(0, 170, 255)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,34)
title.BackgroundTransparency = 1
title.Text = "V17 Final"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = main

local count = Instance.new("TextLabel")
count.Size = UDim2.new(1,0,0,26)
count.Position = UDim2.new(0,0,0,34)
count.BackgroundTransparency = 1
count.Text = "Acts: 0"
count.TextColor3 = Color3.fromRGB(100,255,255)
count.Font = Enum.Font.Gotham
count.TextSize = 13
count.Parent = main

local actions = {}
local lastSavePoint = nil
local autoAdd = false
local lastTime = 0

local y = 68
local function btn(text, color, callback)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0, 170, 0, 34)
	b.Position = UDim2.new(0, 10, 0, y)
	b.BackgroundColor3 = color
	b.Text = text
	b.TextColor3 = Color3.new(1,1,1)
	b.Font = Enum.Font.GothamBold
	b.TextSize = 13
	b.Parent = main
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 10)
	b.MouseButton1Click:Connect(callback)
	y = y + 40
end

logo.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
	logo.Text = main.Visible and "×" or "R17"
	logo.TextSize = main.Visible and 55 or 38
end)

-- Auto Record
local autoBtn = btn("Record: OFF", Color3.fromRGB(255,70,70), function()
	autoAdd = not autoAdd
	autoBtn.Text = autoAdd and "Record: ON" or "Record: OFF"
	autoBtn.BackgroundColor3 = autoAdd and Color3.fromRGB(0,220,100) or Color3.fromRGB(255,70,70)
end)

-- Set Respawn Point
btn("Set Respawn Point", Color3.fromRGB(0,200,0), function()
	local char = LocalPlayer.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		lastSavePoint = { CFrame = char.HumanoidRootPart.CFrame, Velocity = char.HumanoidRootPart.Velocity }
		title.Text = "Saved!"
		task.delay(1.5, function() title.Text = "V17 Final" end)
	end
end)

-- Recording
task.spawn(function()
	while task.wait(0.033) do
		if not autoAdd then continue end
		local char = LocalPlayer.Character
		if not char then continue end
		local hum = char:FindFirstChild("Humanoid")
		local hrp = char:FindFirstChild("HumanoidRootPart")
		local cam = Workspace.CurrentCamera
		if not hum or not hrp or not cam then continue end

		local now = tick()
		if now - lastTime < 0.032 then continue end

		table.insert(actions, {
			Pos = hrp.Position,
			Vel = hrp.Velocity,
			MoveDir = hum.MoveDirection,
			Jump = hum.Jump,
			CamCFrame = cam.CFrame,
			CamFOV = cam.FieldOfView,
			Delay = now - lastTime
		})
		count.Text = "Acts: " .. #actions
		lastTime = now
	end
end)

-- COPY AMAN 100% — POTONG JADI BAGIAN KECIL (<190k char)
btn("Copy + Camera", Color3.fromRGB(0,180,255), function()
	if #actions < 10 then
		title.Text = "Record dulu!"
		task.delay(2, function() title.Text = "V17 Final" end)
		return
	end

	title.Text = "Building " .. #actions .. " acts..."

	local header = [[
local cam = workspace.CurrentCamera
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild('Humanoid')
local hrp = char:WaitForChild('HumanoidRootPart')
task.wait(1.5)

]]

	local part = 1
	local currentPart = header

	for i, act in ipairs(actions) do
		local d = i == 1 and 0 or math.max(0.02, act.Delay)
		local c = act.CamCFrame

		local line1 = string.format("cam.CFrame = CFrame.new(%.4f,%.4f,%.4f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f)\n",
			c.Position.X, c.Position.Y, c.Position.Z, c:components())
		local line2 = string.format("cam.FieldOfView = %.2f\n", act.CamFOV)
		local line3 = act.MoveDir.Magnitude > 0.01 and
			string.format("hum:Move(Vector3.new(%.4f,0,%.4f),true)\n", act.MoveDir.X, act.MoveDir.Z) or
			"hum:Move(Vector3.new(),true)\n"
		local line4 = string.format("hrp.AssemblyLinearVelocity = Vector3.new(%.4f,%.4f,%.4f)\n", act.Vel.X, act.Vel.Y, act.Vel.Z)
		local line5 = string.format("hrp.CFrame = CFrame.new(%.4f,%.4f,%.4f)\n", act.Pos.X, act.Pos.Y, act.Pos.Z)
		local line6 = act.Jump and "hum.Jump = true\n" or ""
		local line7 = string.format("task.wait(%.4f)\n", d)

		local chunk = line1 .. line2 .. line3 .. line4 .. line5 .. line6 .. line7

		if #currentPart + #chunk > 190000 then
			-- Copy bagian ini
			setclipboard("-- PART " .. part .. " OF SCRIPT\n" .. currentPart)
			title.Text = "Copied Part " .. part .. "!"
			task.wait(1.5)
			part += 1
			currentPart = header
		end

		currentPart ..= chunk
	end

	-- Copy bagian terakhir
	setclipboard("-- PART " .. part .. " OF SCRIPT (FINAL)\n" .. currentPart)
	title.Text = "Copied Part " .. part .. " (FINAL)!"
	task.delay(4, function() title.Text = "V17 Final" end)
end)

-- Clear
btn("Clear All", Color3.fromRGB(255,80,80), function()
	actions = {}
	count.Text = "Acts: 0"
	title.Text = "Cleared!"
	task.delay(1.5, function() title.Text = "V17 Final" end)
end)

-- Respawn
LocalPlayer.CharacterAdded:Connect(function(char)
	if not lastSavePoint then return end
	task.wait(2)
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChild("Humanoid")
	if not hrp or not hum then return end
	hum:ChangeState(Enum.HumanoidStateType.Physics)
	task.wait(0.15)
	hrp.CFrame = lastSavePoint.CFrame
	hrp.Velocity = lastSavePoint.Velocity or Vector3.new()
	task.wait(0.2)
	hum:ChangeState(Enum.HumanoidStateType.Running)
end)

title.Text = "V17 Ready!"

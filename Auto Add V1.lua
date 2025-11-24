--// TRUE RECORDER V12 – LOGO ONLY + OPEN/CLOSE
--// Logo besar, bisa drag, klik = buka menu

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local gui = Instance.new("ScreenGui")
gui.Name = "RecorderV12"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- LOGO BESAR (tombol open/close + bisa drag)
local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0, 75, 0, 75)
logo.Position = UDim2.new(0, 20, 0.5, -37)
logo.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
logo.Text = "R12"
logo.TextColor3 = Color3.new(1,1,1)
logo.Font = Enum.Font.GothamBlack
logo.TextSize = 36
logo.Active = true
logo.Draggable = true  -- bisa drag di HP & PC
logo.Parent = gui

Instance.new("UICorner", logo).CornerRadius = UDim.new(0, 20)
local stroke = Instance.new("UIStroke", logo)
stroke.Color = Color3.new(1,1,1)
stroke.Thickness = 3
stroke.Transparency = 0.3

-- MENU UTAMA (awalnya disembunyikan)
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 170, 0, 230)
main.Position = UDim2.new(0, 15, 0.5, -115)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
main.BorderSizePixel = 0
main.Visible = false
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)
Instance.new("UIStroke", main).Color = Color3.fromRGB(0, 170, 255)

-- Judul & counter
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,30)
title.BackgroundTransparency = 1
title.Text = "V12 Recorder"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 15
title.Parent = main

local count = Instance.new("TextLabel")
count.Size = UDim2.new(1,0,0,22)
count.Position = UDim2.new(0,0,0,30)
count.BackgroundTransparency = 1
count.Text = "Acts: 0"
count.TextColor3 = Color3.fromRGB(100,255,255)
count.Font = Enum.Font.Gotham
count.TextSize = 13
count.Parent = main

-- Data
local actions = {}
local lastSavePoint = nil
local autoAdd = false
local lastTime = 0

-- Tombol dalam menu
local y = 58
local function btn(text, color, callback)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0, 150, 0, 30)
	b.Position = UDim2.new(0, 10, 0, y)
	b.BackgroundColor3 = color
	b.Text = text
	b.TextColor3 = Color3.new(1,1,1)
	b.Font = Enum.Font.GothamBold
	b.TextSize = 12
	b.Parent = main
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 10)
	b.MouseButton1Click:Connect(callback)
	y = y + 36
end

-- Open/Close dengan klik logo
logo.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
	if main.Visible then
		logo.Text = "×"
		logo.TextSize = 50
	else
		logo.Text = "R12"
		logo.TextSize = 36
	end
end)

-- Auto Record
local autoBtn = btn("Record: OFF", Color3.fromRGB(255,70,70), function()
	autoAdd = not autoAdd
	autoBtn.Text = autoAdd and "Record: ON" or "Record: OFF"
	autoBtn.BackgroundColor3 = autoAdd and Color3.fromRGB(0,220,100) or Color3.fromRGB(255,70,70)
end)

-- Set Respawn Point
btn("Set Respawn Point", Color3.fromRGB(0,200,0), function()
	local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	lastSavePoint = { CFrame = hrp.CFrame, Velocity = hrp.Velocity }
	title.Text = "Point Saved!"
	task.delay(1.5, function() title.Text = "V12 Recorder" end)
end)

-- Recording + Full Camera
task.spawn(function()
	while task.wait(0.033) do
		if not autoAdd then continue end
		local char = LocalPlayer.Character
		if not char or not char:FindFirstChild("Humanoid") or not char:FindFirstChild("HumanoidRootPart") then continue end
		local hum = char.Humanoid
		local hrp = char.HumanoidRootPart
		local now = tick()
		if now - lastTime < 0.032 then continue end

		table.insert(actions, {
			Pos = hrp.Position,
			Vel = hrp.Velocity,
			MoveDir = hum.MoveDirection,
			Jump = hum.Jump,
			CamCFrame = Camera.CFrame,
			CamFOV = Camera.FieldOfView,
			Delay = now - lastTime
		})
		count.Text = "Acts: " .. #actions
		lastTime = now
	end
end)

-- Auto Respawn
LocalPlayer.CharacterAdded:Connect(function(char)
	if not lastSavePoint then return end
	task.wait(1.2)
	local hrp = char:WaitForChild("HumanoidRootPart", 5)
	local hum = char:WaitForChild("Humanoid", 5)
	if not hrp or not hum then return end
	hum:ChangeState(Enum.HumanoidStateType.Physics)
	task.wait(0.1)
	hrp.CFrame = lastSavePoint.CFrame
	hrp.Velocity = lastSavePoint.Velocity
	task.wait(0.2)
	hum:ChangeState(Enum.HumanoidStateType.Running)
	title.Text = "Back to Point!"
	task.delay(1.5, function() title.Text = "V12 Recorder" end)
end)

-- Copy Script + Camera
btn("Copy + Camera", Color3.fromRGB(0,180,255), function()
	if #actions < 5 then return end
	local code = {
		"local cam = workspace.CurrentCamera",
		"local plr = game.Players.LocalPlayer",
		"local char = plr.Character or plr.CharacterAdded:Wait()",
		"local hum = char:WaitForChild('Humanoid')",
		"local hrp = char:WaitForChild('HumanoidRootPart')",
		"task.wait(1.5)",""
	}
	for i, act in ipairs(actions) do
		local d = i==1 and 0 or math.max(0.02, act.Delay)
		local c = act.CamCFrame
		table.insert(code, string.format("cam.CFrame = CFrame.new(%.4f,%.4f,%.4f, %.6f,%.6f,%.6f, %.6f,%.6f,%.6f, %.6f,%.6f,%.6f)",
			c.Position.X,c.Position.Y,c.Position.Z,c:components()))
		table.insert(code, string.format("cam.FieldOfView = %.2f", act.CamFOV))
		if act.MoveDir.Magnitude > 0 then
			table.insert(code, string.format("hum:Move(Vector3.new(%.4f,0,%.4f), true)", act.MoveDir.X, act.MoveDir.Z))
		else
			table.insert(code, "hum:Move(Vector3.new(), true)")
		end
		table.insert(code, string.format("hrp.AssemblyLinearVelocity = Vector3.new(%.4f,%.4f,%.4f)", act.Vel.X, act.Vel.Y, act.Vel.Z))
		table.insert(code, string.format("hrp.CFrame = CFrame.new(%.4f,%.4f,%.4f)", act.Pos.X, act.Pos.Y, act.Pos.Z))
		if act.Jump then table.insert(code, "hum.Jump = true") end
		table.insert(code, string.format("task.wait(%.4f)", d))
	end
	setclipboard(table.concat(code, "\n"))
	title.Text = "Copied!"
	task.delay(1.5, function() title.Text = "V12 Recorder" end)
end)

-- Clear
btn("Clear", Color3.fromRGB(255,80,80), function()
	actions = {}
	count.Text = "Acts: 0"
end)

-- Selamat! Sudah super clean & pro

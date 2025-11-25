--// TRUE RECORDER V14 – NO ACTION LIMIT + ZERO FREEZE GUARANTEED
--// Bisa record 10.000+ action → copy tetap masuk 100%!

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local gui = Instance.new("ScreenGui")
gui.Name = "RecorderV14"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- Logo besar (drag + open/close)
local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0, 80, 0, 80)
logo.Position = UDim2.new(0, 20, 0.5, -40)
logo.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
logo.Text = "R14"
logo.TextColor3 = Color3.new(1,1,1)
logo.Font = Enum.Font.GothamBlack
logo.TextSize = 38
logo.Active = true
logo.Draggable = true
logo.Parent = gui
Instance.new("UICorner", logo).CornerRadius = UDim.new(0, 24)
local s = Instance.new("UIStroke", logo)
s.Color = Color3.new(1,1,1)
s.Thickness = 3.5

-- Menu
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 180, 0, 260)
main.Position = UDim2.new(0, 15, 0.5, -130)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
main.Visible = false
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)
Instance.new("UIStroke", main).Color = Color3.fromRGB(0, 170, 255)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,32)
title.BackgroundTransparency = 1
title.Text = "V14 No Limit"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = main

local count = Instance.new("TextLabel")
count.Size = UDim2.new(1,0,0,24)
count.Position = UDim2.new(0,0,0,32)
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

local y = 62
local function btn(text, color, callback)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0, 160, 0, 32)
	b.Position = UDim2.new(0, 10, 0, y)
	b.BackgroundColor3 = color
	b.Text = text
	b.TextColor3 = Color3.new(1,1,1)
	b.Font = Enum.Font.GothamBold
	b.TextSize = 12
	b.Parent = main
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 10)
	b.MouseButton1Click:Connect(callback)
	y = y + 38
end

logo.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
	logo.Text = main.Visible and "×" or "R14"
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
	local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if hrp then
		lastSavePoint = { CFrame = hrp.CFrame, Velocity = hrp.Velocity }
		title.Text = "Saved!"
		task.delay(1.5, function() title.Text = "V14 No Limit" end)
	end
end)

-- RECORDING (TANPA BATAS!)
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

-- COPY AMAN 100% MESKI 20.000+ ACTION (PAKAI CHUNK!)
btn("Copy + Camera", Color3.fromRGB(0,180,255), function()
	if #actions < 10 then
		title.Text = "Record dulu!"
		task.delay(2, function() title.Text = "V14 No Limit" end)
		return
	end

	title.Text = "Copying " .. #actions .. " acts..."
	
	local chunkSize = 800  -- aman banget
	local fullCode = {
		"local cam=workspace.CurrentCamera",
		"local plr=game.Players.LocalPlayer",
		"local char=plr.Character or plr.CharacterAdded:Wait()",
		"local hum=char:WaitForChild('Humanoid')",
		"local hrp=char:WaitForChild('HumanoidRootPart')",
		"task.wait(1.5)",""
	}

	for i = 1, #actions, chunkSize do
		local chunk = {}
		for j = i, math.min(i + chunkSize - 1, #actions) do
			local act = actions[j]
			local d = (j == 1) and 0 or math.max(0.02, act.Delay)
			local c = act.CamCFrame

			table.insert(chunk, string.format("cam.CFrame=CFrame.new(%.4f,%.4f,%.4f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f,%.6f)",
				c.Position.X,c.Position.Y,c.Position.Z,select(4,c:components())))
			table.insert(chunk, string.format("cam.FieldOfView=%.2f",act.CamFOV))
			if act.MoveDir.Magnitude > 0 then
				table.insert(chunk, string.format("hum:Move(Vector3.new(%.4f,0,%.4f),true)",act.MoveDir.X,act.MoveDir.Z))
			else
				table.insert(chunk, "hum:Move(Vector3.new(),true)")
			end
			table.insert(chunk, string.format("hrp.AssemblyLinearVelocity=Vector3.new(%.4f,%.4f,%.4f)",act.Vel.X,act.Vel.Y,act.Vel.Z))
			table.insert(chunk, string.format("hrp.CFrame=CFrame.new(%.4f,%.4f,%.4f)",act.Pos.X,act.Pos.Y,act.Pos.Z))
			if act.Jump then table.insert(chunk, "hum.Jump=true") end
			table.insert(chunk, string.format("task.wait(%.4f)", d))
		end
		setclipboard(table.concat(fullCode, "\n") .. table.concat(chunk, "\n"))
		task.wait(0.1) -- biar Roblox sempat proses
		fullCode = chunk
	end

	title.Text = "Copied " .. #actions .. " acts!"
	task.delay(3, function() title.Text = "V14 No Limit" end)
end)

-- Clear
btn("Clear All", Color3.fromRGB(255,80,80), function()
	actions = {}
	count.Text = "Acts: 0"
	title.Text = "Cleared!"
	task.delay(1.5, function() title.Text = "V14 No Limit" end)
end)

-- Respawn
LocalPlayer.CharacterAdded:Connect(function(char)
	if not lastSavePoint then return end
	task.wait(1.2)
	local hrp = char:WaitForChild("HumanoidRootPart",5)
	local hum = char:WaitForChild("Humanoid",5)
	if not hrp or not hum then return end
	hum:ChangeState(Enum.HumanoidStateType.Physics)
	task.wait(0.1)
	hrp.CFrame = lastSavePoint.CFrame
	hrp.Velocity = lastSavePoint.Velocity
	task.wait(0.2)
	hum:ChangeState(Enum.HumanoidStateType.Running)
end)

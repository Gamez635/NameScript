local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "GearBrowser"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 450, 0, 350)
frame.Position = UDim2.new(0.5, -225, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.Text = "Gear Browser"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20

local searchBox = Instance.new("TextBox", frame)
searchBox.Size = UDim2.new(1, -10, 0, 30)
searchBox.Position = UDim2.new(0, 5, 0, 35)
searchBox.PlaceholderText = "Search gears..."
searchBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
searchBox.TextColor3 = Color3.new(1,1,1)
searchBox.TextSize = 18
searchBox.ClearTextOnFocus = false

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1, 0, 1, -70)
scroll.Position = UDim2.new(0, 0, 0, 70)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.BackgroundTransparency = 1

local layout = Instance.new("UIListLayout", scroll)
layout.Padding = UDim.new(0, 5)

local gearButtons = {}


do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Attack Doge"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://257810065")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pizza Delivery Vehicle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://170903216")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Astral Cloak of Transportation"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114020538")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Darksteel Katana of Ancient Illuminators"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://86494893")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Boombox Gear 3.0"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://193769809")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ultimate Drive Speedster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://253519495")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rainbow Disco Hyperbike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://215355157")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Super Fly Boombox"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://212641536")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zeus&#39;s Lightning Bolt Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66416616")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Hyperlaser Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://212296936")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Omega Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://98411325")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Galactic Laser Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168143042")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Redcliff Wings"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://223785473")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Body Swap Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://78730532")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mad Murderer Knife"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://170897263")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Grapple Hook"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30393548")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hyperbike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://130113061")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tiny Pony Stampede"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://257342981")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bombastic Katana"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://255800577")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bluesteel Katana"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243791145")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Iris Katana of Goldengrove Unleaving"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22787168")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravity Coil"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16688968")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "HEX Spitter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243007180")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cloak of the Undying"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://94794833")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bloxster 2XH"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://158069143")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sinister Korblox Wings"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236403905")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Heat Seeking Missile Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://67747912")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Chi Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://139578571")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "iLift Two"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://233520425")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Steampunk Gloves"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243790334")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ice Dragon Slayer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168141301")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ridable Raptor"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://190094270")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Stravant&#39;s Lightning"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://169669671")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Speed Coil"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99119158")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "RAIG Table"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://110789105")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rainbow Magic Carpet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://225921000")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crocopal"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://257343434")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rainbow Katana"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://158069071")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bombo&#39;s Survival Knife"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://121946387")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "R-Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://98411393")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Redrune Raider"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://103234296")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Katana"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11453385")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bombo&#39;s Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://121925044")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Joyful Periastron Epsilon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://233520257")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Spy Laser Blaster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://208659734")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orbital Piano Strike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://113299590")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Emerald Hyperbike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://206799274")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dubstep Boombox"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://84417281")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red ROBLOX Glider"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://218631227")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Icy Arctic Fowl"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101078559")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Overseer&#39;s Steed"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://178077177")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tri-Laser 333"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://139578207")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bloxy Cola"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10472779")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Phoenix"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92142799")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Exponential Rocket Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90718505")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tornado Summoner"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://102705454")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Poseidon&#39;s Quake Trident"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54130559")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bag O&#39; Noobs"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32355759")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Merely&#39;s Sparkle Time Hoverboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://124127383")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Nunchuks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160189476")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orc Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10469910")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spray Paint"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://80576967")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Penguin Power Pet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://172248941")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Overseer Short Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://156467990")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dragon&#39;s Breath Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://70476435")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dynamically Lit Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160198008")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orbital Flute Strike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://225921650")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Captain Steelshanks Recruiting Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71597060")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Intergalactic Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://170903610")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rapid Launch Blaster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://98411436")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fallen Artemis Bow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://110892267")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Harpoon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://118281529")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "An Elegant Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://44561450")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Rocket Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://190094159")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trench Warfare Shotgun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://94233344")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Decoy Deploy"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30392263")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Overseer Sword &amp; Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://223439643")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Quadshooter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163351966")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Taser"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://82357123")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ronin Katana"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12187348")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mythic Sword of the Tides"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://241017568")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sten Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95354304")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Merely&#39;s Green Sparkle Time Hoverboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://215392741")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Luger Pistol"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95354288")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crossbow of the Sea"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236438668")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Convertible"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://164207580")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Towering Inferno Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83704169")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Laser Finger Pointers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://115377964")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "UFO"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163352376")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ro-torcycle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://122278149")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Exploding Arrow Crimson Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://221173389")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dark Pegasus"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://191261808")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27902303")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Silver Ninja Star of the Brilliant Light"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11377306")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pretty Pretty Princess Sceptor"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114020480")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Police Badge"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://82358339")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Amazing Shrinking Elixir"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74904396")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knight&#39;s Elder Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48395736")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravity Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34901961")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Portable Beach"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://162857357")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Double Sword Punch"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243791329")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Brilliant Throwing Knives"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://208659586")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Merely&#39;s Hover Surfboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://233660801")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chocolate Milk"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21392199")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tempest Blades"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68478587")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Foul Poison Fowl"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://170896941")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ice Breaker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://87361662")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magic Lamp"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71037056")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "US Military Top Secret Experimental Jetpack"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://31314966")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Seahorse"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://118281490")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trololo Cape of Invisibility"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://129471121")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Roped"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://104642522")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gear Cloner"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97161295")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orbital Violin Strike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183665698")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of Swords"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://139578136")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mauser .96"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97885552")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Earth Summoning Horn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236403380")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gamaboi"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66426103")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Robloxsai Bike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://189910262")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX Classic Brigand&#39;s Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10468915")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Raig Chair"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://151291980")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Intern Racing Chair 2014"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://169602388")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Plungers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114690870")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mechatronic Spider"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116040789")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Noobcaik"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://107458461")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Awe Star"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18010691")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bluesteel Alterer of Destiny"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97161222")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bloxster BZR"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://215355320")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bloxiade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://17237662")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Airstrike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88885539")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Basketball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52627419")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Krossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://59805584")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gear Recycler"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236442380")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Lunar Lander 2D Game"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://85145662")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Blink Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47597835")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Medusa Head"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://89487934")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Battle Slingshot"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125013799")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Lightblox Jar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://113328094")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Classic Plane"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163348575")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Elven Blade of Glory"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22788134")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Azurewrath&#39;s Return"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://59190543")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Epic Duck Roped"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163995329")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snow Storm Cloud"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://189910805")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Birthday Pinata"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34398938")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mythic Sword of the West Wind"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://241017426")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magic Ninja"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30847779")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Burger Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236440696")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Overseer&#39;s Bow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101078524")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Historic &#39;Timmy&#39; Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116693764")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Mage Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://127506105")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Katana of Destiny"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46846024")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bear Mine Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90718350")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rocket Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32356064")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spartan Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://96669943")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Regeneration Coil"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://119101539")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Skeleton King&#39;s Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95951291")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ultraviolet Laser Oculus"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://113299556")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Frostbrand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32858586")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gigantoform"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72713855")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wizards of the Astral Isles: Limb Stretching Spell"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106701702")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Toxic Goo Trap"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://79446395")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Naginata"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://244081145")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bluster Buster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83704190")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://204485737")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tom&#39;s Beans"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://103358098")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Atomizer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://35293856")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Paintball Pro"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://172246669")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Elixir of Dreams"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65082246")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "BC Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27902388")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Camping Machete"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://123234673")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Adventure Island"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90242059")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Hyperbike"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://170896571")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magician&#39;s Cloak"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://212296400")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Quill of the President"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://146047220")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Taco Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://170903868")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "iLift"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://122278276")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Builderman&#39;s Hammer of Shimmering Light"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53623248")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spartan Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20721924")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Witches Brew"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10727852")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Amerilaser Blaster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116693694")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orinthian Blaster 3777"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92628074")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trollamon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://105189783")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Gravity Coil"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://150366274")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bo Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47262951")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX Portable Game System (RPGS)"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://58574445")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bamboo Dart Blowgun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51346271")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dracovin&#39;s Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://56561607")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Time Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://80576952")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bacon Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://173781053")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fallen Artemis Sword &amp; Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243778818")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Leopard Print Balloon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://176087556")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Starblox Latte"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15932306")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sinister Flying Magic Carpet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://103235041")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Year of the Dragon Lantern"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://70476451")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Seranok&#39;s Rocket Jumper"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://169602103")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dragonheart Sword &amp; Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://172298750")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Drop"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://152233094")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Hydrian Elixir"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917420")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hover Roped"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://218634097")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deluxe Hook Shot"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90220438")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Outrageous Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://62350867")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fire Breathing Dragon Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://45941397")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Sword of Spring Growth"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://226205948")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Green Balloon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27494652")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Steampunk Jetpack"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://157205831")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dark Spellbook of the Forgotten"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://56561579")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magic Dragon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://24659699")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crowbar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21445765")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Green Laser Scythe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://218631128")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bundle of TNT"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12902404")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Paper Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://57229357")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Gloomy Grip"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33382711")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Homemade Wings"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161216321")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magical Umbrella"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://44115926")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flashlight"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116040770")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Prehistoric Piercing Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://206136361")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hula Dog"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://57983479")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bladed Ninja Claw"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://254608905")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Scythe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://28275809")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "EKoSS Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://223785350")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Agent 99&#39;s Laser Goggles"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://100472084")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Bacon Daggers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168142394")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Rebels Paintball Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26014536")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ice Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46362414")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Killer Bee Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163351579")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cupcake Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34399318")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dark Falchion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108149201")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Book Worm"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://128160929")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bloxxy Radar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29532138")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sheriff Steve&#39;s Six Shooter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25317304")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blue Bloxxers Paintball Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26017478")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bluesteel Claw"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10758456")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snowy Gravity Coil"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://186868758")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Skeleton Scythe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95951330")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Club Boates Disco Ball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://248287898")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Subspace Debonair Disguise"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48596336")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Endless Summer Fireworks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://162857391")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of Unvanquished Snakes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://149612243")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flashbang"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16979083")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Meteor Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://87361806")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dynamically Lit Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160198363")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tiger&#39;s Wrath Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://176087505")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pirate&#39;s Flintlock"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16726984")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Poison Picnic"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88143074")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Suit Up Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://91360052")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Arctic Fox Tail"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://188853857")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fuse Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11563251")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Merry Avenger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://67319425")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Lightning Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://154727343")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Confetti Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34399428")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Claymore"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11452821")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Breath of Fire"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168140516")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Giant Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://96669697")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Conjuror&#39;s Fist"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90718686")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Camping Lantern"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://123234545")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Graffiti Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108875172")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mythic Sword of the Earth"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://241512134")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Remote Controlled Monster Truck"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52180871")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wizards of the Astral Isles: Rat Plague Summoner"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106701564")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The General&#39;s .45"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97885508")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Freeze Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://102705402")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Earth Protection Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236441643")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Puppet Master"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://91360028")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Military Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://81847570")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deluxe Blue Roped"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://112593687")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "8-bit Phoenix"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163355404")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Whip"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://255800146")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Speedy Purple Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://154727251")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Penguin Horde  Attack"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://187840979")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Ninjas: SunFire Scroll"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60888200")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Annoying Elf: ReeseMcBlox"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://67494312")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ogre Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116055112")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Arabian Knight Scimitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71037076")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "April Showers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://111876831")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blunderbuss"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30847685")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Potato Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://81847365")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Throwing Spork"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://107458429")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Statue Staff of Stony Justice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://59190534")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flower Feet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://226206253")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Stone Hammer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13207169")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Torch"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://31839337")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dracovin Spell Book"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49491736")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pumpkin Bucket"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://17527923")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword Punch"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147143881")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orinthian Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147143821")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Winsome Wizard Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32355966")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Ice Claws"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://223785065")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Double Bladed Hand Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12775410")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Teddy Bloxpin"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12848902")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Saxophone"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://45094376")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knight&#39;s Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10831509")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tiger Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://78367424")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cinco de Mayo Pi&#241;ata"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114687223")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Panda Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46846246")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "OBC Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27902406")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bugle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33683368")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Danger Dagger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://96669682")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Turkey Leg"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13745494")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Laser Throwing Stars"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://218631022")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Taco"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15177716")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Positronic Platform Producer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34898883")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bamboo Katana"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21754543")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Space Sandwich"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12547976")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Summer 2014 Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161208517")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Midnight Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160198658")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword Fish"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54130543")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Black Tie Affair Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://192456288")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of Redcliff: Battle Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49929724")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "PE Whistle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://128160832")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rapid Fire Snowflakes Shuriken"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://188644205")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flute"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52180863")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Starfish Shuriken"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83021236")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blow Dryer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11719016")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Face Melting Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99119198")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sleepy Song Bird"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://152233381")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "S-79 Speed Stunter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88885497")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Stomp Boots"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97161241")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wizard Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://38327125")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pirate Hook"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14131602")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Farmer&#39;s Revenge"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101106419")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "War Rocks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10884288")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Elegant Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15470359")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Military Spy Satellite"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88885506")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Groundhogger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://105351720")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Paint Grenade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://172246820")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Paint Bucket"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18474459")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Strong Man"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://121385328")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Epicsauce"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://31314931")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bundle of Fireworks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161220552")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cheezburger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16726030")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Jump Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46846115")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Healing Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11419319")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Vine Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30847733")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Noxious Chocolate"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106064315")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Seashell Snare"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54130537")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spring-loaded Jumping Stilts"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://226206639")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Water Balloon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29100543")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cavalry Sabre"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14719505")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trident"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30847746")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ye Olde Fire Breath Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163350265")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Giant Dinosaur Feet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://206136532")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Newtrat&#39;s Tuskinator"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://124126871")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spikey Stick of Civilized Negotiation"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18409191")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Regular Carpet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236443047")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hot Chocolate"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://42321801")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Patriot&#39;s Monster Truck"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161282711")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX U Free Stuff Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://176087640")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Battle Bottle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101106464")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Moonwalk Dance Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32353654")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hockey Stick"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://142498104")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Battle Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27171403")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tic Tac Toe Board"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16924676")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "BANG!"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26419811")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mindgrapes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16951083")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pepperoni Pizza"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22596452")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Foam Finger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21439965")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Summer Skate"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://118650365")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "TBC Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27902398")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX Grab Bag"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34398653")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBAR eXtreme Chocolate Crunch"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://39258329")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Soccer Ball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://28664212")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Big One!"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://162857422")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "2015 Fireworks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://190880295")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fire Extinguisher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://31839411")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "NY Pizza Frisbee"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125859483")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Moneybag"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16722267")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Winter Snow Sled"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99119261")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Double Cheezburger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://24686580")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hot Potato"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25741198")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Police Baton"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11956382")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ice Cream"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://57902859")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Maraca"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21351465")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "High Five"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72644603")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Slateskin Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11450664")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Megaphone"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://44116233")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hot Dog"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29939404")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Watermelon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22787248")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Worldwide Stunna"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://233633874")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Protest Sign: Save the Zombies"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21440120")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Caltrops"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15176169")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Scepter of Pharoahs"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18482570")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Slingshot"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33382537")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fortune Cookie"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://35684857")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wood Cabin Snowglobe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://19111894")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX U Foam Finger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://176219131")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Vuvuzela"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29345958")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cymbals"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163348987")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wild West Sarsaparilla"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://58574416")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Shuriken of the Clan of the Crescent Moon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65546284")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Teddy Trap"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12890798")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wooden Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12145515")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bucket"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25162389")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Beach Ball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25974222")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cake"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16214845")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Quick Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20642023")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Barrel O&#39; Monkeys"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://31314849")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Goblet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15470183")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snowball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://19328185")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Nightfall Elixir"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://94333296")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghostfire Dagger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://62350856")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wizards of the Astral Isles: Frog Transformer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106701619")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Duck"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://104642550")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ultimate Slide Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52180878")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Bone Mace"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://156467855")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orinthian Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92628079")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tornade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47871646")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Confusion&#39;s Cauldron"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://56561570")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flaming Hedgehog Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60357972")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Civil War Artillery"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://174752553")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blizzard Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68354832")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68233678")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox: Tripmine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51757158")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Axe of Blinding Justice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183665514")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Race the Sunset"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://76170545")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Emerald Knights of the Seventh Sanctum Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://128162713")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Riptide"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://124472052")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravity Disruptor"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101110605")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Monster Attack"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://126719148")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wizards of the Astral Isles: Pegasus"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106701659")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Lands"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183826384")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wizards of the Astral Isles: Pegasus"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106701659")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravity Disruptor"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101110605")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orinthian Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92628079")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magic Carrot"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://50454041")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Shadowy Ninja Star of the Silent House"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11115851")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Ninjas: Ninja Kitteh"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60888225")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox: Tripmine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51757158")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tornade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47871646")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Apple Pie"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18426536")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Riptide"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://124472052")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ultimate Slide Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52180878")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Confusion&#39;s Cauldron"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://56561570")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Protest Sign: Noobs"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22960435")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Axe of Blinding Justice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183665514")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Civil War Artillery"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://174752553")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "First Aid Kit"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15397778")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Binoculray"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27133214")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pumpkin Pi"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16986805")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blizzard Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68354832")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68233678")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX World Tour Lightning Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116040807")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Telamonster: the Chaos Edge"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93136746")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Shrunken Head"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://44561400")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Volleyball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://57983532")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flaming Dragon Slayer Bo Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73232786")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dance Grenade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65545955")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chimera"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://87361508")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magmarealm Spear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://43708943")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Squid Ink Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://118281609")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Go Fish"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://58574452")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "BB Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://42845609")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Laserface"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://159199204")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spikesplosion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73888479")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Time Watch"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://81330766")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Steamgun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://157205837")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Creepy Zombie Monkey"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71597072")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Frost Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://42845896")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghostfire Throwing Daggers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://64220952")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Darkhearts"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108149175")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Superhero Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://76262706")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chiefjustus Gavel"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://120749528")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Creepy Zombie Monkey"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71597072")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Squid Ink Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://118281609")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spikesplosion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73888479")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghostfire Throwing Daggers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://64220952")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Taser Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://50938773")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magmarealm Spear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://43708943")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of Redcliff: Deluxe Sword and Shield Set"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://127506364")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mardi Gras Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147937443")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Beach Battle Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://112591894")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Overseer&#39;s Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://127506324")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Heartbreaker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72069888")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chiefjustus Gavel"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://120749528")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Light Face Melting Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://135472231")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Four-In-A-Row"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18210455")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bunny Accoutrement"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://233520157")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "CocoWHAAA?"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://24396804")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Grimgold Periastron Beta"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73829193")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Superhero Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://76262706")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Penguin Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46360821")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "2010 Fireworks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20064349")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Keith&#39;s Vengeance Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29532089")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ocean Samurai"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://23306097")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Candy Cane Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101078326")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Attrition Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47871597")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mega Annoying Megaphone"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65545971")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Emerald Knights of the Seventh Sanctum Spellbook"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://128162639")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pirate Cutlass"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10910681")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zombie Grip Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://89491407")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Gamma Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21416138")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trollin&#39; Pumpkin"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://62803186")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fiery Bone Trap"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://63253706")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917429")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bladed Tutu"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168141496")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Seas"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://155661985")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Big Apple Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125859385")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Subspace Tripmine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11999247")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flaming Halberd"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168140813")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravitational Radiation Hammer v0.01"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33866846")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super-G LS33 Disruptor"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14516975")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chief Guardsman Spear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://62350846")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Goala Cola"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://28672001")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bat Knight Bat Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://17680660")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Subspace Tripmine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11999247")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flaming Halberd"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168140813")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravitational Radiation Hammer v0.01"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33866846")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Frosted Santa, Harbinger of Christmas Creep"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://40811356")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Year of the Snake Lantern"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106064469")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pigs Boson Collider"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88143093")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rainbow Periastron Omega"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://159229806")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Homemade Jet pack"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243790517")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Atmoshocker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73829214")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Annoying Elf: Finsurf"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://67798397")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox: Berserker&#39;s Claymore"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51757162")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tyrannosaurus"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://85754656")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Gamma Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21416138")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Potion of the Fiery Fists"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://56561593")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Big Apple Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125859385")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Vanishing Ninja Star"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://129471170")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pirate Cutlass"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10910681")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zombie Grip Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://89491407")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917429")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Shifting Polarity"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61459706")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fiery Bone Trap"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://63253706")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Turkey&#39;s Vengeance Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65969704")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Grim Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://107458531")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Military Dress Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88885481")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Summer Sun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54694329")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bug Juice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://57229313")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Scepter of Divine Indignation"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://35682284")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sleep Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://141759818")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Polar Bear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93709266")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Leland the Lolturtle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15731350")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sonic Boom Tuba"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47871635")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Protest Sign: Blame John"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25926517")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "All Hallow&#39;s Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://181356054")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Emerald Scatterblaster 2000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22969230")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of Fiery Justice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99797381")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hanukkah Menorah"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99797327")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ne&#39;Kotikoz Incarnate"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61459592")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Tormentor&#39;s Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61459718")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Eggstermination Slingshot"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://228588651")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bronze Kopesh"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18481407")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Granny&#39;s Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16986649")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13841367")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of Redcliff: Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49929767")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Granny&#39;s Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16986649")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13841367")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Duelling Glove"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://75556791")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fang Of Anansi"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116693735")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Kami Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66426498")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Stinky Underwear Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://121385230")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gork, Your Caveman Shoulder Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33732371")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pirate Lieutenant&#39;s Cutlass"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48159648")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of the Winds"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18462637")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fluffy Unicorn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://84012460")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cupid&#39;s Beloved Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://106064277")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "RoMaze"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73829202")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Green Epic Sauce"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://38861951")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Shadow Dancer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48159815")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rubber Chicken Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://121385193")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Monster Fierce Basher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://204095724")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Tormentor&#39;s Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61459718")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Brighteyes&#39;s Sparkling Shillelagh"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53130850")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Merely&#39;s Web Slinger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://169602010")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOXIAN Healing Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61916132")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bombo&#39;s Survival Raig Table"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243788010")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "All Hallow&#39;s Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://181356054")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Triple Plungers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161211085")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magical Turkey Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65979823")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cursed Fire Flame Thrower"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://59175769")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword Cane"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25740034")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Flying Oblivion Horn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101734094")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Giant Ape Arms"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://126719120")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "EMP Shockmine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://85879435")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dragon&#39;s Blaze Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://105351545")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deluxe Snowball Cannon 3000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://67755182")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghost Hoverboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://64160547")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOXIAN Damage Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://103338520")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Beehive"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://117498775")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zebra Laser Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://176087466")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hedgehog Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://76170471")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Metal Fists"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183355969")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of Fiery Justice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99797381")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tambourine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21392417")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Christmas Tree Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://189756588")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Laser-saw"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://159199218")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Granny&#39;s Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16986649")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Remote Control Plane"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://69210407")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Triple Plungers"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161211085")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Drum Kit"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33866728")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "NobleDragon&#39;s Noble Dragon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163995460")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zombification Injection"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93536867")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Machete"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14131296")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Freeze Ray 2011"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://42845853")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bluesteel Midas Hand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163354553")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Darts"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46846074")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Balloon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27477255")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Roboarm"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://35366215")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Springtime Cutlass Of Infinite Virtue"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://24440014")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Panda"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://221173959")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Presidential Vampire Slaying Ax"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://146047188")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sharp Looking Hat - the Gear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://100472063")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Artemis Bow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92142841")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Sai"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51346336")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trololololo Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://69964719")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of the Raging Storm"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49491808")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pirate Juice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13477890")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Frozen Flail"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://186958653")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Sky: Wind Summoning Horn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://127506257")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Illumina"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16641274")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Alpha Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11999235")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Uppercut Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93136674")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rock It Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13477940")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mystical Griffin"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://215448210")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Beast Claws"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://105289761")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wasp Wings"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://117498849")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dragonshead Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://70476425")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Harbinger of Fimbulwinter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15970544")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Redcliff Ballista"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://156467963")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Winter Winds"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://42847923")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Autumnal Winds"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://40493542")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Jade Katana of the Darkest Forest"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21294489")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Arabian Nights"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21439893")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crimson Periastron Mu"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99119240")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Enchanted Bat Flying Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://63721732")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "RobloTim&#39;s RobloHunk Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53130887")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Scroll of Sevenless"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125013830")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sorcus&#39; Chair"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://96095042")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Machete"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14131296")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Z Ray Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65082275")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Jade Katana of the Darkest Forest"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21294489")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Exploding Heart"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://178076989")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Balloon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27477255")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Beast Claws"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://105289761")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Leprechaun Harp"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://109583822")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Battle Wagons!"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27471379")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Not-so-friendly Ghost"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://126719093")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Honey Badger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://122278316")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chupacabra"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://126704033")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "jmargh&#39;s Arm Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://151311761")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spring Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://150366351")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Boss Bunny Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://228589017")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Sea&#39;s Revenge"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71597027")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Torso Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://85879465")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Catapult"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://70032387")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Banjo"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12909278")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Holiday Ornament Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://99797357")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Crimson Chaos Fire"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32858741")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://186868641")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Swordbreaker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://77443436")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Atmoblaster 777"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://50937815")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Microphone"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://45754061")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mackerel"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46360920")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghost Dragon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://94233391")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crossbow of the Blades"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://78665215")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cool Story Air Conditioner"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://119101643")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ice Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://46360870")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Incinerator 6000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://102705430")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snowman Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://67755215")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Eggstra Large Eggs"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://228588531")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Double Disasters"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://173812248")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Confusoray 672"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48596305")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snowman Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://186959114")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bloxster 2XZ"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://185422295")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dreamwalker&#39;s Dagger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65079090")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Ballista"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917432")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravitron 3000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74385438")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Nuclear Winter Icicle Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22971409")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Lightning Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72644629")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Amethyst Periastron Kappa"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93136802")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Venomshanks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://158069180")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Shadow Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://103359953")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Annoying Elf: Ostrichsized"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66896542")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gravitron 3000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74385438")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pompous, the Cloud"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://107458483")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Nuclear Winter Icicle Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22971409")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Lightning Orb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72644629")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Turkey Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://40504724")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Shuriken"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://255800783")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Anchor Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://155662087")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Protest Sign: We Want User GUIs Now!"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15973049")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Black Hole Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://28277486")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX World Tour Hot Air Balloon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://116040828")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flak Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://78005022")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chocolate Bunny"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://24791472")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dreamwalker&#39;s Dagger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65079090")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Venomshank"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68603324")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Amethyst Periastron Kappa"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93136802")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dart Trap"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90220371")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Ballista"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917432")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Donut Delivery Moped"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://211944997")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Princess Mischief&#39;s Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49491716")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "RoVacuum 2012"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://84418938")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Epsilon Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://23727705")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Disco Ball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147937284")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Sword of Shai"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://174752186")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Judge Underwood&#39;s Gavel"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://44115185")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Break Up"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72069827")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox - Fallen&#39;s Spine Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114020557")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Quantum Entangler"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://72644644")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Evil Green Science Goo"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://154727487")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Vaulting Pole"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88143166")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Skele-tar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13478015")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Freeze Ray"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26013203")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Redcliff Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://178076831")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Starfish Shooter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54130552")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trusty Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://96669687")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Board With a Nail in It"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10510024")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Garbage Can Shield and Wooden Sword Set"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://75550928")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Epic Flail"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://204095670")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Speedy Shoes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183355817")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16216702")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Freeze Ray"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26013203")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dusek Car"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://42845684")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "M1 Garand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://94233286")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Epic Flail"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://204095670")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16216702")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Vaulting Pole"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88143166")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Smore"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22788972")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Starfish Shooter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54130552")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Speedy Shoes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183355817")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox - Fallen&#39;s Spine Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114020557")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Evil Green Science Goo"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://154727487")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Disco Ball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147937284")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ninja Claws"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160189871")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magnificent Magenta Paintball Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://30649735")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Latke"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://41457484")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rolling Pin"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11885154")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pot Of Gold"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://24015579")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sapphire Rapid Fire Shocker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108875237")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blackhole Ray Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://78005009")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Music Blaster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://152187131")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of Redcliff: Bow and Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49929776")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Steampunk Bow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://184760397")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Footbag"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52180858")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bear Arm"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://85145626")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Death Run 2 Shoes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168142869")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Formula R Remote Control Car"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://31839203")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghostfire Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://64220933")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Victrola"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163348758")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Sparkle Time Claymore"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://221181437")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Explosive Spy Pen"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95258660")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "First Class Fencing Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88146486")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Otterhead Shortsword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21439778")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Ninjas: Combat Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60888308")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Mariachi Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26673760")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Metal Cog Shuriken"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://157205818")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hypnocannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://35366155")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of RedCliff: Battle Horn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114020505")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Penguin Shooter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://192537346")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tomahawk"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://44084783")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Stratobloxxer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11419882")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Illuminating Spear of Revengeance"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://69947379")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chaos Master&#39;s Wing Slasher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://87361995")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Highlander"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12187319")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Remote Explosive Detonator"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74385399")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Telamax XR71 Shoulder Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61963621")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Snowplow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://189910707")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Annoying Elf: Keith"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68354853")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Black and White Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://191261930")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Rock Star Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://152187198")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rockin&#39; Pink Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://193771176")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Baseball Bat"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55301897")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Trip Wire"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97885289")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Super Tone Cape"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://130925426")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Skipper Seal"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://155696189")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox: Spiked Arm Bracer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51757126")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Zeta Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66416579")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Luck &#39;O the Irish"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74904413")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68539623")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wormhole Tunneler"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://34870758")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dragon Slayers Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73232803")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Noble RedCliff Eagle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51347716")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "2010 Roman Candle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20048880")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Stealth Ninja Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://86492467")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Vilethorn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54694334")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Egg Fuse Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://50454086")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Ninjas: Dual Kamas"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60888284")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ra&#39;k Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18482562")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Colossal Blade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83704154")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chameleon Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61916137")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Watermelon Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://161230469")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spring Sword of Growth"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48159731")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Protest Sign: Pro Fake Mustache"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21440056")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Land Shark Shooter"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://118281463")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hyperlaser Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://130113146")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flying Magic Carpet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71037028")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dance Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27858062")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cowbell"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20373160")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Razevenge"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74385386")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Psychokinesis Glove"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://91360081")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Linked Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125013769")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Windforce"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://77443704")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Disintergrex Blast Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18268645")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Green Gremlins Paintball Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27245855")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of Light"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://77443461")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flying Magic Carpet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71037028")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Azure Ever Ice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32858662")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cowbell"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20373160")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fairy Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://109583846")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spring Sword of Growth"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48159731")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Zeta Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66416579")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Disintergrex Blast Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18268645")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Primeval Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://206566653")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://151292047")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghost Ship"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://155662051")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX U Moped"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://176087639")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Guitarmy"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47871615")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Clown Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88146497")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spooky Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13206887")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hedgehog Horde"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243788599")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "4-String Roblocaster Premiere Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14492601")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Leprechaun Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74972442")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Red Grind Skateboard"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163355211")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Picnic Basket"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52625744")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rukiryo&#39;s ROBLOX Tablet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://98253592")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Telewarp"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97311482")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orinthian Falcon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92627975")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Orinthian Mace"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://92627988")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX Invisicar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://129471151")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Twin Kodachi"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51346471")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flamethrower"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33879504")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Amerisword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108158439")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Portable Justice"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://82357101")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Protest Sign: We&#39;d Rather Have User GUIs Later..."
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15973059")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Skelefriend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://63253701")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Azure Periastron Alpha"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://69499437")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crescendo, The Soul Stealer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://94794774")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Necrosapien Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://64647651")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Seranok&#39;s Golden Chalice of Fame"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://124126528")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "RC Tank"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83021197")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Telamon&#39;s Foe Hammer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53623350")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pi RAIG Table"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://148791414")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Remote Mine"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33383241")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Seventh Sanctum : Dual Duel Axes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://69947367")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Blue Katana of One Thousand Tears"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20577851")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Laser Guided Missile Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://110337853")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "HotThoth&#39;s Voodoo Doll"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53130896")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zombie Friend Fred"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://36784258")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Necrosapien Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://64647651")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "First Aid Kit"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://45201977")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Poisoned Skeleton Scythe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://158069110")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Silly Stilts"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60357989")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Picnic Basket"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52625744")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hedgehog Horde"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://243788599")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flock of Attack Seagulls"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://236401511")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "XLS Mark II Pulse Laser Pistol"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://11999279")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ice Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://19704064")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Emergency Rations"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://97885572")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Firebrand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://81154592")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Robot Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://45513247")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Compass"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14864611")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Math Homework"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22788102")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Salute"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://79446433")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Retro Candy"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://65079094")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chakram"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18479966")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spring Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://150366320")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Roman Catapult"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://174752400")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Drachenstein The Guardian"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://70476446")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hand Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://33867016")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Electric Blue"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://12504077")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Stun Grenade"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88885524")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Battle Sleighs!"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://41855117")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Danger Mace"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://100469994")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Smashing Drum"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://139578061")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Morning Star"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917409")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of Redcliff: Morning Star"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49929746")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gear suppressor 777"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://104642700")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Monster Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://75941738")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pwny"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26777410")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Kunai"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://47262108")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wall Walker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://35683911")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of the Seven Winters"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93136666")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Black Iron Mace of Pwnage"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10730984")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Alien Parasite"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://76170515")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Troll Pet"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88143060")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Killer Whale Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://188643628")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hungry Lion Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://91294485")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rail Runner 5000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://79446473")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Neverending Frost"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66896601")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chartreuse Periastron Gamma"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://80661504")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deadly Thorn Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://59175777")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Retribution Ray"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://85879456")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dragon&#39;s Flame Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168140949")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "ROBLOX Blimp"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160199141")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Colonel&#39;s Cavalry Sabre"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49052716")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Gear suppressor 777"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://104642700")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Illumina"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101191388")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cherry Pie"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://40493590")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Faux Firebrand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://32858699")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Splintered Skies: Morning Star"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://55917409")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sorcus&#39; Sword of Judgement"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53623322")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of Redcliff: Morning Star"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49929746")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Pool Noodle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://164207842")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ocherous Katana of the Setting Sun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://25545089")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chimp Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22960388")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Katana of Destiny"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108875151")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Boxing Glove Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168142620")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Icedagger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83704165")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Positronic Arm Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48847374")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Staff of Sparks"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10760425")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Helper Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://84417104")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magic Beach Towel"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://164369961")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Poisonous Butterfly"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://117498793")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Merica Airwalker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://52625733")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "JediTkacheff&#39;s DeathStar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://53130867")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Saw Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://54694324")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Levitating Staff of the Cosmos"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://48596324")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deputy Bobby&#39;s Cowboy Boots"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49052638")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tribal Spear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://38326803")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Icicle Cannon"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://20519646")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Polar Bear Attack Claws"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://187688069")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Riot Shield and Billy Club Set"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://82357079")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Darkest Arts Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147143863")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Stinky Skunk"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://123234626")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zombie Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26421972")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Taxi"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://125013849")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spec Beta Biograft Energy Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://14876573")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deluxe Vine Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://183355732")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "The Fiery Sun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://83021250")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Cursed Mummy Friend"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16987194")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bejeweled Sword of Great Fury"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://204095612")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sword of Nefertiti"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21802000")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tribal Spear"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://38326803")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Polar Bear Attack Claws"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://187688069")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Riot Shield and Billy Club Set"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://82357079")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ceramic Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22152171")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Instant Campfire"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://123234510")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Laser Lava Launcher"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://206798405")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Steelshanks Armament"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71597048")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Diamond Blade Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://173755801")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Call Me Cellphone"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88146505")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Breakfast Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://163353363")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Transmorph Ray Gun"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29099749")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sledge Hammer"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://45177979")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Golden Katana of the Unflinching Dawn"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18776718")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Tiger Skin"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://90211299")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Silver Crossbow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://174752245")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Holiday Ham"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://101078350")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Banana Peel"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://29100449")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rubber Chicken Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://75550883")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Clawknife"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22152234")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dual Katanas of the DarkAge Clan"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://86494914")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "EKoSS Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://178076749")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Atomic Disintegrator 3100"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://13838639")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Discus 2012"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://88885268")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Hi-Velocity Phaser 5700"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://16469499")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Scatterblaster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21420014")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Nova Wand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://27860496")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crate of Snakes"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://49059364")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Yellow Card"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://28671909")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Dagger of Shattered Dimensions"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://71037101")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Spectral Sword of Illusions"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68848741")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Forbidden Box"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95354259")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "A Very Special Monster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://21439991")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Homemade Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://244082303")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Knights of the Seventh Sanctum: Sword and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://60357959")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Fencing Foil"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://10831489")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Captain&#39;s Flintlock"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://17237675")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Earth&#39;s Might Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://102705386")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Roblox Snowglobe 2011"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://66896638")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Inglaciator -6000"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://185422055")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ghostwalker"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://37816777")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Smashing Guitar"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://201756469")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Noir Periastron Psi"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://120307951")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Rocket Powered Skis"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://190094313")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox Bone &amp; Arrow"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://95951270")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ne&#39;Kotikoz Phaser"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://61459678")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "All-Seeing Sentry"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://68603151")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ham Fists"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://168142114")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Accursed Vampire Bat Hand"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://63721711")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Kittypult"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://105351748")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Ivory Periastron"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108158379")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sci-Fi MedVac 4300"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://78005082")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sparkle Time Lump of Coal"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://138761013")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Korblox: DeathSpeaker&#39;s Zombie Creator"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://51760061")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Double Damage Frog"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://114687236")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Crimson Double Threat"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://22787189")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zephanon Phaser and Shield"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://69567827")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bongos"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://57902997")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sports Victory Blaster"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://75550907")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Chocolate Gelt"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://41457719")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Deluxe Beach Ball"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://112591865")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Wraith&#39;s Screech Potion"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73232825")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Implosion Bomb"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://108875216")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Magical Rainbow Pony"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://26417031")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Glory Launcher 2012"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://74385418")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Telamax xTreme Dual Shoulder Cannons"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://73265108")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Flaming Mace"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://147143848")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Geolocator"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://15668963")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Bald Eagle"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://120749494")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Zombie Axe"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://93536785")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Sharp Shark Sword"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://212500257")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Personal Fighter Jets"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://113299641")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "DarkAge Bo Staff"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160189629")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Donut Danger"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://160189720")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Carnagecopia"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://98346415")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.Text = "Boomerang"
    button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    button.TextColor3 = Color3.new(1,1,1)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Parent = scroll
    local corner = Instance.new("UICorner", button)
    button.MouseButton1Click:Connect(function()
        local gear = game:GetObjects("rbxassetid://18479357")[1]
        if gear then
            gear.Parent = player.Backpack
        end
    end)
    table.insert(gearButtons, button)
end

task.wait(0.2)
scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)

searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    local search = string.lower(searchBox.Text)
    for _, button in ipairs(gearButtons) do
        if string.find(string.lower(button.Text), search) then
            button.Visible = true
        else
            button.Visible = false
        end
    end
end)

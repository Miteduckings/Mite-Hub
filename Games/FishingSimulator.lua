function teleport(loc)
    bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end

for i,v in pairs(game.Players:GetDescendants()) do
    if v.ClassName == 'ModuleScript' and v.Parent.Name == 'PlayerModule' then 
        plrName = v.Parent.Parent.Parent.Name
    end
end

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
setclipboard("https://discord.gg/BuCZqwc2Ux")

local Window = Rayfield:CreateWindow({
	Name = "Mite Hub [Fishing Simulator]",
	LoadingTitle = "Mite Hub",
	LoadingSubtitle = "By Miteduckings",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "Mite Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "BuCZqwc2Ux", 
        	RememberJoins = false 
        },
	KeySystem = false, 
	KeySettings = {
		Title = "Mite Hub [Fishing Simulator]",
		Subtitle = "Key System",
		Note = "Get Key On Discord Server (Discord Link Copied.)",
		FileName = "MiteKey",
		SaveKey = true,
		GrabKeyFromSite = false, 
		Key = "JeysenHuwuw"
	}
})

local T1 = Window:CreateTab("Main")
local T2 = Window:CreateTab("Teleport")
local T3 = Window:CreateTab("Character")
local T4 = Window:CreateTab("Crates")
local T5 = Window:CreateTab("Upgrades")
local T6 = Window:CreateTab("Misc")
local T7 = Window:CreateTab("Settings")

local Section = T1:CreateSection("Fishes")

local Toggle = T1:CreateToggle({
	Name = "Auto Fish",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(State)
      toggle = State
    while toggle do
		wait(2)
    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.FishCaught:FireServer()
end
	end,
})

local Section = T1:CreateSection("Selling")

local Toggle = T1:CreateToggle({
	Name = "Auto Sell",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(State)
      toggle = State
    while toggle do
		wait(2)
    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.processGameItemSold:InvokeServer("SellEverything")
end
	end,
})

local Section = T1:CreateSection("Sharks")

local Toggle = T1:CreateToggle({
Name = "Auto Shark",
CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(state)
   if state then

local change = 2

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.SetEquippedItem:InvokeServer(change)

wait(0.5)

        _G.v15 = true;
        while _G.v15 == true do


     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "GreatWhiteShark" or v.Name == "BigGreatWhiteShark" or v.Name == "KillerWhale" or v.Name == "NeonGreatWhiteShark" then

                            for i,v in pairs(Workspace[plrName]:GetDescendants()) do
                                if v.ClassName == 'Attachment' and v.Parent.Name == 'Handle' then 
                                    plrTools = v.Parent.Parent.Name
                        end
                    end

                 
                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(0)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
        end
    end
end

    else

    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new( 136, 41, -10)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    wait(0.3)
    pl.CFrame = location

    wait(0.5)

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.SetEquippedItem:InvokeServer()

        _G.v15 = false;
        while _G.v15 == true do

        

     for i, v in pairs(game.Workspace:GetChildren()) do
     if v:FindFirstChild("Health") and v:FindFirstChild("IsSeaMonster") and v.Name == "GreatWhiteShark" or v.Name == "BigGreatWhiteShark" or v.Name == "KillerWhale" or v.Name == "NeonGreatWhiteShark" then
                 
               

                            for i,v in pairs(Workspace[plrName]:GetDescendants()) do
                                if v.ClassName == 'Attachment' and v.Parent.Name == 'Handle' then 
                                    plrTools = v.Parent.Parent.Name
                        end
                    end
                 
                    teleport(v.HumanoidRootPart.CFrame + Vector3.new(0, 30, 0))
                    wait(0)
                    game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.MonsterHit:FireServer(workspace[v.Name], tostring(plrTools), true)
                    break
        end
    end
        end
    end
	end,
})

local Paragraph = T1:CreateParagraph({Title = "NOTE:", Content = "Make sure spear is at 2nd slot."})

local Section = T1:CreateSection("Ships")

local Toggle = T1:CreateToggle({
Name = "Auto Loot",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(State)
      if state then

_G.v19 = true;

while _G.v19 == true do

function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end


for i,v in pairs(Workspace:GetDescendants()) do
    if v.ClassName == 'Attachment' and v.Parent.Name == 'Hinge' then 
        plrShip = v.Parent.Parent.Parent.Name
    end
end

print(plrName)

for i,v in pairs(Workspace:GetDescendants()) do
    if v.ClassName == 'Attachment' and v.Parent.Name == 'Hinge' then 
        plrChest = v.Parent.Parent.Name
    end
end

print(plrChest)

teleport(Workspace[plrShip][plrChest].HumanoidRootPart.CFrame + Vector3.new(0, 5, 0))


    local args={
    [1] = workspace[plrShip][plrChest]
}

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenChestFunction:InvokeServer(unpack(args))

	wait(0.5)
end

    else

    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new( 1, 54, -188)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    wait(0.5)
    pl.CFrame = location


_G.v19 = false;

while _G.v19 == true do

function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end


for i,v in pairs(Workspace:GetDescendants()) do
    if v.ClassName == 'Attachment' and v.Parent.Name == 'Hinge' then 
        plrShip = v.Parent.Parent.Parent.Name
    end
end

print(plrName)

for i,v in pairs(Workspace:GetDescendants()) do
    if v.ClassName == 'Attachment' and v.Parent.Name == 'Hinge' then 
        plrChest = v.Parent.Parent.Name
    end
end

print(plrChest)

teleport(Workspace[plrShip][plrChest].HumanoidRootPart.CFrame + Vector3.new(0, 5, 0))


    local args={
    [1] = workspace[plrShip][plrChest]
}

game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.OpenChestFunction:InvokeServer(unpack(args))

	wait(0.5)
end

    end
	end,
})

local Button = T2:CreateButton({
Name = "Teleport To Supplies Shop",
	Callback = function()
      				local args = {
    [1] = "SuppliesStoreInterior",
    [2] = "Inside"
					  }
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer(unpack(args))
	end,
})

local Button = T2:CreateButton({
Name = "Teleport To Tavern",
	Callback = function()
      			local args = {
    [1] = "TavernInterior",
    [2] = "Inside"
}
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer(unpack(args))
	end,
})

local Button = T2:CreateButton({
    	Name = "Teleport To Pets Store",
	Callback = function()
      		local args = {
    [1] = "PetShop",
    [2] = "MainEntrance"
}
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer(unpack(args))
	end,
})

local Button = T2:CreateButton({
Name = "Teleport To Rodney's Home",
	Callback = function()
      		local args = {
    [1] = "LivingSpaceInterior",
    [2] = "Inside"
}
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer(unpack(args))
	end,
})

local Button = T2:CreateButton({
Name = "Teleport To Boat Shop",
	Callback = function()
      	local args = {
    [1] = "BoatShopInterior",
    [2] = "Inside"
}
game:GetService("ReplicatedStorage").CloudFrameShared.DataStreams.EnterDoor:InvokeServer(unpack(args))
	end,
})

local Button = T2:CreateButton({
	Name = "Teleport To Port Jackson",
	Callback = function()
       function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

teleport(game:GetService("Workspace").Islands.PortJackson.FastTravel.TeleportTo.CFrame)
	end,
})

local Button = T2:CreateButton({
	Name = "Teleport To Eruption Island",
	Callback = function()
      function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

teleport(game:GetService("Workspace").Islands.EruptionIsland.Other.FastTravel.TeleportTo.CFrame)
	end,
})

local Button = T2:CreateButton({
	Name = "Teleport To Shadow Isles",
	Callback = function()
      function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

teleport(game:GetService("Workspace").Islands.ShadowIsles.Assets.FastTravel.TeleportTo.CFrame)
	end,
})

local Button = T2:CreateButton({
Name = "Teleport To Ancient Shores",
	Callback = function()
      	function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

teleport(game:GetService("Workspace").Islands.AncientShores.FastTravel.TeleportTo.CFrame)
	end,
})

local Button = T2:CreateButton({
	Name = "Teleport To Pharaoh's Dunes",
	Callback = function()
      function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

teleport(game:GetService("Workspace").Islands.PharaohsDunes.Assets.FastTravel.TeleportTo.CFrame)
	end,
})

local Button = T2:CreateButton({
	Name = "Teleport To Monster Borough",
	Callback = function()
       function teleport(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

teleport(game:GetService("Workspace").Islands.MonstersBorough.Important.TeleportOutPart.CFrame)
  	end    
	end,
})

local Slider = T3:CreateSlider({
	Name = "Speed",
	Range = {16, 300},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(a)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
	end,
})

local Slider = T3:CreateSlider({
	Name = "Jump Power",
	Range = {50, 500},
	Increment = 1,
	Suffix = "Jump Power",
	CurrentValue = 50,
	Flag = "Slider1",
	Callback = function(b)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = b
	end,
})



})

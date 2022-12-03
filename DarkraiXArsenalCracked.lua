local Library = loadstring(game:HttpGet("https://pastebin.com/raw/RmLqTugH"))()
local Window = Library.CreateLib("Darkrai X | Arsenal | Premium Version","Serpent")


local u = Drawing.new("Circle")
u.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,workspace.CurrentCamera.ViewportSize.Y/2)
u.Radius= 50;
u.Filled = false;
u.Color = Color3.fromRGB(255,255,255)
u.Visible = false;
u.Radius = 80;
u.Transparency = 0.5;
u.NumSides = 64;
u.Thickness = 0;

local Tab1 = Window:NewTab("Welcome")
local Section = Tab1:NewSection("Hello, "..game.Players.LocalPlayer.Name)

Tab1:NewButton("Player : "..game.Players.LocalPlayer.Name.." | "..game.Players.LocalPlayer.UserId,"?",function()
    print("CRACKED LOL")
end) 

Tab1:NewButton("Game : "..game.PlaceId.." | "..H.Name,"?",function()
    print("CRACKED LOL")
end) 

Tab1:NewButton("Account Age : "..game.Players.LocalPlayer.AccountAge.." | Premium : No","?",function()
    print("CRACKED LOL")
end) 

Tab1:NewButton("Discord | Click To Copy","?",function()
    print("CRACKED LOL")
end) 

local Tab2 = Window:NewTab("Player")

local Tab3 = Window:NewTab("Combat")

local Section = Tab3:NewSection("FOV Toggle")

local Tab4 = Window:NewTab("Visuals")

local Section = Tab4:NewSection("Game Visuals")

local Tab5 = Window:NewTab("Gun")

local Section = Tab5:NewSection("Gun Modification")

local Tab6 = Window:NewTab("Misc")

local Section = Tab6:NewSection("Some Misc")





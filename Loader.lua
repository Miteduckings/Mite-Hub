if supported == true then
    local games = ({
        [6847090259] = "bulkedup.lua",
        [155615604] = "prisonlife.lua",
        [4483381587] = "baseplate.lua",
        [10243982775] = "redbox.lua",
        [9498006165] = "tappingsimulator.lua",
        [9872472334] = "evade.lua",
        [10324346056] = "evade.lua",
        [10324347967] = "evade.lua",
        [10539706691] = "evade.lua",
        [10662542523] = "evade.lua",
        [10808838353] = "evade.lua",
        [11353528705] = "evade.lua",
        [11353532384] = "evade.lua",
    })[game.PlaceId]
    
    if games then
        Rayfield:Destroy()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Robobo2022/Hydra-Network-V3/main/Games/" .. games))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Hydra Network",
            Text = "Hydra Network does not support this game"
        })
    end
end

if supported == false then
    local gamez = ({
        [6847090259] = "bulkedup.lua",
        [155615604] = "prisonlife.lua",
        [10243982775] = "redbox.lua",
        [9498006165] = "tappingsimulator.lua",
        [9872472334] = "evade.lua",
        [10324346056] = "evade.lua",
        [10324347967] = "evade.lua",
        [10539706691] = "evade.lua",
        [10662542523] = "evade.lua",
        [10808838353] = "evade.lua",
        [11353528705] = "evade.lua",
        [11353532384] = "evade.lua",
    })[game.PlaceId]
    
    if gamez then
        Rayfield:Destroy()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Robobo2022/Hydra-Network-V3/main/Games/" .. gamez))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Hydra Network",
            Text = "Hydra Network does not support this game"
        })
    end

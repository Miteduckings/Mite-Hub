if getgenv().Hub then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Mite Hub",
        Text = "Mite Hub has already been executed in this game"
    })
    return
end

getgenv().Hub = true
getgenv().supported = true
getgenv().Check1 = true

if require then
    Check1 = true
else
    Check1 = false
end


if Check1 == true then
    supported = true
else
    supported = false
end

local ownerId = game.CreatorId
game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Mite Hub",
            Text = "Owner joined! be careful with what you do."
        })
    end
end)

if supported == true then
    local games = ({
        [9872472334] = "Evade.lua",
        [10324346056] = "Evade.lua",
        [10324347967] = "Evade.lua",
        [10539706691] = "Evade.lua",
        [10662542523] = "Evade.lua",
        [10808838353] = "Evade.lua",
        [11353528705] = "Evade.lua",
        [11353532384] = "Evade.lua",
    })[game.PlaceId]
    
    if games then
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Miteduckings/Mite-Hub/main/Games/" .. games))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Mite Hub",
            Text = "Mite Hub does not support this game"
        })
    end
end

if supported == false then
    local gamez = ({
        [9872472334] = "Evade.lua",
        [10324346056] = "Evade.lua",
        [10324347967] = "Evade.lua",
        [10539706691] = "Evade.lua",
        [10662542523] = "Evade.lua",
        [10808838353] = "Evade.lua",
        [11353528705] = "Evade.lua",
        [11353532384] = "Evade.lua",
    })[game.PlaceId]
    
    if gamez then
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Miteduckings/Mite-Hub/main/Games/" .. gamez))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Mite Hub",
            Text = "Mite Hub does not support this game"
        })
    end
end

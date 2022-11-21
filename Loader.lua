local Games = {
        [9872472334] = "Evade.lua";
        [10324346056] = "Evade.lua";
        [10324347967] = "Evade.lua";
        [10539706691] = "Evade.lua";
        [10662542523] = "Evade.lua";
        [10808838353] = "Evade.lua";
        [11353528705] = "Evade.lua";
        [11353532384] = "Evade.lua";
        [2866967438] = "FishingSimulator.lua";
        [286090429] = "Arsenal.lua";
}

local Supported = Games[game.PlaceId] or false
if Supported ~= false then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Miteduckings/Mite-Hub/main/Games/' .. Supported))()
end

if not game.PlaceId == Supported  then
   player.kick()
end

local place = game.PlaceId

local games = {
    SquidGame = {7549229959,7553566159};
    HexaGame = {7555007091,7562422641};
}

for i,v in pairs(games) do
    for gamename,placeid in pairs(v) do
        if place == placeid then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/vasivee/Kraken/main/games/'..tostring(i)..'.lua'))()
        end
    end
end

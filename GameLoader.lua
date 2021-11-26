loadstring(game:HttpGet('https://oneshot.wtf/Voth/gameList.lua'))(' ');
Voth_Game_Loaded = false;
local game_id = game.PlaceId;
local Game_Name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
for _, GameName in ipairs(games) do
    if GameName == tostring(game_id) then
        Voth_Game_Loaded = true;
        print('[Voth Hub]: Game '..Game_Name..' Detected');
        print('[Voth Hub]: Game Loading');
        local game_url = 'https://oneshot.wtf/Voth/Games/'..game.PlaceId..'.lua';
        loadstring(game:HttpGet('https://oneshot.wtf/Voth/UiLoader.lua'))(' ');
        wait(4)
        loadstring(game:HttpGet(game_url))(' ');
        break;
    end;
end;

if Voth_Game_Loaded == false then
    game.Players.LocalPlayer:Kick('Unsupported Game For Voth Hub!')
end;
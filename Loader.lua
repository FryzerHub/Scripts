local games = {
    [142823291] = {
        url = "https://raw.githubusercontent.com/FryzerHub/Scripts/refs/heads/main/Mm2.lua" -- mm2
    }
}

local currentID = game.PlaceId
local gameData = games[currentID]

if gameData then
    local success, err = pcall(function()
        loadstring(game:HttpGet(gameData.url))()
    end)

    if success then
        print("Loaded successfully")
    else
        warn("Error loading script:", err)
    end
else
    game.Players.LocalPlayer:Kick("Run on a valid game")
end

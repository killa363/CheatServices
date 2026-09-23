local Games = {
    [3747388906] = "b31129b0248f749c6a5e257932620d9f" -- Fallen
}

local LRM_LOADER = "https://api.luarmor.net/files/v4/loaders/"
local GAME_ID = game.GameId

local ScriptId = Games[GAME_ID]
if ScriptId then 
    local Success, Result = pcall(function()
        return game:HttpGet(`{LRM_LOADER}{ScriptId}.lua`)
    end)

    if Success and Result then 
        loadstring(Result)()
    end
else 
    if not game:IsLoaded() then game.Loaded:Wait() end
    local Players = game:GetService(("Players"))
    local LOCAL_PLAYER = Players.LocalPlayer
    LOCAL_PLAYER:Kick("Wrong game")
end


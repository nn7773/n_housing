local CurrentHouse, InsideHouse = nil, false
local Houses = {}

RegisterNetEvent('n_housing:updateHouses')
AddEventHandler('n_housing:updateHouses', function(serverHouses)
    Houses = serverHouses
    RefreshBlips()
end)


RegisterNetEvent('n_housing:teleport')
AddEventHandler('n_housing:teleport', function(coords)
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do Wait(0) end
    SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z)
    DoScreenFadeIn(500)
end)

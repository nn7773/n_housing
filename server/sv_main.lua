function GetHouse(houseId)
    return Houses[houseId]
end

function GetPlayerHouses(identifier)
    local playerHouses = {}
    for k, v in pairs(Houses) do
        if v.owner == identifier then
            playerHouses[k] = v
        end
    end
    return playerHouses
end

RegisterCommand(Config.Commands.createHouse, 'admin', function(xPlayer, args)
    local shell = args[1]
    local price = tonumber(args[2])
    
    if not Config.Shells[shell] then
        xPlayer.showNotification('Invalid shell type')
        return
    end
    
    local coords = GetEntityCoords(GetPlayerPed(xPlayer.source))
    local houseId = #Houses + 1
    
    Houses[houseId] = {
        id = houseId,
        owner = nil,
        label = "House "..houseId,
        price = price or Config.Shells[shell].price,
        entrance = vector3(coords.x, coords.y, coords.z),
        interior = Config.Shells[shell].interior,
        shell = shell,
        locked = true,
        inventory = {},
        decorations = {},
        keys = {}
    }
    
    exports['n_housing']:SaveHouse(Houses[houseId])
    TriggerClientEvent('n_housing:updateHouses', -1, Houses)
    xPlayer.showNotification('House created (ID: '..houseId..')')
end)

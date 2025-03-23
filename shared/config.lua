Config = {
    UseNewESX = false, 
    UseOXInventory = false,
    SQLTableName = 'player_houses',
    
    Commands = {
        createHouse = "createhous",
        buyHouse = "buyhouse",
        sellHouse = "sellhouse",
        enterHouse = "enterhouse",
        exitHouse = "exithouse",
        lockHouse = "lockhouse",
        unlockHouse = "unlockhouse",
        storeItems = "storeitem",
        takeItems = "takeitem",
        houseInventory = "pinv",
        showPlayerInventory = "myinv",
        getHouses = "gethouses",
        deleteHouse = "deletehouse",
        invite = "invite",
        decorateHouse = "decoratehouse",
        listHouses = "listhouses",
        acceptInvite = "paccept"
    },
    
    Housing = {
        Blip = {sprite = 40, color = 3, scale = 0.8},
        MaxDecorations = 50,
        InviteTimeout = 300 -- 5 minutes
    },
    
    Shells = {
        ["shell_garages"] = {
            interior = vector3(-5.91, -3.55, 0.50),
            price = 1
        },
        ["shell_v16low"] = {
            interior = vector3(346.52, -1012.84, -99.0),
            price = 1
        }
    },
    
    Decorations = {
        Props = {
            "prop_tv_flat_01",
            "prop_ld_sofa_01",
            "v_res_m_lampstand"
        }
    }
}

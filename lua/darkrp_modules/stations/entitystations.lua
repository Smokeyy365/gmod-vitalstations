DarkRP.createCategory{
    name = "Player Stations",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 0, 0, 255),
    canSee = function(ply) return true end,
    sortOrder = 1
}

DarkRP.createEntity("Health Station", {
    ent = "health_station",
    model = "models/props_c17/consolebox03a.mdl",
    price = 2500,
    max = 1,
    cmd = "buyhealthstation",
    category = "Player Stations"
})

DarkRP.createEntity("Armour Station", {
    ent = "armour_station",
    model = "models/props_c17/consolebox03a.mdl",
    price = 2500,
    max = 1,
    cmd = "buyarmourstation",
    category = "Player Stations"
})


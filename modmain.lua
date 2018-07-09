local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH


---return Prefab("pighouse", fn, assets, prefabs),
---    MakePlacer("pighouse_placer", "pig_house", "pig_house", "idle")

PrefabFiles = { "pond" )


	
	
AddRecipe("pond", {Ingredient("twigs", 1)}, RECIPETABS.FARM,  TECH.NONE, "pond_placer", nil, nil, nil, nil,  "images/inventoryimages/mermhouse.xml", "mermhouse.tex" )

local function PondPostInit( inst )
    return inst
end
 
AddPrefabPostInit( "pond", PondPostInit)
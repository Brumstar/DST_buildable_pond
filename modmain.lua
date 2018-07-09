local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local RECIPE = GLOBAL.Recipe
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH


---return Prefab("pighouse", fn, assets, prefabs),
---    MakePlacer("pighouse_placer", "pig_house", "pig_house", "idle")

Assets = 
{
	Asset("ATLAS", "images/inventoryimages/cellar.xml"),
 	Asset("IMAGE", "images/inventoryimages/cellar.tex"),
	Asset("IMAGE", "minimap/cellar.tex" ),
        Asset("ATLAS", "minimap/cellar.xml" ),
}

PrefabFiles = { "buildable_pond" }

AddMinimapAtlas("minimap/cellar.xml")

STRINGS.RECIPE_DESC.POND = "Cold and wet"
--local buildable_pond = RECIPE("pond",{Ingredient("twigs", 1)}, RECIPETABS.FARM, TECH.NONE, "buildable_pond_placer")
--buildable_pond.atlas = "images/inventoryimages/cellar.xml"

AddRecipe("pond", {Ingredient("twigs", 1)}, RECIPETABS.FARM,  TECH.NONE, "buildable_pond_placer", nil, nil, nil, nil,  "images/inventoryimages/cellar.xml", "cellar.tex" )



local function BuildablePondPostInit( inst )
    return inst
end
 
AddPrefabPostInit( "buildable_pond", BuildablePondPostInit)
local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local RECIPE = GLOBAL.Recipe
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH

Assets = 
{
	Asset("ATLAS", "images/inventoryimages/buildable_pond.xml"),
 	Asset("IMAGE", "images/inventoryimages/buildable_pond.tex"),
}

PrefabFiles = { "buildable_pond" }

AddMinimapAtlas("images/inventoryimages/buildable_pond.xml")

STRINGS.RECIPE_DESC.POND = "Cold and wet."

AddRecipe("pond", {Ingredient("twigs", 1)}, RECIPETABS.FARM,  TECH.NONE, "buildable_pond_placer", nil, nil, nil, nil,  "images/inventoryimages/buildable_pond.xml", "buildable_pond.tex" )



--local function BuildablePondPostInit( inst )
--    return inst
--end
 
--AddPrefabPostInit( "buildable_pond", BuildablePondPostInit)
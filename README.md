# DST_buildable_pond
A mod for the game Don't Starve Together that allows ponds to be craftable items.

# TODO
- [ ] Add configuration options
- [x] Add in proper icons
- [x] Remove old icons
- [x] Make green outline work
- [ ] Add main level mod icons
- [ ] Make orientation work
- [ ] Change recipe to something reasonable
  - 16 rocks, 2 fish, 6 twigs
# Tested 
- [x] Do ponds produce the right things in the specific biomes
  - Only frogs right now
# Notes

## prefabs.lua

`Prefab = Class( function(self, name, fn, assets, deps, force_path_search)`

## prefabutil.lua

`function MakePlacer(name, bank, build, anim, onground, snap, metersnap, scale, fixedcameraoffset, facing, postinit_fn)`

# Useful Console Commands

## Reveal Minimap
~~~
minimap = TheSim:FindFirstEntityWithTag("minimap")
minimap.MiniMap:ShowArea(0,0,0, 10000)
~~~~

#>enderface:gui/main
#@within enderface:main

data modify storage enderface:data new_gui set from entity @s EnderItems
function marker_storage/get

data modify storage enderface:data _ set from entity @e[predicate=marker_storage,limit=1] data.gui
execute store result storage enderface:data changed byte 1 run data modify storage enderface:data _ set from storage enderface:data new_gui
execute if data storage enderface:data {changed:1b} run function enderface:gui/check
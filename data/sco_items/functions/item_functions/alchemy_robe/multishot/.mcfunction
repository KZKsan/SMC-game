#>sco_items:item_functions/alchemy_robe/multishot/
#@within sco_items:item_functions/alchemy_robe/set_data
tag @s add origin
execute store result storage sco_items:data alchemy_robe.rotation_x int 1 on origin run data get entity @s Rotation[1]
execute store result storage sco_items:data alchemy_robe._rotation_x int -1 on origin run data get entity @s Rotation[1]
function sco_items:item_functions/alchemy_robe/multishot/macro with storage sco_items:data alchemy_robe
tag @s remove origin

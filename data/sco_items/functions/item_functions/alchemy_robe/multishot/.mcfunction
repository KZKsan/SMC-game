#>sco_items:item_functions/alchemy_robe/multishot/
#@within sco_items:item_functions/alchemy_robe/set_data
tag @s add potion
execute on origin run tag @s add origin
data modify storage _ math.input set from entity @s Motion
function math/vector/get_magnitude/
data modify storage sco_items:data alchemy_robe set from storage _ math.output
data modify storage sco_items:data alchemy_robe.rot_y set from entity @p[tag=origin] Rotation[0]
execute summon potion run function sco_items:item_functions/alchemy_robe/multishot/left with storage sco_items:data alchemy_robe
execute summon potion run function sco_items:item_functions/alchemy_robe/multishot/right with storage sco_items:data alchemy_robe
tag @s remove potion
execute on origin run tag @s remove origin
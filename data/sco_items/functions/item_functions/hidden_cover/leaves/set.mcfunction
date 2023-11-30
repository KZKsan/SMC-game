#>sco_items:item_functions/hidden_cover/leaves/set
#
tag @s add origin
summon item_display ~ ~0.5 ~ {Tags:["hidden_cover","bottom","set_nbt"],item:{id:"minecraft:moss_block",Count:1b,tag:{Owner:[I;0,0,0,0]}},teleport_duration:1}
summon item_display ~ ~1.5 ~ {Tags:["hidden_cover","top","set_nbt"],item:{id:"minecraft:moss_block",Count:1b,tag:{Owner:[I;0,0,0,0]}},teleport_duration:1}
execute as @e[tag=hidden_cover,tag=set_nbt] run data modify entity @s item.tag.Owner set from entity @p[tag=origin] UUID
tag @s remove origin
tag @e[tag=set_nbt] remove set_nbt
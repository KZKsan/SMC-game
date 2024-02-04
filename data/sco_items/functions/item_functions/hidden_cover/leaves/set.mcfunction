#>sco_items:item_functions/hidden_cover/leaves/set
#
tag @s add origin
summon item_display ~ ~0.7 ~ {Tags:["hidden_cover","bottom","set_nbt"],item:{id:"minecraft:moss_block",Count:1b,tag:{Owner:[I;0,0,0,0]}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]}}
summon item_display ~ ~2.0 ~ {Tags:["hidden_cover","top","set_nbt"],item:{id:"minecraft:moss_block",Count:1b,tag:{Owner:[I;0,0,0,0]}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]}}
execute as @e[tag=hidden_cover,tag=set_nbt] run data modify entity @s item.tag.Owner set from entity @p[tag=origin] UUID
tag @s remove origin
tag @e[tag=set_nbt] remove set_nbt
playsound block.moss.place block @a ~ ~ ~ 1 1
playsound block.moss.place block @a ~ ~ ~ 1 1.5
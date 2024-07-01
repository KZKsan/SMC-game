#>sco_items:item_functions/hidden_cover/leaves/set
#
tag @s add origin
execute positioned ~ ~0.2 ~ align xyz run summon item_display ~0.5 ~ ~0.5 {Tags:["hidden_cover","marker","set_data"],item:{id:"minecraft:moss_block",count:1,components:{"minecraft:custom_data":{Owner:[I;0,0,0,0]}}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},Passengers:[{id:"block_display",Tags:["hidden_cover","top","set_data"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,1f,-0.5f],scale:[1.0f,1.0f,1.0f]}},{id:"block_display",Tags:["hidden_cover","bottom","set_data","full"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1.0f,1.0f,1.0f]}}]}
function sco_items:item_functions/hidden_cover/leaves/block/
execute as @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] run data modify entity @s item.components."minecraft:custom_data".Owner set from entity @p[tag=origin] UUID
execute as @e[type=block_display,tag=hidden_cover,tag=set_data] run data modify entity @s block_state.Name set from entity @n[type=item_display,tag=hidden_cover,tag=!disable_copy,tag=marker,tag=set_data] item.id
execute if entity @n[type=item_display,tag=hidden_cover,tag=disable_copy,tag=marker,tag=set_data] as @e[type=block_display,tag=hidden_cover,tag=set_data] run data modify entity @s block_state.Name set value "moss_block"
tag @s remove origin
tag @e[tag=set_data] remove set_data
playsound block.moss.place block @a ~ ~ ~ 1 1
playsound block.moss.place block @a ~ ~ ~ 1 1.5
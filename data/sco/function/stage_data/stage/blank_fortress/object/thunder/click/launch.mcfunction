#>sco:stage_data/stage/blank_fortress/object/thunder/click/launch
#@within sco:stage_data/stage/blank_fortress/object/thunder/
scoreboard players set @s stage_object.count.0 21
scoreboard players set @s stage_object.count.1 0
scoreboard players operation @s stage_object.cooldown = #blank_fortress.thunder.cooltime stage_object.configs
tag @s add origin
execute on target if entity @s[team=red] as @e[tag=origin,limit=1,distance=..50] on passengers as @s[type=marker] run data modify entity @s data.team set value "blue" 
execute on target if entity @s[team=blue] as @e[tag=origin,limit=1,distance=..50] on passengers as @s[type=marker] run data modify entity @s data.team set value "red" 
tag @s remove origin

#>sco:stage_data/stage/blank_fortress/object/cannon/click/launch
#@within sco:stage_data/stage/blank_fortress/object/cannon/
scoreboard players set @s stage_object.count.0 200
scoreboard players set @s stage_object.count.1 0
tag @s add origin
execute on target if entity @s[team=red] as @e[tag=origin,limit=1,distance=..50] on passengers as @s[type=marker] run data modify entity @s data.team set value "blue" 
execute on target if entity @s[team=blue] as @e[tag=origin,limit=1,distance=..50] on passengers as @s[type=marker] run data modify entity @s data.team set value "red" 
tag @s remove origin

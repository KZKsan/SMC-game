#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/target/
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
playsound block.note_block.pling record @s ~ ~ ~ 0.5 1 1
scoreboard players set # _ 11
execute if entity @e[type=marker,tag=origin,distance=..100] run scoreboard players set # _ 10
execute if entity @e[type=marker,tag=origin,distance=..80] run scoreboard players set # _ 9
execute if entity @e[type=marker,tag=origin,distance=..60] run scoreboard players set # _ 8
execute if entity @e[type=marker,tag=origin,distance=..40] run scoreboard players set # _ 7
execute if entity @e[type=marker,tag=origin,distance=..20] run scoreboard players set # _ 6
execute store result storage _ data_fetch.vx double 0.001 run scoreboard players operation @s player_speed.x *= # _
execute store result storage _ data_fetch.vz double 0.001 run scoreboard players operation @s player_speed.z *= # _
function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/target/set_marker with storage _ data_fetch
execute as @e[type=marker,tag=origin,tag=blank_fortress,tag=power_bullet_ammo,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[type=marker,tag=set_nbt,limit=1]
kill @e[type=marker,tag=set_nbt]
tag @e[type=marker,tag=origin] remove check
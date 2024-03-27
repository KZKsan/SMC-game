#>sco:stage_data/stage/blank_fortress/generate/setup
#@within sco:stage_data/stage/blank_fortress/generate/
data remove storage _ data_fetch
fill ~ ~ ~ ~7 ~ ~12 air
fill ~ ~ ~ ~7 ~ ~3 stone_brick_wall
fill ~ ~ ~9 ~7 ~ ~12 stone_brick_wall
fill ~-1 ~-1 ~3 ~8 ~-1 ~9 emerald_block
fill ~ ~-1 ~4 ~7 ~-1 ~8 air
fill ~-2 ~2 ~ ~39 ~2 ~29 air
execute store result storage _ data_fetch.seed1 int 1 run random value 1..2147483647 sco:generate_seed
execute store result storage _ data_fetch.seed2 int 1 run random value 1..2147483647 sco:generate_seed
function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/field with storage _ data_fetch
data remove storage _ data_fetch

scoreboard players set #allow_5_walls _ 1
scoreboard players set #allow_4_walls _ 1
scoreboard players set #allow_forward_walls _ 1
scoreboard players set #allow_additional_walls _ 1
scoreboard players set #generate_count _ 0

execute positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/2 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute store result score $add_set _ run random value 0..15

execute if score $add_set _ matches 0 positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1

execute store result score $add_set _ run random value 0..15


execute if score $add_set _ matches 0 positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1

execute if score $generate_count _ matches ..5 store result score $add_set _ run random value 0..7
execute if score $generate_count _ matches 6.. store result score $add_set _ run random value 0..15


execute if score $add_set _ matches 0 positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1

execute if score $generate_count _ matches ..5 store result score $add_set _ run random value 0..7
execute if score $generate_count _ matches 6.. store result score $add_set _ run random value 0..15

execute if score $add_set _ matches 0 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1


execute positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/cannon
execute positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/storage

function sco:stage_data/stage/blank_fortress/generate/set_field/copy
execute positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/smooth/
function sco:stage_data/stage/blank_fortress/generate/set_field/copy




summon marker ^-1 ^2 ^-1 {Tags:[sco_builder]}
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^4
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^8
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^12
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^16
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^20
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^24
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^28
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^32
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^36
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/0
kill @e[type=marker,tag=sco_builder,limit=1]



summon marker ^-1 ^2 ^-1 {Tags:[sco_builder]}
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^4
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^8
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^12
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^16
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^20
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^24
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^28
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^32
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^36
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/1
kill @e[type=marker,tag=sco_builder,limit=1]



summon marker ^-1 ^2 ^-1 {Tags:[sco_builder]}
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^4
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^8
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^12
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^16
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^4 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^20
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^5 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^24
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^6 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^28
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^7 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^32
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^8 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute as @e[type=marker,tag=sco_builder] positioned ^-1 ^2 ^-1 run teleport @s ^ ^ ^36
execute positioned ^-3 ^-1 ^-1 positioned ^-0 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-1 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-2 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-3 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-4 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-5 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
execute positioned ^-3 ^-1 ^-1 positioned ^-6 ^ ^9 run function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2
kill @e[type=marker,tag=sco_builder,limit=1]
function sco:stage_data/stage/blank_fortress/generate/seed/
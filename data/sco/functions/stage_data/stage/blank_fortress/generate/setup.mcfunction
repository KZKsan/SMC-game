#>sco:stage_data/stage/blank_fortress/generate/setup
#@within sco:stage_data/stage/blank_fortress/generate/
data remove storage _ data_fetch
fill ~ ~ ~ ~7 ~ ~12 air
fill ~ ~ ~ ~7 ~ ~3 stone_brick_wall
fill ~ ~ ~9 ~7 ~ ~12 stone_brick_wall

scoreboard players set #allow_5_walls _ 1
scoreboard players set #allow_4_walls _ 1
scoreboard players set #allow_forward_walls _ 1
scoreboard players set #allow_additional_walls _ 1
scoreboard players set #generate_count _ 0

execute positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/2 with storage _ data_fetch
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
scoreboard players add #generate_count _ 1


execute store result score $add_set _ run random value 0..15

execute if score $add_set _ matches 0 positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^ run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1

execute store result score $add_set _ run random value 0..15


execute if score $add_set _ matches 0 positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1

execute if score $generate_count _ matches ..5 store result score $add_set _ run random value 0..7
execute if score $generate_count _ matches 6.. store result score $add_set _ run random value 0..15


execute if score $add_set _ matches 0 positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1

execute if score $generate_count _ matches ..5 store result score $add_set _ run random value 0..7
execute if score $generate_count _ matches 6.. store result score $add_set _ run random value 0..15

execute if score $add_set _ matches 0 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/2 with storage _ data_fetch
#execute if score $add_set _ matches 0 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
execute if score $add_set _ matches 0 run scoreboard players add #generate_count _ 1



summon marker ^-4 ^ ^ {Tags:[sco_builder]}
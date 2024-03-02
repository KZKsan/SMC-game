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
#execute if data storage _ data_fetch{pos:"^ ^ ^1"} run scoreboard players set #allow_forward_walls _ 0
#execute if data storage _ data_fetch{pos:"^1 ^ ^1"} run scoreboard players set #allow_forward_walls _ 0
#execute if data storage _ data_fetch{pos:"^-1 ^ ^1"} run scoreboard players set #allow_forward_walls _ 0


execute positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^1 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
scoreboard players add #generate_count _ 1
execute unless block ^-6 ^ ^1 air run scoreboard players set #allow_forward_walls _ 0
execute unless block ^-6 ^ ^2 air run scoreboard players set #allow_forward_walls _ 0
execute unless block ^-5 ^ ^2 air run scoreboard players set #allow_forward_walls _ 0
execute unless block ^-7 ^ ^2 air run scoreboard players set #allow_forward_walls _ 0
#execute if data storage _ data_fetch{pos:"^ ^ ^1"} run scoreboard players set #allow_forward_walls _ 0
#execute if data storage _ data_fetch{pos:"^1 ^ ^1"} run scoreboard players set #allow_forward_walls _ 0
#execute if data storage _ data_fetch{pos:"^-1 ^ ^1"} run scoreboard players set #allow_forward_walls _ 0

execute positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute if score # _ matches 2 run scoreboard players set #allow_forward_walls _ 0
fill ^-6 ^ ^2 ^-6 ^ ^2 diamond_block replace air
execute positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/0 with storage _ data_fetch
execute positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^2 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
scoreboard players add #generate_count _ 1
fill ^-6 ^ ^2 ^-6 ^ ^2 air replace diamond_block
execute unless block ^-6 ^ ^2 air run scoreboard players set #allow_forward_walls _ 0
execute if data storage _ data_fetch{pos:"^ ^ ^1"} run scoreboard players set #allow_forward_walls _ 0
execute if data storage _ data_fetch{pos:"^1 ^ ^1"} run scoreboard players set #allow_forward_walls _ 0
execute if data storage _ data_fetch{pos:"^-1 ^ ^1"} run scoreboard players set #allow_forward_walls _ 0

execute if score #allow_forward_walls _ matches 1 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pos/
execute if score #allow_forward_walls _ matches 1 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
execute if score #allow_forward_walls _ matches 1 positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/2 with storage _ data_fetch
execute if score #allow_forward_walls _ matches 1 positioned ~7 ~ ~12 rotated ~180 ~ positioned ^-4 ^ ^3 run function sco:stage_data/stage/blank_fortress/generate/set_pattern/macro/1 with storage _ data_fetch
summon marker ^-4 ^ ^ {Tags:[sco_builder]}
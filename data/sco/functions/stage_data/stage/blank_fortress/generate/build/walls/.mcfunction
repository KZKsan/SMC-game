#>sco:stage_data/stage/blank_fortress/generate/build/walls/
#@within sco:stage_data/stage/blank_fortress/generate/build/

data remove storage _ data_fetch
execute as @e[type=marker,tag=sco_builder] at @s run function sco:stage_data/stage/blank_fortress/generate/build/walls/read_block
execute unless data storage _ data_fetch{command:"air"} run function sco:stage_data/stage/blank_fortress/generate/build/walls/macro with storage _ data_fetch
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~ ~ ~1
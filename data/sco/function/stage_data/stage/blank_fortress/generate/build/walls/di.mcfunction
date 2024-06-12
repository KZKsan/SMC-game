#>sco:stage_data/stage/blank_fortress/generate/build/walls/di
#@within sco:stage_data/stage/blank_fortress/generate/build/

data remove storage sco:data stage_generate.data_fetch
data modify storage sco:data stage_generate.data_fetch.stage_type set value "bricks"
data modify storage sco:data stage_generate.data_fetch set from storage sco:data stage_generate.generate_memory[0]
data remove storage sco:data stage_generate.generate_memory[0]
execute unless data storage sco:data stage_generate.data_fetch{name:"air"} run function sco:stage_data/stage/blank_fortress/generate/build/walls/macro with storage sco:data stage_generate.data_fetch
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~ ~ ~1
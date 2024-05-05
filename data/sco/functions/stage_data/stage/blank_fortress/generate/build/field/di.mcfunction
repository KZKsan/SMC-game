#>sco:stage_data/stage/blank_fortress/generate/build/field/di
#@within sco:stage_data/stage/blank_fortress/generate/build/
data remove storage sco:data stage_generate.data_fetch
data modify storage sco:data stage_generate.data_fetch.stage_type set value "plane"
#execute as @e[type=marker,tag=sco_builder] at @s run function sco:stage_data/stage/blank_fortress/generate/build/field/read_block2
data modify storage sco:data stage_generate.data_fetch set from storage sco:data stage_generate.generate_memory[0]
data remove storage sco:data stage_generate.generate_memory[0]
execute unless data storage sco:data stage_generate.data_fetch{name:"air"} run function sco:stage_data/stage/blank_fortress/generate/build/field/macro with storage sco:data stage_generate.data_fetch
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~ ~ ~2
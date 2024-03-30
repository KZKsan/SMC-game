#>sco:stage_data/stage/blank_fortress/generate/build/walls/di
#@within sco:stage_data/stage/blank_fortress/generate/build/

data remove storage _ data_fetch
data modify storage _ data_fetch.stage_type set value "bricks"
data modify storage _ data_fetch set from storage _ _[0]
data remove storage _ _[0]
execute unless data storage _ data_fetch{name:"air"} run function sco:stage_data/stage/blank_fortress/generate/build/walls/macro with storage _ data_fetch
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~ ~ ~1
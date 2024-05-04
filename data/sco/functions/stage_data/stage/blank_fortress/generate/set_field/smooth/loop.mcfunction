#>sco:stage_data/stage/blank_fortress/generate/set_field/smooth/loop
#@within sco:stage_data/stage/blank_fortress/generate/set_field/smooth/
execute store result score $ranmax _ run data get storage sco:data stage_generate.select_pos
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
execute store result storage sco:data stage_generate.data_fetch.index int 1 run function random/int_range
execute store result storage sco:data stage_generate.data_fetch.index int 1 run scoreboard players get $random _
function sco:stage_data/stage/blank_fortress/generate/macro/pos with storage sco:data stage_generate.data_fetch
function sco:stage_data/stage/blank_fortress/generate/set_field/smooth/fill with storage sco:data stage_generate.data_fetch
execute positioned ^-4 ^ ^7 rotated ~180 ~ run function sco:stage_data/stage/blank_fortress/generate/set_field/smooth/fill with storage sco:data stage_generate.data_fetch

execute if data storage sco:data stage_generate.select_pos[0] run function sco:stage_data/stage/blank_fortress/generate/set_field/smooth/loop
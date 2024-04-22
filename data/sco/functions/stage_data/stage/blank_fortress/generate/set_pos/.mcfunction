#>sco:stage_data/stage/blank_fortress/generate/set_pos/
#@within sco:stage_data/stage/blank_fortress/generate/setup

data modify storage sco:data stage_generate.select_pos set value []
execute if block ^ ^ ^ air run data modify storage sco:data stage_generate.select_pos append value "^ ^ ^"
execute if block ^-1 ^ ^ air run data modify storage sco:data stage_generate.select_pos append value "^-1 ^ ^"
execute if block ^-2 ^ ^ air run data modify storage sco:data stage_generate.select_pos append value "^-2 ^ ^"
execute if block ^-3 ^ ^ air run data modify storage sco:data stage_generate.select_pos append value "^-3 ^ ^"
execute if block ^-4 ^ ^ air run data modify storage sco:data stage_generate.select_pos append value "^-4 ^ ^"
execute store result score $ranmax _ run data get storage sco:data stage_generate.select_pos
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
execute store result storage sco:data stage_generate.data_fetch.index int 1 store result score # _ run function random/int_range
#execute store result storage sco:data stage_generate.data_fetch.index int 1 store result score # _ run scoreboard players get $random _
function sco:stage_data/stage/blank_fortress/generate/macro/pos with storage sco:data stage_generate.data_fetch
data modify storage sco:data stage_generate.data_fetch.pos2 set from storage sco:data stage_generate.data_fetch.pos
function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage sco:data stage_generate.data_fetch
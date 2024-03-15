#>sco:stage_data/stage/blank_fortress/generate/set_pattern/additional
#@within sco:stage_data/stage/blank_fortress/generate/setup
data modify storage _ _ set value []
execute if block ^-1 ^ ^ air run data modify storage _ _ append value "^-1 ^ ^"
execute if block ^1 ^ ^ air run data modify storage _ _ append value "^1 ^ ^"
execute if block ^-2 ^ ^ air run data modify storage _ _ append value "^-2 ^ ^"
execute if block ^2 ^ ^ air run data modify storage _ _ append value "^2 ^ ^"
execute if block ^-3 ^ ^ air run data modify storage _ _ append value "^-3 ^ ^"
execute if block ^3 ^ ^ air run data modify storage _ _ append value "^3 ^ ^"
execute if block ^-4 ^ ^ air run data modify storage _ _ append value "^-4 ^ ^"
execute if block ^4 ^ ^ air run data modify storage _ _ append value "^4 ^ ^"
execute store result score $ranmax _ run data get storage _ _
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
execute store result storage _ data_fetch.index int 1 run function random/int_range
execute store result storage _ data_fetch.index int 1 run scoreboard players get $random _
function sco:stage_data/stage/blank_fortress/generate/macro/pos with storage _ data_fetch
function sco:stage_data/stage/blank_fortress/generate/macro/set_wall with storage _ data_fetch
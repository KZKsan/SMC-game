#>sco:stage_data/stage/blank_fortress/generate/set_field/cannon
#@within sco:stage_data/stage/blank_fortress/generate/setup
data modify storage _ _ set value []
execute unless block ^-0 ^ ^0 #sco:stage_data/blank_fortress/generate_field/full if block ^-0 ^1 ^0 air run data modify storage _ _ append value "^-0 ^ ^0"
execute unless block ^-1 ^ ^0 #sco:stage_data/blank_fortress/generate_field/full if block ^-1 ^1 ^0 air run data modify storage _ _ append value "^-1 ^ ^0"
execute unless block ^-2 ^ ^0 #sco:stage_data/blank_fortress/generate_field/full if block ^-2 ^1 ^0 air run data modify storage _ _ append value "^-2 ^ ^0"
execute unless block ^-3 ^ ^0 #sco:stage_data/blank_fortress/generate_field/full if block ^-3 ^1 ^0 air run data modify storage _ _ append value "^-3 ^ ^0"
execute unless block ^-4 ^ ^0 #sco:stage_data/blank_fortress/generate_field/full if block ^-4 ^1 ^0 air run data modify storage _ _ append value "^-4 ^ ^0"
execute unless block ^-0 ^ ^1 #sco:stage_data/blank_fortress/generate_field/full if block ^-0 ^1 ^1 air run data modify storage _ _ append value "^-0 ^ ^1"
execute unless block ^-1 ^ ^1 #sco:stage_data/blank_fortress/generate_field/full if block ^-1 ^1 ^1 air run data modify storage _ _ append value "^-1 ^ ^1"
execute unless block ^-2 ^ ^1 #sco:stage_data/blank_fortress/generate_field/full if block ^-2 ^1 ^1 air run data modify storage _ _ append value "^-2 ^ ^1"
execute unless block ^-3 ^ ^1 #sco:stage_data/blank_fortress/generate_field/full if block ^-3 ^1 ^1 air run data modify storage _ _ append value "^-3 ^ ^1"
execute unless block ^-4 ^ ^1 #sco:stage_data/blank_fortress/generate_field/full if block ^-4 ^1 ^1 air run data modify storage _ _ append value "^-4 ^ ^1"
execute unless block ^-0 ^ ^2 #sco:stage_data/blank_fortress/generate_field/full if block ^-0 ^1 ^2 air run data modify storage _ _ append value "^-0 ^ ^2"
execute unless block ^-1 ^ ^2 #sco:stage_data/blank_fortress/generate_field/full if block ^-1 ^1 ^2 air run data modify storage _ _ append value "^-1 ^ ^2"
execute unless block ^-2 ^ ^2 #sco:stage_data/blank_fortress/generate_field/full if block ^-2 ^1 ^2 air run data modify storage _ _ append value "^-2 ^ ^2"
execute unless block ^-3 ^ ^2 #sco:stage_data/blank_fortress/generate_field/full if block ^-3 ^1 ^2 air run data modify storage _ _ append value "^-3 ^ ^2"
execute unless block ^-4 ^ ^2 #sco:stage_data/blank_fortress/generate_field/full if block ^-4 ^1 ^2 air run data modify storage _ _ append value "^-4 ^ ^2"
execute unless block ^-0 ^ ^3 #sco:stage_data/blank_fortress/generate_field/full if block ^-0 ^1 ^3 air run data modify storage _ _ append value "^-0 ^ ^3"
execute unless block ^-1 ^ ^3 #sco:stage_data/blank_fortress/generate_field/full if block ^-1 ^1 ^3 air run data modify storage _ _ append value "^-1 ^ ^3"
#execute unless block ^-2 ^ ^3 #sco:stage_data/blank_fortress/generate_field/full if block ^-2 ^1 ^3 air run data modify storage _ _ append value "^-2 ^ ^3"
execute unless block ^-3 ^ ^3 #sco:stage_data/blank_fortress/generate_field/full if block ^-3 ^1 ^3 air run data modify storage _ _ append value "^-3 ^ ^3"
execute unless block ^-4 ^ ^3 #sco:stage_data/blank_fortress/generate_field/full if block ^-4 ^1 ^3 air run data modify storage _ _ append value "^-4 ^ ^3"

execute store result score $ranmax _ run data get storage _ _
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
execute store result storage _ data_fetch.index int 1 run function random/int_range
execute store result storage _ data_fetch.index int 1 run scoreboard players get $random _
function sco:stage_data/stage/blank_fortress/generate/macro/pos with storage _ data_fetch
data modify storage _ data_fetch.block set value "redstone_block"
function sco:stage_data/stage/blank_fortress/generate/macro/set_block with storage _ data_fetch
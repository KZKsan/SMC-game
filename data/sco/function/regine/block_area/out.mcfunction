#>sco:regine/block_area/out
#@within sco:regine/block_area/

data remove storage _ data_fetch
execute store result storage _ data_fetch.x double 0.1 run scoreboard players get @s regine.block_area.pos.x
execute store result storage _ data_fetch.y double 0.1 run scoreboard players get @s regine.block_area.pos.y
execute store result storage _ data_fetch.z double 0.1 run scoreboard players get @s regine.block_area.pos.z
function sco:regine/block_area/move with storage _ data_fetch
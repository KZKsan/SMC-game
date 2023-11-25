#>sco:regine/block_area/move/reset_motion/
#@within sco:regine/block_area/move/**
data modify storage _ Pos set value {}
data modify storage _ Pos.x set from entity @s Pos[0]
data modify storage _ Pos.y set from entity @s Pos[1]
data modify storage _ Pos.z set from entity @s Pos[2]
function sco:regine/block_area/move/reset_motion/macro with storage _ Pos
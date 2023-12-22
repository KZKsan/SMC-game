#>sco:regine/block_area/move/-x
#@within sco:regine/block_area/
summon marker ~ ~ ~ {Tags:[set_pos]}
function sco:regine/block_area/move/reset_motion/
execute store result entity @e[type=marker,tag=set_pos,limit=1] Pos[0] double 1 run scoreboard players get @s regine.x2
execute positioned as @e[type=marker,tag=set_pos,limit=1] run teleport @s ~ ~ ~
kill @e[type=marker,tag=set_pos]

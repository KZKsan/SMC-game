#>blast_motion/tp/pos
#@within blast_motion/**
summon marker ~ ~ ~ {Tags:[tp_pointer]}
data modify storage _ Pos set value [0d,0d,0d]
execute store result storage _ Pos[0] double 0.001 run scoreboard players get @s blast_motion_pos.0
execute store result storage _ Pos[1] double 0.001 run scoreboard players get @s blast_motion_pos.1
execute store result storage _ Pos[2] double 0.001 run scoreboard players get @s blast_motion_pos.2
data modify entity @e[tag=tp_pointer,limit=1,distance=..1] Pos set from storage _ Pos
execute at @s run playsound entity.horse.jump record @s ~ ~ ~ 4 1
teleport 0 0 0
execute positioned as @e[tag=tp_pointer,limit=1] run teleport @s ~ ~ ~
kill @e[tag=tp_pointer,limit=1]
scoreboard players remove @s blast_motion 1
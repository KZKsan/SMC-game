#>minecraft:blast_motion/tp/return
#@within blast_motion/run/2
summon marker ~ ~ ~ {Tags:[tp_pointer]}
data modify storage _ Pos set value [0d,0d,0d]
execute store result storage _ Pos[0] double 0.001 run scoreboard players get @s blast_motion_return.0
execute store result storage _ Pos[1] double 0.001 run scoreboard players get @s blast_motion_return.1
execute store result storage _ Pos[2] double 0.001 run scoreboard players get @s blast_motion_return.2
data modify entity @e[tag=tp_pointer,limit=1,distance=..1] Pos set from storage _ Pos
execute positioned as @e[tag=tp_pointer,limit=1] run teleport @s ~ ~ ~
kill @e[tag=tp_pointer,limit=1]
scoreboard players remove @s blast_motion 1
#execute at @s run playsound entity.wither.shoot record @s ~ ~ ~ 1 1 1
#execute at @s run playsound entity.generic.explode record @s ~ ~ ~ 4 0.7
gamemode adventure @s[scores={last_gamemode=2}]
gamemode spectator @s[scores={last_gamemode=3}]
gamemode survival @s[scores={last_gamemode=0}]
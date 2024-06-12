#>blast_motion/
#@api
summon marker ~ ~ ~ {Tags:[tp_point]}
data modify entity @n[tag=tp_point,type=marker] Rotation set from entity @s Rotation


scoreboard players operation # _ = @s blast_motion.count
execute unless score # _ matches 1.. run scoreboard players set # _ 1
teleport @s ~ ~3000 ~ ~ ~
execute positioned as @s anchored eyes rotated ~ 0 positioned ^ ^-0.5 ^ rotated as @s run function blast_motion/blast
kill @e[type=armor_stand,tag=blast_motion.stand]
execute rotated as @n[tag=tp_point,type=marker] run teleport @s ~ ~ ~ ~ ~
kill @n[tag=tp_point,type=marker]
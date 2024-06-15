#>sco_items:item_functions/wind_mace/wind/
#@within sco_items:item_functions/wind_mace/using
scoreboard players set @s blast_motion.count 3
summon marker ~ ~ ~ {Tags:[tp_point]}
data modify entity @n[tag=tp_point,type=marker] Rotation set from entity @s Rotation
scoreboard players operation # _ = @s blast_motion.count
execute unless score # _ matches 1.. run scoreboard players set # _ 1
teleport @s ~ ~3000 ~ ~ ~
execute positioned as @s positioned ~ ~0.8 ~ rotated as @s run function blast_motion/blast
kill @e[type=armor_stand,tag=blast_motion.stand]
execute rotated as @n[tag=tp_point,type=marker] run teleport @s ~ ~ ~ ~ ~
kill @n[tag=tp_point,type=marker]
effect give @s slow_falling 3 100
##set cooldown
scoreboard players operation @s wind_mace.cooldown = #wind_mace.set_cooltime sco_items.configs
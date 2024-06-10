#>blast_motion/
#@api

scoreboard players operation # _ = @s blast_motion.count
execute unless score # _ matches 1.. run scoreboard players set # _ 1
teleport @s ~ ~3000 ~
execute at @s anchored eyes rotated ~ 0 positioned ^ ^-0.5 ^ rotated as @s run function blast_motion/blast
kill @e[type=armor_stand,tag=blast_motion.stand]
execute at @s run teleport @s ~ ~-3000 ~
#>blast_motion/return/
#@within blast_motion/
execute as @e[tag=blast_motion_run] at @s run function minecraft:blast_motion/tp/return
tag @e[tag=blast_motion_run] remove blast_motion_run
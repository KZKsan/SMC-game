#>minecraft:chair/
#@within tick

execute as @a[scores={sitting=4}] unless function minecraft:chair/ride at @s align y positioned ~ ~1 ~ run teleport @s ~ ~ ~
execute as @e[tag=chair,tag=slab] at @s align y positioned ~ ~1.51 ~ on target run function minecraft:chair/site
execute as @e[tag=chair,tag=stairs] at @s align y positioned ~ ~1.51 ~ on target run function minecraft:chair/site
execute as @e[tag=chair,tag=campfire] at @s align y positioned ~ ~1.4475 ~ on target run function minecraft:chair/site
execute as @e[tag=chair] run data remove entity @s interaction
execute as @e[type=block_display,tag=chair_entity] unless function minecraft:chair/passenger run kill
scoreboard players remove @a[scores={sitting=1..}] sitting 1
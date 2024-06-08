#>minecraft:chair/site
#@within minecraft:chair/
execute if predicate sneaking run return 0
execute if score @s sitting matches 1..3 run return 0
tag @s add origin
execute if entity @p[tag=!origin,distance=..1] run return run tag @s remove origin
ride @s dismount
summon block_display ~ ~ ~ {Tags:[chair_entity,set_nbt]}
ride @s mount @e[tag=chair_entity,tag=set_nbt,limit=1]
tag @e[type=block_display,tag=chair_entity,tag=set_nbt] remove set_nbt
tag @s remove origin
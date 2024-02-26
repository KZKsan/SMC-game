#>sco:practice/entity/sandbag/set_rotation/display
#@within sco:practice/entity/sandbag/set_rotation/
data modify entity @s Rotation set from entity @e[tag=origin,limit=1,distance=..3,sort=nearest] Rotation
execute store result score # _ run data get entity @s Rotation[0] 10000
scoreboard players add # _ 1800000
execute if score # _ matches 1800001.. run scoreboard players remove # _ 3600000
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get # _
tag @s remove set_nbt
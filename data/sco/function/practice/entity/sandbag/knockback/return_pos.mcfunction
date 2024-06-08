#>sco:practice/entity/sandbag/knockback/return_pos
#@within sco:practice/entity/sandbag/
# pos
execute on passengers run tag @s add marker
data modify entity @s Pos set from entity @e[type=marker,tag=marker,limit=1,distance=..3] data.Pos
data modify entity @s Rotation set from entity @e[type=marker,tag=marker,limit=1,distance=..3] data.Rotation
execute on passengers run tag @s remove marker
# particle
particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.02 12
particle portal ~ ~0.5 ~ 0 0 0 1 20
execute at @s run particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.02 12
# score reset
scoreboard players set @s age 0
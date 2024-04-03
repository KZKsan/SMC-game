#>sco:practice/entity/sandbag/knockback/set_score
#@within sco:practice/entity/sandbag/summon/knockback
execute on passengers run data modify entity @s data.Pos set from entity @e[tag=set_nbt,type=slime,limit=1,distance=..1] Pos
execute on passengers run data modify entity @s data.Rotation set from entity @e[tag=set_nbt,type=slime,limit=1,distance=..1] Rotation
scoreboard players set @s age 0
tag @s remove set_nbt
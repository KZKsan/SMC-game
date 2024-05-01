#>sco_items:item_functions/alchemy_robe/multishot/left
#@within sco_items:item_functions/alchemy_robe/multishot/
data modify entity @s Item set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Item
data modify entity @s Motion set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion
data modify entity @s Owner set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Owner
data modify entity @s Tags set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Tags
tag @s remove origin
execute store result score # _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[0] 965925
execute store result score #_ _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[2] -258819
execute store result entity @s Motion[0] double 0.000001 run scoreboard players operation # _ += #_ _
execute store result score # _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[0] 258819
execute store result score #_ _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[2] 965925
execute store result entity @s Motion[2] double 0.000001 run scoreboard players operation # _ += #_ _

damage @s 0.00001
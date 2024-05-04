#>sco_items:item_functions/alchemy_robe/multishot/right
#@within sco_items:item_functions/alchemy_robe/multishot/
data modify entity @s Item set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Item
data modify storage sco_items:data alchemy_robe.Motion.now set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion
#data modify entity @s Motion set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion
data modify entity @s Owner set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Owner
data modify entity @s Tags set from entity @e[tag=origin,type=potion,limit=1,distance=..1] Tags
tag @s remove origin
data modify storage sco_items:data alchemy_robe.Motion.last set from storage sco_items:data alchemy_robe.Motion.now
#data modify storage sco_items:data alchemy_robe.Motion.tmp set value [0d,0d,0d]
$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[0] $(cos_a)
$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[2] $(sin_a)
execute store result storage sco_items:data alchemy_robe.Motion.last[0] double 0.000001 run scoreboard players operation # _ += #_ _
$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[0] $(_sin_a)
$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[2] $(cos_a)
execute store result storage sco_items:data alchemy_robe.Motion.last[2] double 0.000001 run scoreboard players operation # _ += #_ _
data modify entity @s Motion set from storage sco_items:data alchemy_robe.Motion.last
damage @s 0.00001
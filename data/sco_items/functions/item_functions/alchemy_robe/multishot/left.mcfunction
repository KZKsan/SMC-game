#>sco_items:item_functions/alchemy_robe/multishot/left
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
$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[2] $(_sin_a)
execute store result storage sco_items:data alchemy_robe.Motion.last[0] double 0.000001 run scoreboard players operation # _ += #_ _
$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[0] $(sin_a)
$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[2] $(cos_a)
execute store result storage sco_items:data alchemy_robe.Motion.last[2] double 0.000001 run scoreboard players operation # _ += #_ _

#execute store result score # _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[0] 965925
#execute store result score #_ _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[2] -258819
#execute store result entity @s Motion[0] double 0.000001 run scoreboard players operation # _ += #_ _
#execute store result score # _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[0] 258819
#execute store result score #_ _ run data get entity @e[tag=origin,type=potion,limit=1,distance=..1] Motion[2] 965925
#execute store result entity @s Motion[2] double 0.000001 run scoreboard players operation # _ += #_ _

#data modify storage sco_items:data alchemy_robe.Motion.now set from storage sco_items:data alchemy_robe.Motion.last
#
#$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[1] $(cos)
#$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[2] $(_sin)
#execute store result storage sco_items:data alchemy_robe.Motion.last[1] double 0.000001 run scoreboard players operation # _ += #_ _
#$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[0] $(sin)
#$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[2] $(cos)
#execute store result storage sco_items:data alchemy_robe.Motion.last[2] double 0.000001 run scoreboard players operation # _ += #_ _
#
#data modify storage sco_items:data alchemy_robe.Motion.now set from storage sco_items:data alchemy_robe.Motion.last

#$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[0] $(cos_b)
#$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[1] $(_sin_b)
#execute store result storage sco_items:data alchemy_robe.Motion.last[0] double 0.000001 run scoreboard players operation # _ += #_ _
#$execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.now[0] $(sin_b)
#$execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.now[1] $(cos_b)
#execute store result storage sco_items:data alchemy_robe.Motion.last[1] double 0.000001 run scoreboard players operation # _ += #_ _



#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[0] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[0] $(cos_a)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[1] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[1] $(sin_a)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[1] int 0.001 run data get storage sco_items:data alchemy_robe.Motion.tmp[1] $(sin_b)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[2] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[2] $(sin_a)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[2] int 0.001 run data get storage sco_items:data alchemy_robe.Motion.tmp[2] $(cos_b)
#execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.tmp[0]
#execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.tmp[1]
#execute store result score #__ _ run data get storage sco_items:data alchemy_robe.Motion.tmp[2]
#scoreboard players operation # _ += #_ _
#execute store result storage sco_items:data alchemy_robe.Motion.last[0] double 0.001 run scoreboard players operation # _ += #__ _
#
#data modify storage sco_items:data alchemy_robe.Motion.tmp[0] set value 0
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[1] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[1] $(cos_b)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[2] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[2] $(_sin_b)
#execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.tmp[0]
#execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.tmp[1]
#execute store result score #__ _ run data get storage sco_items:data alchemy_robe.Motion.tmp[2]
#scoreboard players operation # _ += #_ _
#execute store result storage sco_items:data alchemy_robe.Motion.last[1] double 0.001 run scoreboard players operation # _ += #__ _
#
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[0] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[0] $(_sin_a)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[1] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[1] $(cos_a)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[1] int 0.001 run data get storage sco_items:data alchemy_robe.Motion.tmp[1] $(sin_b)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[2] int 1 run data get storage sco_items:data alchemy_robe.Motion.now[2] $(cos_a)
#$execute store result storage sco_items:data alchemy_robe.Motion.tmp[2] int 0.001 run data get storage sco_items:data alchemy_robe.Motion.tmp[2] $(cos_b)
#execute store result score # _ run data get storage sco_items:data alchemy_robe.Motion.tmp[0]
#execute store result score #_ _ run data get storage sco_items:data alchemy_robe.Motion.tmp[1]
#execute store result score #__ _ run data get storage sco_items:data alchemy_robe.Motion.tmp[2]
#scoreboard players operation # _ += #_ _
#execute store result storage sco_items:data alchemy_robe.Motion.last[0] double 0.001 run scoreboard players operation # _ += #__ _


data modify entity @s Motion set from storage sco_items:data alchemy_robe.Motion.last
#data modify storage sco_items:data alchemy_robe.Motion.tmp set from entity @s Motion
damage @s 0.00001
#>sco:process/domination/object/beacon/set/macro
#@within sco:process/domination/object/beacon/set/

#$forceload add $(x) $(z)
execute positioned 0 0 0 run function sco:process/domination/object/beacon/set/summon
execute positioned 0 0 0 store result score @e[type=item_display,tag=beacon.core,tag=set_data,distance=..3,limit=1] stage_object.count.0 run data get storage sco:data domination.beacon.pos.num
#$execute positioned $(x) $(y) $(z) run teleport @e[type=item_display,tag=beacon.core,tag=set_data,limit=1] ~ ~ ~
$data modify entity @e[type=item_display,tag=beacon.core,tag=set_data,limit=1] item.components."minecraft:custom_data".pos set value "$(x) $(y) $(z)"
$spreadplayers $(x) $(z) 0 1 false @e[type=item_display,tag=beacon.core,tag=set_data,limit=1] 
tag @e[type=item_display,tag=beacon.core,tag=set_data,limit=1] remove set_data
#$forceload remove $(x) $(z)
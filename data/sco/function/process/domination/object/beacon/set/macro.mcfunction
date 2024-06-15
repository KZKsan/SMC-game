#>sco:process/domination/object/beacon/set/macro
#@within sco:process/domination/object/beacon/set/

#$forceload add $(x) $(z)
$execute positioned 0 0 0 run function sco:process/domination/object/beacon/set/summon {x:"$(x)",y:"$(y)",z:"$(z)"}
execute positioned 0 0 0 store result score @n[type=item_display,tag=beacon.core,tag=set_data,distance=..3] stage_object.count.0 run data get storage sco:data domination.beacon.pos.num
#$execute positioned $(x) $(y) $(z) run teleport @n[type=item_display,tag=beacon.core,tag=set_data] ~ ~ ~
$data modify entity @n[type=item_display,tag=beacon.core,tag=set_data] item.components."minecraft:custom_data".pos set value "$(x) $(y) $(z)"
$spreadplayers $(x) $(z) 0 1 false @n[type=item_display,tag=beacon.core,tag=set_data] 
tag @n[type=item_display,tag=beacon.core,tag=set_data] remove set_data
#$forceload remove $(x) $(z)
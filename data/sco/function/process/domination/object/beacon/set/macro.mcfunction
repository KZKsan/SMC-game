#>sco:process/domination/object/beacon/set/macro
#@within sco:process/domination/object/beacon/set/

#$forceload add $(x) $(z)
#$execute positioned 0 0 0 run function sco:process/domination/object/beacon/set/summon {x:"$(x)",y:"$(y)",z:"$(z)"}
$summon marker 0 0 0 {Tags:[beacon.set_point,set_data,load_pos,sco-object],data:{x:"$(x)",y:"$(y)",z:"$(z)",pos:"$(x) $(y) $(z)",num:$(num)}}
#$data modify entity @n[type=item_display,tag=beacon.core,tag=set_data] item.components."minecraft:custom_data".pos set value "$(x) $(y) $(z)"
$execute positioned 0 0 0 run spreadplayers $(x) $(z) 0 1 false @n[type=marker,tag=beacon.set_point,tag=set_data] 
#$execute positioned 0 0 0 set_pointun teleport @n[type=marker,tag=beacon.set_point,tag=set_data] $(x) $(y) $(z)
tag @e[type=marker,tag=beacon.set_point,tag=set_data] remove set_data
#$forceload remove $(x) $(z)
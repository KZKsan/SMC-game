#>sco:process/domination/object/beacon/set/load_pos
#@within sco:process/domination/object/beacon/
$teleport @s $(pos)
execute at @s run function sco:process/domination/object/beacon/set/summon
$execute at @s run scoreboard players set @n[type=item_display,tag=beacon.set_point,tag=set_data,distance=..3] stage_object.count.0 $(num)
tag @e[type=item_display,tag=beacon.core,tag=set_data] remove set_data
kill
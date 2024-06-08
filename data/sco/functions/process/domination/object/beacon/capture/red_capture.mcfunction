#>sco:process/domination/object/beacon/capture/red_capture
#@within sco:process/domination/object/beacon/

execute as @a[distance=..7,team=blue,predicate=gamemode/as] at @s run function sco:process/domination/object/beacon/capture/sound/in_area

execute unless function sco:process/domination/object/beacon/capture/both_capture if entity @p[distance=..7,team=blue,predicate=gamemode/as] run function sco:process/domination/object/beacon/capture/capture_value/blue
execute unless entity @p[distance=..7,team=blue,predicate=gamemode/as] run function sco:process/domination/object/beacon/capture/fix_value/red
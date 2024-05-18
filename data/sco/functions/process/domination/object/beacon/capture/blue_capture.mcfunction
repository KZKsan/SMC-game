#>sco:process/domination/object/beacon/capture/blue_capture
#@within sco:process/domination/object/beacon/

execute unless entity @p[distance=..7,team=red,predicate=gamemode/as] run function sco:process/domination/object/beacon/capture/fix_value/blue

execute unless function sco:process/domination/object/beacon/capture/both_capture if entity @p[distance=..7,team=red,predicate=gamemode/as] run function sco:process/domination/object/beacon/capture/capture_value/red
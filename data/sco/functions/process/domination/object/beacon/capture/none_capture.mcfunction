#>sco:process/domination/object/beacon/capture/none_capture
#@within sco:process/domination/object/beacon/

execute unless entity @p[distance=..7,predicate=gamemode/as,predicate=sco:team_join,team=!spectator] run scoreboard players remove @s[scores={stage_object.count.1=1..}] stage_object.count.1 1
execute unless function sco:process/domination/object/beacon/capture/both_capture if entity @p[distance=..7,team=red,predicate=gamemode/as] run function sco:process/domination/object/beacon/capture/capture_value/red
execute unless function sco:process/domination/object/beacon/capture/both_capture if entity @p[distance=..7,team=blue,predicate=gamemode/as] run function sco:process/domination/object/beacon/capture/capture_value/blue
#>sco:process/domination/object/beacon/
#@within sco:process/domination/object/main

execute if entity @s[tag=load_pos] run function sco:process/domination/object/beacon/set/load_pos with entity @s item.components."minecraft:custom_data"

execute unless entity @s[scores={stage_object.count.1=0..}] run scoreboard players set @s stage_object.count.1 0

#assist
function sco:process/domination/object/beacon/assist_activator/



execute if entity @s[tag=!red,tag=!blue] run function sco:process/domination/object/beacon/capture/none_capture
execute if entity @s[tag=red] run function sco:process/domination/object/beacon/capture/red_capture
execute if entity @s[tag=blue] run function sco:process/domination/object/beacon/capture/blue_capture

execute if entity @s[tag=red] run function sco:process/domination/object/beacon/info/red
execute if entity @s[tag=blue] run function sco:process/domination/object/beacon/info/blue
execute if entity @s[tag=!red,tag=!blue] run function sco:process/domination/object/beacon/info/none


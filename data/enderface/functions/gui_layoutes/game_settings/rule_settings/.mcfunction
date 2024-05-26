#>enderface:gui_layoutes/game_settings/rule_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.11 loot enderface:sco_settings/rule/death_match
loot replace entity @s enderchest.13 loot enderface:sco_settings/rule/kick_out
#loot replace entity @s enderchest.15 loot enderface:sco_settings/rule/domination
execute if data storage sco:config game{rule:"death_match"} run item modify entity @s enderchest.11 enderface:selected
execute if data storage sco:config game{rule:"kick_out"} run item modify entity @s enderchest.13 enderface:selected
#execute if data storage sco:config game{rule:"domination"} run item modify entity @s enderchest.15 enderface:selected
loot replace entity @s enderchest.26 loot enderface:back_gui
#>enderface:gui_layoutes/game_settings/rule_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.12 loot enderface:sco_settings/rule_setting/death_match
loot replace entity @s enderchest.14 loot enderface:sco_settings/rule_setting/kick_out
execute if data storage sco:config game{rule:"death_match"} run item modify entity @s enderchest.12 enderface:selected
execute if data storage sco:config game{rule:"kick_out"} run item modify entity @s enderchest.14 enderface:selected
loot replace entity @s enderchest.26 loot enderface:back_gui
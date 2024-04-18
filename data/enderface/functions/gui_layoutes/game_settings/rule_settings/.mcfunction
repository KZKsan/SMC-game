#>enderface:gui_layoutes/game_settings/rule_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.12 with iron_sword{enderface_item:1b,display:{Name:'{"text": "デスマッチ","italic": false,"color": "red"}'},HideFlags:32}
item replace entity @s enderchest.14 with golden_axe{enderface_item:1b,display:{Name:'{"text": "キックアウト","italic": false,"color": "yellow"}'},HideFlags:32}
execute if data storage sco:config game{rule:"death_match"} run item modify entity @s enderchest.12 enderface:selected
execute if data storage sco:config game{rule:"kick_out"} run item modify entity @s enderchest.14 enderface:selected
loot replace entity @s enderchest.26 loot enderface:back_gui
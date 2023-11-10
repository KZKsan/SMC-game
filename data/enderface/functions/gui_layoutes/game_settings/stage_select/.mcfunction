#>enderface:gui_layoutes/game_settings/stage_select/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air
item replace entity @s enderchest.0 with grass_block{enderfaceItem:1b,display:{Name:'{"text": "ラクエン","italic": false,"color":"#55AADD"}'},click_events:{click_sounds:[{sound:"ui.button.click"}],set_stage:"paradise"}}

function enderface:gui_layoutes/game_settings/stage_select/selected_icon/

loot replace entity @s enderchest.26 loot enderface:back_gui
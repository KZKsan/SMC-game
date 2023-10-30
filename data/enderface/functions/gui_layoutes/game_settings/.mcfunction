#>enderface:gui_layoutes/game_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air
item replace entity @s enderchest.8 with gold_block{enderfaceItem:1b,display:{Name:'{"text": ">ゲーム開始","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}]}}
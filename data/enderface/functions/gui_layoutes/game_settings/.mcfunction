#>enderface:gui_layoutes/game_settings/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.9 with grass_block{enderfaceItem:1b,display:{Name:'{"text": ">ステージ","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"game_settings/stage_select"}}
item replace entity @s enderchest.17 with gold_block{enderfaceItem:1b,display:{Name:'{"text": ">ゲーム開始","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}]}}


data modify storage p-storage _[0].data.page set value 0
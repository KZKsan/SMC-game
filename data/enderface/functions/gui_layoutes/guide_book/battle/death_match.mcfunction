#>enderface:gui_layoutes/guide_book/battle/death_match
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

#準備フェーズ
loot replace entity @s enderchest.1 loot enderface:guide/death_match/1
loot replace entity @s enderchest.10 loot enderface:guide/death_match/2
loot replace entity @s enderchest.11 loot enderface:guide/death_match/3
loot replace entity @s enderchest.12 loot enderface:guide/death_match/4

item replace entity @s enderchest.26 with barrier{enderfaceItem:1b,HideFlags:32,click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"guide/"},display:{Name:'{"text": ">戻る","italic": false}'}}
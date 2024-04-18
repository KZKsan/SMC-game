#>enderface:gui_layoutes/guide_book/battle/death_match
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.1 loot enderface:guide/kick_out/1
loot replace entity @s enderchest.10 loot enderface:guide/kick_out/2
loot replace entity @s enderchest.11 loot enderface:guide/kick_out/3
loot replace entity @s enderchest.12 loot enderface:guide/kick_out/4
loot replace entity @s enderchest.13 loot enderface:guide/kick_out/5

item replace entity @s enderchest.26 with barrier{enderface_item:1b,HideFlags:32,click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"guide/"},display:{Name:'{"text": ">戻る","italic": false}'}}
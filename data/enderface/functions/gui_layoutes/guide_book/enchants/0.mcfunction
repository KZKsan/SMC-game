#>enderface:gui_layoutes/guide_book/enchants/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.0 loot enderface:guide/enchants/curse_of_the_undead
loot replace entity @s enderchest.1 loot enderface:guide/enchants/flammability
loot replace entity @s enderchest.2 loot enderface:guide/enchants/vulnerability

item replace entity @s enderchest.26 with barrier{enderfaceItem:1b,HideFlags:32,click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"guide/"},display:{Name:'{"text": ">戻る","italic": false}'}}
#>enderface:gui_layoutes/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

item replace entity @s enderchest.0 with iron_sword{click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"shop/weapons"}}
item modify entity @s enderchest.0 enderface:enderfaceitem

item replace entity @s enderchest.1 with music_disc_5{display:{Name:'{"text": ">テスト","italic": false}'},click_events:{click_sounds:[{sound:"ui.button.click"}],change_gui:"shop/test"}}
item modify entity @s enderchest.1 enderface:enderfaceitem

function marker_storage/get
data remove entity @e[predicate=marker_storage,limit=1] data.preview_trade
data modify entity @e[predicate=marker_storage,limit=1] data.page set value 0
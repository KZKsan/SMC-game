#>enderface:gui_layoutes/guid_book/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.0 loot enderface:shop/category_icon/weapons
loot replace entity @s enderchest.1 loot enderface:shop/category_icon/armors


loot replace entity @s enderchest.22 loot enderface:shop/category_icon/kit_memory


data remove storage p-storage _[0].data.preview_trade
data modify storage p-storage _[0].data.page set value 0
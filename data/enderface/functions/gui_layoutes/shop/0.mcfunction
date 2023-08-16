#>enderface:gui_layoutes/shop/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.0 loot enderface:shop/category_icon/weapons
loot replace entity @s enderchest.1 loot enderface:shop/category_icon/armors
loot replace entity @s enderchest.2 loot enderface:shop/category_icon/arrows
loot replace entity @s enderchest.3 loot enderface:shop/category_icon/potions
loot replace entity @s enderchest.4 loot enderface:shop/category_icon/others
loot replace entity @s enderchest.18 loot enderface:shop/category_icon/sell_item


function marker_storage/get
data remove entity @e[predicate=marker_storage,limit=1] data.preview_trade
data modify entity @e[predicate=marker_storage,limit=1] data.page set value 0
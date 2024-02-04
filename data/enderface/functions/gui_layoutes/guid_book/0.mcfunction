#>enderface:gui_layoutes/guid_book/0
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.0 loot enderface:shop/category_icon/weapons
loot replace entity @s enderchest.1 loot enderface:shop/category_icon/armors
loot replace entity @s enderchest.2 loot enderface:shop/category_icon/arrows
loot replace entity @s enderchest.3 loot enderface:shop/category_icon/potions
loot replace entity @s enderchest.4 loot enderface:shop/category_icon/others
loot replace entity @s enderchest.18 loot enderface:shop/category_icon/sell_item
loot replace entity @s enderchest.8 loot enderface:shop/category_icon/reset_item/first

loot replace entity @s enderchest.22 loot enderface:shop/category_icon/kit_memory


data remove storage p-storage _[0].data.preview_trade
data modify storage p-storage _[0].data.page set value 0
#>enderface:gui_layoutes/shop/preview_trade/buy_items/0-1
#@within enderface:gui_layoutes/shop/preview_trade/
item replace entity @s enderchest.14 with air
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from entity @e[predicate=marker_storage,limit=1] data.preview_trade.buy[0]
item replace entity @s enderchest.13 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.13 enderface:enderfaceitem
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from entity @e[predicate=marker_storage,limit=1] data.preview_trade.buy[1]
execute if data entity @e[predicate=marker_storage,limit=1] data.preview_trade.buy[1] run item replace entity @s enderchest.14 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.14 enderface:enderfaceitem
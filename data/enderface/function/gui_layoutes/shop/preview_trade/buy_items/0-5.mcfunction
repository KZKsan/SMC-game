#>enderface:gui_layoutes/shop/preview_trade/buy_items/0-5
#@within enderface:gui_layoutes/shop/preview_trade/
item replace entity @s enderchest.23 with air

data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[0]
item replace entity @s enderchest.4 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.4 enderface:enderface_item
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[1]
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[1] run item replace entity @s enderchest.5 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.5 enderface:enderface_item
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[2]
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[2] run item replace entity @s enderchest.13 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.13 enderface:enderface_item
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[3]
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[3] run item replace entity @s enderchest.14 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.14 enderface:enderface_item
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[4]
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[4] run item replace entity @s enderchest.22 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.22 enderface:enderface_item
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[5]
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[5] run item replace entity @s enderchest.23 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.23 enderface:enderface_item
scoreboard players set # _ 1
#>enderface:gui_layoutes/shop/preview_add_items/loop
#@within enderface:gui_layoutes/shop/preview_add_items/**

execute store result storage enderface:shop preview_trade.add_items[0].Slot byte 1 run scoreboard players get #i _
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items append from storage enderface:shop preview_trade.add_items[0]
data remove storage enderface:shop preview_trade.add_items[0]
scoreboard players add #i _ 1
execute if data storage enderface:shop preview_trade.add_items[0] run function enderface:gui_layoutes/shop/preview_add_items/loop
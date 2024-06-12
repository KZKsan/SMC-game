#>enderface:gui_layoutes/shop/preview_trade/
#@within enderface:gui_layoutes/shop/**
summon chest_minecart ~ ~ ~ {Items:[{id:"stick",count:1,Slot:0b}],Tags:["gui_layout_item"]}
scoreboard players set # _ 0
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[6] run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-any
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[4] if score # _ matches 0 run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-5
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[2] if score # _ matches 0 run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-3
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.buy[0] if score # _ matches 0 run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-1

data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.enderface.shop.preview_trade.data.trade_icon
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].components."minecraft:custom_data".trade set value 1b
item replace entity @s enderchest.16 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.16 enderface:enderface_item
#item modify entity @s enderchest.16 enderface:shop/click_to_trade
execute if data storage p-storage _[0].data.enderface.shop.preview_trade.data.sell[1] run function enderface:gui_layoutes/shop/preview_trade/add_items_icon/sell

loot replace entity @s enderchest.15 loot enderface:shop/right_arrow

execute if data storage p-storage _[0].data.enderface.shop.preview_trade.table[1] run function enderface:gui_layoutes/shop/preview_trade/add_preview_trade/


data remove entity @e[tag=gui_layout_item,distance=..2,limit=1] Items
kill @e[tag=gui_layout_item,distance=..2]

#>enderface:gui_layoutes/shop/preview_trade/
#@within enderface:gui_layoutes/shop/**

summon chest_minecart ~ ~ ~ {Items:[{id:"stick",Count:1b,Slot:0b}],Tags:["gui_layout_item"]}
scoreboard players set # _ 0
execute if data storage p-storage _[0].data.preview_trade.buy[4] run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-5
execute if data storage p-storage _[0].data.preview_trade.buy[2] if score # _ matches 0 run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-3
execute if data storage p-storage _[0].data.preview_trade.buy[0] if score # _ matches 0 run function enderface:gui_layoutes/shop/preview_trade/buy_items/0-1


data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.preview_trade.trade
execute if data storage p-storage _[0].data.preview_trade.trade.tag.trade.trade_icon run function enderface:gui_layoutes/shop/preview_trade/trade_icon
item replace entity @s enderchest.16 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.16 enderface:enderfaceitem
item modify entity @s enderchest.16 enderface:shop/click_to_trade

loot replace entity @s enderchest.15 loot enderface:shop/right_arrow

data remove entity @e[tag=gui_layout_item,distance=..2,limit=1] Items
kill @e[tag=gui_layout_item,distance=..2]

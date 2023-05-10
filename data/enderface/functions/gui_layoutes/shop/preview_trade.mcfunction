#>enderface:gui_layoutes/shop/preview_trade
#@within enderface:gui_layoutes/shop/**

summon chest_minecart ~ ~ ~ {Items:[{id:"stick",Count:1b,Slot:0b}],Tags:["gui_layout_item"]}
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from entity @e[predicate=marker_storage,limit=1] data.preview_trade.buy[0]
item replace entity @s enderchest.13 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.13 enderface:enderfaceitem
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from entity @e[predicate=marker_storage,limit=1] data.preview_trade.buy[1]
item replace entity @s enderchest.14 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.14 enderface:enderfaceitem
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from entity @e[predicate=marker_storage,limit=1] data.preview_trade.trade
item replace entity @s enderchest.16 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.16 enderface:enderfaceitem
item modify entity @s enderchest.16 enderface:shop/click_to_trade

data remove entity @e[tag=gui_layout_item,distance=..2,limit=1] Items
kill @e[tag=gui_layout_item,distance=..2]

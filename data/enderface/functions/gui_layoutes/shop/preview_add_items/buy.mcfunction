#>enderface:gui_layoutes/shop/preview_add_items/buy
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air
summon chest_minecart ~ ~ ~ {Items:[],Tags:["gui_layout_item"]}
data modify storage enderface:shop preview_trade.add_items set from storage p-storage _[0].data.preview_trade.trade.components."minecraft:custom_data".trade.buy
scoreboard players set #i _ 0
function enderface:gui_layoutes/shop/preview_add_items/loop
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[{}].components."minecraft:custom_data".enderface_item set value 1b

item replace entity @s enderchest.0 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item replace entity @s enderchest.1 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.1
item replace entity @s enderchest.2 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.2
item replace entity @s enderchest.3 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.3
item replace entity @s enderchest.4 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.4
item replace entity @s enderchest.5 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.5
item replace entity @s enderchest.6 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.6
item replace entity @s enderchest.7 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.7
item replace entity @s enderchest.8 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.8
item replace entity @s enderchest.9 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.9
item replace entity @s enderchest.10 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.10
item replace entity @s enderchest.11 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.11
item replace entity @s enderchest.12 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.12
item replace entity @s enderchest.13 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.13
item replace entity @s enderchest.14 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.14
item replace entity @s enderchest.15 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.15
item replace entity @s enderchest.16 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.16
item replace entity @s enderchest.17 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.17
item replace entity @s enderchest.18 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.18
item replace entity @s enderchest.19 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.19
item replace entity @s enderchest.20 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.20
item replace entity @s enderchest.21 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.21
item replace entity @s enderchest.22 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.22
item replace entity @s enderchest.23 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.23
item replace entity @s enderchest.24 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.24
item replace entity @s enderchest.25 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.25

data remove entity @e[tag=gui_layout_item,distance=..2,limit=1] Items
kill @e[tag=gui_layout_item,distance=..2]

loot replace entity @s enderchest.26 loot enderface:back_gui
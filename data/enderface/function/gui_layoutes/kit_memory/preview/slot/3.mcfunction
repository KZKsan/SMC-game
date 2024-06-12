#>enderface:gui_layoutes/kit_memory/preview/slot/3
#@within enderface:gui_layoutes/kit_memory/preview/
data remove storage enderface:data kit_memory.data[0].Slot
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage enderface:data kit_memory.data[0]
item replace entity @s enderchest.12 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
item modify entity @s enderchest.12 enderface:enderface_item
data remove storage enderface:data kit_memory.data[0]
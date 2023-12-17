#>enderface:gui_layoutes/kit_memory/preview/
#@within enderface:gui_layoutes/kit_memory/slot/**

summon chest_minecart ~ ~ ~ {Items:[{id:"stick",Count:1b,Slot:0b}],Tags:["gui_layout_item"]}
execute if data storage enderface:data data[{Slot:0b}] run function enderface:gui_layoutes/kit_memory/preview/slot/0
execute if data storage enderface:data data[{Slot:1b}] run function enderface:gui_layoutes/kit_memory/preview/slot/1
execute if data storage enderface:data data[{Slot:2b}] run function enderface:gui_layoutes/kit_memory/preview/slot/2
execute if data storage enderface:data data[{Slot:3b}] run function enderface:gui_layoutes/kit_memory/preview/slot/3
execute if data storage enderface:data data[{Slot:4b}] run function enderface:gui_layoutes/kit_memory/preview/slot/4
execute if data storage enderface:data data[{Slot:5b}] run function enderface:gui_layoutes/kit_memory/preview/slot/5
execute if data storage enderface:data data[{Slot:6b}] run function enderface:gui_layoutes/kit_memory/preview/slot/6
execute if data storage enderface:data data[{Slot:7b}] run function enderface:gui_layoutes/kit_memory/preview/slot/7
execute if data storage enderface:data data[{Slot:8b}] run function enderface:gui_layoutes/kit_memory/preview/slot/8
data remove entity @e[tag=gui_layout_item,distance=..2,limit=1] Items
kill @e[tag=gui_layout_item,distance=..2]
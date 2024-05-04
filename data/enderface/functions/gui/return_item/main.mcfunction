#>enderface:gui/return_item/main
#@within enderface:gui/**
data modify storage enderface:data memory.tmp_gui set value []
data modify storage enderface:data new_gui set from entity @s EnderItems
data remove storage enderface:data new_gui[{components:{"minecraft:custom_data":{enderface_item:1b}}}]
data modify storage enderface:data memory.tmp_gui append from storage enderface:data new_gui[{components:{}}]
data remove storage enderface:data new_gui[{components:{}}]
execute if data storage enderface:data new_gui[0] run data modify storage enderface:data new_gui[{}].components set value ""
data modify storage enderface:data new_gui append from storage enderface:data memory.tmp_gui[]
data remove storage enderface:data memory.tmp_gui
execute if data storage enderface:data new_gui[0] run function enderface:gui/return_item/macro
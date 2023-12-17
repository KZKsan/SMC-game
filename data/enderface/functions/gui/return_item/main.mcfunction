#>enderface:gui/return_item/main
#@within enderface:gui/**
data modify storage _ _ set value []
data modify storage enderface:data new_gui set from entity @s EnderItems
data remove storage enderface:data new_gui[{tag:{enderfaceItem:1b}}]
data modify storage _ _ append from storage enderface:data new_gui[{tag:{}}]
data remove storage enderface:data new_gui[{tag:{}}]
execute if data storage enderface:data new_gui[0] run data modify storage enderface:data new_gui[{}].tag set value ""
data modify storage enderface:data new_gui append from storage _ _[]
data remove storage _ _
execute if data storage enderface:data new_gui[0] run function enderface:gui/return_item/macro with storage enderface:data new_gui[0]
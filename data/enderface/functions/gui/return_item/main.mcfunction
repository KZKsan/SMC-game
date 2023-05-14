#>enderface:gui/return_item/main
#@within enderface:gui/**
data modify storage enderface:data new_gui set from entity @s EnderItems
data remove storage enderface:data new_gui[{tag:{enderfaceItem:1b}}]

execute if data storage enderface:data new_gui[0] run function enderface:gui/return_item/summon_item
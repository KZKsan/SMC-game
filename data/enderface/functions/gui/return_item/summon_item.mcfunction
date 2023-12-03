#>enderface:gui/return_item/summon_item
#@within enderface:gui/return_item/**
tag @e[tag=set_nbt] remove set_nbt
execute at @s run summon item ~ ~ ~ {Item:{id:"debug_stick",Count:1b},Tags:["set_nbt"]}
data modify entity @e[type=item,tag=set_nbt,limit=1] Item set from storage enderface:data new_gui[0]
data modify entity @e[type=item,tag=set_nbt,limit=1] Owner set from entity @s UUID
data remove storage enderface:data new_gui[0]
tag @e[type=item,tag=set_nbt,limit=1] remove set_nbt
execute if data storage enderface:data new_gui[0] run function enderface:gui/return_item/summon_item
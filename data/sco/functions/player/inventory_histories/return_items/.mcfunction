#>sco:player/inventory_histories/return_items/
#@within sco:player/inventory_histories/**
clear
data modify storage _ __ set value []
data modify storage _ __ append from storage _ _[{tag:{}}]
data remove storage _ _[{tag:{}}]
execute if data storage _ _[0] run data modify storage _ _[{}].tag set value ""
data modify storage _ _ append from storage _ __[{}]
data remove storage _ __
execute if data storage _ _[{Slot:-106b}] run function sco:player/inventory_histories/return_items/offhand with storage _ _[{Slot:-106b}]
execute if data storage _ _[{Slot:103b}] run function sco:player/inventory_histories/return_items/head with storage _ _[{Slot:103b}]
execute if data storage _ _[{Slot:102b}] run function sco:player/inventory_histories/return_items/chest with storage _ _[{Slot:102b}]
execute if data storage _ _[{Slot:101b}] run function sco:player/inventory_histories/return_items/legs with storage _ _[{Slot:101b}]
execute if data storage _ _[{Slot:100b}] run function sco:player/inventory_histories/return_items/feet with storage _ _[{Slot:100b}]
execute if data storage _ _[0] run function sco:player/inventory_histories/return_items/other_slots with storage _ _[0]
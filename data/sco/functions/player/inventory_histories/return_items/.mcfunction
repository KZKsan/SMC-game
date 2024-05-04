#>sco:player/inventory_histories/return_items/
#@within sco:player/inventory_histories/**
clear
data modify storage sco:inventory_histories inventory_data.tmp set value []
data modify storage sco:inventory_histories inventory_data.tmp append from storage sco:inventory_histories inventory_data.input[{components:{}}]
data remove storage sco:inventory_histories inventory_data.input[{components:{}}]
execute if data storage sco:inventory_histories inventory_data.input[0] run data modify storage sco:inventory_histories inventory_data.input[{}].components set value ""
data modify storage sco:inventory_histories inventory_data.input append from storage sco:inventory_histories inventory_data.tmp[{}]
data remove storage sco:inventory_histories inventory_data.tmp
execute if data storage sco:inventory_histories inventory_data.input[{Slot:-106b}] run function sco:player/inventory_histories/return_items/offhand
execute if data storage sco:inventory_histories inventory_data.input[{Slot:103b}] run function sco:player/inventory_histories/return_items/head
execute if data storage sco:inventory_histories inventory_data.input[{Slot:102b}] run function sco:player/inventory_histories/return_items/chest
execute if data storage sco:inventory_histories inventory_data.input[{Slot:101b}] run function sco:player/inventory_histories/return_items/legs
execute if data storage sco:inventory_histories inventory_data.input[{Slot:100b}] run function sco:player/inventory_histories/return_items/feet
execute if data storage sco:inventory_histories inventory_data.input[0] run function sco:player/inventory_histories/return_items/other_slots with storage sco:inventory_histories inventory_data.input[0]
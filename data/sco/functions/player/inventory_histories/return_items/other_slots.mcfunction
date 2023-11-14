#>sco:player/inventory_histories/return_items/other_slots
#@within sco:player/inventory_histories/return_items/
$item replace entity @s container.$(Slot) with $(id)$(tag) $(Count)
data remove storage _ _[0]
execute if data storage _ _[0] run function sco:player/inventory_histories/return_items/other_slots with storage _ _[0]
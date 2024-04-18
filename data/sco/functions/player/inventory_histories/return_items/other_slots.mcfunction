#>sco:player/inventory_histories/return_items/other_slots
#@within sco:player/inventory_histories/return_items/
data modify storage _ item_data set from storage sco:inventory_histories inventory_data.input[0]
$data modify storage _ item_data.Slot set value "container.$(Slot)"
function item/macro/replace/
data remove storage sco:inventory_histories inventory_data.input[0]
execute if data storage sco:inventory_histories inventory_data.input[0] run function sco:player/inventory_histories/return_items/other_slots with storage sco:inventory_histories inventory_data.input[0]
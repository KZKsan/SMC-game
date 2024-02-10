#>sco:player/inventory_histories/pop/load_data
#@within sco:player/inventory_histories/pop/
data modify storage _ _ set from storage p-storage _[0].data.inventory_histories[-1].Items
data remove storage p-storage _[0].data.inventory_histories[-1]
function sco:player/inventory_histories/return_items/
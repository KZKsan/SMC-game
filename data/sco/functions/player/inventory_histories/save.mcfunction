#>sco:player/inventory_histories/save
#@api
function marker_storage/get
execute unless data entity @e[predicate=marker_storage,limit=1] data.inventory_histories run data modify entity @e[predicate=marker_storage,limit=1] data.inventory_histories set value []
data modify entity @e[predicate=marker_storage,limit=1] data.inventory_histories append from entity @s Inventory
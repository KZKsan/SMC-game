#>sco:player/inventory_histories/pop/
#@api
function marker_storage/get
execute if data entity @e[predicate=marker_storage,limit=1] data.inventory_histories[0] run function sco:player/inventory_histories/pop/load_data

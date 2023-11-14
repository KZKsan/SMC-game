#>sco:player/inventory_histories/pop/load_data
#@within sco:player/inventory_histories/pop/
data modify storage _ _ set from entity @e[predicate=marker_storage,limit=1] data.inventory_histories[-1]
data remove entity @e[predicate=marker_storage,limit=1] data.inventory_histories[-1]

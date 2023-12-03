#>marker_storage/get
#@api
data modify storage _ data.UUID set from entity @s UUID
tag @e[predicate=marker_storage] remove target
function minecraft:marker_storage/macro with storage _ data
execute unless entity @e[predicate=marker_storage] positioned 0 0 0 run function marker_storage/create
#tag @s remove Owner

## data get entity @e[predicate=marker_storage,limit=1] data
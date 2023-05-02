#>marker_storage/create
#@wihtin marker_storage/**
summon marker ~ ~ ~ {Tags:["marker_storage","target"]}
scoreboard players operation @e[predicate=marker_storage,limit=1] Owner.0 = @s UUID.0
scoreboard players operation @e[predicate=marker_storage,limit=1] Owner.1 = @s UUID.1
scoreboard players operation @e[predicate=marker_storage,limit=1] Owner.2 = @s UUID.2
scoreboard players operation @e[predicate=marker_storage,limit=1] Owner.3 = @s UUID.3
data modify entity @e[predicate=marker_storage,limit=1] data.Owner set from entity @s UUID
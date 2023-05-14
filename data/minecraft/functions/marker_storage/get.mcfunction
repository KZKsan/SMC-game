#>marker_storage/get
#@api
execute as @s[predicate=!have_uuid_score] run function set_uuid_score
tag @e[tag=Owner] remove Owner
tag @s add Owner
scoreboard players set # _ 0
execute as @e[predicate=marker_storage,limit=1] if score @s Owner.0 = @e[tag=Owner,limit=1] UUID.0 if score @s Owner.1 = @e[tag=Owner,limit=1] UUID.1 if score @s Owner.2 = @e[tag=Owner,limit=1] UUID.2 if score @s Owner.3 = @e[tag=Owner,limit=1] UUID.3 run scoreboard players set # _ 1
execute if score # _ matches 0 run function marker_storage/register
tag @s remove Owner

## data get entity @e[predicate=marker_storage,limit=1] data
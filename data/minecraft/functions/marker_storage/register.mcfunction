#>marker_storage/register
#@within marker_storage/get
#>
#@private
#declare predicate all_marker_storage
tag @e[tag=target] remove target
execute as @e[predicate=all_marker_storage] if score @s Owner.0 = @e[tag=Owner,limit=1] UUID.0 if score @s Owner.1 = @e[tag=Owner,limit=1] UUID.1 if score @s Owner.2 = @e[tag=Owner,limit=1] UUID.2 if score @s Owner.3 = @e[tag=Owner,limit=1] UUID.3 run tag @s add target
execute unless entity @e[predicate=marker_storage] positioned 0 0 0 run function marker_storage/create
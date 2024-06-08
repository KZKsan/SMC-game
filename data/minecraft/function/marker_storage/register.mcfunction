#>marker_storage/register
#@within marker_storage/get
#>
#@private
#declare predicate all_marker_storage
tag @e[tag=target] remove target
execute as @e[predicate=all_marker_storage] if score @s Owner.0 = @p[tag=Owner] UUID.0 if score @s Owner.1 = @p[tag=Owner] UUID.1 if score @s Owner.2 = @p[tag=Owner] UUID.2 if score @s Owner.3 = @p[tag=Owner] UUID.3 run tag @s add target
execute unless entity @e[predicate=marker_storage] positioned 0 0 0 run function marker_storage/create
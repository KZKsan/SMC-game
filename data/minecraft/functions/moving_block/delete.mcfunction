#>minecraft:moving_block/delete
#@api
execute if entity @s[predicate=moving_block/display] at @s run teleport @s ~ ~-150 ~
execute if entity @s[predicate=moving_block/display] on passengers run kill
execute if entity @s[predicate=moving_block/display] run kill
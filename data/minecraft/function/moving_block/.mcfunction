#>moving_block/
#@within tick
execute if entity @e[predicate=moving_block/tile,limit=1] run function moving_block/tile/effect
execute as @e[predicate=moving_block/display] at @s run function minecraft:moving_block/move/

tag @a[tag=moving_block.moved] remove moving_block.moved
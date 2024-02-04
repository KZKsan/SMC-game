#>minecraft:moving_block/move/
#@public
execute on passengers run tag @s add passenger
execute positioned ~-0.5 ~0.35 ~-0.5 run tag @a[tag=!moving_block.moved,dx=0.0,dy=0.0,dz=0.0] add moving_block.moving
execute as @a[tag=moving_block.moving] at @s rotated as @e[tag=passenger] positioned ^ ^ ^0.1 run teleport @s ~ ~ ~
execute on passengers rotated as @s positioned ^ ^ ^0.1 on vehicle run teleport @s ~ ~ ~
tag @a[tag=moving_block.moving] add moving_block.moved
tag @a[tag=moving_block.moving] remove moving_block.moving
execute on passengers run tag @s remove passenger
#>sco_items:item_functions/cluster_bomb_arrow/set_data
#@within sco_items:main
data modify entity @s Color set value -1
data modify entity @s damage set value 0.0000001f
execute store result entity @s Motion[0] double 0.00008 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00008 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00008 run data get entity @s Motion[2] 10000
damage @s 0.000001
tag @s add item_function.cluster_bomb_arrow
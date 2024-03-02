#>sco_items:item_functions/no_gravity_arrow/set_data
#@within sco_items:main
data modify entity @s NoGravity set value 1b
data modify entity @s Color set value -1
execute store result entity @s Motion[0] double 0.00008 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00008 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00008 run data get entity @s Motion[2] 10000
damage @s 0.000001
tag @s add item_function.no_gravity_arrow
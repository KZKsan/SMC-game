#>sco_items:item_functions/small_arrow/set_data
#@within sco_items:main
#data modify entity @s Color set value -1
execute store result entity @s Motion[0] double 0.0000016 run data get entity @s Motion[0] 1000000
execute store result entity @s Motion[1] double 0.0000016 run data get entity @s Motion[1] 1000000
execute store result entity @s Motion[2] double 0.0000016 run data get entity @s Motion[2] 1000000
execute store result entity @s damage double 0.00002 run data get entity @s damage 10000
damage @s 0.000001
tag @s add item_function.small_arrow
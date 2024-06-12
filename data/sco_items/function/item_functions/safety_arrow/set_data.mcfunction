#>sco_items:item_functions/safety_arrow/set_data
#@within sco_items:main
data modify entity @s damage set value 0.000001d
data modify entity @s Owner set value [I;0,0,0,0]
damage @s 0.000001
#tag @s add item_function.safety_arrow
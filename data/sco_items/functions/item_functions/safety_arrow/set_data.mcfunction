#>sco_items:item_functions/safety_arrow/set_data
#@within sco_items:main
data modify entity @s damage set value -1d
data remove entity @s Owner
damage @s 0.000001
#tag @s add item_function.safety_arrow
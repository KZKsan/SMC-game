#>sco_items:item_functions/set_p_vector/data_fetch/generic
#@within tag/function sco_items:item_functions/set_p_vector/**
data remove storage sco_items:data data_fetch
data modify storage sco_items:data data_fetch set from entity @s Item.components."minecraft:custom_data".item_functions.set_p_vector

#>sco_items:item_functions/set_p_vector/
#@within tag/function sco_items:item_functions/set_p_vector/**
execute if data storage sco_items:data set_p_vector{type:"multiply"} run function sco_items:item_functions/set_p_vector/operation/multiply with storage sco_items:data set_p_vector
execute if data storage sco_items:data set_p_vector{type:"set"} run function sco_items:item_functions/set_p_vector/operation/set/ with storage sco_items:data set_p_vector
tag @s add item_function.set_p_vector.already
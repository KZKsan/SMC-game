#>sco_items:item_functions/set_p_vector/
#@within tag/function sco_items:item_functions/set_p_vector/**
execute if data storage _ data_fetch{type:"multiply"} run function sco_items:item_functions/set_p_vector/operation/multiply with storage _ data_fetch
execute if data storage _ data_fetch{type:"set"} run function sco_items:item_functions/set_p_vector/operation/set/ with storage _ data_fetch
tag @s add already
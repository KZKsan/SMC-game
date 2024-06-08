#>sco_items:item_functions/set_p_vector/operation/set/
#@within sco_items:item_functions/set_p_vector/**
tag @s add set_vector
$execute on origin rotated as @s positioned 0.0 0.0 0.0 positioned $(vector) summon marker run function sco_items:item_functions/set_p_vector/operation/set/set_vector
tag @s remove set_vector
damage @s 0.000001
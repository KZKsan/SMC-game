#>sco_items:item_functions/set_p_vector/operation/multiply
#@within sco_items:item_functions/set_p_vector/**

$execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] $(x)
$execute store result entity @s Motion[1] double 0.0001 run data get entity @s Motion[1] $(y)
$execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] $(z)

damage @s 0.000001
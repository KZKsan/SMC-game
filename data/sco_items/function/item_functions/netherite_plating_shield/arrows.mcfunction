#>sco_items:item_functions/netherite_plating_shield/arrows
#@within sco_items:item_functions/netherite_plating_shield/guard
execute store result entity @s PierceLevel byte 1 run data get entity @s PierceLevel 0.999999
tag @s add item_function.netherite_plating_shield.arrow_hit
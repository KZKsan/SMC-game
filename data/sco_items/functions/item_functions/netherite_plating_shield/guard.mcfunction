#>sco_items:item_functions/netherite_plating_shield/guard
#@within advancement sco_items:item_functions/netherite_plating_shield/guard

execute anchored eyes positioned ^ ^-0.5 ^1 as @e[type=#arrows,distance=..4,tag=!item_function.netherite_plating_shield.arrow_hit] run function sco_items:item_functions/netherite_plating_shield/arrows

advancement revoke @s only sco_items:item_functions/netherite_plating_shield/guard
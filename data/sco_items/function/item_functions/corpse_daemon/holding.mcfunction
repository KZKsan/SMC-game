#>sco_items:item_functions/corpse_daemon/holding
#@within advancement sco_items:item_functions/corpse_daemon/holding
execute unless predicate sco_items:item_functions/have_undead_items run effect give @s[tag=!rg.item_function_limit,nbt=!{active_effects:[{id:"minecraft:wither"}]}] wither 1 3
advancement revoke @s only sco_items:item_functions/corpse_daemon/holding
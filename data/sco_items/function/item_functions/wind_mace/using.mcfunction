#>sco_items:item_functions/wind_mace/using
#@within advancement sco_items:item_functions/wind_mace/using
execute unless entity @s[scores={wind_mace.cooldown=1..}] run function sco_items:item_functions/wind_mace/wind/
advancement revoke @s only sco_items:item_functions/wind_mace/using
#>sco_items:item_functions/lightning_hammer/holding
#@within advancement sco_items:item_functions/lightning_hammer/holding
advancement revoke @s only sco_items:item_functions/lightning_hammer/holding
scoreboard players add @s[tag=!rg_item_function_limit] lightning_hammer_holding_time 1
execute if entity @s[tag=!rg_item_function_limit,scores={lightning_hammer_holding_time=120..}] run function sco_items:item_functions/lightning_hammer/summon_lightning
execute if entity @s[tag=rg_item_function_limit,scores={lightning_hammer_holding_time=1..}] run function sco_items:item_functions/lightning_hammer/deholding
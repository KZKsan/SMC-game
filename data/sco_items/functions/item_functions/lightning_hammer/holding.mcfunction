#>sco_items:item_functions/lightning_hammer/holding
#@within advancement sco_items:item_functions/lightning_hammer/holding
scoreboard players add @s[tag=!rg.item_function_limit,scores={lightning_hammer_holding_time=0..}] lightning_hammer_holding_time 1
execute if entity @s[tag=!rg.item_function_limit,scores={lightning_hammer_holding_time=60..}] run function sco_items:item_functions/lightning_hammer/summon_lightning
execute if entity @s[tag=rg.item_function_limit,scores={lightning_hammer_holding_time=1..}] run function sco_items:item_functions/lightning_hammer/deholding
advancement revoke @s only sco_items:item_functions/lightning_hammer/holding
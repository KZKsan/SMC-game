#>sco_items:item_functions/lightning_hammer/holding
#@within advancement sco_items:item_functions/lightning_hammer/holding
scoreboard players add @s[tag=!rg.item_function_limit,scores={lightning_hammer_holding_time=0..}] lightning_hammer_holding_time 1
execute if score @s[tag=!rg.item_function_limit] lightning_hammer_holding_time >= #lightning_hammer.charge_time sco_items.configs run function sco_items:item_functions/lightning_hammer/summon_lightning
execute if entity @s[tag=rg.item_function_limit,scores={lightning_hammer_holding_time=1..}] run function sco_items:item_functions/lightning_hammer/deholding
function sco_items:item_functions/lightning_hammer/actionbar/flag
advancement revoke @s only sco_items:item_functions/lightning_hammer/holding
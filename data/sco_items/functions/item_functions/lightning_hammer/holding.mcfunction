#>sco_items:item_functions/lightning_hammer/holding
#@within advancement sco_items:item_functions/lightning_hammer/holding
advancement revoke @s only sco_items:item_functions/lightning_hammer/holding
scoreboard players add @s lightning_hammer_holding_time 1
execute if entity @s[scores={lightning_hammer_holding_time=120..}] run function sco_items:item_functions/lightning_hammer/summon_lightning
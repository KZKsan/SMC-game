#>sco_items:item_functions/lightning_hammer/actionbar/
#@within sco_items:item_functions/lightning_hammer/holding
function sco_items:actionbar/set_str
execute if entity @s[scores={lightning_hammer_holding_time=..-1}] run function sco_items:item_functions/lightning_hammer/actionbar/cooltime
execute if entity @s[scores={lightning_hammer_holding_time=0..}] run function sco_items:item_functions/lightning_hammer/actionbar/charge_time
#>sco_items:item_functions/corpse_daemon/cooldown/
#@within sco_items:main
execute if score @s[tag=!rg.item_function_limit] corpse_daemon.cooldown >= #corpse_daemon.stop_effect_time sco_items.configs run function sco_items:item_functions/corpse_daemon/cooldown/effects 
scoreboard players remove @s corpse_daemon.cooldown 1
function sco_items:item_functions/corpse_daemon/actionbar/flag
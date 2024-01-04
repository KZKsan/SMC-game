#>sco_items:item_functions/hidden_cover/holding
#@within advancement sco_items:item_functions/hidden_cover/holding
execute if entity @s[tag=!hidden_cover.lock] run function sco_items:item_functions/hidden_cover/run
execute if entity @s[gamemode=!spectator] run function sco_items:item_functions/hidden_cover/actionbar/
advancement revoke @s only sco_items:item_functions/hidden_cover/holding
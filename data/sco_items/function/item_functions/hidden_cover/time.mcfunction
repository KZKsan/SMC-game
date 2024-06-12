#>sco_items:item_functions/hidden_cover/time
#@within advancement sco_items:item_functions/hidden_cover/time
scoreboard players remove @s hidden_cover.time 2
scoreboard players remove @s[tag=hidden_cover.lock] hidden_cover.time 3
execute if entity @s[scores={hidden_cover.time=..0}] run function sco_items:item_functions/hidden_cover/reset
advancement revoke @s only sco_items:item_functions/hidden_cover/time
#>sco_items:trigger/death
#@within tag/function sco_items:trigger/death
#@within advancement sco_items:trigger/death

function #sco_items:trigger/death
scoreboard players set @s trigger_death 0
advancement revoke @s only sco_items:trigger/death
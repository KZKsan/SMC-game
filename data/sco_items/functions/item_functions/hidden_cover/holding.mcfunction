#>sco_items:item_functions/hidden_cover/holding
#
execute if entity @s[predicate=sneak,tag=!hidden_cover.run,gamemode=!spectator] run function sco_items:item_functions/hidden_cover/leaves/set
tag @s[predicate=sneak,tag=!hidden_cover.run,gamemode=!spectator] add hidden_cover.run
advancement revoke @s only sco_items:item_functions/hidden_cover/holding
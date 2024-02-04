#>sco_items:item_functions/hidden_cover/run
#@within sco_items:item_functions/hidden_cover/holding
execute if entity @s[predicate=sneak,tag=!hidden_cover.run,gamemode=!spectator] run function sco_items:item_functions/hidden_cover/leaves/set
tag @s[predicate=sneak,tag=!hidden_cover.run,gamemode=!spectator] add hidden_cover.run
scoreboard players add @s[predicate=sneak,gamemode=!spectator] hidden_cover.time 5
tag @s[predicate=sneak,scores={hidden_cover.time=1500..}] add hidden_cover.lock
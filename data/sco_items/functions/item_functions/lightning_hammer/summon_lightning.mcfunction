#>sco_items:item_functions/lightning_hammer/summon_lightning
#@within sco_items:item_functions/lightning_hammer/holding
execute if entity @s[team=red] at @r[predicate=gamemode/as,limit=1,team=blue,distance=..20] summon lightning_bolt run function sco_items:item_functions/lightning_hammer/particle
execute if entity @s[team=blue] at @r[predicate=gamemode/as,limit=1,team=red,distance=..20] summon lightning_bolt run function sco_items:item_functions/lightning_hammer/particle
scoreboard players set @s lightning_hammer_holding_time 0
#>sco_items:item_functions/lightning_hammer/summon_lightning
#@within sco_items:item_functions/lightning_hammer/holding
scoreboard players set # _ 0
tag @s add origin
execute if score # _ matches 0 if entity @s[team=red] at @r[predicate=gamemode/as,limit=1,team=blue,distance=..20,tag=!rg.item_function_limit] summon lightning_bolt run function sco_items:item_functions/lightning_hammer/particle
execute if score # _ matches 0 if entity @s[team=blue] at @r[predicate=gamemode/as,limit=1,team=red,distance=..20,tag=!rg.item_function_limit] summon lightning_bolt run function sco_items:item_functions/lightning_hammer/particle
execute if score # _ matches 0 if entity @s[team=mode.practice] at @e[sort=random,tag=sandbag,limit=1,distance=..20] summon lightning_bolt run function sco_items:item_functions/lightning_hammer/particle
execute if score # _ matches 0 if entity @s[team=mode.pvp] at @r[predicate=gamemode/as,limit=1,team=mode.pvp,tag=!origin,distance=..20] summon lightning_bolt run function sco_items:item_functions/lightning_hammer/particle
tag @s remove origin
execute if score # _ matches 1 run scoreboard players operation @s lightning_hammer_holding_time = #lightning_hammer.set_cooltime sco_items.configs
execute if score # _ matches 0 run scoreboard players set @s lightning_hammer_holding_time 0
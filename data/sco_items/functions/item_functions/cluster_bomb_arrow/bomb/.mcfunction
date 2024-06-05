#>sco_items:item_functions/cluster_bomb_arrow/bomb/
#@within sco_items:main
scoreboard players add @s age 1

execute if score @s age matches 100 run function sco_items:item_functions/cluster_bomb_arrow/bomb/explode

execute if score @s age matches 100.. on passengers run kill
execute if score @s age matches 100.. run kill
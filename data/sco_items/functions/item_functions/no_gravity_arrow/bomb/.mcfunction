#>sco_items:item_functions/no_gravity_arrow/bomb/
#@within sco_items:main
scoreboard players add @s age 1

execute if score @s age matches 20 run function sco_items:item_functions/no_gravity_arrow/bomb/explode

execute if score @s age matches 20.. on passengers run kill
execute if score @s age matches 20.. run kill
#>enderface:gui/processing/join_the_game/practice
#@within enderface:gui/processing/join_the_game/
team join mode.practice @s
function sco:player/inventory_histories/save
clear
effect clear @s
function sco_items:kit/default
tag @s add rg.drop_item
teleport @s 70 -59 10 0 0
execute positioned as @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 1
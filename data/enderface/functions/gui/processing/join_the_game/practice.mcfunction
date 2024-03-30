#>enderface:gui/processing/join_the_game/practice
#@within enderface:gui/processing/join_the_game/
team join mode.practice @s
function sco:player/inventory_histories/save
data modify storage p-storage _[0].data.inventory_histories[-1].name set value "defalut"
clear
effect clear @s
function sco_items:kit/default
tag @s add rg.drop_item
tag @s add rg.food_limit
teleport @s 344 -50 -135 0 0
function p-storage/get
data modify storage p-storage _[0].data.respawn set value {pos:"344 -50 -135 0 0"}
execute positioned as @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 1
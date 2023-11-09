#>sco:player/retune_lobby
#@internal
clear @s
team leave @s
tag @s remove join_red
tag @s remove join_blue
tag @s remove rg_drop_item
tag @s remove rg_food_limit
tag @s remove rg_shot_projectiles
execute unless score last gameID matches -2147483648..2147483647 run scoreboard players reset @s gameID
execute if score last gameID matches -2147483648..2147483647 run scoreboard players operation @s gameID = last gameID
function sco:tp/lobby
gamemode adventure
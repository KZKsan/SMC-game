#>sco:player/retune_lobby
#@internal
function sco:player/inventory_histories/pop/
team leave @s
tag @s remove join_red
tag @s remove join_blue
tag @s remove rg_drop_item
tag @s remove rg_food_limit
tag @s remove rg_shot_projectiles
tag @s remove rg_item_function_limit
execute unless score last gameID matches -2147483648..2147483647 run scoreboard players reset @s gameID
execute if score last gameID matches -2147483648..2147483647 run scoreboard players operation @s gameID = last gameID
function sco:tp/lobby
gamemode adventure
function sco:player/team/remove_team_tag
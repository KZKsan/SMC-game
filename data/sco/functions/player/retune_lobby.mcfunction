#>sco:player/retune_lobby
#@internal
function sco:player/inventory_histories/pop/
team leave @s
effect clear @s
tag @s remove join_red
tag @s remove join_blue
tag @s remove rg.drop_item
tag @s remove rg.food_limit
tag @s remove rg.shot_projectiles
tag @s remove rg.item_function_limit
tag @s remove rg.block_area
execute unless score last gameID matches -2147483648..2147483647 run scoreboard players reset @s gameID
execute if score last gameID matches -2147483648..2147483647 run scoreboard players operation @s gameID = last gameID
scoreboard players reset @s processID

function sco:tp/lobby
gamemode adventure
function sco:player/team/remove_team_tag
function sco:regine/block_area/reset_score
function sco:player/result/reset_scores/single
function sco:regine/penalty_area/reset_flag
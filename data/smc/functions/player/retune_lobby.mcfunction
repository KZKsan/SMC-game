#>smc:player/retune_lobby
#@within smc:process/0
clear @s
team leave @s
execute unless score last gameID matches -2147483648..2147483647 run scoreboard players reset @s gameID
execute if score last gameID matches -2147483648..2147483647 run scoreboard players operation @s gameID = last gameID
function smc:tp/lobby
gamemode adventure
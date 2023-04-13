#>smc:player/set_spectator
#@within smc:process/**

clear @s
team leave @s
scoreboard players operation @s gameID = last gameID
function smc:tp/lobby
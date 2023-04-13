#>sco:player/set_spectator
#@within sco:process/**

clear @s
team leave @s
scoreboard players operation @s gameID = last gameID
function sco:tp/lobby
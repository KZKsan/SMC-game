#>sco:process/domination/respawn/spectator
#@within sco:process/domination/230
function sco:regine/penalty_area/reset_flag/single
gamemode spectator
function sco:tp/respawn/
scoreboard players operation @s respawn.wait_time = @s respawn.fixed
scoreboard players operation @s respawn.wait_time += @s respawn.penalty
tag @s add rg.block_area
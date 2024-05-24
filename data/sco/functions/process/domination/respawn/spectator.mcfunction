#>sco:process/domination/respawn/spectator
#@within sco:process/domination/230
function sco:regine/penalty_area/reset_flag/single
gamemode spectator
function sco:tp/respawn/
function sco:player/respawn/penalty/math
scoreboard players operation @s respawn.wait_time = @s respawn.fixed
scoreboard players operation @s respawn.wait_time += @s respawn.penalty
execute if score @s respawn.wait_time > #respawn.max game run scoreboard players operation @s respawn.wait_time = #respawn.max game
tag @s add rg.block_area
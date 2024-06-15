#>sco:process/domination/230/runtime_10
#@within sco:process/domination/230
execute as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1},tag=!rg.penalty_respawn] run function sco:tp/respawn/
execute as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1},tag=rg.penalty_respawn] run function sco:process/domination/respawn/spectator
execute as @a[predicate=sco:team_join,team=!spectator,scores={respawn.wait_time=1..},tag=rg.penalty_respawn] at @s run function sco:process/domination/respawn/wait_time
function sco:process/domination/game_flag/progress/
execute if score #flag game matches 0 run function sco:process/domination/game_flag/winner/progress_completed
#execute if score #flag game matches 0 run function sco:process/domination/game_flag/winner/no_player
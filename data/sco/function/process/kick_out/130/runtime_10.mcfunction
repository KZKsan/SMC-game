#>sco:process/kick_out/130/runtime_10
#@within sco:process/kick_out/130
execute as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1}] run function sco:process/kick_out/respawn/normal
execute if score #score.kick_out.flag.scored game matches 1..3 run scoreboard players add #score.kick_out.flag.scored game 1
execute if score #score.kick_out.flag.scored game matches 4 run function sco:process/kick_out/game_flag/score/input
function sco:process/kick_out/game_flag/winner/scored
execute if score #flag game matches 0 run function sco:process/kick_out/game_flag/winner/no_player
#>sco:process/kick_out/game_flag/score/red
#@within sco:process/kick_out/**
scoreboard players add #red_score game 1
execute if score #blue_score game matches 1.. run scoreboard players remove #blue_score game 1
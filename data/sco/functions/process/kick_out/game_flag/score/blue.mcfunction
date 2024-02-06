#>sco:process/kick_out/game_flag/score/blue
#@within sco:process/kick_out/**
scoreboard players add #blue_score game 1
execute if score #red_score game matches 1.. run scoreboard players remove #red_score game 1
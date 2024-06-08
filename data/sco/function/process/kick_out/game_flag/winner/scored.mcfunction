#>sco:process/kick_out/game_flag/winner/scored
#@within function sco:process/kick_out/**
#>
#@within sco:process/kick_out/**
#declare score_holder #red_score
#declare score_holder #blue_score
execute if score #red_score game matches 5.. run scoreboard players set #flag game 1
execute if score #blue_score game matches 5.. run scoreboard players set #flag game 2
execute if score #flag game matches 1 run function sco:process/game_flag/winner/red
execute if score #flag game matches 2 run function sco:process/game_flag/winner/blue
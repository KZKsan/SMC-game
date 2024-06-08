#>sco:process/domination/game_flag/winner/progress_completed
#@within sco:process/domination/230
execute if score #domination.red_progress game >= #domination.progress_time game run scoreboard players set #flag game 1
execute if score #domination.blue_progress game >= #domination.progress_time game run scoreboard players set #flag game 2
execute if score #flag game matches 1 run function sco:process/game_flag/winner/red
execute if score #flag game matches 2 run function sco:process/game_flag/winner/blue
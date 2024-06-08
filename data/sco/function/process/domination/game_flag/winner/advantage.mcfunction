#>sco:process/domination/game_flag/winner/advantage
#@within sco:process/domination/230
execute if score #domination.advantage game matches 0 run scoreboard players set #flag game 1
execute if score #domination.advantage game matches 1 run scoreboard players set #flag game 2
execute if score #flag game matches 1 run function sco:process/game_flag/winner/red
execute if score #flag game matches 2 run function sco:process/game_flag/winner/blue
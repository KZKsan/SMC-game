#>sco:process/escalation/game_flag/winner/
#@within function sco:process/escalation/**
scoreboard players set #runtime game 0
scoreboard players set #process game 441
execute if score #red_score game matches 3.. run scoreboard players set #flag game 3
execute if score #blue_score game matches 3.. run scoreboard players set #flag game 4
execute if score #flag game matches 3 run function sco:process/game_flag/winner/red
execute if score #flag game matches 4 run function sco:process/game_flag/winner/blue
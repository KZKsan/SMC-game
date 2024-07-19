#>sco:process/escalation/game_flag/winner/
#@within function sco:process/escalation/**
execute unless entity @a[team=blue,predicate=gamemode/as] run scoreboard players set #flag game 1
execute unless entity @a[team=red,predicate=gamemode/as] run scoreboard players set #flag game 2
execute if score #flag game matches 1 run function sco:process/escalation/game_flag/score/red
execute if score #flag game matches 2 run function sco:process/escalation/game_flag/score/blue
execute if score #flag game matches 1..2 run function sco:process/escalation/game_flag/winner/game
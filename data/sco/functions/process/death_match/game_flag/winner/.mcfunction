#>sco:process/death_match/game_flag/winner/
#@within function sco:process/death_match/**
execute unless entity @a[team=blue,predicate=gamemode/as] run scoreboard players set #flag game 1
execute unless entity @a[team=red,predicate=gamemode/as] run scoreboard players set #flag game 2
execute if score #flag game matches 1 run function sco:process/game_flag/winner/red
execute if score #flag game matches 2 run function sco:process/game_flag/winner/blue
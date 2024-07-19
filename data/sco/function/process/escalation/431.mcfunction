#>sco:process/escalation/431
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score #runtime game matches 0..6 run scoreboard players add #runtime game 1
#初期化
execute if score #runtime game matches 1 run function sco:process/escalation/431/runtime_1
execute if score #runtime game matches 1.. run function sco:process/escalation/431/runtime_1__
execute if score #runtime game matches 5 run function sco:process/escalation/431/runtime_5


#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg.drop_item,team=!spectator] add rg.drop_item
tag @a[predicate=sco:team_join,tag=rg.shot_projectiles,team=!spectator] remove rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
tag @a[predicate=sco:team_join,tag=rg.item_function_limit,team=!spectator] remove rg.item_function_limit
function sco:process/penalty_area/sudden_death

#観戦
execute as @a[team=spectator,tag=!spectator] run function sco:process/spectator/

#プロセス終了
execute if score #runtime game matches 6 run function sco:process/escalation/game_flag/winner/
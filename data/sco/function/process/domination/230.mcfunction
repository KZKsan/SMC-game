#>sco:process/domination/230
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score #runtime game matches ..9 run scoreboard players add #runtime game 1
#初期化
execute if score #runtime game matches 1 run function sco:process/domination/230/runtime_1
execute if score #runtime game matches 5 run function sco:process/domination/230/runtime_5

#player_count
execute if score #runtime game matches 1.. run function sco:player/team/team_info/domination/

#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg.drop_item,team=!spectator] add rg.drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
function sco:process/penalty_area/stage


#観戦
execute as @a[team=spectator,tag=!spectator] run function sco:process/spectator/


#ステージギミック
execute if score #runtime game matches 3 run function sco:process/domination/230/runtime_3
execute if score #runtime game matches 4.. run function sco:process/domination/230/runtime_4__
execute if score #mst_time timer matches 010000 run function sco:messeges/1minutes

#プロセス終了
execute if score #runtime game matches 10 run function sco:process/domination/230/runtime_10
execute if score #score_time game matches 1.. run scoreboard players remove #score_time game 1

#tellraw @a {"score":{"name": "#mst_time","objective": "timer"}}
#execute if score #mst_time timer matches -109 run function 
execute if score #mst_time timer matches -109 run function sco:process/domination/game_flag/winner/top_progress
execute if score #mst_time timer matches -109 if score #flag game matches 0 run function sco:process/domination/game_flag/winner/advantage
execute if score #mst_time timer matches -110 run scoreboard players set #process game 231
execute if score #mst_time timer matches -110 run scoreboard players set #runtime game 0

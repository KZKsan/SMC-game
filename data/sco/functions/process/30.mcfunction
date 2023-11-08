#>sco:process/30
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score runtime game < $game game run scoreboard players add runtime game 1
#初期化
execute if score runtime game matches 1 run function sco:process/game_reset
execute if score runtime game matches 5 run tellraw @a "開始"
execute if score runtime game matches 1 run gamemode adventure @a[predicate=sco:team_join,team=!spectator]

#切断処理
execute as @a[predicate=sco:team_join,team=!spectator,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg_drop_item,team=!spectator] add rg_drop_item
tag @a[predicate=sco:team_join,tag=rg_shot_projectiles,team=!spectator] remove rg_shot_projectiles

#テレポート
execute if score runtime game matches 1 run function sco:tp/stage/macro/all_player with storage sco:data

#ステージギミック
execute if score runtime game matches 2 if data storage sco:data options{reset:true} run function sco:stage_data/reset
execute if score runtime game matches 3.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#プロセス終了
execute if score runtime game matches 10.. as @a[predicate=sco:team_join,team=!spectator] run function sco:player/respawn/
execute if score runtime game matches 10.. run function sco:process/game_flag/winner/

#さどんです
execute if score runtime game >= $game game run scoreboard players set process game 31
execute if score runtime game >= $game game run scoreboard players set runtime game 0
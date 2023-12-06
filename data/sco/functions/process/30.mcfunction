#>sco:process/30
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score runtime game < $game game run scoreboard players add runtime game 1
#初期化
execute if score runtime game matches 1 run function sco:process/game_reset
execute if score runtime game matches 5 run tellraw @a {"text": "対戦開始！4分後にサドンデスモードになります。","bold": true}
execute if score runtime game matches 1 run gamemode adventure @a[predicate=sco:team_join,team=!spectator]
execute if score runtime game matches 1 run function sco:player/result/reset_scores/all
execute if score runtime game matches 1 run effect give @a regeneration 5 100
#player_count
execute if score runtime game matches 1.. run function sco:player/team/team_info/player_count/


#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg_drop_item,team=!spectator] add rg_drop_item
tag @a[predicate=sco:team_join,tag=rg_shot_projectiles,team=!spectator] remove rg_shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg_food_limit] add rg_food_limit
tag @a[predicate=sco:team_join,tag=rg_item_function_limit,team=!spectator] remove rg_item_function_limit

#テレポート
execute if score runtime game matches 1 run function sco:tp/stage/macro/all_player with storage sco:data
execute if score runtime game matches 1 run data modify storage sco:data regine_area_new set from storage sco:data regine_area.stage
execute if score runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/stage/macro/single_player with storage sco:data
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg_block_area
tag @a[team=spectator,tag=!spectator] add spectator

#ステージギミック
execute if score runtime game matches 2 if data storage sco:data options{reset:true} run function sco:stage_data/reset
execute if score runtime game matches 3.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#プロセス終了
execute if score runtime game matches 10.. as @a[predicate=sco:team_join,team=!spectator] run function sco:player/respawn/
execute if score runtime game matches 10.. as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg_block_area] run function sco:regine/block_area/set_score
execute if score runtime game matches 10.. run tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg_block_area] add rg_block_area
execute if score runtime game matches 10.. run function sco:process/game_flag/winner/

#さどんです
execute if score runtime game >= $game game run scoreboard players set process game 31
execute if score runtime game >= $game game run scoreboard players set runtime game 0
#>sco:process/domination/230
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score #runtime game matches ..9 run scoreboard players add #runtime game 1
#初期化
execute if score #runtime game matches 1 run function sco:process/domination/game_reset
execute if score #runtime game matches 5 run tellraw @a[predicate=sco:team_join] [{"text": "対戦開始！","bold": true},{"text":"ショップ内のテレポーターからステージに移動できます。","bold": true}]
execute if score #runtime game matches 1 run gamemode adventure @a[predicate=sco:team_join,team=!spectator]
execute if score #runtime game matches 1 run function sco:player/result/reset_scores/all
execute if score #runtime game matches 1 as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute if score #runtime game matches 1 as @a[team=red] run function sco:tp/respawn/save {name:"shop_red"}
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:tp/respawn/save {name:"stage_red"}
execute if score #runtime game matches 1 as @a[team=blue] run function sco:tp/respawn/save {name:"shop_blue"}
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator] store result score @s respawn.fixed run data get storage sco:data domination.respawn.fixed
#player_count
execute if score #runtime game matches 1 run function sco:player/team/team_info/domination/set_display
execute if score #runtime game matches 1.. run function sco:player/team/team_info/domination/



#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg.drop_item,team=!spectator] add rg.drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
execute if score #runtime game matches 1 run tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.barrier_effects] add rg.barrier_effects
function sco:process/penalty_area/stage


#テレポート
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:tp/respawn/
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/save {name:"stage_red"}
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg.block_area
tag @a[team=spectator,tag=!spectator] add spectator
execute if score #runtime game matches 5 as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1


#ステージギミック
execute if score #runtime game matches 3 run function sco:stage_data/stage_object/set_match
execute if score #runtime game matches 3 if data storage sco:data options{reset:true} run function sco:stage_data/reset
execute if score #runtime game matches 4.. if entity @e[tag=sco-object,limit=1] run function sco:stage_data/stage_object/
execute if score #runtime game matches 4.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick
execute if score #mst_time timer matches 010000 run function sco:messeges/1minutes

#ドミネーション用のオブジェクト
execute if score #runtime game matches 3 run function sco:process/object/teleport_point/set/
execute if score #runtime game matches 3 run function sco:process/domination/object/set
execute if score #runtime game matches 4.. as @e[type=interaction,tag=teleport_point] run function sco:process/object/teleport_point/
execute if score #runtime game matches 4.. run function sco:process/domination/object/main

#プロセス終了
execute if score #runtime game matches 10 as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1},tag=!rg.penalty_respawn] run function sco:tp/respawn/
execute if score #runtime game matches 10 as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1},tag=rg.penalty_respawn] run function sco:process/domination/respawn/spectator
execute if score #runtime game matches 10 as @a[predicate=sco:team_join,team=!spectator,scores={respawn.wait_time=1..},tag=rg.penalty_respawn] at @s run function sco:process/domination/respawn/wait_time
execute if score #runtime game matches 10 run function sco:process/domination/game_flag/progress/
execute if score #runtime game matches 10 if score #flag game matches 0 run function sco:process/domination/game_flag/winner/progress_completed
#execute if score #runtime game matches 10 if score #flag game matches 0 run function sco:process/domination/game_flag/winner/no_player
execute if score #score_time game matches 1.. run scoreboard players remove #score_time game 1

tellraw @a {"score":{"name": "#mst_time","objective": "timer"}}
#execute if score #mst_time timer matches -109 run function 
execute if score #mst_time timer matches -109 run function sco:process/domination/game_flag/winner/top_progress
execute if score #mst_time timer matches -109 if score #flag game matches 0 run function sco:process/domination/game_flag/winner/advantage
execute if score #mst_time timer matches -110 run scoreboard players set #process game 231
execute if score #mst_time timer matches -110 run scoreboard players set #runtime game 0

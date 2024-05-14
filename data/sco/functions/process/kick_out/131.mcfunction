#>sco:process/kick_out/131
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score #runtime game matches 0..6 run scoreboard players add #runtime game 1
#初期化
execute if score #runtime game matches 1 run function sco:process/death_match/game_reset
execute if score #runtime game matches 5 run tellraw @a[predicate=sco:team_join] {"text": "サドンデスモード開始！","bold": true}
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute if score #runtime game matches 1.. as @a[team=spectator,predicate=!sco:regine/block_area/scores] run function sco:regine/block_area/reset_score
execute if score #runtime game matches 1 as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"sudden_death_red"}
execute if score #runtime game matches 1 as @a[team=blue] run function sco:tp/respawn/save {name:"sudden_death_blue"}
#player_count
execute if score #runtime game matches 1.. run function sco:player/team/team_info/team_score/

#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg.drop_item,team=!spectator] add rg.drop_item
tag @a[predicate=sco:team_join,tag=rg.shot_projectiles,team=!spectator] remove rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
tag @a[predicate=sco:team_join,tag=rg.item_function_limit,team=!spectator] remove rg.item_function_limit
function sco:process/penalty_area/sudden_death


#テレポート
execute if score #runtime game matches 1.. as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1}] run function sco:process/kick_out/respawn/sudden_death
execute if score #runtime game matches 1 as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/save {name:"sudden_death_red"}
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg.block_area
tag @a[team=spectator,tag=!spectator] add spectator
execute if score #runtime game matches 5 as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1
execute if score #runtime game matches 5 if score #score.kick_out.flag.scored game matches 1 run function sco:process/kick_out/game_flag/score/input
execute if score #score_time game matches 1.. run scoreboard players remove #score_time game 1
execute if score #score_time game matches 1 run function sco:player/team/team_info/team_score/empty

#プロセス終了
execute if score #runtime game matches 5.. run function sco:process/kick_out/game_flag/winner/top
execute if score #runtime game matches 5.. if score #flag game matches 0 run function sco:process/kick_out/game_flag/winner/no_player
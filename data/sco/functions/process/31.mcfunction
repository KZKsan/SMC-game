#>sco:process/31
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score #runtime game matches 0..6 run scoreboard players add #runtime game 1
#初期化
execute if score #runtime game matches 1 run function sco:process/game_reset
execute if score #runtime game matches 5 run tellraw @a[predicate=sco:team_join] {"text": "サドンデスモード開始！","bold": true}
execute if score #runtime game matches 1 run data modify storage sco:data regine_area_new set from storage sco:data regine_area.sudden_death
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/set_score
execute if score #runtime game matches 1.. as @a[team=spectator,predicate=!sco:regine/block_area/scores] run function sco:regine/block_area/set_score
#player_count
execute if score #runtime game matches 1.. run function sco:player/team/team_info/player_count/

#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg.drop_item,team=!spectator] add rg.drop_item
tag @a[predicate=sco:team_join,tag=rg.shot_projectiles,team=!spectator] remove rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
tag @a[predicate=sco:team_join,tag=rg.item_function_limit,team=!spectator] remove rg.item_function_limit

#テレポート
execute if score #runtime game matches 1.. as @a[predicate=sco:team_join,team=!spectator] run function sco:player/respawn/
execute if score #runtime game matches 1.. as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] run function sco:regine/block_area/set_score
execute if score #runtime game matches 1.. run tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] add rg.block_area
execute if score #runtime game matches 1 as @a[team=!] run function sco:tp/stage/sudden_death
execute if score #runtime game matches 1 run data modify storage sco:data regine_area_new set from storage sco:data regine_area.sudden_death
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/set_score
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/stage/sudden_death
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg.block_area
tag @a[team=spectator,tag=!spectator] add spectator
execute if score #runtime game matches 5 as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1

#プロセス終了
function sco:process/game_flag/winner/
#>sco:process/31
#@within sco:main
#if (runtime >= 0) runtime++;
execute if score runtime game matches 0..6 run scoreboard players add runtime game 1
#初期化
execute if score runtime game matches 1 run function sco:process/game_reset
execute if score runtime game matches 5 run tellraw @a "サドンデス開始"

#切断処理
execute as @a[predicate=sco:team_join,team=!spectator,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[predicate=sco:team_join,tag=!rg_drop_item,team=!spectator] add rg_drop_item
tag @a[predicate=sco:team_join,tag=rg_shot_projectiles,team=!spectator] remove rg_shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg_food_limit] add rg_food_limit

#テレポート
execute if score runtime game matches 1.. as @a[predicate=sco:team_join,team=!spectator] run function sco:player/respawn/
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/stage/sudden_death
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/stage/sudden_death
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add spectator

#プロセス終了
function sco:process/game_flag/winner/
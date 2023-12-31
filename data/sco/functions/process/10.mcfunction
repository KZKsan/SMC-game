#>sco:process/10
#@within sco:main
#gameIDを設定
function sco:game_id/set

#チーム振り分け
execute as @a[team=random_team] run function sco:player/random_team
tag @a[team=red] add join_red
tag @a[team=blue] add join_blue
experience set @a 0 levels
experience set @a 0 points
gamemode adventure @a[predicate=sco:team_join,team=!spectator]
function sco:player/team/team_info/player_count/set_display
function sco:player/team/team_info/player_count/


execute if data storage sco:data penalty_area_new.penalty run function sco:regine/penalty_area/input_pos/penalty
execute if data storage sco:data penalty_area_new.death run function sco:regine/penalty_area/input_pos/death
function sco:regine/penalty_area/reset_flag/all

#プロセス終了
scoreboard players set #process game 11
scoreboard players set #runtime game 0
data merge storage timer: {time:30,mode:1,name:'{"text":"ステージ下見時間 残り時間 "}'}
execute store result storage timer: time int 1 run scoreboard players get #stage_timer game
function timer:input
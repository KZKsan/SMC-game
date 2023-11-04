#>sco:process/10
#@within sco:main
#gameIDを設定
function sco:game_id/set

#チーム振り分け
execute as @a[team=random_team] run function sco:player/random_team
tag @a[team=red] add join_red
tag @a[team=blue] add join_blue

#プロセス終了
scoreboard players set process game 11
scoreboard players set runtime game 0
data merge storage timer: {time:30,mode:1,name:'{"text":"ステージ見学中 残り時間 "}'}
execute store result storage timer: time int 1 run scoreboard players get $stage_timer game
function timer:input
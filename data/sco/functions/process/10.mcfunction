#>sco:process/10
#@within sco:main
#gameIDを設定
function sco:game_id/set

#チーム振り分け
team join red @a

#プロセス終了
scoreboard players set process game 11
scoreboard players set runtime game 0
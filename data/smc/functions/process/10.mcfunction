#>smc:process/10
#@within smc:main
#gameIDを設定
function smc:game_id/set

#チーム振り分け
team join red @a

#プロセス終了
scoreboard players set process game 11
scoreboard players set runtime game 0
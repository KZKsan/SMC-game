#>sco:process/40
#@within sco:main
scoreboard players add runtime game 1
execute if score runtime game matches 5 run tellraw @a "終了中"
function timer:stop

#ステージギミック
execute if score runtime game matches ..199 if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#ゲーム終了
execute if score runtime game matches 200 run function sco:process/end
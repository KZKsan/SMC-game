#>sco:process/kick_out/game_flag/score/input
#@within sco:process/kick_out/130
#@within sco:process/kick_out/131

scoreboard players operation #score.kick_out.count.math game = #score.kick_out.count.red game
scoreboard players operation #score.kick_out.count.math game -= #score.kick_out.count.blue game


execute if score #score.kick_out.count.math game matches 0 run function sco:process/kick_out/game_flag/score/result/none
execute if score #score.kick_out.count.math game matches 1.. run function sco:process/kick_out/game_flag/score/result/red
execute if score #score.kick_out.count.math game matches ..-1 run function sco:process/kick_out/game_flag/score/result/blue



scoreboard players set #score.kick_out.count.red game 0
scoreboard players set #score.kick_out.count.blue game 0
scoreboard players set #score.kick_out.count.math game 0
scoreboard players set #score.kick_out.flag.scored game 0
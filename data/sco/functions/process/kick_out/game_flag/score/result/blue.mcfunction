#>sco:process/kick_out/game_flag/score/result/blue
#@within sco:process/kick_out/**
execute if score #score_flag game matches ..0 store result storage sco:data team_info.score.rm int 1 store result storage sco:data team_info.score.add int -1 run scoreboard players operation #score_flag game += #score.kick_out.count.math game
execute if score #score_flag game matches 1.. store result storage sco:data team_info.score.rm int 1 store result storage sco:data team_info.score.add int -1 run scoreboard players operation #score_flag game = #score.kick_out.count.math game

execute if score #red_score game matches 0 run data modify storage sco:data team_info.score.rm set value "  "

function sco:player/team/team_info/team_score/scored/blue with storage sco:data team_info.score

scoreboard players operation #blue_score game -= #score.kick_out.count.math game
execute if score #red_score game >= #score.kick_out.count.math game run scoreboard players operation #red_score game += #score.kick_out.count.math game
execute if score #red_score game < #score.kick_out.count.math game run scoreboard players set #red_score game 0
scoreboard players set #score_time game 20

execute as @a[team=red] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 0.5
execute as @a[team=blue] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 1.5
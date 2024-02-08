#>sco:process/kick_out/game_flag/score/red
#@within sco:process/kick_out/**
execute if score #score_flag game matches 0.. store result storage sco:data team_info.score.rm int -1 store result storage sco:data team_info.score.add int 1 run scoreboard players add #score_flag game 1
execute if score #score_flag game matches ..-1 store result storage sco:data team_info.score.rm int -1 store result storage sco:data team_info.score.add int 1 run scoreboard players set #score_flag game 1

execute if score #blue_score game matches 0 run data modify storage sco:data team_info.score.rm set value "  "

function sco:player/team/team_info/team_score/scored/red with storage sco:data team_info.score

scoreboard players add #red_score game 1
execute if score #blue_score game matches 1.. run scoreboard players remove #blue_score game 1
scoreboard players set #score_time game 20

execute as @a[team=red] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 1.5
execute as @a[team=blue] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 0.5
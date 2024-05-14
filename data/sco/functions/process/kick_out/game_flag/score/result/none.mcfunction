#>sco:process/kick_out/game_flag/score/result/none
#@within sco:process/kick_out/game_flag/score/input

execute as @a[predicate=sco:team_join,team=!spectator] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 1.5
execute as @a[predicate=sco:team_join,team=!spectator] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 0.5
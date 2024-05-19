#>sco:process/kick_out/131/runtime_5
#@within sco:process/kick_out/131
tellraw @a[predicate=sco:team_join] {"text": "サドンデスモード開始！","bold": true}
execute as @a[predicate=sco:team_join] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.5 1
execute if score #score.kick_out.flag.scored game matches 1 run function sco:process/kick_out/game_flag/score/input

#>sco:process/kick_out/game_flag/score/blue
#@within sco:process/kick_out/**
scoreboard players add #blue_score game 1
execute if score #red_score game matches 1.. run scoreboard players remove #red_score game 1
scoreboard players set #score_time game 10
scoreboard players display name team_info.display.1 team_info.red [{"text": "   -1    +1   "}]
scoreboard players display name team_info.display.1 team_info.blue [{"text": "   +1    -1   "}]
scoreboard players display name team_info.display.1 team_info.spectator [{"text": "   -1    +1   "}]
execute as @a[team=red] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 0.5
execute as @a[team=blue] at @s run playsound block.note_block.pling record @s ~ ~ ~ 0.6 1.5
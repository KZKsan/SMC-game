#>sco:process/escalation/game_flag/score/blue
#@within function sco:process/escalation/**
execute as @a[predicate=sco:team_join] at @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 2
tellraw @a[predicate=sco:team_join] [{"text": "青blue","color": "blue","bold": true},{"text": "チームの勝利です！","color": "white","bold": true}]
scoreboard players add #blue_score game 1
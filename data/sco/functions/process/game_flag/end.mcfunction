#>sco:process/game_flag/end
#@within sco:process/game_flag/**

execute as @a[predicate=sco:team_join,team=!spectator] run function sco:player/result/
function sco:player/result/mvp/text_mvp
tellraw @a[predicate=sco:team_join] {"text": "対戦終了！10秒後にロビーに戻ります。","color": "white","bold": true}
execute as @a[predicate=sco:team_join] at @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 2

scoreboard players set #runtime game 0
execute if score #process game matches 30..31 run scoreboard players set #process game 40
execute if score #process game matches 130..131 run scoreboard players set #score_time game 3
execute if score #process game matches 130..131 run scoreboard players set #process game 140
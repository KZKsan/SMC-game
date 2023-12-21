#>sco:process/game_flag/end
#@within sco:process/game_flag/**

execute as @a[predicate=sco:team_join,team=!spectator] run function sco:player/result/
tellraw @a[predicate=sco:team_join] {"text": "対戦終了！10秒後にロビーに戻ります。","color": "white","bold": true}


scoreboard players set #runtime game 0
scoreboard players set #process game 40
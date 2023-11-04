#>enderface:gui/processing/game_settings/start_game/
#@within enderface:gui/processing/game_settings/
execute unless score process game matches 0 run tellraw @s {"color": "red","text": "現在ゲームを実行中です。"}
execute if score process game matches 0 run function sco:start/
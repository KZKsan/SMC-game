#>enderface:gui/processing/game_settings/start_game/
#@within enderface:gui/processing/game_settings/
execute unless score process game matches 0 run tellraw @s {"color": "red","text": "現在ゲームを実行中です。"}
execute if score process game matches 0 run data modify storage sco:input stage set from storage sco:config stage
execute if score process game matches 0 if data storage sco:input {stage:"sco_random"} run function enderface:gui/processing/game_settings/start_game/random_stage/
execute if score process game matches 0 run function sco:stage_data/data_fetch with storage sco:input
execute if score process game matches 0 run function sco:start/
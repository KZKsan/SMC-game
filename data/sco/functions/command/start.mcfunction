#>sco:command/start
#@public
execute unless score #process game matches 0 run return run tellraw @s {"color": "red","text": "現在ゲームを実行中です。"}
data modify storage sco:input stage set from storage sco:config stage
execute if data storage sco:input {stage:"sco_random"} run function enderface:gui/processing/game_settings/start_game/random_stage/
function sco:stage_data/data_fetch with storage sco:input
function sco:stage_data/data_input
function sco:start/set_score
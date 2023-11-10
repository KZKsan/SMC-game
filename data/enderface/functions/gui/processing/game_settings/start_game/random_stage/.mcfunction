#>enderface:gui/processing/game_settings/start_game/random_stage/
#@within enderface:gui/processing/game_settings/start_game/
function sco:stage_data/stage/random_tables/death_match
execute store result score $ranmax _ run data get storage sco:data random
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
function random/int_range
execute store result storage enderface:data memory.number int 1 run scoreboard players get $random _
function enderface:gui/processing/game_settings/start_game/random_stage/set_stage with storage enderface:data memory
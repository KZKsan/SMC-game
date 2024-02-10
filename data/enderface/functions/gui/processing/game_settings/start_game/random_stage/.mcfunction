#>enderface:gui/processing/game_settings/start_game/random_stage/
#@within enderface:gui/processing/game_settings/start_game/
execute if data storage sco:config game{rule:"death_match"} run data modify storage _ _ set from storage sco:data stage_tables.death_match
execute if data storage sco:config game{rule:"kick_out"} run data modify storage _ _ set from storage sco:data stage_tables.kick_out
execute store result score $ranmax _ run data get storage _ _
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
function random/int_range
execute store result storage enderface:data memory.number int 1 run scoreboard players get $random _
function enderface:gui/processing/game_settings/start_game/random_stage/set_stage with storage enderface:data memory
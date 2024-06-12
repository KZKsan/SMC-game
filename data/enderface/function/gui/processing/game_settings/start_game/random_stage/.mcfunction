#>enderface:gui/processing/game_settings/start_game/random_stage/
#@within enderface:gui/processing/game_settings/start_game/
execute if data storage sco:config game{rule:"death_match"} unless data storage sco:data stage_tables.random[0] run data modify storage sco:data stage_tables.random set from storage sco:data stage_tables.death_match
execute if data storage sco:config game{rule:"kick_out"} unless data storage sco:data stage_tables.random[0] run data modify storage sco:data stage_tables.random set from storage sco:data stage_tables.kick_out
execute if data storage sco:config game{rule:"domination"} unless data storage sco:data stage_tables.random[0] run data modify storage sco:data stage_tables.random set from storage sco:data stage_tables.domination
execute store result score $ranmax _ run data get storage sco:data stage_tables.random
scoreboard players remove $ranmax _ 1
scoreboard players set $ranmin _ 0
function random/int_range
execute store result storage enderface:data memory.number int 1 run scoreboard players get $random _
function enderface:gui/processing/game_settings/start_game/random_stage/set_stage with storage enderface:data memory
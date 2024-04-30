#>enderface:gui_layoutes/game_settings/stage_select/
#@within enderface:gui_layoutes/load
function enderface:gui_layoutes/generic/set_air

execute if data storage sco:config game{rule:"death_match"} run data modify storage sco:data stage_tables.tmp set from storage sco:data stage_tables.death_match
execute if data storage sco:config game{rule:"kick_out"} run data modify storage sco:data stage_tables.tmp set from storage sco:data stage_tables.kick_out
execute if data storage sco:config game{rule:"death_match"} run data modify storage p-storage _[0].data.sco.rule set value "death_match"
execute if data storage sco:config game{rule:"kick_out"} run data modify storage p-storage _[0].data.sco.rule set value "kick_out"

function enderface:gui_layoutes/game_settings/stage_select/stage_tables/generic

loot replace entity @s enderchest.8 loot sco:stage_icon/sco_random

function enderface:gui_layoutes/game_settings/stage_select/selected_icon/ with storage sco:config

loot replace entity @s enderchest.26 loot enderface:back_gui
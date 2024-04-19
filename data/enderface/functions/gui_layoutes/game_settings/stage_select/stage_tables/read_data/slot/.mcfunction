#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/
#@within enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/
$data modify storage enderface:data data_fetch.name set from storage sco:data stage_tables.tmp[$(index)]
function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/set_icon_data with storage enderface:data data_fetch
$item replace entity @s enderchest.$(slot) from entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] container.0
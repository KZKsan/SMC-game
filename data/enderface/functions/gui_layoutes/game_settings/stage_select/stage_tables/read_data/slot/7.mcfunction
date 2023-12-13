#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/7
#@within enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/
data modify storage _ data_fetch.name set from storage _ _[7]
function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/set_icon_data with storage _ data_fetch
item replace entity @s enderchest.10 from entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] container.0
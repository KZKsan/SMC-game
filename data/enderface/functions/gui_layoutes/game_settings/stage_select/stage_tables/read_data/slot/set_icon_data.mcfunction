#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/set_icon_data
#@within enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/*
$loot replace entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] container.0 loot sco:stage_icon/$(name)
item modify entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] container.0 sco:add_stage_tag
execute if data storage _ data_fetch{name:"none_data"} run item replace entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] container.0 with air
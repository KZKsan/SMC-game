#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/remove_top_items
#@within enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/**
#@private

scoreboard players remove # _ 1
scoreboard players remove #line _ 6
data remove storage sco:data stage_tables.tmp[0]
data remove storage sco:data stage_tables.tmp[0]
data remove storage sco:data stage_tables.tmp[0]
data remove storage sco:data stage_tables.tmp[0]
data remove storage sco:data stage_tables.tmp[0]
data remove storage sco:data stage_tables.tmp[0]
execute if score # _ matches 1.. if score #line _ matches 7.. run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/remove_top_items
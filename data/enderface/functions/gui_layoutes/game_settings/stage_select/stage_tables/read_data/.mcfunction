#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/
#@within enderface:gui_layoutes/game_settings/stage_select/stage_tables/generic


execute store result score # _ run data get storage p-storage _[0].data.page
execute store result score #line _ run data get storage _ _
execute if score # _ matches 1.. if score #line _ matches 7.. run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/remove_top_items
summon chest_minecart ~ ~ ~ {Tags:[set_data],Items:[{id:"stick",Count:1b}]}
data remove storage _ data_fetch
execute if data storage _ _[0] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/0
execute if data storage _ _[1] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/1
execute if data storage _ _[2] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/2
execute if data storage _ _[3] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/3
execute if data storage _ _[4] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/4
execute if data storage _ _[5] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/5
execute if data storage _ _[6] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/6
execute if data storage _ _[7] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/7
execute if data storage _ _[8] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/8
execute if data storage _ _[9] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/9
execute if data storage _ _[10] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/10
execute if data storage _ _[11] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/11
execute if data storage _ _[12] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/12
execute if data storage _ _[13] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/13
execute if data storage _ _[14] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/14
execute if data storage _ _[15] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/15
execute if data storage _ _[16] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/16
execute if data storage _ _[17] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/17


data remove entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] Items
kill @e[type=chest_minecart,tag=set_data,distance=..2]
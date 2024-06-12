#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/
#@within enderface:gui_layoutes/game_settings/stage_select/stage_tables/generic
execute store result score # _ run data get storage p-storage _[0].data.page
execute store result score #line _ run data get storage sco:data stage_tables.tmp
execute if score # _ matches 1.. if score #line _ matches 7.. run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/remove_top_items
summon chest_minecart ~ ~ ~ {Tags:[set_data],Items:[{id:"stick",count:1}]}
data remove storage enderface:data data_fetch
execute if data storage sco:data stage_tables.tmp[0] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:0,slot:0}
execute if data storage sco:data stage_tables.tmp[1] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:1,slot:1}
execute if data storage sco:data stage_tables.tmp[2] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:2,slot:2}
execute if data storage sco:data stage_tables.tmp[3] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:3,slot:3}
execute if data storage sco:data stage_tables.tmp[4] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:4,slot:4}
execute if data storage sco:data stage_tables.tmp[5] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:5,slot:5}
execute if data storage sco:data stage_tables.tmp[6] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:6,slot:9}
execute if data storage sco:data stage_tables.tmp[7] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:7,slot:10}
execute if data storage sco:data stage_tables.tmp[8] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:8,slot:11}
execute if data storage sco:data stage_tables.tmp[9] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:9,slot:12}
execute if data storage sco:data stage_tables.tmp[10] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:10,slot:13}
execute if data storage sco:data stage_tables.tmp[11] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:11,slot:14}
execute if data storage sco:data stage_tables.tmp[12] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:12,slot:18}
execute if data storage sco:data stage_tables.tmp[13] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:13,slot:19}
execute if data storage sco:data stage_tables.tmp[14] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:14,slot:20}
execute if data storage sco:data stage_tables.tmp[15] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:15,slot:21}
execute if data storage sco:data stage_tables.tmp[16] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:16,slot:22}
execute if data storage sco:data stage_tables.tmp[17] run function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/slot/ {index:17,slot:23}


data remove entity @e[type=chest_minecart,tag=set_data,limit=1,distance=..2] Items
kill @e[type=chest_minecart,tag=set_data,distance=..2]
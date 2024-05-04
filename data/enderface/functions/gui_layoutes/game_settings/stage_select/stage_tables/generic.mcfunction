#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/generic
#@within enderface:gui_layoutes/game_settings/stage_select/
function enderface:gui_layoutes/game_settings/stage_select/stage_tables/read_data/
execute store result score # _ run data get storage p-storage _[0].data.page
execute store result score #line _ run data get storage sco:data stage_tables.tmp
execute if score # _ matches 1.. run loot replace entity @s enderchest.6 loot enderface:icon/up_arrow
execute if score #line _ matches 19.. run loot replace entity @s enderchest.24 loot enderface:icon/down_arrow
#>enderface:gui_layoutes/game_settings/stage_select/stage_tables/set_table_data
#@within enderface:gui_layoutes/game_settings/stage_select/
$data modify storage sco:data stage_tables.tmp set from storage sco:data stage_tables.$(rule)
$data modify storage p-storage _[0].data.sco.rule set value "$(rule)"
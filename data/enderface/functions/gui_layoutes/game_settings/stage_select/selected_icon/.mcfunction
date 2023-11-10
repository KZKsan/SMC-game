#>enderface:gui_layoutes/game_settings/stage_select/selected_icon/
#@within enderface:gui_layoutes/game_settings/stage_select/
$data modify storage enderface:data memory.Slot set from entity @s EnderItems[{tag:{click_events:{set_stage:"$(stage)"}}}].Slot
function enderface:gui_layoutes/generic/modify/selected with storage enderface:data memory
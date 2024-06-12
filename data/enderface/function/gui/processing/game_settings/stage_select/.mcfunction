#>enderface:gui/processing/game_settings/stage_select/
#@within enderface:gui/main

execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.set_stage if function enderface:gui/processing/game_settings/stage_select/rule_check if function enderface:gui/processing/game_settings/stage_select/data_copy run playsound ui.button.click record @s ~ ~ ~ 0.5 1

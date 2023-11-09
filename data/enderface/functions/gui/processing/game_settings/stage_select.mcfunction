#>enderface:gui/processing/game_settings/stage_select
#@within enderface:gui/main

execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.tag.click_events.set_stage run data modify storage sco:config stage set from storage enderface:data gui_intaract.Item.tag.click_events.set_stage

#>enderface:gui/processing/main
#@within enderface:gui/check
## Change gui_name
execute if data storage enderface:data gui_intaract.Item.tag.click_events.change_gui run data modify storage enderface:data next_gui_name set from storage enderface:data gui_intaract.Item.tag.click_events.change_gui
## Click Sounds
execute if data storage enderface:data gui_intaract.Item.tag.click_events.click_sounds run function enderface:gui/processing/click_sounds

## Other Processing
execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui/processing/shop/0/main
execute if data storage enderface:data {gui_name:"shop/test"} run function enderface:gui/processing/shop/0/test


##Reload gui_name
execute if data storage enderface:data next_gui_name run data modify storage enderface:data gui_name set from storage enderface:data next_gui_name
execute if data storage enderface:data next_gui_name run data remove storage enderface:data next_gui_name
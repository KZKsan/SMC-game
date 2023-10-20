#>enderface:gui/processing/main
#@within enderface:gui/check
## Change gui_name
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.tag.click_events.change_gui run data modify storage enderface:data next_gui_name set from storage enderface:data gui_intaract.Item.tag.click_events.change_gui
## Click Sounds
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.tag.click_events.click_sounds run function enderface:gui/processing/click_sounds

execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.tag.click_events.page run function enderface:gui/processing/page_number

## Other Processing
execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui/processing/shop/0/main
execute if data storage enderface:data {gui_name:"join_the_game/"} run function enderface:gui/processing/join_the_game/
#execute if data storage enderface:data {gui_name:"shop/test"} run function enderface:gui/processing/shop/0/test

execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.tag.preview_trade run function enderface:gui/processing/shop/preview_trade/
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.tag.trade run function enderface:gui/processing/shop/trade/

##Reload gui_name
execute if data storage enderface:data next_gui_name run data modify storage enderface:data gui_name set from storage enderface:data next_gui_name
execute if data storage enderface:data next_gui_name run data remove storage enderface:data next_gui_name
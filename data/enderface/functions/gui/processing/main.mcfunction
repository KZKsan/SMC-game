#>enderface:gui/processing/main
#@within enderface:gui/check

## Change gui_name
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.change_gui run data modify storage enderface:data next_gui_name set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.change_gui
## Back gui
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events{back_gui:1b} if data storage enderface:data gui_history[0] run data modify storage enderface:data gui_name set from storage enderface:data gui_history[-1]
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events{back_gui:1b} if data storage enderface:data gui_history[0] run data remove storage enderface:data gui_history[-1]
## Click Sounds
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.click_sounds run function enderface:gui/processing/click_sounds
## Page
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.page run function enderface:gui/processing/page_number
## Setting Button
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.setting_button run function enderface:gui/processing/setting_button/ with storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events.setting_button
## Other Processing
#execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui/processing/shop/0/main
execute if data storage enderface:data {gui_name:"shop/reset_item_gui"} run function enderface:gui/processing/shop/0/reset_item_gui/
execute if data storage enderface:data {gui_name:"join_the_game/"} run function enderface:gui/processing/join_the_game/
execute if data storage enderface:data {gui_name:"game_settings/"} run function enderface:gui/processing/game_settings/
execute if data storage enderface:data {gui_name:"game_settings/stage_select"} run function enderface:gui/processing/game_settings/stage_select/
execute if data storage enderface:data {gui_name:"game_settings/rule_settings"} run function enderface:gui/processing/game_settings/rule_settings/
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".click_events{healing:1b} run effect give @s instant_health 5 120
## return_item
function enderface:gui/return_item/main
## Other Processing 2
execute if data storage enderface:data {gui_name:"kit_memory/"} run function enderface:gui/processing/kit_memory/
#
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data"{preview_trade:1b} run function enderface:gui/processing/shop/preview_trade/
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade_page run function enderface:gui/processing/shop/preview_trade/page with storage enderface:data gui_intaract.Item.components."minecraft:custom_data"
execute if data storage enderface:data gui_intaract{click:1b} if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data"{trade:1b} run function enderface:gui/processing/shop/trade/
#
##Reload gui_name
execute if data storage enderface:data next_gui_name run data modify storage enderface:data gui_history append from storage enderface:data gui_name
execute if data storage enderface:data next_gui_name run data modify storage enderface:data gui_name set from storage enderface:data next_gui_name
execute if data storage enderface:data next_gui_name run data remove storage enderface:data next_gui_name
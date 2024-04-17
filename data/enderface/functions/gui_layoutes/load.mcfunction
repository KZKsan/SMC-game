#>enderface:gui_layoutes/load
#@within enderface:**
#@input p-storage
function p-storage/get
execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui_layoutes/shop/0
execute if data storage enderface:data {gui_name:"shop/weapons"} run function enderface:gui_layoutes/shop/category/weapons
execute if data storage enderface:data {gui_name:"shop/armors"} run function enderface:gui_layoutes/shop/category/armors
execute if data storage enderface:data {gui_name:"shop/arrows"} run function enderface:gui_layoutes/shop/category/arrows
execute if data storage enderface:data {gui_name:"shop/potions"} run function enderface:gui_layoutes/shop/category/potions
execute if data storage enderface:data {gui_name:"shop/others"} run function enderface:gui_layoutes/shop/category/others
execute if data storage enderface:data {gui_name:"shop/sell_item"} run function enderface:gui_layoutes/shop/category/sell_item
execute if data storage enderface:data {gui_name:"shop/reset_item_gui"} run function enderface:gui_layoutes/shop/reset_item_gui
execute if data storage enderface:data {gui_name:"shop/preview_add_items/sell"} run function enderface:gui_layoutes/shop/preview_add_items/sell
execute if data storage enderface:data {gui_name:"shop/preview_add_items/buy"} run function enderface:gui_layoutes/shop/preview_add_items/buy
#execute if data storage enderface:data {gui_name:"join_the_game/"} run function enderface:gui_layoutes/join_the_game/
#execute if data storage enderface:data {gui_name:"game_settings/"} run function enderface:gui_layoutes/game_settings/
#execute if data storage enderface:data {gui_name:"game_settings/stage_select"} run function enderface:gui_layoutes/game_settings/stage_select/
#execute if data storage enderface:data {gui_name:"game_settings/rule_settings"} run function enderface:gui_layoutes/game_settings/rule_settings/
#execute if data storage enderface:data {gui_name:"kit_memory/"} run function enderface:gui_layoutes/kit_memory/
#execute if data storage enderface:data {gui_name:"guide/"} run function enderface:gui_layoutes/guide_book/0
#execute if data storage enderface:data {gui_name:"guide/death_match"} run function enderface:gui_layoutes/guide_book/battle/death_match
#execute if data storage enderface:data {gui_name:"guide/kick_out"} run function enderface:gui_layoutes/guide_book/battle/kick_out
#execute if data storage enderface:data {gui_name:"guide/enchant"} run function enderface:gui_layoutes/guide_book/enchants/0



function enderface:gui_data/copy
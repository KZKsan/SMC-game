#>enderface:gui_layoutes/load
#@within enderface:**

execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui_layoutes/shop/0
execute if data storage enderface:data {gui_name:"shop/test"} run function enderface:gui_layoutes/shop/test
execute if data storage enderface:data {gui_name:"shop/weapons"} run function enderface:gui_layoutes/shop/category/weapons
execute if data storage enderface:data {gui_name:"shop/armors"} run function enderface:gui_layoutes/shop/category/armors
execute if data storage enderface:data {gui_name:"shop/arrows"} run function enderface:gui_layoutes/shop/category/arrows
execute if data storage enderface:data {gui_name:"shop/potions"} run function enderface:gui_layoutes/shop/category/potions
execute if data storage enderface:data {gui_name:"shop/others"} run function enderface:gui_layoutes/shop/category/others
execute if data storage enderface:data {gui_name:"shop/sell_item"} run function enderface:gui_layoutes/shop/category/sell_item
execute if data storage enderface:data {gui_name:"join_the_game/"} run function enderface:gui_layoutes/join_the_game/
execute if data storage enderface:data {gui_name:"game_settings/"} run function enderface:gui_layoutes/game_settings/
execute if data storage enderface:data {gui_name:"game_settings/stage_select"} run function enderface:gui_layoutes/game_settings/stage_select



function enderface:gui_data/copy
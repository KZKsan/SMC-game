#>enderface:gui_layoutes/load
#@within enderface:**

execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui_layoutes/shop/0
execute if data storage enderface:data {gui_name:"shop/test"} run function enderface:gui_layoutes/shop/test
execute if data storage enderface:data {gui_name:"shop/weapons"} run function enderface:gui_layoutes/shop/category/weapons
execute if data storage enderface:data {gui_name:"shop/armors"} run function enderface:gui_layoutes/shop/category/armors
execute if data storage enderface:data {gui_name:"shop/arrows"} run function enderface:gui_layoutes/shop/category/arrows
execute if data storage enderface:data {gui_name:"shop/potions"} run function enderface:gui_layoutes/shop/category/potions
execute if data storage enderface:data {gui_name:"shop/others"} run function enderface:gui_layoutes/shop/category/others



function enderface:gui_data/copy
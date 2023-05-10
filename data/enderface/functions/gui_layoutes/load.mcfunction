#>enderface:gui_layoutes/load
#@within enderface:**

execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui_layoutes/shop/0
execute if data storage enderface:data {gui_name:"shop/test"} run function enderface:gui_layoutes/shop/test
execute if data storage enderface:data {gui_name:"shop/weapons"} run function enderface:gui_layoutes/shop/weapons



function enderface:gui_data/copy
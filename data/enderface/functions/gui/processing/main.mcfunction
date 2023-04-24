#>enderface:gui/processing/main
#@within enderface:gui/check

execute if data storage enderface:data {gui_name:"shop/0"} run function enderface:gui/processing/shop/0/main


execute if data storage enderface:data next_gui_name run data modify storage enderface:data gui_name set from storage enderface:data next_gui_name
execute if data storage enderface:data next_gui_name run data remove storage enderface:data next_gui_name
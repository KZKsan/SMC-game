#>enderface:gui_layoutes/kit_memory/slot/1
#@within enderface:gui_layoutes/kit_memory/

item modify entity @s enderchest.0 enderface:selected
function enderface:gui_layoutes/kit_memory/selecter/save
execute if data storage p-storage _[0].data.save_kit[{number:1}] run function enderface:gui_layoutes/kit_memory/selecter/load
execute if data storage p-storage _[0].data.save_kit[{number:1}] run function enderface:gui_layoutes/kit_memory/selecter/delete
execute if data storage p-storage _[0].data.save_kit[{number:1}] run data modify storage enderface:data data set from storage p-storage _[0].data.save_kit.[{number:1}].inventory
execute if data storage p-storage _[0].data.save_kit[{number:1}] run function enderface:gui_layoutes/kit_memory/preview/
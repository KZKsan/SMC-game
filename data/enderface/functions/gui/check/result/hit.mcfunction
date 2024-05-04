#>enderface:gui/check/result/hit
#@within enderface:gui/check/**

data modify storage enderface:data gui_intaract.Item set from storage enderface:data test_gui[0]
execute unless data storage enderface:data new_gui[0].components."minecraft:custom_data"{enderface_item:1b,void:1b} run data modify storage enderface:data gui_add append from storage enderface:data new_gui[0]

data remove storage enderface:data test_gui[0]
data remove storage enderface:data new_gui[0]
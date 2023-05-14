#>enderface:gui/check/result/add
#@within enderface:gui/check/**

data modify storage enderface:data gui_add append from storage enderface:data new_gui[0]

data remove storage enderface:data new_gui[0]
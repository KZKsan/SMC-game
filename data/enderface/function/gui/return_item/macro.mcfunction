#>enderface:gui/return_item/macro
#@within enderface:gui/return_item/**
data modify storage _ item_data set from storage enderface:data new_gui[0]
function item/macro/give/
data remove storage enderface:data new_gui[0]
execute if data storage enderface:data new_gui[0] run function enderface:gui/return_item/macro with storage enderface:data new_gui[0]
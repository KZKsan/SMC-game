#>enderface:gui/return_item/macro
#@within enderface:gui/return_item/**
function item/macro/give with storage enderface:data new_gui[0]
data remove storage enderface:data new_gui[0]
execute if data storage enderface:data new_gui[0] run function enderface:gui/return_item/macro with storage enderface:data new_gui[0]
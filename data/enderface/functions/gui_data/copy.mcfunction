#>enderface:gui_data/copy
#@within enderface:**
function marker_storage/get
data modify entity @e[predicate=marker_storage,limit=1] data.gui set from entity @s EnderItems
data modify entity @e[predicate=marker_storage,limit=1] data.gui_name set from storage enderface:data gui_name
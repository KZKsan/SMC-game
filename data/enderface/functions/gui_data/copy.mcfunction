#>enderface:gui_data/copy
#@within enderface:**
function p-storage/get
data modify storage p-storage _[0].data.gui set from entity @s EnderItems
data modify storage p-storage _[0].data.gui_name set from storage enderface:data gui_name
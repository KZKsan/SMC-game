#>sco_items:item_functions/hidden_cover/actionbar/flag
#@within sco_items:item_functions/hidden_cover/holding
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.hidden_cover set value true
tag @s[tag=!item_actionbar] add item_actionbar
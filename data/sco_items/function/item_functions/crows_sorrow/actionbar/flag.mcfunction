#>sco_items:item_functions/crows_sorrow/actionbar/flag
#@within sco_items:item_functions/crows_sorrow/holding
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.crows_sorrow set value true
tag @s[tag=!item_actionbar] add item_actionbar
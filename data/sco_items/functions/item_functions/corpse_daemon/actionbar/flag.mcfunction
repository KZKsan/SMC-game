#>sco_items:item_functions/corpse_daemon/actionbar/flag
#@within sco_items:item_functions/corpse_daemon/holding
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.corpse_daemon set value true
tag @s[tag=!item_actionbar] add item_actionbar
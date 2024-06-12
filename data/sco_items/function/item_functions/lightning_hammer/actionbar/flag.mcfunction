#>sco_items:item_functions/lightning_hammer/actionbar/flag
#@within sco_items:item_functions/lightning_hammer/holding
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.lightning_hammer set value true
tag @s[tag=!item_actionbar] add item_actionbar
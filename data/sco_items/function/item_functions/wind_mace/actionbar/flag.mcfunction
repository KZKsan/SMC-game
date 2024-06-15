#>sco_items:item_functions/wind_mace/actionbar/flag
#@within sco_items:item_functions/wind_mace/cooldown
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.wind_mace set value true
tag @s[tag=!item_actionbar] add item_actionbar
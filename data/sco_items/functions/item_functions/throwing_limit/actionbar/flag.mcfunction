#>sco_items:item_functions/throwing_limit/actionbar/flag
#@within sco_items:main
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.throwing_limit set value true
tag @s[tag=!item_actionbar] add item_actionbar
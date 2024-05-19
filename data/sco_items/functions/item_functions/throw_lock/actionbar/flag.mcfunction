#>sco_items:item_functions/throw_lock/actionbar/flag
#@within sco_items:main
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.throw_lock set value true
tag @s[tag=!item_actionbar] add item_actionbar
#>sco_items:item_functions/show_durability/chest/
#@within advancement sco_items:item_functions/show_durability/chest

function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.show_durability append value "chest"
tag @s[tag=!item_actionbar] add item_actionbar

advancement revoke @s only sco_items:item_functions/show_durability/chest
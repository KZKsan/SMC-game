#>sco_items:item_functions/passive_effects/chest
#@within sco_items:item_functions/passive_effects/
data modify storage _ data_fetch set from entity @s Inventory[{Slot:102b}].tag.item_functions.passive_effects
function sco_items:item_functions/passive_effects/loop
#>sco_items:item_functions/passive_effects/chest
#@within sco_items:item_functions/passive_effects/
data modify storage sco_items:data passive_effects set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".item_functions.passive_effects
function sco_items:item_functions/passive_effects/loop
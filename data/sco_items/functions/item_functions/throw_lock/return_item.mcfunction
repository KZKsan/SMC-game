#>sco_items:item_functions/throw_lock/return_item
#@within sco_items:item_functions/throw_lock/
data modify storage _ item_data set from entity @s Item
#execute on origin run function sco_items:item_functions/throw_lock/slot with entity @s
execute on origin if entity @s[predicate=gamemode/as] run function item/macro/give/
kill
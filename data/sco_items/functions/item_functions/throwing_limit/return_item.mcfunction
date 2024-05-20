#>sco_items:item_functions/throwing_limit/return_item
#@within sco_items:item_functions/throwing_limit/
data modify storage _ item_data set from entity @s Item
#execute on origin run function sco_items:item_functions/throwing_limit/slot with entity @s
execute on origin if entity @s[predicate=gamemode/as] run function item/macro/give/
kill
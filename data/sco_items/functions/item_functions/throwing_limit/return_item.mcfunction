#>sco_items:item_functions/throwing_limit/return_item
#@within sco_items:item_functions/throwing_limit/
data modify storage _ item_data set from entity @s Item
#execute on origin run function sco_items:item_functions/throwing_limit/slot with entity @s
execute on origin if data storage _ item_data{id:"minecraft:splash_potion"} run scoreboard players remove @s respawn.penalty.throwing_potion.splash 1
execute on origin if data storage _ item_data{id:"minecraft:lingering_potion"} run scoreboard players remove @s respawn.penalty.throwing_potion.lingering 1
execute on origin if entity @s[predicate=gamemode/as] run function item/macro/give/
kill
#>sco_items:item_functions/hidden_cover/leaves/swap/
#
function sco_items:item_functions/hidden_cover/leaves/swap/macro with entity @s item.components."minecraft:custom_data"

execute if entity @s[tag=top] positioned as @s run teleport @s ~ ~1.3 ~
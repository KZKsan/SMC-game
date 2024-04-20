#>sco_items:item_functions/enchant/smite/additional_damage/
#@within sco_items:item_functions/enchant/smite/attack
data remove storage sco_items:data data_fetch
execute store result storage sco_items:data data_fetch.damage double 0.0001 run data get entity @p[tag=origin] SelectedItem.components."minecraft:enchantments".levels."minecraft:smite" 25000
function sco_items:item_functions/enchant/smite/additional_damage/macro/attack with storage sco_items:data data_fetch
#declare damage_type sco_items:item_functions/enchant/smite/attack
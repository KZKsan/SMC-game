#>sco_items:item_functions/enchant/smite/additional_damage/
#@within sco_items:item_functions/enchant/smite/attack
data remove storage _ data_fetch
execute store result storage _ data_fetch.damage double 0.0001 run data get entity @p[tag=origin] SelectedItem.tag.Enchantments[{id:"minecraft:smite"}].lvl 25000
function sco_items:item_functions/enchant/smite/additional_damage/macro with storage _ data_fetch
#declare damage_type sco_items:item_functions/enchant/smite
#>sco_items:item_functions/enchant/smite/additional_damage/arrow
#@within sco_items:item_functions/enchant/smite/hit_arrow/**
data remove storage _ data_fetch
execute store result storage _ data_fetch.damage double 0.0001 run data get entity @e[type=#arrows,tag=hit_arrow,limit=1,sort=nearest] item.tag.Enchantments[{id:"minecraft:smite"}].lvl 25000
function sco_items:item_functions/enchant/smite/additional_damage/macro/arrow with storage _ data_fetch
#declare damage_type sco_items:item_functions/enchant/smite/arrow
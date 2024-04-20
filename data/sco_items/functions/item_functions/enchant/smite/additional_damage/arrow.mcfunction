#>sco_items:item_functions/enchant/smite/additional_damage/arrow
#@within sco_items:item_functions/enchant/smite/hit_arrow/**
data remove storage sco_items:data data_fetch
execute store result storage sco_items:data data_fetch.damage double 0.0001 run data get entity @e[type=#arrows,tag=hit_arrow,limit=1,sort=nearest] item.components."minecraft:enchantments".levels."minecraft:smite" 25000
function sco_items:item_functions/enchant/smite/additional_damage/macro/arrow with storage sco_items:data data_fetch
#declare damage_type sco_items:item_functions/enchant/smite/arrow
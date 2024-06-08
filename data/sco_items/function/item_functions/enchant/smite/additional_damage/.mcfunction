#>sco_items:item_functions/enchant/smite/additional_damage/
#@within sco_items:item_functions/enchant/smite/attack
execute store result score # _ run data get entity @p[tag=origin] SelectedItem.components."minecraft:custom_data".item_functions.smite_attack.min_damage 10
execute store result score #__ _ run data get entity @p[tag=origin] SelectedItem.components."minecraft:custom_data".item_functions.smite_attack.min_damage 100000000
execute store result score #_ _ run data get storage sco_items:data smite_attack.damage_dealt 10000000
#tellraw @a {"score":{"name": "#","objective": "_"}}
#tellraw @a {"score":{"name": "#__","objective": "_"}}
#tellraw @a {"score":{"name": "#_","objective": "_"}}
execute store success storage sco_items:data smite_attack.magnification double 0.001 if score #__ _ <= #_ _
execute if score #__ _ > #_ _ store result storage sco_items:data smite_attack.magnification double 0.00000000004 run scoreboard players operation #_ _ /= # _
execute if entity @p[tag=origin,predicate=!sco_items:item_functions/have_undead_items] store result storage sco_items:data smite_attack.damage double 0.0001 run data get entity @p[tag=origin] SelectedItem.components."minecraft:enchantments".levels."minecraft:smite" 25000
execute if entity @p[tag=origin,predicate=sco_items:item_functions/have_undead_items] store result storage sco_items:data smite_attack.damage double 0.0001 run data get entity @p[tag=origin] SelectedItem.components."minecraft:enchantments".levels."minecraft:smite" 10000
#tellraw @p {"nbt":"smite_attack","storage":"sco_items:data"}
function sco_items:item_functions/enchant/smite/additional_damage/macro/magnification with storage sco_items:data smite_attack
function sco_items:item_functions/enchant/smite/additional_damage/macro/attack with storage sco_items:data smite_attack
#declare damage_type sco_items:item_functions/enchant/smite/attack
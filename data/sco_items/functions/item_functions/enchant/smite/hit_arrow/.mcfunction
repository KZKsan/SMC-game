#>sco_items:item_functions/enchant/smite/hit_arrow/
#@within 
tag @s add origin
execute as @e[type=#arrows,distance=..1000] if function sco_items:item_functions/enchant/smite/hit_arrow/test run tag @s add hit_arrow
execute as @e[distance=..1000,nbt={HurtTime:10s}] run function hurt_entity_test
execute as @e[tag=hurt_entity] at @s if predicate sco_items:item_functions/have_undead_items run function sco_items:item_functions/enchant/smite/additional_damage/arrow
tag @s remove origin
tag @e[tag=hurt_entity] remove hurt_entity
tag @e[type=#arrows,tag=hit_arrow] remove hit_arrow
advancement revoke @s only sco_items:item_functions/enchant/smite/hit_arrow
#>sco_items:item_functions/enchant/smite/hit_arrow/
#@within 
execute on attacker run tag @s add origin
execute as @e[type=#arrows,distance=..3,sort=nearest] if function sco_items:item_functions/enchant/smite/hit_arrow/test run tag @s add hit_arrow
tag @s add hurt_entity
execute if predicate sco_items:item_functions/have_undead_items run function sco_items:item_functions/enchant/smite/additional_damage/arrow
execute on attacker run tag @s remove origin
tag @s remove hurt_entity
advancement revoke @s only sco_items:item_functions/enchant/smite/hit_arrow

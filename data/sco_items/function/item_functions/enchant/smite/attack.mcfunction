#>sco_items:item_functions/enchant/smite/attack
#@within sco_items:item_functions/enchant/smite/attack/**
tag @s add origin
#execute as @e[distance=..25,tag=!origin,nbt={HurtTime:10s}] run function hurt_entity_test
#execute as @e[tag=hurt_entity,distance=..26,nbt={HurtTime:10s}] at @s if predicate sco_items:item_functions/have_undead_items run function sco_items:item_functions/enchant/smite/additional_damage/
tag @s remove origin
tag @e[tag=hurt_entity,distance=..26] remove hurt_entity
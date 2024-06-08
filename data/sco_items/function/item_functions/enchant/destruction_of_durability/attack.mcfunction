#>sco_items:item_functions/enchant/destruction_of_durability/attack
#@within advancement sco_items:item_functions/enchant/destruction_of_durability/attack
tag @s add origin
execute as @e[distance=..16,tag=!origin,nbt={HurtTime:10s}] run function hurt_entity_test
execute as @e[tag=hurt_entity,distance=..17,nbt={HurtTime:10s}] at @s if predicate sco_items:wearing run function sco_items:item_functions/enchant/destruction_of_durability/additional_damage/
#execute if predicate sco_items:wearing run function sco_items:item_functions/enchant/destruction_of_durability/additional_damage/
tag @s remove origin
tag @e[tag=hurt_entity,distance=..17] remove hurt_entit
advancement revoke @s only sco_items:item_functions/enchant/destruction_of_durability/attack
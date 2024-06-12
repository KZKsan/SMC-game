#>sco_items:item_functions/steel_war_hammer/attack
#@wihtin advancement sco_items:item_functions/steel_war_hammer/attack
tag @s add origin
execute as @e[distance=..16,tag=!origin,nbt={HurtTime:10s}] run function hurt_entity_test
execute as @e[tag=hurt_entity,distance=..17,nbt={HurtTime:10s}] at @s run function sco_items:item_functions/steel_war_hammer/particle/attack
tag @s remove origin
tag @e[tag=hurt_entity,distance=..17] remove hurt_entity

advancement revoke @s only sco_items:item_functions/steel_war_hammer/attack
#>sco_items:item_functions/corpse_daemon/attack
#@within advancement sco_items:item_functions/corpse_daemon/attack
tag @s add origin
execute as @e[distance=..16,tag=!origin,nbt={HurtTime:10s}] run function hurt_entity_test
execute as @e[tag=hurt_entity,distance=..17,nbt={HurtTime:10s}] at @s run function sco_items:item_functions/corpse_daemon/effect
tag @s remove origin
tag @e[tag=hurt_entity,distance=..17] remove hurt_entity
effect give @s[tag=!rg.item_function_limit] blindness 5 0
effect give @s[tag=!rg.item_function_limit] mining_fatigue 5 9
advancement revoke @s only sco_items:item_functions/corpse_daemon/attack
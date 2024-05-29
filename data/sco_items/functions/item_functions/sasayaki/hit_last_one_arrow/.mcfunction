#>sco_items:item_functions/sasayaki/hit_last_one_arrow/
#@within advancement sco_items:item_functions/sasayaki/hit_last_one_arrow
tag @s add origin
execute as @e[nbt={HurtTime:10s},distance=..1000] run function hurt_entity_test
execute as @e[tag=hurt_entity,limit=1] at @s run function sco_items:item_functions/sasayaki/hit_last_one_arrow/damage
tag @s remove origin
tag @e[tag=hurt_entity] remove hurt_entity
#scoreboard players remove @s score_hit_arrows 1
advancement revoke @s only sco_items:item_functions/sasayaki/hit_last_one_arrow
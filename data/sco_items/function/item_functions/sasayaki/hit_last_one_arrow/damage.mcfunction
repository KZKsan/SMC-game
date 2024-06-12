#>sco_items:item_functions/sasayaki/hit_last_one_arrow/damage
#@within sco_items:item_functions/sasayaki/hit_last_one_arrow/
particle crimson_spore ~ ~0.5 ~ 0.1 0.1 0.1 0.4 10
particle dust_color_transition{from_color:[0.420,0.000,0.000],scale:1.4,to_color:[0.220,0.035,0.035]} ~ ~1 ~ 0.3 0.3 0.3 0.7 10
particle firework ~ ~1 ~ 0.1 0.4 0.1 0.04 5
particle dust_color_transition{from_color:[1.000,0.220,0.220],scale:0.6,to_color:[0.890,0.063,0.063]} ~ ~1 ~ 0.6 0.6 0.6 2 30
particle block{block_state:"nether_wart_block"} ~ ~1 ~ 0.1 0.5 0.1 0.1 20
playsound entity.zombie_villager.cure player @a[distance=..30] ~ ~ ~ 0.3 2 0.1
playsound block.conduit.activate player @a[distance=..30] ~ ~ ~ 1 0.5 0.6
playsound entity.splash_potion.break player @a[distance=..30] ~ ~ ~ 1 1 0.6
playsound entity.splash_potion.break player @a[distance=..30] ~ ~ ~ 1 0.5 0.6
execute as @p[tag=origin] at @s run playsound entity.zombie_villager.cure player @s ~ ~ ~ 0.3 0.7 1
#declare damage_type sco_items:item_functions/add_arrow_damage
damage @s 20 sco_items:item_functions/add_arrow_damage by @e[type=arrow,limit=1,sort=nearest] from @p[tag=origin]
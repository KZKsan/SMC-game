#>sco_items:item_functions/sasayaki/hit_last_one_arrow/damage
#@within sco_items:item_functions/sasayaki/hit_last_one_arrow/
particle portal ~ ~1 ~ 0.1 0.1 0.1 1 1000
playsound entity.zombie_villager.cure player @a ~ ~ ~ 0.3 0.5
#declare damage_type sco_items:item_functions/add_arrow_damage
damage @s 20 sco_items:item_functions/add_arrow_damage by @e[type=arrow,limit=1,sort=nearest] from @p[tag=origin]
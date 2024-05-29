#>sco_items:item_functions/steel_arrow/hit/damage
#@within sco_items:item_functions/steel_arrow/hit/
#declare damage_type sco_items:item_functions/add_arrow_damage
damage @s 2 sco_items:item_functions/add_arrow_damage by @e[type=arrow,limit=1,sort=nearest] from @p[tag=origin]
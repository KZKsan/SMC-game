#>sco_items:item_functions/hidden_cover/leaves/block/
#@within sco_items:item_functions/hidden_cover/leaves/set
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/stone run return run item replace entity @e[type=item_display,tag=hidden_cover,tag=set_data] container.0 with stone 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/none_block run return 1
loot replace entity @e[type=item_display,tag=hidden_cover,tag=set_data] container.0 mine ~ ~-0.75 ~ diamond_pickaxe[enchantments={levels:{"silk_touch":1}}]
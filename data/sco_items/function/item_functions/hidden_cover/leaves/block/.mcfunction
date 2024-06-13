#>sco_items:item_functions/hidden_cover/leaves/block/
#@within sco_items:item_functions/hidden_cover/leaves/set
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/stone run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with stone 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/oak_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with oak_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/spruce_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with spruce_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/birch_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with birch_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/jungle_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with jungle_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/acacia_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with acacia_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/dark_oak_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with dark_oak_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/mangrove_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with mangrove_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/cherry_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with cherry_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/crimson_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with crimson_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/warped_planks run return run item replace entity @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] container.0 with warped_planks 1
execute if block ~ ~-0.75 ~ #sco_items:item_functions/hidden_cover/none_block run return run tag @n[type=item_display,tag=hidden_cover,tag=marker,tag=set_data] add disable_copy
loot replace entity @n[type=item_display,tag=hidden_cover,tag=set_data] container.0 mine ~ ~-0.75 ~ diamond_pickaxe[enchantments={levels:{"silk_touch":1}}]
#execute if block ~ ~-0.75 ~ #slabs run return run data modify entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id set string entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id 0 -5
#execute if block ~ ~-0.75 ~ #stairs run return run data modify entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id set string entity @n[type=item_display,tag=hidden_cover,tag=set_data] item.id 0 -6
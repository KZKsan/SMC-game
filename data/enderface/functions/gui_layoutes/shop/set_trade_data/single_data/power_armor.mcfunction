#>enderface:gui_layoutes/shop/set_trade_data/single_data/power_armor
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:power_armor/defense
#declare loot_table sco_items:power_armor/attack
#declare loot_table sco_items:power_armor/speed
#declare loot_table sco_items:power_armor/regeneration
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:power_armor/defense
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:power_armor/attack
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 loot sco_items:power_armor/speed
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.3 loot sco_items:power_armor/regeneration
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_chestplate 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 14
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _
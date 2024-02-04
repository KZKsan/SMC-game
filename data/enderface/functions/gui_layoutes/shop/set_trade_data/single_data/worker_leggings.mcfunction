#>enderface:gui_layoutes/shop/set_trade_data/single_data/worker_leggings
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:worker_leggings
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:worker_leggings
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:diamond_leggings
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop trade_data append from storage sco:shop _
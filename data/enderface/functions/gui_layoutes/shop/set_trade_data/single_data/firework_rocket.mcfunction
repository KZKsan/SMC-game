#>enderface:gui_layoutes/shop/set_trade_data/single_data/firework_rocket
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:arrow/firework_rocket
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:arrow/firework_rocket
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0].Count set value 3b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:21}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop trade_data append from storage sco:shop _
#>enderface:gui_layoutes/shop/set_trade_data/single_data/breake_shield
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:breake_shield
#declare loot_table sco_items:shield
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:breake_shield
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:shield
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 9
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _

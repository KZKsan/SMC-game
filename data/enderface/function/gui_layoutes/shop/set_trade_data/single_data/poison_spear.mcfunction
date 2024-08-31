#>enderface:gui_layoutes/shop/set_trade_data/single_data/poison_spear
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:poison_spear
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:poison_spear
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:iron_sword
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 6
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _
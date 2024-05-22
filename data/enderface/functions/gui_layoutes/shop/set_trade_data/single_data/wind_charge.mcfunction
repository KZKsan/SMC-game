#>enderface:gui_layoutes/shop/set_trade_data/single_data/wind_charge
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:magic_bullet_element
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with wind_charge 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:16}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with wind_charge 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:magic_bullet_element
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:32}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _
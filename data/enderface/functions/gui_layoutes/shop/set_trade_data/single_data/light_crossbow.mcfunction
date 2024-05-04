#>enderface:gui_layoutes/shop/set_trade_data/single_data/light_crossbow
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:light_crossbow
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:light_crossbow
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with bow 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 5
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _
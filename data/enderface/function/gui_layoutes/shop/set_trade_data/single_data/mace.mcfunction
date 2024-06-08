#>enderface:gui_layoutes/shop/set_trade_data/single_data/mace
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:mace
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mace
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_sword
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with iron_boots
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with emerald 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _
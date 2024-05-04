#>enderface:gui_layoutes/shop/set_trade_data/single_data/brahmadatta
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:brahmadatta
#declare loot_table sco_items:shield
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:brahmadatta
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with bow
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 6
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with iron_helmet
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.3 with iron_chestplate
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _
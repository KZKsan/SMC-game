#>enderface:gui_layoutes/shop/set_trade_data/category/sell_item
#@within tag/function enderface:set_trade_data
function enderface:gui_layoutes/shop/set_trade_data/reset_data

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with arrow 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:8}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_helmet
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_chestplate
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _


loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:diamond_leggings
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_boots
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_sword
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:shield
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _


data modify storage sco:shop sell_item set from storage sco:shop trade_data

#>enderface:gui_layoutes/shop/set_trade_data/category/weapons
#@within tag/function enderface:set_trade_data
summon chest_minecart ~ ~ ~ {Tags:[set_tarde_data]}
data modify storage sco:shop _ set value {id:"stick",Count:1b}
data modify storage sco:shop armor set value []

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:poison_spear
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 10
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_ingot 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop armor append from storage sco:shop _

loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:sample_item
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 40
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond 5
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop armor append from storage sco:shop _

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with brick 4
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage sco:shop sell_count set value {click:1,sneak:16}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with coal 5
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with gold_ingot 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop armor append from storage sco:shop _

data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items
kill @e[tag=set_trade_data,distance=..2]
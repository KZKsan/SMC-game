item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond_pickaxe[custom_data={test:1}] 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell

item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with diamond 2

function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count

function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with wooden_sword[custom_data={test:1}] 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with iron_ingot 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count

function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with grass_block 10
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
#loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:iron_sword[damage=10] 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with diamond 10

function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count

data modify storage enderface:shop trade_data append from storage enderface:shop _
#>enderface:gui_layoutes/shop/set_trade_data/single_data/robe_of_regeneration
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:robe_of_regeneration
#declare loot_table sco_items:mana_element
#declare loot_table sco_items:mana_cloth
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:robe_of_regeneration
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with iron_chestplate 1
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with emerald 7
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/add_trade
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:robe_of_regeneration
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_cloth
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[1].count set value 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage enderface:shop trade_data append from storage enderface:shop _
#>enderface:gui_layoutes/shop/set_trade_data/single_data/magic_robe
#@within enderface:gui_layoutes/shop/set_trade_data/category/**

#>
#@private
#declare loot_table sco_items:magic_robe
#declare loot_table sco_items:mana_cloth
#declare loot_table sco_items:mana_element
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:magic_robe
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:mana_element
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[1].count set value 2
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
data modify storage enderface:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:mana_cloth
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage enderface:shop trade_data append from storage enderface:shop _
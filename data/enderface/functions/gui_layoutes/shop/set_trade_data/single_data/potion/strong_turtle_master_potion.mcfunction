#>enderface:gui_layoutes/shop/set_trade_data/single_data/potion/strong_turtle_master_potion
#@within enderface:gui_layoutes/shop/set_trade_data/category/potions

#>
#@private
#declare loot_table sco_items:potion/strong_turtle_master_potion
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/strong_turtle_master_potion
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 5
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

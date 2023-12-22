#>enderface:gui_layoutes/shop/set_trade_data/single_data/potion/madness_potion
#@within enderface:gui_layoutes/shop/set_trade_data/category/potions

#>
#@private
#declare loot_table sco_items:potion/madness_potion
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:potion/madness_potion
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 8
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
data modify storage sco:shop sell_count set value {click:1,sneak:1}
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
data modify storage sco:shop trade_data append from storage sco:shop _

#>enderface:gui_layoutes/shop/set_trade_data/single_data/reaper_item
#@within function
#   enderface:gui_layoutes/shop/set_trade_data/single_data/reaper_scythe
#   enderface:gui_layoutes/shop/set_trade_data/single_data/reaper_robe

#>
#@private
#declare loot_table sco_items:reaper_robe
#declare loot_table sco_items:reaper_scythe
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 loot sco_items:reaper_scythe
loot replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 loot sco_items:reaper_robe
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.2 with emerald 3
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.0 with emerald 32
item replace entity @e[tag=set_trade_data,limit=1,distance=..2] container.1 with iron_sword 1
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
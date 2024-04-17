#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
#@within enderface:gui_layoutes/shop/set_trade_data/**
execute unless data storage enderface:shop _.components."minecraft:custom_data".preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade
execute unless data storage enderface:shop _.components."minecraft:custom_data".preview_trade[-1].trade_icon run data modify storage enderface:shop _.components."minecraft:custom_data".preview_trade[-1].trade_icon set value {}
data modify storage enderface:shop _.components."minecraft:custom_data".preview_trade[-1].trade_icon set from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage enderface:shop _.components."minecraft:custom_data".preview_trade[-1].trade_icon.Slot
data modify storage enderface:shop _.components."minecraft:custom_data".preview_trade[-1].trade_icon.components."minecraft:custom_data".enderface_item set value 1b
#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/preview
#@within enderface:gui_layoutes/shop/set_trade_data/**
data modify storage enderface:shop _ set from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage enderface:shop _.Slot
data modify storage enderface:shop _.components."minecraft:custom_data".enderface_item set value 1b
function enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade

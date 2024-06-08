#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/buy
#@within enderface:gui_layoutes/shop/set_trade_data/**
execute unless data storage enderface:shop _.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade

data modify storage enderface:shop _.preview_trade[-1].buy append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[]
data remove storage enderface:shop _.preview_trade[-1].buy[].Slot
data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items
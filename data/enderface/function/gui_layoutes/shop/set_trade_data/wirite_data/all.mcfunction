#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/all
#@within enderface:gui_layoutes/shop/set_trade_data/**
data modify storage enderface:shop _ set from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage enderface:shop _.Slot
data modify storage enderface:shop _.tag.enderface_item set value 1b

execute unless data storage enderface:shop _.tag.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade
data modify storage enderface:shop _.tag.preview_trade[-1].buy append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[1]
data modify storage enderface:shop _.tag.preview_trade[-1].buy append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[2]
data remove storage enderface:shop _.tag.preview_trade[-1].buy[].Slot
data modify storage enderface:shop _.tag.preview_trade[-1].sell append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage enderface:shop _.tag.preview_trade[-1].sell[].Slot
data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items
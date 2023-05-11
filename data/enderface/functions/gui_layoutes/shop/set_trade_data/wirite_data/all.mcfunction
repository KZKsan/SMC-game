#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/all
#@within enderface:gui_layoutes/shop/set_trade_data/category/**
data modify storage sco:shop _ set from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage sco:shop _.Slot
data modify storage sco:shop _.tag.enderfaceItem set value 1b

execute unless data storage sco:shop _.tag.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade
data modify storage sco:shop _.tag.preview_trade.buy append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[1]
data remove storage sco:shop _.tag.preview_trade.buy[-1].Slot
data modify storage sco:shop _.tag.preview_trade.buy append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[2]
data remove storage sco:shop _.tag.preview_trade.buy[-1].Slot
data modify storage sco:shop _.tag.preview_trade.sell append from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage sco:shop _.tag.preview_trade.sell[-1].Slot
data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items
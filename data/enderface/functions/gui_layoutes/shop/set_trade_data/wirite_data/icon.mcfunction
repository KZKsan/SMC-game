#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon
#@within enderface:gui_layoutes/shop/set_trade_data/category/**
data modify storage sco:shop _ set from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage sco:shop _.Slot
data modify storage sco:shop _.tag.enderfaceItem set value 1b
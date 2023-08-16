#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/icon/trade
#@within enderface:gui_layoutes/shop/set_trade_data/**
execute unless data storage sco:shop _.tag.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade
execute unless data storage sco:shop _.tag.preview_trade.trade_icon run data modify storage sco:shop _.tag.preview_trade.trade_icon set value {}
data modify storage sco:shop _.tag.preview_trade.trade_icon set from entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0]
data remove storage sco:shop _.tag.preview_trade.trade_icon.Slot
data modify storage sco:shop _.tag.preview_trade.trade_icon.tag.enderfaceItem set value 1b
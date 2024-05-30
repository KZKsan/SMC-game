#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
#@within enderface:gui_layoutes/shop/set_trade_data/**
execute unless data storage enderface:shop _.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade
data modify storage enderface:shop _.preview_trade[-1].sell_count set from storage enderface:shop sell_count
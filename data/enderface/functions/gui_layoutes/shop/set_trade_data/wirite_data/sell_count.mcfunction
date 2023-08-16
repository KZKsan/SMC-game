#>enderface:gui_layoutes/shop/set_trade_data/wirite_data/sell_count
#@within enderface:gui_layoutes/shop/set_trade_data/**
execute unless data storage sco:shop _.tag.preview_trade run function enderface:gui_layoutes/shop/set_trade_data/wirite_data/setup_trade
data modify storage sco:shop _.tag.preview_trade.sell_count set from storage sco:shop sell_count
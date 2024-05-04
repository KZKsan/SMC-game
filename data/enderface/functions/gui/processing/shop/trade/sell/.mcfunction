#>enderface:gui/processing/shop/trade/sell/
#@within enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/first

data modify storage enderface:data shop.trade_data.sell set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".trade.sell
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".trade.sell[0] run function enderface:gui/processing/shop/trade/sell/loop
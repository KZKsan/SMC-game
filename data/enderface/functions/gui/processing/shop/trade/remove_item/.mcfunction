#>enderface:gui/processing/shop/trade/remove_item/
#@within enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/first
data modify storage enderface:data shop.trade_data.buy set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".trade.buy
execute if data storage enderface:data gui_intaract.Item.components."minecraft:custom_data".trade.buy[0] run function enderface:gui/processing/shop/trade/remove_item/loop
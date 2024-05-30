#>enderface:gui/processing/shop/trade/remove_item/
#@within enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/first
data modify storage enderface:data shop.tmp.buy set from storage enderface:data shop.trade.buy
execute if data storage enderface:data shop.trade.buy[0] run function enderface:gui/processing/shop/trade/remove_item/loop
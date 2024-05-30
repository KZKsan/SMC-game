#>enderface:gui/processing/shop/trade/sell/
#@within enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/first

data modify storage enderface:data shop.tmp.sell set from storage enderface:data shop.trade.sell
execute if data storage enderface:data shop.trade.sell[0] run function enderface:gui/processing/shop/trade/sell/loop
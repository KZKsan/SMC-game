#>enderface:gui/processing/shop/trade/sell/
#@within enderface:gui/processing/shop/trade/loop

data modify storage enderface:data trade.sell set from storage enderface:data gui_intaract.Item.tag.trade.sell

execute if data storage enderface:data gui_intaract.Item.tag.trade.sell[0] run function enderface:gui/processing/shop/trade/sell/loop
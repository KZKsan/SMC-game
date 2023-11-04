#>enderface:gui/processing/shop/trade/remove_item/
#@within enderface:gui/processing/shop/trade/loop
data modify storage enderface:data _ set from storage enderface:data gui_intaract.Item.tag.trade.buy
execute if data storage enderface:data _[0] run function enderface:gui/processing/shop/trade/remove_item/loop
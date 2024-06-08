#>enderface:gui/processing/shop/trade/
#@api
data modify storage enderface:data shop.trade set from storage enderface:data shop.preview_trade_data.data
execute if data storage enderface:data gui_intaract{intaract:1b} store result score #i _ run data get storage enderface:data shop.trade.sell_count.click
execute if data storage enderface:data gui_intaract{intaract:2b} store result score #i _ run data get storage enderface:data shop.trade.sell_count.sneak
execute if score #i _ matches 1.. run function enderface:gui/processing/shop/trade/first
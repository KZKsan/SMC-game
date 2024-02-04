#>enderface:gui/processing/shop/trade/
#@api
execute if data storage enderface:data gui_intaract{intaract:1b} store result score #i _ run data get storage enderface:data gui_intaract.Item.tag.trade.sell_count.click
execute if data storage enderface:data gui_intaract{intaract:2b} store result score #i _ run data get storage enderface:data gui_intaract.Item.tag.trade.sell_count.sneak
execute if score #i _ matches 1.. run function enderface:gui/processing/shop/trade/frist
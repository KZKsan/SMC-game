#>enderface:gui/processing/shop/trade/
#@api

execute store result score #i _ run data get storage enderface:data gui_intaract.Item.tag.trade.sell_count
execute if score #i _ matches 1.. run function enderface:gui/processing/shop/trade/loop
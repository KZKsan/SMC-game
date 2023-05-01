#>enderface:gui/processing/shop/trade/buy/set_count/test
#@within enderface:gui/processing/shop/trade/buy/check
execute store success storage enderface:data changed byte 1 run data modify storage enderface:data _.id set from storage enderface:data trade.buy[0].id
execute if data storage enderface:data {changed:0b} store success storage enderface:data changed byte 1 run data modify storage enderface:data _.tag set from storage enderface:data trade.buy[0].tag
execute if data storage enderface:data {changed:0b} run function enderface:gui/processing/shop/trade/buy/set_count/main
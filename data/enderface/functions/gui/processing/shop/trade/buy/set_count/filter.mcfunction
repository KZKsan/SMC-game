#>enderface:gui/processing/shop/trade/buy/set_count/filter
#@within enderface:gui/processing/shop/trade/buy/check
execute store success storage enderface:data shop.data_changed byte 1 run data modify storage enderface:data test_item.id set from storage enderface:data shop.tmp.buy[0].id
execute if data storage enderface:data shop{data_changed:0b} store success storage enderface:data shop.data_changed byte 1 run data modify storage enderface:data test_item.components set from storage enderface:data shop.tmp.buy[0].components
execute if data storage enderface:data shop{data_changed:0b} run function enderface:gui/processing/shop/trade/buy/set_count/set
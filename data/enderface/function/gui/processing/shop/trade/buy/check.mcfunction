#>enderface:gui/processing/shop/trade/buy/check
#@within enderface:gui/processing/shop/trade/buy/loop
#@private
data modify storage enderface:data test_item set from storage enderface:data latest_inventory[0]

execute if score #count _ matches 1.. run function enderface:gui/processing/shop/trade/buy/set_count/filter

execute if data storage enderface:data shop{data_changed:0b} run data modify storage enderface:data now_inventory append from storage enderface:data test_item
execute if data storage enderface:data shop{data_changed:1b} run data modify storage enderface:data now_inventory append from storage enderface:data latest_inventory[0]
data remove storage enderface:data latest_inventory[0]
execute if data storage enderface:data latest_inventory[0] run function enderface:gui/processing/shop/trade/buy/check
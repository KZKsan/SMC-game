#>enderface:gui/processing/shop/trade/buy/set_count/set
#@within enderface:gui/processing/shop/trade/buy/set_count/filter
execute store result score #have_count _ run data get storage enderface:data test_item.count

execute if score #have_count _ >= #count _ run function enderface:gui/processing/shop/trade/buy/set_count/less_count
execute if score #have_count _ < #count _ run function enderface:gui/processing/shop/trade/buy/set_count/over_count

execute store result storage enderface:data test_item.count byte 1 run scoreboard players get #have_count _
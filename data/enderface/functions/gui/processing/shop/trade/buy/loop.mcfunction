#>enderface:gui/processing/shop/trade/buy/loop
#@within 

data modify storage enderface:data latest_inventory set from storage enderface:data now_inventory
data modify storage enderface:data now_inventory set value []

execute store result score #Count _ run data get storage enderface:data trade.buy[0].Count

execute if score #Count _ matches 1.. run function enderface:gui/processing/shop/trade/buy/check
data remove storage enderface:data trade.buy[0]
execute store success storage enderface:data success byte 1 if score #Count _ matches 0

execute if data storage enderface:data {success:1b} if data storage enderface:data trade.buy[0] run function enderface:gui/processing/shop/trade/buy/loop
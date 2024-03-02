#>enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/
#@within enderface:gui/processing/shop/trade/first
#@private
## check inventory items
data modify storage enderface:data success set value 1b
execute if entity @s[tag=!no_cost] run function enderface:gui/processing/shop/trade/buy/
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/inventory_test
## buy
execute if entity @s[tag=!no_cost] if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/remove_item/
## sell
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/sell/
## loop
scoreboard players remove #i _ 1
execute if score #i _ matches 1.. if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/loop
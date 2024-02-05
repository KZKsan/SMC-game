#>enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/
#@within enderface:gui/processing/shop/trade/first
#@private
## check inventory items
function enderface:gui/processing/shop/trade/buy/
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/inventory_test
## buy
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/remove_item/
## sell
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/sell/
## loop
scoreboard players remove #i _ 1
execute if score #i _ matches 1.. if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/loop
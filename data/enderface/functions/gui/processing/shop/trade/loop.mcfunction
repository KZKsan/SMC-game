#>enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/
#@private
## check inventory items
function enderface:gui/processing/shop/trade/buy/
## buy
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/remove_item/
## sell
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/sell/
execute if data storage enderface:data {success:1b} run playsound entity.experience_orb.pickup record @s ~ ~ ~ 1 2
execute if data storage enderface:data {success:0b} run playsound block.note_block.bass record @s ~ ~ ~ 1 0.5
## loop
scoreboard players remove #i _ 1
execute if score #i _ matches 1.. if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/loop
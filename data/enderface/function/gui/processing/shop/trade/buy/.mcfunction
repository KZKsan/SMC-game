#>enderface:gui/processing/shop/trade/buy/
#@within enderface:gui/processing/shop/trade/loop
#@within enderface:gui/processing/shop/trade/first
#@private

#>
#@within enderface:gui/processing/shop/trade/buy/**
#declare score_holder #len
#declare score_holder #count
#declare score_holder #have_count


data modify storage enderface:data shop.tmp.buy set from storage enderface:data shop.trade.buy

execute store result score #len _ run data get storage enderface:data shop.tmp.buy

execute if score #len _ matches 1.. run data modify storage enderface:data latest_inventory set value []
execute if score #len _ matches 1.. run data modify storage enderface:data now_inventory set from entity @s Inventory
execute if score #len _ matches 1.. run function enderface:gui/processing/shop/trade/buy/loop
#>enderface:gui/processing/shop/trade/buy/
#@within enderface:gui/processing/shop/trade/loop
#@private

#>
#@within enderface:gui/processing/shop/trade/buy/**
#declare score_holder #len
#declare score_holder #Count
#declare score_holder #have_count

data modify storage enderface:data success set value 1b
data modify storage enderface:data trade.buy set from storage enderface:data gui_intaract.Item.tag.trade.buy

execute store result score #len _ run data get storage enderface:data gui_intaract.Item.tag.trade.buy

execute if score #len _ matches 1.. run data modify storage enderface:data latest_inventory set value []
execute if score #len _ matches 1.. run data modify storage enderface:data now_inventory set from entity @s Inventory
execute if score #len _ matches 1.. run function enderface:gui/processing/shop/trade/buy/loop
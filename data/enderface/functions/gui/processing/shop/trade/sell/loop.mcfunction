#>enderface:gui/processing/shop/trade/sell/loop
#@within enderface:gui/processing/shop/trade/sell/
#@private
execute as @e[tag=give_item] run function enderface:gui/processing/shop/trade/sell/drop_item
summon item ~ ~ ~ {Tags:[set_data,give_item],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[tag=set_data,limit=1] Item set from storage enderface:data trade.sell[0]
tag @e[tag=set_data,distance=..2] remove set_data
data remove storage enderface:data trade.sell[0]
execute if data storage enderface:data trade.sell[0] run function enderface:gui/processing/shop/trade/sell/loop
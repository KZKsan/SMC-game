#>enderface:gui/processing/shop/trade/remove_item/loop
#@within enderface:gui/processing/shop/trade/remove_item/
#@private
execute unless data storage enderface:data _[0].tag run data modify storage enderface:data _[0].tag set value ""
function enderface:gui/processing/shop/trade/remove_item/clear with storage enderface:data _[0]
data remove storage enderface:data _[0]
execute if data storage enderface:data _[0] run function enderface:gui/processing/shop/trade/remove_item/loop
#>enderface:gui/processing/shop/trade/sell/loop
#@within enderface:gui/processing/shop/trade/sell/
#@private
data modify storage enderface:data trade._ set from storage enderface:data trade.sell[0]
execute unless data storage enderface:data trade._.tag run data modify storage enderface:data trade._.tag set value ""
function enderface:gui/processing/shop/trade/sell/give with storage enderface:data trade._
data remove storage enderface:data trade.sell[0]
execute if data storage enderface:data trade.sell[0] run function enderface:gui/processing/shop/trade/sell/loop
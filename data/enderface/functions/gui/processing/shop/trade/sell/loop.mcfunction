#>enderface:gui/processing/shop/trade/sell/loop
#@within enderface:gui/processing/shop/trade/sell/
#@private
execute unless data storage enderface:data shop.trade_data.sell[0].components run data modify storage enderface:data shop.trade_data.sell[0].components set value ""
data modify storage _ item_data set from storage enderface:data shop.trade_data.sell[0]
function item/macro/give/
data remove storage enderface:data shop.trade_data.sell[0]
execute if data storage enderface:data shop.trade_data.sell[0] run function enderface:gui/processing/shop/trade/sell/loop
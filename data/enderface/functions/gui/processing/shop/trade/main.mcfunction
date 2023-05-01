#>enderface:gui/processing/shop/trade/main
#@within enderface:gui/processing/main

#Check buy Items

function enderface:gui/processing/shop/trade/buy/
execute if data storage enderface:data {success:1b} run function enderface:gui/processing/shop/trade/remove_item/
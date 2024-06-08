#>enderface:gui/processing/shop/trade/buy/set_count/less_count
#@within enderface:gui/processing/shop/trade/buy/set_count/set

scoreboard players operation #have_count _ -= #count _
scoreboard players set #count _ 0
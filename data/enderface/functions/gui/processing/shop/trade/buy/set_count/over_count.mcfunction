#>enderface:gui/processing/shop/trade/buy/set_count/over_count
#@within enderface:gui/processing/shop/trade/buy/set_count/main

scoreboard players operation #Count _ -= #have_count _
scoreboard players set #have_count _ 0
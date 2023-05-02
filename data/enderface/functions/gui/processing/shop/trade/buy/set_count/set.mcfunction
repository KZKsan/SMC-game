#>enderface:gui/processing/shop/trade/buy/set_count/set
#@within enderface:gui/processing/shop/trade/buy/set_count/filter
execute store result score #have_count _ run data get storage enderface:data _.Count

execute if score #have_count _ >= #Count _ run function enderface:gui/processing/shop/trade/buy/set_count/less_count
execute if score #have_count _ < #Count _ run function enderface:gui/processing/shop/trade/buy/set_count/over_count

execute store result storage enderface:data _.Count byte 1 run scoreboard players get #have_count _
data modify storage enderface:data _.edit set value 1b
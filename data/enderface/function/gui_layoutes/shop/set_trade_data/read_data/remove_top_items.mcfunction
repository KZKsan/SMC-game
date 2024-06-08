#>enderface:gui_layoutes/shop/set_trade_data/read_data/remove_top_items
#@within enderface:gui_layoutes/shop/set_trade_data/read_data/
#@private

scoreboard players remove # _ 1
scoreboard players remove #line _ 3
data remove storage enderface:shop _[0]
data remove storage enderface:shop _[0]
data remove storage enderface:shop _[0]
execute if score # _ matches 1.. if score #line _ matches 4.. run function enderface:gui_layoutes/shop/set_trade_data/read_data/remove_top_items
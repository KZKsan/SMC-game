#>enderface:gui_layoutes/shop/set_trade_data/read_data/slot/4
#@within enderface:gui_layoutes/shop/set_trade_data/read_data/
data modify entity @e[tag=set_trade_data,limit=1,distance=..2] Items[0] set from storage sco:shop _[4]
item replace entity @s enderchest.10 from entity @e[tag=set_trade_data,limit=1,distance=..2] container.0
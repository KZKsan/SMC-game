#>enderface:gui_layoutes/shop/set_trade_data/read_data/
#@within enderface:gui_layoutes/shop/generic

execute store result score # _ run data get entity @e[predicate=marker_storage,limit=1] data.page
execute store result score #line _ run data get storage sco:shop _
execute if score # _ matches 1.. if score #line _ matches 4.. run function enderface:gui_layoutes/shop/set_trade_data/read_data/remove_top_items
summon chest_minecart ~ ~ ~ {Tags:[set_trade_data],Items:[{id:"stick",Count:1b}]}
execute if data storage sco:shop _[0] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/0
execute if data storage sco:shop _[1] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/1
execute if data storage sco:shop _[2] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/2
execute if data storage sco:shop _[3] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/3
execute if data storage sco:shop _[4] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/4
execute if data storage sco:shop _[5] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/5
execute if data storage sco:shop _[6] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/6
execute if data storage sco:shop _[7] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/7
execute if data storage sco:shop _[8] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/8

data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items
kill @e[tag=set_trade_data,distance=..2]
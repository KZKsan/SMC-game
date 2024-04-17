#>enderface:gui_layoutes/shop/set_trade_data/read_data/
#@within enderface:gui_layoutes/shop/generic

execute store result score # _ run data get storage p-storage _[0].data.page
execute store result score #line _ run data get storage enderface:shop _
execute if score # _ matches 1.. if score #line _ matches 4.. run function enderface:gui_layoutes/shop/set_trade_data/read_data/remove_top_items
summon chest_minecart ~ ~ ~ {Tags:[set_trade_data],Items:[{id:"stick",count:1}]}
data modify storage enderface:shop _[{}].components."minecraft:custom_data".preview_trade_page set value 0
data modify storage enderface:shop _[{}].components."minecraft:custom_data".click_events set value {click_sounds:[{sound:"ui.button.click"}]}
execute if data storage enderface:shop _[0] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/0
execute if data storage enderface:shop _[1] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/1
execute if data storage enderface:shop _[2] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/2
execute if data storage enderface:shop _[3] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/3
execute if data storage enderface:shop _[4] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/4
execute if data storage enderface:shop _[5] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/5
execute if data storage enderface:shop _[6] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/6
execute if data storage enderface:shop _[7] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/7
execute if data storage enderface:shop _[8] run function enderface:gui_layoutes/shop/set_trade_data/read_data/slot/8

data remove entity @e[tag=set_trade_data,limit=1,distance=..2] Items
kill @e[tag=set_trade_data,distance=..2]
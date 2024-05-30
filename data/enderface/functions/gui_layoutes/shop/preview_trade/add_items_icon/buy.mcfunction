#>enderface:gui_layoutes/shop/preview_trade/add_items_icon/buy
#@within enderface:gui_layoutes/shop/preview_trade/buy_items/0-any
loot replace entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0 loot enderface:shop/add_items/buy
data modify storage _ data_fetch.buy set from storage p-storage _[0].data.enderface.shop.preview_trade.data.buy
data remove storage _ data_fetch.buy[0]
data remove storage _ data_fetch.buy[0]
data remove storage _ data_fetch.buy[0]
data remove storage _ data_fetch.buy[0]
data remove storage _ data_fetch.buy[0]

data remove storage c_str str
data modify storage c_str str append value '[{"text":"","color":white,"italic":false},"'
execute store result storage _ data_fetch.count int 1 run data get storage _ data_fetch.buy
data modify storage c_str str append string storage _ data_fetch.count
data modify storage c_str str append value '"'
data modify storage c_str str append value ","
data modify storage c_str str append value '{"text":"コ のアイテム"}]'
function c_str/
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].components."minecraft:lore" append from storage c_str str[0]
item modify entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0 enderface:shop/click_to_others


data remove storage _ data_fetch

item replace entity @s enderchest.23 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
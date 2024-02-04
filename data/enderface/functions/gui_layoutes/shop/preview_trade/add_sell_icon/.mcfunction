#>enderface:gui_layoutes/shop/preview_trade/add_sell_icon/
#@within enderface:gui_layoutes/shop/preview_trade/
loot replace entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0 loot enderface:shop/add_items
data modify storage _ data_fetch.sell set from storage p-storage _[0].data.preview_trade.trade.tag.trade.sell
data remove storage _ data_fetch.sell[0]

function enderface:gui_layoutes/shop/preview_trade/add_sell_icon/loop

data remove storage _ data_fetch

item replace entity @s enderchest.17 from entity @e[tag=gui_layout_item,distance=..2,limit=1] container.0
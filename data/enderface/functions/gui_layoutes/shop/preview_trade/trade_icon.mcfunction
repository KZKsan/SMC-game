#>enderface:gui_layoutes/shop/preview_trade/trade_icon
#@within enderface:gui_layoutes/shop/preview_trade/
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0] set from storage p-storage _[0].data.preview_trade.trade.tag.trade.trade_icon
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items[0].tag.trade set from storage p-storage _[0].data.preview_trade.trade.tag.trade
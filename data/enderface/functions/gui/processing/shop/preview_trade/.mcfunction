#>enderface:gui/processing/shop/preview_trade/
#@api
data modify storage enderface:data shop.preview_trade_data set value {page:0,buy:[],trade:{},add_preview_trade:{}}
data modify storage enderface:data shop.preview_trade_data.page set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade_page
$data modify storage enderface:data shop.preview_trade_data.buy set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade[$(preview_trade_page)].buy
data modify storage enderface:data shop.preview_trade_data.trade set from storage enderface:data gui_intaract.Item
$data modify storage enderface:data shop.preview_trade_data.trade.components."minecraft:custom_data".trade set from storage enderface:data shop.preview_trade_data.trade.components."minecraft:custom_data".preview_trade[$(preview_trade_page)]
data remove storage enderface:data shop.preview_trade_data.trade.components."minecraft:custom_data".preview_trade
data remove storage enderface:data shop.preview_trade_data.trade.Slot
data modify storage enderface:data shop.preview_trade_data.add_preview_trade set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade
#data remove storage enderface:data _.trade.components."minecraft:custom_data".display.Lore[-1]
#data remove storage enderface:data _.trade.components."minecraft:custom_data".display.Lore[-1]
data modify storage p-storage _[0].data.preview_trade set from storage enderface:data shop.preview_trade_data
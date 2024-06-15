#>enderface:gui/processing/shop/preview_trade/page
#@within enderface:gui/processing/main
$data modify storage enderface:data shop.preview_trade_data.data set from storage p-storage _[0].data.enderface.shop.preview_trade.table[$(preview_trade_page)]
data modify storage enderface:data shop.preview_trade_data.page set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade_page
data modify storage p-storage _[0].data.enderface.shop.preview_trade set from storage enderface:data shop.preview_trade_data
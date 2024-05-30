#>enderface:gui/processing/shop/preview_trade/
#@api
data modify storage enderface:data shop.preview_trade_data set value {page:0,data:{},table:[]}
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:0b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[0]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:1b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[1]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:2b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[2]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:9b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[3]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:10b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[4]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:11b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[5]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:18b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[6]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:19b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[7]
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:20b}} run data modify storage enderface:data shop.preview_trade_data.table set from storage p-storage _[0].data.enderface.shop.icon_data[8]
data modify storage enderface:data shop.preview_trade_data.data set from storage enderface:data shop.preview_trade_data.table[0]
data modify storage p-storage _[0].data.enderface.shop.preview_trade set from storage enderface:data shop.preview_trade_data

#data modify storage enderface:data shop.preview_trade_data set value {page:0,buy:[],trade:{},add_preview_trade:{}}
#data modify storage enderface:data shop.preview_trade_data.page set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade_page
#$data modify storage enderface:data shop.preview_trade_data.buy set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade[$(preview_trade_page)].buy
#data modify storage enderface:data shop.preview_trade_data.trade set from storage enderface:data gui_intaract.Item
#$data modify storage enderface:data shop.preview_trade_data.trade.components."minecraft:custom_data".trade set from storage enderface:data shop.preview_trade_data.trade.components."minecraft:custom_data".preview_trade[$(preview_trade_page)]
#data remove storage enderface:data shop.preview_trade_data.trade.components."minecraft:custom_data".preview_trade
#data remove storage enderface:data shop.preview_trade_data.trade.Slot
#data modify storage enderface:data shop.preview_trade_data.add_preview_trade set from storage enderface:data gui_intaract.Item.components."minecraft:custom_data".preview_trade
##data remove storage enderface:data _.trade.components."minecraft:custom_data".display.Lore[-1]
##data remove storage enderface:data _.trade.components."minecraft:custom_data".display.Lore[-1]
#data modify storage p-storage _[0].data.preview_trade set from storage enderface:data shop.preview_trade_data
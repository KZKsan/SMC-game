#>enderface:gui/processing/shop/preview_trade/
#@api
data modify storage enderface:data _ set value {buy:[],trade:{}}
data modify storage enderface:data _.buy set from storage enderface:data gui_intaract.Item.tag.preview_trade.buy
data modify storage enderface:data _.trade set from storage enderface:data gui_intaract.Item
data modify storage enderface:data _.trade.tag.trade set from storage enderface:data _.trade.tag.preview_trade
data remove storage enderface:data _.trade.tag.preview_trade
data remove storage enderface:data _.trade.Slot
data remove storage enderface:data _.trade.tag.display.Lore[-1]
data remove storage enderface:data _.trade.tag.display.Lore[-1]
data modify storage p-storage _[0].data.preview_trade set from storage enderface:data _
playsound ui.button.click record @s ~ ~ ~ 0.5 1
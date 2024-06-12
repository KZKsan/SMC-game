#>enderface:gui_layoutes/shop/preview_trade/add_preview_trade/
#@within enderface:gui_layoutes/shop/preview_trade/

execute store result score #line _ run data get storage p-storage _[0].data.enderface.shop.preview_trade.table
execute store result score #page _ run data get storage p-storage _[0].data.enderface.shop.preview_trade.page
scoreboard players remove #line _ 1
execute unless score #line _ = #page _ run function enderface:gui_layoutes/shop/preview_trade/add_preview_trade/down_arrow
execute unless data storage p-storage _[0].data.enderface.shop.preview_trade{page:0} run function enderface:gui_layoutes/shop/preview_trade/add_preview_trade/up_arrow


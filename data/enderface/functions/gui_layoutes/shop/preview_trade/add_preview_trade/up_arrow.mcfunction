#>enderface:gui_layoutes/shop/preview_trade/add_preview_trade/up_arrow
#@within enderface:gui_layoutes/shop/preview_trade/add_preview_trade/
loot replace entity @e[type=chest_minecart,tag=gui_layout_item,distance=..2,limit=1] container.0 loot enderface:shop/add_preview_trade/up_arrow
execute store result score #page _ run data get storage p-storage _[0].data.enderface.shop.preview_trade.page
execute store result entity @e[type=chest_minecart,tag=gui_layout_item,distance=..2,limit=1] Items[0].components."minecraft:custom_data".preview_trade_page int 1 run scoreboard players remove #page _ 1
item replace entity @s enderchest.6 from entity @e[type=chest_minecart,tag=gui_layout_item,distance=..2,limit=1] container.0
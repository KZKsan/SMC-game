#>enderface:gui_layoutes/shop/generic
#@within enderface:gui_layoutes/shop/**
function enderface:gui_layoutes/generic/set_gray_pane

item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air

loot replace entity @s enderchest.26 loot enderface:shop/return_shop.0
function enderface:gui_layoutes/shop/set_trade_data/read_data/
execute store result score # _ run data get storage p-storage _[0].data.page
execute store result score #line _ run data get storage sco:shop _
execute if score # _ matches 1.. run loot replace entity @s enderchest.3 loot enderface:shop/up_arrow
execute if score #line _ matches 10.. run loot replace entity @s enderchest.21 loot enderface:shop/down_arrow

execute if data storage p-storage _[0].data.preview_trade run function enderface:gui_layoutes/shop/preview_trade/

item modify entity @s enderchest.0 enderface:shop/click_to_preview
item modify entity @s enderchest.1 enderface:shop/click_to_preview
item modify entity @s enderchest.2 enderface:shop/click_to_preview
item modify entity @s enderchest.9 enderface:shop/click_to_preview
item modify entity @s enderchest.10 enderface:shop/click_to_preview
item modify entity @s enderchest.11 enderface:shop/click_to_preview
item modify entity @s enderchest.18 enderface:shop/click_to_preview
item modify entity @s enderchest.19 enderface:shop/click_to_preview
item modify entity @s enderchest.20 enderface:shop/click_to_preview
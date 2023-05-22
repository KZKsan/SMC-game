#>enderface:gui_layoutes/shop/test
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.26 loot enderface:shop/return_shop.0

#エメラルド x2 && 鉄インゴット x2
item replace entity @s enderchest.0 with coal{preview_trade:{buy:[{id:"minecraft:emerald",Count:2b},{id:"minecraft:iron_ingot",Count:2b}],sell:[{id:"minecraft:coal",Count:10b}],sell_count:{click:1,sneak:6}},enderfaceItem:1b} 10

#エメラルド{test:1b} x2 && ダイヤモンド x10
item replace entity @s enderchest.2 with brick{preview_trade:{buy:[{id:"minecraft:emerald",Count:2b,tag:{test:1b}},{id:"minecraft:diamond",Count:10b}],sell:[{id:"minecraft:brick",Count:32b}],sell_count:{click:1,sneak:2}},enderfaceItem:1b} 32
function marker_storage/get
execute if data entity @e[predicate=marker_storage,limit=1] data.preview_trade run function enderface:gui_layoutes/shop/preview_trade/

item modify entity @s enderchest.0 enderface:shop/click_to_preview
item modify entity @s enderchest.1 enderface:shop/click_to_preview
item modify entity @s enderchest.2 enderface:shop/click_to_preview
item modify entity @s enderchest.9 enderface:shop/click_to_preview
item modify entity @s enderchest.10 enderface:shop/click_to_preview
item modify entity @s enderchest.11 enderface:shop/click_to_preview
item modify entity @s enderchest.18 enderface:shop/click_to_preview
item modify entity @s enderchest.19 enderface:shop/click_to_preview
item modify entity @s enderchest.20 enderface:shop/click_to_preview

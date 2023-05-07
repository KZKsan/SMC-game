#>enderface:gui_layoutes/shop/test
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.26 loot enderface:shop/return_shop.0

#エメラルド x2 && 鉄インゴット x2
item replace entity @s enderchest.0 with coal{trade:{buy:[{id:"minecraft:emerald",Count:2b},{id:"minecraft:iron_ingot",Count:2b}],sell:[{id:"minecraft:coal",Count:10b}],sell_count:{click:1b,sneak:6b}},enderfaceItem:1b} 10

#エメラルド{test:1b} x2 && ダイヤモンド x10
item replace entity @s enderchest.2 with brick{trade:{buy:[{id:"minecraft:emerald",Count:2b,tag:{test:1b}},{id:"minecraft:diamond",Count:10b}],sell:[{id:"minecraft:brick",Count:32b}],sell_count:{click:1b,sneak:2b}},enderfaceItem:1b} 32


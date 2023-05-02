#>enderface:gui_layoutes/shop/test
#@within enderface:gui_layoutes/load

function enderface:gui_layoutes/generic/set_air

loot replace entity @s enderchest.26 loot enderface:shop/return_shop.0

#エメラルド x2 && 鉄インゴット x2
item replace entity @s enderchest.0 with acacia_boat{trade:{buy:[{id:"minecraft:emerald",Count:2b},{id:"minecraft:iron_ingot",Count:2b}],sell:[{id:"minecraft:acacia_boat",Count:1b}],sell_count:{click:1b,sneak:64b}},enderfaceItem:1b}

#エメラルド{test:1b} x2 && ダイヤモンド x10
item replace entity @s enderchest.2 with acacia_boat{trade:{buy:[{id:"minecraft:emerald",Count:2b,tag:{test:1b}},{id:"minecraft:diamond",Count:10b}],sell:[{id:"minecraft:acacia_boat",Count:1b}],sell_count:{click:1b,sneak:64b}},enderfaceItem:1b}


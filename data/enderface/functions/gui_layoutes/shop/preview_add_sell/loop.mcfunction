#>enderface:gui_layoutes/shop/preview_add_sell/loop
#@within enderface:gui_layoutes/shop/preview_add_sell/
#@private

execute store result storage _ _[0].Slot byte 1 run scoreboard players get #i _
data modify entity @e[tag=gui_layout_item,distance=..2,limit=1] Items append from storage _ _
data remove storage _ _[0]
scoreboard players add #i _ 1
execute if data storage _ _[0] run function enderface:gui_layoutes/shop/preview_add_sell/loop
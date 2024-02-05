#>enderface:gui/processing/shop/trade/inventory_test
#@within enderface:gui/processing/shop/trade/**
execute store result score #_ _ run data get storage enderface:data gui_intaract.Item.tag.trade.sell
data modify storage _ _ set from storage enderface:data now_inventory
data remove storage _ _[{Count:0b}]
data remove storage _ _[{Slot:100b}]
data remove storage _ _[{Slot:101b}]
data remove storage _ _[{Slot:102b}]
data remove storage _ _[{Slot:103b}]
data remove storage _ _[{Slot:-106b}]
execute store result score # _ run data get storage _ _
scoreboard players operation # _ += #_ _
execute store success storage enderface:data success byte 1 if score # _ matches ..36
execute if data storage enderface:data {success:0b} run data modify storage enderface:data success set value -1b
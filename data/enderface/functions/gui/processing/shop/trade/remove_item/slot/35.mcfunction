#>enderface:gui/processing/shop/trade/remove_item/slot/35
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:35b}].Count
item modify entity @s inventory.26 remove_item
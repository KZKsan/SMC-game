#>enderface:gui/processing/shop/trade/remove_item/slot/13
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:13b}].Count
item modify entity @s inventory.4 remove_item
#>enderface:gui/processing/shop/trade/remove_item/slot/12
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:12b}].Count
item modify entity @s inventory.3 remove_item
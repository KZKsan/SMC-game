#>enderface:gui/processing/shop/trade/remove_item/slot/11
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:11b}].Count
item modify entity @s inventory.2 remove_item
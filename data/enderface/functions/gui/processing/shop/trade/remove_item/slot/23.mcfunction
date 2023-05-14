#>enderface:gui/processing/shop/trade/remove_item/slot/23
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:23b}].Count
item modify entity @s inventory.14 remove_item
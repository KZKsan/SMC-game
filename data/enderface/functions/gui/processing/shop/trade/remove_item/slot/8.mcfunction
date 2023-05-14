#>enderface:gui/processing/shop/trade/remove_item/slot/8
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:8b}].Count
item modify entity @s hotbar.8 remove_item
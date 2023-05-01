#>enderface:gui/processing/shop/trade/remove_item/slot/7
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:7b}].Count
item modify entity @s hotbar.7 remove_item
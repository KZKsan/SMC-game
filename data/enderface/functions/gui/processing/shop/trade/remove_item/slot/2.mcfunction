#>enderface:gui/processing/shop/trade/remove_item/slot/2
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:2b}].Count
item modify entity @s hotbar.2 remove_item
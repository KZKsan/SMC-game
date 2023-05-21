#>enderface:gui/processing/shop/trade/remove_item/slot/22
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:22b}].Count
item modify entity @s inventory.13 set_count_from_score
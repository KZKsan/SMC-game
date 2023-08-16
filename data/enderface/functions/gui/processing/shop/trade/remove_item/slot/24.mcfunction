#>enderface:gui/processing/shop/trade/remove_item/slot/24
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:24b}].Count
item modify entity @s inventory.15 set_count_from_score
#>enderface:gui/processing/shop/trade/remove_item/slot/20
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:20b}].Count
item modify entity @s inventory.11 set_count_from_score
#>enderface:gui/processing/shop/trade/remove_item/slot/1
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:1b}].Count
item modify entity @s hotbar.1 set_count_from_score
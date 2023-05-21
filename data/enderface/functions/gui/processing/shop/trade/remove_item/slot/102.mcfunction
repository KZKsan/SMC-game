#>enderface:gui/processing/shop/trade/remove_item/slot/102
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:102b}].Count
item modify entity @s armor.chest set_count_from_score
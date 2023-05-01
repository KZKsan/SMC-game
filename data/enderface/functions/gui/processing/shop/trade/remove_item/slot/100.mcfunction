#>enderface:gui/processing/shop/trade/remove_item/slot/100
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:100b}].Count
item modify entity @s armor.feet remove_item
#>enderface:gui/processing/shop/trade/remove_item/slot/103
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:103b}].Count
item modify entity @s armor.head remove_item
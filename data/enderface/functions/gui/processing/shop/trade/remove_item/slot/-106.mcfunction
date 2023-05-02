#>enderface:gui/processing/shop/trade/remove_item/slot/-106
#@within enderface:gui/processing/shop/trade/remove_item/
execute store result score @s remove_item_count run data get storage enderface:data _[{Slot:-106b}].Count
item modify entity @s weapon.offhand remove_item
#>enderface:gui/processing/shop/trade/remove_item/clear
#@api
tellraw @p {"nbt":"_[0]","storage": "enderface:data"}
$clear @s $(id)$(tag) $(Count)
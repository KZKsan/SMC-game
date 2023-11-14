#>sco:player/inventory_histories/return_items/offhand
#@within sco:player/inventory_histories/return_items/
$item replace entity @s weapon.offhand with $(id)$(tag) $(Count)
data remove storage _ _[{Slot:-106b}]
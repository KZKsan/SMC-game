#>sco:player/inventory_histories/return_items/chest
#@within sco:player/inventory_histories/return_items/
$item replace entity @s armor.chest with $(id)$(tag) $(Count)
data remove storage _ _[{Slot:102b}]
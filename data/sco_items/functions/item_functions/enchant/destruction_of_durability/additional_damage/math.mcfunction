#>sco_items:item_functions/enchant/destruction_of_durability/additional_damage/math
#@within sco_items:item_functions/enchant/destruction_of_durability/additional_damage/
$execute store result score # _ run data get entity @s Inventory[{Slot:$(Slot)}].tag.Damage
execute store result storage _ _ int 1 run scoreboard players operation # _ -= #damage _
$execute if score # _ matches ..0 run return run item modify entity @s $(name) delete_item
$item modify entity @s $(name) set_damage
#>sco_items:item_functions/using_damage/chest
#@within advancement sco_items:item_functions/using_damage/chest
data modify storage _ _ set from entity @s Inventory[{Slot:102b}].tag.item_functions.using_damage
data remove storage _ __
data modify storage _ __ set from entity @s Inventory[{Slot:102b}].tag.Damage
execute store success score # _ if function sco_items:item_functions/using_damage/check_nbt run function sco_items:item_functions/using_damage/math/tick
execute if score # _ matches 1 run item modify entity @s armor.chest sco_items:item_functions/using_damage/copy
execute if score # _ matches 1 if data storage _ _{active:-1b} run item modify entity @s armor.chest delete
execute if score # _ matches 1 run stopsound @s player item.armor.equip_iron
advancement revoke @s only sco_items:item_functions/using_damage/chest
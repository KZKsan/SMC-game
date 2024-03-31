#>sco_items:item_functions/using_damage/chest
#@within advancement sco_items:item_functions/using_damage/chest
data remove storage _ _
data remove storage _ data_fetch
data modify storage _ _ set from entity @s Inventory[{Slot:102b}].tag.item_functions.using_damage
data modify storage _ data_fetch.id set from entity @s Inventory[{Slot:102b}].id
execute store result storage _ _.max_damage int 1 run function item/damage_data
data remove storage _ __
data modify storage _ __ set from entity @s Inventory[{Slot:102b}].tag.Damage
scoreboard players set # _ 0
execute store success score # _ if function sco_items:item_functions/using_damage/check_nbt run function sco_items:item_functions/using_damage/math/tick
execute if score # _ matches 1 run item modify entity @s armor.chest sco_items:item_functions/using_damage/copy
execute if score # _ matches 1 run function item/stop_change_sounds
execute if score # _ matches 1 if data storage _ _{active:-1b} run playsound entity.item.break player @a ~ ~ ~ 0.8 1
execute if score # _ matches 1 if data storage _ _{active:-1b} run item modify entity @s armor.chest delete
advancement revoke @s only sco_items:item_functions/using_damage/chest
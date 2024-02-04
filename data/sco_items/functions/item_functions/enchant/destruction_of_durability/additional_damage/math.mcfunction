#>sco_items:item_functions/enchant/destruction_of_durability/additional_damage/math
#@within sco_items:item_functions/enchant/destruction_of_durability/additional_damage/
$data modify storage _ data_fetch.id set from entity @s Inventory[{Slot:$(Slot)}].id
$data modify storage _ data_fetch.tag set from entity @s Inventory[{Slot:$(Slot)}].tag
$execute if data entity @s Inventory[{Slot:$(Slot)}].tag run data modify storage _ data_fetch.tag set value ""
execute store result score #damage_data _ run function item/damage_data
$execute store result score # _ run data get entity @s Inventory[{Slot:$(Slot)}].tag.Damage
execute store result storage _ _ int 1 run scoreboard players operation # _ += #damage _
execute if score # _ >= #damage_data _ run playsound entity.item.break player @a ~ ~ ~ 0.8 1
execute if score # _ >= #damage_data _ positioned ~ ~1 ~ run function item/particle/break with storage _ data_fetch
$execute if score # _ >= #damage_data _ run return run item modify entity @s $(name) delete
$item modify entity @s $(name) set_damage
function item/stop_change_sounds
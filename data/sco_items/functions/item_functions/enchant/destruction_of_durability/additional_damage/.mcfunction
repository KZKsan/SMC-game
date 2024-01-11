#>sco_items:item_functions/enchant/destruction_of_durability/additional_damage/
#@within sco_items:item_functions/enchant/destruction_of_durability/attack
execute store result score #damage _ run data get entity @p[tag=origin] SelectedItem.tag.item_functions.enchant[{id:"destruction_of_durability"}].lvl 20

execute if data entity @s Inventory[{Slot:100b}].tag.Damage run function sco_items:item_functions/enchant/destruction_of_durability/additional_damage/math {Slot:"100b",name:"armor.feet"}
execute if data entity @s Inventory[{Slot:101b}].tag.Damage run function sco_items:item_functions/enchant/destruction_of_durability/additional_damage/math {Slot:"101b",name:"armor.legs"}
execute if data entity @s Inventory[{Slot:102b}].tag.Damage run function sco_items:item_functions/enchant/destruction_of_durability/additional_damage/math {Slot:"102b",name:"armor.chest"}
execute if data entity @s Inventory[{Slot:103b}].tag.Damage run function sco_items:item_functions/enchant/destruction_of_durability/additional_damage/math {Slot:"103b",name:"armor.head"}
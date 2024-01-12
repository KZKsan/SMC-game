#>sco_items:item_functions/enchant/flammability/hurt
#@within advancement sco_items:item_functions/enchant/flammability/hurt
scoreboard players set #lvl _ 1
scoreboard players set # _ 0
execute if data entity @s Inventory[{Slot:100b}].tag.item_functions.enchant[{id:"flammability"}] store result score # _ run data get entity @s Inventory[{Slot:100b}].tag.item_functions.enchant[{id:"flammability"}].lvl
scoreboard players operation #lvl _ += # _
scoreboard players set # _ 0
execute if data entity @s Inventory[{Slot:101b}].tag.item_functions.enchant[{id:"flammability"}] store result score # _ run data get entity @s Inventory[{Slot:101b}].tag.item_functions.enchant[{id:"flammability"}].lvl
scoreboard players operation #lvl _ += # _
scoreboard players set # _ 0
execute if data entity @s Inventory[{Slot:102b}].tag.item_functions.enchant[{id:"flammability"}] store result score # _ run data get entity @s Inventory[{Slot:102b}].tag.item_functions.enchant[{id:"flammability"}].lvl
scoreboard players operation #lvl _ += # _
scoreboard players set # _ 0
execute if data entity @s Inventory[{Slot:103b}].tag.item_functions.enchant[{id:"flammability"}] store result score # _ run data get entity @s Inventory[{Slot:103b}].tag.item_functions.enchant[{id:"flammability"}].lvl
data remove storage _ data_fetch
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={in_fire=true}}] store result storage _ data_fetch.damage double 1 run scoreboard players operation #lvl _ += # _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={on_fire=true}}] store result storage _ data_fetch.damage double 1 run scoreboard players operation #lvl _ += # _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={hot_floor=true}}] store result storage _ data_fetch.damage double 1 run scoreboard players operation #lvl _ += # _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={lava=true}}] store result storage _ data_fetch.damage double 4 run scoreboard players operation #lvl _ += # _
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={in_fire=true}}] run data modify storage _ data_fetch.id set value "in_fire"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={on_fire=true}}] run data modify storage _ data_fetch.id set value "on_fire"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={hot_floor=true}}] run data modify storage _ data_fetch.id set value "hot_floor"
execute if entity @s[advancements={sco_items:item_functions/enchant/flammability/hurt={lava=true}}] run data modify storage _ data_fetch.id set value "lava"

function sco_items:item_functions/enchant/flammability/macro with storage _ data_fetch

advancement revoke @s only sco_items:item_functions/enchant/flammability/hurt
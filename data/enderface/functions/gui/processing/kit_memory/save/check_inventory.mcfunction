#>enderface:gui/processing/kit_memory/save/check_inventory
#@within enderface:gui/processing/kit_memory/save/
execute store result score # _ run data get entity @s Inventory
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove # _ 1
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players remove # _ 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players remove # _ 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players remove # _ 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players remove # _ 1
execute if data entity @s Inventory[{tag:{team_color:1b}}] run scoreboard players remove # _ 1
execute if score # _ matches 36.. run return 1
return 0
#>enderface:open/main
#@within enderface:open_ender_chest
function p-storage/get
data modify storage enderface:data gui_history set value []
execute if score @s enderface_gui matches 0 run function enderface:enderchest_data/copy
scoreboard players set @s[scores={enderface_gui=1..}] enderface_gui -1
execute if entity @e[predicate=enderface:interface_type/all,distance=..6] run scoreboard players set @s enderface_gui 1
execute if score @s enderface_gui matches -1 run function enderface:open/paste_enderchest_data
execute if score @s enderface_gui matches 1 run function #enderface:gui_layoutes
advancement revoke @s only enderface:open_ender_chest
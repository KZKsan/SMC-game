#>enderface:main
#@within tick
execute as @e[predicate=enderface:interface_type/all,tag=!unbreakable] at @s unless block ~ ~ ~ ender_chest run kill @s
execute as @e[predicate=enderface:interface_type/all,tag=unbreakable] at @s unless block ~ ~ ~ ender_chest run function enderface:set_ender_chest/replace

tag @a[tag=enderface_item_remove_chain] remove enderface_item_remove_chain

execute as @a[scores={enderface_gui=1..}] at @s if entity @e[predicate=enderface:interface_type/all,distance=..6] run function enderface:gui/main
execute as @a[scores={enderface_gui=1..}] at @s unless entity @e[predicate=enderface:interface_type/all,distance=..6] run function enderface:open/main
clear @a *[custom_data~{enderface_item:1b}]
kill @e[predicate=enderface:paste_enderchest]
kill @e[predicate=enderface:gui_item]
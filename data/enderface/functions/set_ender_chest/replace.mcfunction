#>enderface:set_ender_chest/replace
#@within enderface:main

execute if data entity @s {Rotation:[0f,0f]} run setblock ~ ~ ~ ender_chest[facing=south]
execute if data entity @s {Rotation:[90f,0f]} run setblock ~ ~ ~ ender_chest[facing=west]
execute if data entity @s {Rotation:[180f,0f]} run setblock ~ ~ ~ ender_chest[facing=north]
execute if data entity @s {Rotation:[-90f,0f]} run setblock ~ ~ ~ ender_chest[facing=east]
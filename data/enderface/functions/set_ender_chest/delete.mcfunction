#>enderface:set_ender_chest/delete
#@api

execute if entity @s[predicate=enderface:interface_type/all] if block ~ ~ ~ ender_chest run setblock ~ ~ ~ air
kill @s[predicate=enderface:interface_type/all]

execute as @e[predicate=enderface:interface_type/all,distance=..5,sort=nearest,limit=1] at @s if block ~ ~ ~ ender_chest run setblock ~ ~ ~ air
kill @e[predicate=enderface:interface_type/all,distance=..5,sort=nearest,limit=1]
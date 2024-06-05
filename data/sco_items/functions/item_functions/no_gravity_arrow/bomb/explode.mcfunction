#>sco_items:item_functions/no_gravity_arrow/bomb/explode
#@within sco_items:item_functions/no_gravity_arrow/bomb/
execute on passengers run function sco_items:item_functions/no_gravity_arrow/bomb/origin with entity @s data
tag @s add de
execute if entity @s[tag=red] as @e[distance=..5,team=!red,predicate=!gamemode/cs] run function sco_items:item_functions/no_gravity_arrow/bomb/damage
execute if entity @s[tag=blue] as @e[distance=..5,team=!blue,predicate=!gamemode/cs] run function sco_items:item_functions/no_gravity_arrow/bomb/damage
execute if data storage sco:input game{friendlyfire:true} if entity @s[tag=red] as @e[distance=..5,tag=!origin,team=red,predicate=!gamemode/cs] run function sco_items:item_functions/no_gravity_arrow/bomb/damage
execute if data storage sco:input game{friendlyfire:true} if entity @s[tag=blue] as @e[distance=..5,tag=!origin,team=blue,predicate=!gamemode/cs] run function sco_items:item_functions/no_gravity_arrow/bomb/damage
execute if entity @s[tag=mode.practice] as @e[distance=..5,team=!mode.practice,predicate=!gamemode/cs] run function sco_items:item_functions/no_gravity_arrow/bomb/damage
execute if entity @s[tag=other] as @e[distance=..5,tag=!origin,predicate=!gamemode/cs] run function sco_items:item_functions/no_gravity_arrow/bomb/damage
playsound entity.generic.explode record @a ~ ~ ~ 1 1.5
particle explosion ~ ~ ~ 0.8 0.8 0.8 0.1 5
particle explosion ~ ~ ~ 0 0 0 0.1 1
tag @p[tag=origin] remove origin
tag @s remove de
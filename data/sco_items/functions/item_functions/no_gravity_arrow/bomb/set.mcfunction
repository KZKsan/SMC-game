#>sco_items:item_functions/no_gravity_arrow/bomb/set
#@within sco_items:item_functions/no_gravity_arrow/**
tag @s add origin
execute if entity @s[team=red] as @a[team=blue,distance=..10] run function sco_items:item_functions/no_gravity_arrow/bomb/explode
execute if entity @s[team=blue] as @a[team=red,distance=..10] run function sco_items:item_functions/no_gravity_arrow/bomb/explode
execute if entity @s[team=!red,team=!blue] as @e[distance=..10] run function sco_items:item_functions/no_gravity_arrow/bomb/explode
playsound entity.generic.explode record @a ~ ~ ~ 1 1.5
particle explosion ~ ~ ~ 0.6 0.6 0.6 0.1 5
particle explosion ~ ~ ~ 0 0 0 0.1 1
tag @s remove origin
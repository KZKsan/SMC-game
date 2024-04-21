#>sco_items:item_functions/using_damage/math/tick
#@within sco_items:item_functions/using_damage/**
scoreboard players add #using_damage.tick _ 1
execute if score #using_damage.tick _ >= #using_damage.interval _ run function sco_items:item_functions/using_damage/math/damage
execute store result storage sco_items:data using_damage.tick int 1 run scoreboard players get #using_damage.tick _
item modify entity @s armor.chest sco_items:item_functions/using_damage/tick
return 1
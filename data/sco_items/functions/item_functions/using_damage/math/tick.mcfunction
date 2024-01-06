#>sco_items:item_functions/using_damage/math/tick
#@within sco_items:item_functions/using_damage/**
scoreboard players add #using_damage.tick _ 1
execute if score #using_damage.tick _ >= #using_damage.interval _ run function sco_items:item_functions/using_damage/math/damage
execute store result storage _ _.tick int 1 run scoreboard players get #using_damage.tick _
return 1
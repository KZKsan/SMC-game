#>sco_items:item_functions/using_damage/check_nbt
#@within sco_items:item_functions/using_damage/**
execute store result score #using_damage.tick _ run data get storage sco_items:data using_damage.tick
execute store result score #using_damage.interval _ run data get storage sco_items:data using_damage.interval
execute store result storage sco_items:data using_damage.damage double -0.000000001 run data get storage sco_items:data using_damage.damage 1000000000
execute if data storage sco_items:data using_damage.tick if data storage sco_items:data using_damage.interval if data storage sco_items:data using_damage.damage run return 1
return fail
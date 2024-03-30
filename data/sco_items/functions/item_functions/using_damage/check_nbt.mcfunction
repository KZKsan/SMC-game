#>sco_items:item_functions/using_damage/check_nbt
#@within sco_items:item_functions/using_damage/**
execute store result score #using_damage.tick _ run data get storage _ _.tick
execute store result score #using_damage.interval _ run data get storage _ _.interval
execute store result score #using_damage.damage _ run data get storage _ _.damage
execute store result score #using_damage.max_damage _ run data get storage _ _.max_damage
execute store result score #using_damage.now_damage _ run data get storage _ __
execute if data storage _ _.tick if data storage _ _.interval if data storage _ _.damage if data storage _ _.max_damage if data storage _ __ run return 1
return fail
#>sco_items:item_functions/throw_lock/add_time
#@within sco_items:item_functions/throw_lock/
tag @s add potion
execute on origin store result score @s throw_lock.max_time store result score @s throw_lock.time run data get entity @e[type=potion,tag=potion,limit=1] Item.components."minecraft:custom_data".item_functions.throw_lock
tag @s remove potion
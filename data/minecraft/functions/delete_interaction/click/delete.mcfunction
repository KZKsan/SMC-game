#>delete_interaction/click/delete
#@within delete_interaction/click/
execute store result storage _ _ long 1 run time query gametime
execute store result storage _ __ long 1 run data get entity @s interaction.timestamp
execute store success score # _ run data modify storage _ _ set from storage _ __
execute if score # _ matches 0 run kill
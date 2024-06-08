#>delete_interaction/attack/delete
#@within delete_interaction/attack/
execute store result storage _ _ long 1 run time query gametime
execute store result storage _ __ long 1 run data get entity @s attack.timestamp
execute store success score # _ run data modify storage _ _ set from storage _ __
execute if score # _ matches 0 run kill
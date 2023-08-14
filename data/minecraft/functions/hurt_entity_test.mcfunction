#>hurt_entity_test
#@api
scoreboard players set # _ 0
execute on attacker store success score # _ if entity @s[tag=origin]
execute if score # _ matches 1 run tag @s add hurt_entity
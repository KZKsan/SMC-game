#>enderface:gui/processing/game_settings/join_waiting
#@within enderface:gui/processing/game_settings/
execute store success score # _ run team join mode.waiting @s[team=!mode.waiting]
execute if score # _ matches 0 run team leave @s
execute if score # _ matches 0 run playsound block.note_block.pling record @s ~ ~ ~ 0.3 0 1
execute if score # _ matches 1 run playsound entity.experience_orb.pickup record @s ~ ~ ~ 0.3 1 1
tag @s[team=!mode.waiting,tag=mode.waiting] remove mode.waiting
tag @s[team=mode.waiting,tag=!mode.waiting] add mode.waiting
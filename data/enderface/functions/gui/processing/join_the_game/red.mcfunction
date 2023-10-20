#>enderface:gui/processing/join_the_game/red
#@wihtin enderface:gui/processing/join_the_game/
execute store success score # _ run team join red @s[team=!red]
execute if score # _ matches 0 run team leave @s
execute if score # _ matches 0 run playsound block.note_block.pling record @s ~ ~ ~ 0.3 0 1
execute if score # _ matches 1 run playsound entity.experience_orb.pickup record @s ~ ~ ~ 0.3 1 1
#>enderface:gui/processing/join_the_game/random_team
#@wihtin enderface:gui/processing/join_the_game/
execute store success score # _ run team join random_team @s[team=!random_team]
execute if score # _ matches 0 run team leave @s
execute if score # _ matches 0 run playsound block.note_block.pling record @s ~ ~ ~ 0.3 0 1
execute if score # _ matches 1 run playsound entity.experience_orb.pickup record @s ~ ~ ~ 0.3 1 1
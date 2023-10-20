#>enderface:gui/processing/join_the_game/spectator
#@wihtin enderface:gui/processing/join_the_game/
execute store success score # _ run team join spectator @s[team=!spectator]
execute if score # _ matches 0 run team leave @s
execute if score # _ matches 0 run playsound block.note_block.pling record @s ~ ~ ~ 0.3 0 1
execute if score # _ matches 1 run playsound entity.experience_orb.pickup record @s ~ ~ ~ 0.3 1 1
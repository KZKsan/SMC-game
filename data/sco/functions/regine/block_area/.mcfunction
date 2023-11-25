#>sco:regine/block_area/
#@api
execute if score @s regine.x1 > @s regine.x2 run scoreboard players operation @s regine.x1 >< @s regine.x2
execute if score @s regine.y1 > @s regine.y2 run scoreboard players operation @s regine.y1 >< @s regine.y2
execute if score @s regine.z1 > @s regine.z2 run scoreboard players operation @s regine.z1 >< @s regine.z2

execute store result score # _ run data get entity @s Pos[0]
execute if score @s regine.x1 > # _ at @s run function sco:regine/block_area/move/x
execute if score @s regine.x2 < # _ at @s run function sco:regine/block_area/move/-x

execute store result score # _ run data get entity @s Pos[1]
execute if score @s regine.y1 > # _ at @s run function sco:regine/block_area/move/y
execute if score @s regine.y2 < # _ at @s run function sco:regine/block_area/move/-y

execute store result score # _ run data get entity @s Pos[2]
execute if score @s regine.z1 > # _ at @s run function sco:regine/block_area/move/z
execute if score @s regine.z2 < # _ at @s run function sco:regine/block_area/move/-z
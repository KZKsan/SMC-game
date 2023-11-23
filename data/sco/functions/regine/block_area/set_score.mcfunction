#>sco:regine/block_area/set_score
#@api
execute store result score @s regine.x1 run data get storage sco:data regine_area_new.1[0]
execute store result score @s regine.x2 run data get storage sco:data regine_area_new.2[0]
execute store result score @s regine.y1 run data get storage sco:data regine_area_new.1[1]
execute store result score @s regine.y2 run data get storage sco:data regine_area_new.2[1]
execute store result score @s regine.z1 run data get storage sco:data regine_area_new.1[2]
execute store result score @s regine.z2 run data get storage sco:data regine_area_new.2[2]

scoreboard players set # _ 0

execute if data storage sco:data regine_area_new.1[0] if data storage sco:data regine_area_new.1[1] if data storage sco:data regine_area_new.1[2] if data storage sco:data regine_area_new.2[0] if data storage sco:data regine_area_new.2[1] if data storage sco:data regine_area_new.2[2] run scoreboard players set # _ 1

execute if score # _ matches 0 run function sco:regine/block_area/reset_score
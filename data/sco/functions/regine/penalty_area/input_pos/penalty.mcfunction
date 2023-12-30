#>sco:regine/penalty_area/input_pos/penalty
#@public
execute store result score #pos.1 _ run data get storage sco:data penalty_area_new.penalty.1[0]
execute store result score #pos.2 _ run data get storage sco:data penalty_area_new.penalty.2[0]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data penalty_area.penalty.x int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data penalty_area.penalty.dx int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
execute store result score #pos.1 _ run data get storage sco:data penalty_area_new.penalty.1[1]
execute store result score #pos.2 _ run data get storage sco:data penalty_area_new.penalty.2[1]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data penalty_area.penalty.y int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data penalty_area.penalty.dy int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
execute store result score #pos.1 _ run data get storage sco:data penalty_area_new.penalty.1[2]
execute store result score #pos.2 _ run data get storage sco:data penalty_area_new.penalty.2[2]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data penalty_area.penalty.z int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data penalty_area.penalty.dz int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
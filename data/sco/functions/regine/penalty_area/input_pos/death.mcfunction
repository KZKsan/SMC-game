#>sco:regine/penalty_area/input_pos/death
#@public
execute store result score #pos.1 _ run data get storage sco:data penalty_area_new.death.1[0]
execute store result score #pos.2 _ run data get storage sco:data penalty_area_new.death.2[0]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data penalty_area.death.x int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data penalty_area.death.dx int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
execute store result score #pos.1 _ run data get storage sco:data penalty_area_new.death.1[1]
execute store result score #pos.2 _ run data get storage sco:data penalty_area_new.death.2[1]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data penalty_area.death.y int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data penalty_area.death.dy int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
execute store result score #pos.1 _ run data get storage sco:data penalty_area_new.death.1[2]
execute store result score #pos.2 _ run data get storage sco:data penalty_area_new.death.2[2]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data penalty_area.death.z int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data penalty_area.death.dz int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
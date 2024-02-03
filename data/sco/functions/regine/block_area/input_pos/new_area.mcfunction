#>sco:regine/block_area/input_pos/new_area
#@public
execute store result score #pos.1 _ run data get storage sco:data block_area_new.1[0]
execute store result score #pos.2 _ run data get storage sco:data block_area_new.2[0]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data block_area.tmp.x int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data block_area.tmp.dx int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
execute store result score #pos.1 _ run data get storage sco:data block_area_new.1[1]
execute store result score #pos.2 _ run data get storage sco:data block_area_new.2[1]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data block_area.tmp.y int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data block_area.tmp.dy int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
execute store result score #pos.1 _ run data get storage sco:data block_area_new.1[2]
execute store result score #pos.2 _ run data get storage sco:data block_area_new.2[2]
execute if score #pos.1 _ > #pos.2 _ run scoreboard players operation #pos.1 _ >< #pos.2 _
execute store result storage sco:data block_area.tmp.z int 1 run scoreboard players get #pos.1 _
execute store result storage sco:data block_area.tmp.dz int 1 run scoreboard players operation #pos.2 _ -= #pos.1 _
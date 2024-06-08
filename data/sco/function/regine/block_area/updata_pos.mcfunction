#>sco:regine/block_area/updata_pos
#@api

execute as @a[tag=rg.block_area,tag=!rg.block_area.out] store result score @s regine.block_area.pos.x run data get entity @s Pos[0] 10
execute as @a[tag=rg.block_area,tag=!rg.block_area.out] store result score @s regine.block_area.pos.y run data get entity @s Pos[1] 10
execute as @a[tag=rg.block_area,tag=!rg.block_area.out] store result score @s regine.block_area.pos.z run data get entity @s Pos[2] 10
tag @a remove rg.block_area.out
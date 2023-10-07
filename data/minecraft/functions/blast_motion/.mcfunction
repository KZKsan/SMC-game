#>blast_motion/
#@api
scoreboard players set @s blast_motion 2
execute store result score @s blast_motion_pos.0 store result score @s blast_motion_return.0 run data get entity @s Pos[0] 1000
execute store result score @s blast_motion_pos.1 store result score @s blast_motion_return.1 run data get entity @s Pos[1] 1000
execute store result score @s blast_motion_pos.2 store result score @s blast_motion_return.2 run data get entity @s Pos[2] 1000
scoreboard players add @s blast_motion_pos.1 300000
execute store result score @s last_gamemode run data get entity @s playerGameType
gamemode creative @s[type=player]
scoreboard players operation # _ = @s blast_count
execute unless score # _ matches 1.. run scoreboard players set # _ 1
function blast_motion/blast
teleport @s ~ ~ ~
schedule function blast_motion/run/1 1t append
schedule function blast_motion/run/2 2t append
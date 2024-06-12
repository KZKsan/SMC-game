#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/player_speed/next
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
execute store result score #pos _ run data get entity @s Pos[0] 1000
execute store result score @s player_speed.x run scoreboard players operation #pos _ -= @s player_speed.x
execute store result score #pos _ run data get entity @s Pos[2] 1000
execute store result score @s player_speed.z run scoreboard players operation #pos _ -= @s player_speed.z

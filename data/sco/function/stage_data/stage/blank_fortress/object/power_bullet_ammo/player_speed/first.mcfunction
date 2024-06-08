#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/player_speed/first
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
execute store result score @s player_speed.x run data get entity @s Pos[0] 1000
execute store result score @s player_speed.z run data get entity @s Pos[2] 1000
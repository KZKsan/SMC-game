#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/damage
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/r-1_25
#declare damage_type sco:magic
damage @s 9 sco:magic at ~ ~ ~
scoreboard players operation @s stage_object.power_bullet.last_hit_count = @s stage_object.power_bullet.hit_count
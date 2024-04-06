#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/hit_count
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/
scoreboard players add @s stage_object.power_bullet.hit_count 1
execute if score @s stage_object.power_bullet.last_hit_count < @s stage_object.power_bullet.hit_count run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/damage

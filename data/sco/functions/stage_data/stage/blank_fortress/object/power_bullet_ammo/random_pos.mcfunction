#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/random_pos
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
data modify storage _ data_fetch set value {x:0d,y:0d,z:0d}
execute store result storage _ data_fetch.x double 0.1 run random value -6..6
execute store result storage _ data_fetch.y double 0.1 run random value -2..2
execute store result storage _ data_fetch.z double 0.1 run random value -6..6
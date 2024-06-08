#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/r-1_25
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/r-2_5
execute positioned ^ ^ ^-0.75 if entity @p[distance=..0.75] run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/damage
execute positioned ^ ^ ^0.75 if entity @p[distance=..0.75] run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/damage
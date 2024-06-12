#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/box
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/
execute unless entity @s[x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] run return fail
execute positioned ~-0.5 ~-0.5 ~-0.5 positioned ~-0.35 ~-0.35 ~-0.35 unless entity @s[dx=0,dy=0,dz=0] run return fail
execute positioned ~-0.5 ~-0.5 ~-0.5 positioned ~0.35 ~0.35 ~0.35 unless entity @s[dx=0,dy=0,dz=0] run return fail
return 1
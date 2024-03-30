#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/damage
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/r-1_25
execute if data storage sco:data rule{frendlyfire:false} if data entity @s data{team:"red"} as @a[team=red,distance=..0.75,predicate=gamemode/as] if entity @s[x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] run damage @s 200 magic
execute if data storage sco:data rule{frendlyfire:false} if data entity @s data{team:"blue"} as @a[team=blue,distance=..0.75,predicate=gamemode/as] if entity @s[x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] run damage @s 200 magic
execute unless data storage sco:data rule{frendlyfire:false} as @a[distance=..0.75,predicate=gamemode/as] if entity @s[x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] run damage @s 200 magic
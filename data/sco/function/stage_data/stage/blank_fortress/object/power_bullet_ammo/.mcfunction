#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
tag @s add origin
tag @s[scores={stage_object.count.0=0}] add check
execute if entity @s[scores={stage_object.count.0=0}] as @a[gamemode=!spectator] run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/player_speed/first
execute if entity @s[scores={stage_object.count.0=1}] as @a[gamemode=!spectator] run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/player_speed/next
execute if entity @s[scores={stage_object.count.0=1}] run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/random_pos
execute if data entity @s[scores={stage_object.count.0=1}] data{team:"red"} as @a[sort=furthest,limit=1,team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/target/
execute if data entity @s[scores={stage_object.count.0=1}] data{team:"blue"} as @a[sort=furthest,limit=1,team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/target/
scoreboard players set @s[scores={stage_object.count.0=1},tag=check] stage_object.count.0 14
execute at @s[scores={stage_object.count.0=1}] positioned ^ ^ ^ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/pointer
execute at @s[scores={stage_object.count.0=2}] positioned ^ ^ ^20 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/pointer
execute at @s[scores={stage_object.count.0=3}] positioned ^ ^ ^40 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/pointer
execute at @s[scores={stage_object.count.0=4}] positioned ^ ^ ^60 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/pointer
execute at @s[scores={stage_object.count.0=5}] positioned ^ ^ ^80 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/pointer
execute at @s[scores={stage_object.count.0=6}] positioned ^ ^ ^100 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/pointer
execute at @s[scores={stage_object.count.0=7}] positioned ^ ^ ^ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/fire
execute at @s[scores={stage_object.count.0=7}] positioned ^ ^ ^ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/flame
execute at @s[scores={stage_object.count.0=8}] positioned ^ ^ ^20 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/flame
execute at @s[scores={stage_object.count.0=9}] positioned ^ ^ ^40 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/flame
execute at @s[scores={stage_object.count.0=10}] positioned ^ ^ ^60 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/flame
execute at @s[scores={stage_object.count.0=11}] positioned ^ ^ ^80 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/flame
execute at @s[scores={stage_object.count.0=12}] positioned ^ ^ ^100 run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/particle/flame


tag @s remove origin
scoreboard players add @s stage_object.count.0 1

kill @s[scores={stage_object.count.0=14..}]
#>sco:stage_data/stage/blank_fortress/object/cannon/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if data entity @s[scores={stage_object.count.0=0,stage_object.count.1=5}] interaction run function sco:stage_data/stage/blank_fortress/object/cannon/click/launch
execute if data entity @s[scores={stage_object.count.0=0,stage_object.count.1=0..4}] interaction if function sco:stage_data/stage/blank_fortress/object/cannon/click/test run function sco:stage_data/stage/blank_fortress/object/cannon/click/put_coal
data remove entity @s interaction


execute if entity @s[scores={stage_object.count.0=200}] run particle flash ~ ~4 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=200}] run playsound block.piston.contract record @a ~ ~ ~ 1 1

execute if entity @s[scores={stage_object.count.0=200}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 diamond_block replace redstone_block
execute if entity @s[scores={stage_object.count.0=195}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 redstone_block replace diamond_block

execute if entity @s[scores={stage_object.count.0=195}] run particle large_smoke ~1.1 ~1.6 ~ 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=195}] run particle large_smoke ~-1.1 ~1.6 ~ 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=195}] run particle large_smoke ~ ~1.6 ~1.1 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=195}] run particle large_smoke ~ ~1.6 ~-1.1 0 0 0 0.2 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=194}] run playsound block.piston.extend record @a ~ ~ ~ 1 0.5
execute if entity @s[scores={stage_object.count.0=194}] run playsound block.lava.extinguish record @a ~ ~ ~ 1 1.2

execute if entity @s[scores={stage_object.count.0=194}] run particle lava ~1.1 ~1 ~ 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=194}] run particle lava ~-1.1 ~1 ~ 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=194}] run particle lava ~ ~1 ~1.1 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=194}] run particle lava ~ ~1 ~-1.1 0 0 0 1 50 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=192}] run particle explosion ~ ~6 ~ 0.3 0.3 0.3 0 5 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=192}] run particle cloud ~ ~8 ~ 0.3 2 0.3 0 60 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=192}] run particle firework ~ ~8 ~ 0.3 2 0.3 0.05 60 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=192}] run particle cloud ~ ~5 ~ 0.8 0.3 0.8 0.01 60 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=192}] run playsound entity.generic.explode record @a ~ ~ ~ 1 1.5
execute if entity @s[scores={stage_object.count.0=191}] run playsound entity.wither.shoot record @a ~ ~ ~ 1 0.8
execute if entity @s[scores={stage_object.count.0=194}] positioned ~ ~7 ~ as @a[predicate=gamemode/as,distance=..2] run damage @s 200 sco:explosion 




execute if entity @s[scores={stage_object.count.0=190}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=185}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=180}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=175}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=170}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=165}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=160}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=155}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=150}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 
execute if entity @s[scores={stage_object.count.0=145}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"red"} 

execute if entity @s[scores={stage_object.count.0=190}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=185}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=180}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=175}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=170}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=165}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=160}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=155}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=150}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 
execute if entity @s[scores={stage_object.count.0=145}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s align xz positioned ~0.5 200 ~0.5 run function sco:stage_data/stage/blank_fortress/object/bomb/set {team:"blue"} 




execute if entity @s[scores={stage_object.count.0=200}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 10s <"}'
execute if entity @s[scores={stage_object.count.0=180}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 9s <"}'
execute if entity @s[scores={stage_object.count.0=160}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 8s <"}'
execute if entity @s[scores={stage_object.count.0=140}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 7s <"}'
execute if entity @s[scores={stage_object.count.0=120}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 6s <"}'
execute if entity @s[scores={stage_object.count.0=100}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 5s <"}'
execute if entity @s[scores={stage_object.count.0=80}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 4s <"}'
execute if entity @s[scores={stage_object.count.0=60}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 3s <"}'
execute if entity @s[scores={stage_object.count.0=40}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 2s <"}'
execute if entity @s[scores={stage_object.count.0=20}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 1s <"}'
execute if entity @s[scores={stage_object.count.0=1}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 0/5 <"}'
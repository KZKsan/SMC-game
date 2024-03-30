#>sco:stage_data/stage/blank_fortress/object/power_bullet/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if data entity @s[scores={stage_object.count.0=0,stage_object.count.1=6}] interaction run function sco:stage_data/stage/blank_fortress/object/power_bullet/click/launch
execute if data entity @s[scores={stage_object.count.0=0,stage_object.count.1=0..5}] interaction if function sco:stage_data/stage/blank_fortress/object/power_bullet/click/test run function sco:stage_data/stage/blank_fortress/object/power_bullet/click/put_coal
data remove entity @s interaction

execute if entity @s[scores={stage_object.count.0=160..200}] positioned ~ ~5 ~ run particle enchant ~ ~ ~ 0.3 1 0.3 0 2 force @a[distance=..80]
execute if entity @s[scores={stage_object.count.0=160..200}] positioned ~ ~5 ~ run particle portal ~ ~ ~ 2 1 2 0 2 force @a[distance=..80]
execute if entity @s[scores={stage_object.count.0=150..160}] positioned ~ ~4.5 ~ run particle portal ~ ~ ~ 0 0 0 2 60 force @a[distance=..80]
execute if entity @s[scores={stage_object.count.0=180..200}] positioned ~2 ~5 ~1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=180..200}] positioned ~-2 ~5 ~-1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=170..190}] positioned ~1 ~3 ~2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=170..190}] positioned ~-1 ~3 ~-2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=160..180}] positioned ~1 ~5 ~-2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=160..180}] positioned ~-1 ~5 ~2 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=150..170}] positioned ~2 ~3 ~-1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line
execute if entity @s[scores={stage_object.count.0=150..170}] positioned ~-2 ~3 ~1 run function sco:stage_data/stage/blank_fortress/object/power_bullet/particle/line

execute if entity @s[scores={stage_object.count.0=180}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 1 1 0.7
execute if entity @s[scores={stage_object.count.0=170}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 1 0.5 0.7
execute if entity @s[scores={stage_object.count.0=160}] run playsound block.beacon.activate record @a[distance=..80] ~ ~ ~ 1 2 0.7
execute if entity @s[scores={stage_object.count.0=170}] run playsound block.beacon.power_select record @a[distance=..80] ~ ~ ~ 1 1 0.7
execute if entity @s[scores={stage_object.count.0=175}] run playsound entity.blaze.death record @a[distance=..80] ~ ~ ~ 1 0.6 0.7
execute if entity @s[scores={stage_object.count.0=165}] run playsound block.beacon.power_select record @a[distance=..80] ~ ~ ~ 1 1 0.7


execute if entity @s[scores={stage_object.count.0=150}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=150}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=145}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=145}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=140}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=140}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}
execute if entity @s[scores={stage_object.count.0=135}] on passengers as @s[type=marker] if data entity @s data{team:"red"} if entity @p[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"red"}
execute if entity @s[scores={stage_object.count.0=135}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} if entity @p[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] positioned ~ ~4.5 ~ run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/set {team:"blue"}


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
execute if entity @s[scores={stage_object.count.0=1}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 0/6 <"}'
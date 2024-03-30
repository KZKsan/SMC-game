#>sco:stage_data/stage/blank_fortress/object/thunder/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
execute unless score @s stage_object.count.1 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.1 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if data entity @s[scores={stage_object.count.0=0,stage_object.count.1=4}] interaction run function sco:stage_data/stage/blank_fortress/object/thunder/click/launch
execute if data entity @s[scores={stage_object.count.0=0,stage_object.count.1=0..3}] interaction if function sco:stage_data/stage/blank_fortress/object/thunder/click/test run function sco:stage_data/stage/blank_fortress/object/thunder/click/put_coal
data remove entity @s interaction


execute if entity @s[scores={stage_object.count.0=120}] run particle flash ~ ~4 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=115}] run particle flash ~ ~5 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=110}] run particle flash ~ ~6 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=105}] run particle flash ~ ~7 ~ 0 0 0 0 1 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=120}] run playsound block.bell.use record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
#execute if entity @s[scores={stage_object.count.0=118}] run playsound block.bell.use record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
execute if entity @s[scores={stage_object.count.0=110}] run playsound block.bell.use record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
#execute if entity @s[scores={stage_object.count.0=108}] run playsound block.bell.use record @a[distance=..80] ~ ~ ~ 0.8 1 0.5
execute if entity @s[scores={stage_object.count.0=100}] run playsound item.trident.thunder record @a[distance=..80] ~ ~ ~ 0.8 1 0.5


execute if entity @s[scores={stage_object.count.0=110..120}] run particle firework ~ ~6 ~ 1 2 1 0.05 10 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=110..120}] run particle electric_spark ~ ~8 ~ 1 2 1 0.05 60 force @a[distance=..60]


execute if entity @s[scores={stage_object.count.0=100}] run particle firework ~ ~8 ~ 0.1 6 0.1 0.2 100 force @a[distance=..60]
execute if entity @s[scores={stage_object.count.0=100}] run particle electric_spark ~ ~8 ~ 0.1 6 0.1 3 360 force @a[distance=..60]




execute if entity @s[scores={stage_object.count.0=100}] on passengers as @s[type=marker] if data entity @s data{team:"red"} as @a[team=red,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/thunder/effect


execute if entity @s[scores={stage_object.count.0=100}] on passengers as @s[type=marker] if data entity @s data{team:"blue"} as @a[team=blue,predicate=gamemode/as,x=-784, y=-63, z=-304,dx=159,dy=100,dz=79] at @s run function sco:stage_data/stage/blank_fortress/object/thunder/effect




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
execute if entity @s[scores={stage_object.count.0=1}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 0/4 <"}'
#>sco:stage_data/stage/blank_fortress/object/pickup_coal/
#@within 
execute unless score @s stage_object.count.0 matches -2147483648..2147483647 run scoreboard players set @s stage_object.count.0 0
scoreboard players remove @s[scores={stage_object.count.0=1..}] stage_object.count.0 1
execute if data entity @s[scores={stage_object.count.0=0}] interaction if function sco:stage_data/stage/blank_fortress/object/pickup_coal/click/test run function sco:stage_data/stage/blank_fortress/object/pickup_coal/click/
data remove entity @s interaction
execute if entity @s[scores={stage_object.count.0=100}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 5s <"}'
execute if entity @s[scores={stage_object.count.0=80}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 4s <"}'
execute if entity @s[scores={stage_object.count.0=60}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 3s <"}'
execute if entity @s[scores={stage_object.count.0=40}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 2s <"}'
execute if entity @s[scores={stage_object.count.0=20}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 1s <"}'
execute if entity @s[scores={stage_object.count.0=1}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":">Click for Pickup<"}'
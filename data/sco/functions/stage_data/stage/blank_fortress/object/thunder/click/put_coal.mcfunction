#>sco:stage_data/stage/blank_fortress/object/thunder/click/put_coal
#@within sco:stage_data/stage/blank_fortress/object/thunder/
execute on target run clear @s coal{item_functions:{stage_item:{fuel:1b}}} 1
scoreboard players add @s stage_object.count.1 1
playsound entity.item.pickup player @a ~ ~ ~ 1 1
execute if entity @s[scores={stage_object.count.1=1}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 1/4 <"}'
execute if entity @s[scores={stage_object.count.1=2}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 2/4 <"}'
execute if entity @s[scores={stage_object.count.1=3}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":"> 3/4 <"}'
execute if entity @s[scores={stage_object.count.1=4}] on passengers as @s[type=text_display] run data modify entity @s text set value '{"text":">Click for Launch<"}'
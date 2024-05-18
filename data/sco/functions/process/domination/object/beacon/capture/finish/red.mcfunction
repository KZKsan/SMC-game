#>sco:process/domination/object/beacon/capture/finish/red
#@within sco:process/domination/object/beacon/capture/capture_value/red
tag @s add red
tag @s remove blue
data modify entity @s item.id set value "redstone_block"
data modify entity @s glow_color_override set value 16711680
execute on passengers run data modify entity @s[tag=beacon.glass] item.id set value "red_stained_glass"
execute on passengers run data modify entity @s[tag=beacon.fire] block_state.Name set value "fire"
scoreboard players set @s stage_object.count.1 0
#setblock ~ ~ ~ red_stained_glass
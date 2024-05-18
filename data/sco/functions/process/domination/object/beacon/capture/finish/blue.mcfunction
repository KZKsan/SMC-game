#>sco:process/domination/object/beacon/capture/finish/blue
#@within sco:process/domination/object/beacon/capture/capture_value/blue
tag @s add blue
tag @s remove red
data modify entity @s item.id set value "lapis_block"
data modify entity @s glow_color_override set value 255
execute on passengers run data modify entity @s[tag=beacon.glass] item.id set value "blue_stained_glass"
execute on passengers run data modify entity @s[tag=beacon.fire] block_state.Name set value "soul_fire"
scoreboard players set @s stage_object.count.1 0
#setblock ~ ~ ~ lapis_block
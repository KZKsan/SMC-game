#>sco:process/domination/object/beacon/capture/finish/red
#@within sco:process/domination/object/beacon/capture/capture_value/red
tag @s add red
tag @s remove blue
data modify entity @s item.id set value "redstone_block"
data modify entity @s glow_color_override set value 16711680
execute on passengers run data modify entity @s[tag=beacon.glass] item.id set value "red_stained_glass"
execute on passengers run data modify entity @s[tag=beacon.fire] block_state.Name set value "fire"
scoreboard players set @s stage_object.count.1 0
particle trial_spawner_detection ~ ~0.1 ~ 0.6 0.6 0.6 0 30 force @a[distance=..60]
particle flash ~ ~0.1 ~ 0 0 0 0 1 force @a[distance=..60]
execute as @a[team=!blue,predicate=sco:team_join] at @s run playsound block.trial_spawner.about_to_spawn_item record @s ~ ~ ~ 1 1 1
execute as @a[team=!blue,predicate=sco:team_join] at @s run playsound block.beacon.activate record @s ~ ~ ~ 1 1 1
execute as @a[team=blue] at @s run playsound block.beacon.deactivate record @s ~ ~ ~ 1 1 1
tellraw @a[predicate=sco:team_join] {"translate": "messege.sco.domination.capture.finish","fallback": ">[%s]がビーコンを確保した。","with":[{"text":"赤red","color":"red","bold": true}],"bold": true}
tag @a[distance=..7] remove beacon.capture_area.sound
#setblock ~ ~ ~ red_stained_glass
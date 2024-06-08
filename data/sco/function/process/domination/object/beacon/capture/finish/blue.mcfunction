#>sco:process/domination/object/beacon/capture/finish/blue
#@within sco:process/domination/object/beacon/capture/capture_value/blue
tag @s add blue
tag @s remove red
data modify entity @s item.id set value "lapis_block"
data modify entity @s glow_color_override set value 255
execute on passengers run data modify entity @s[tag=beacon.glass] item.id set value "blue_stained_glass"
execute on passengers run data modify entity @s[tag=beacon.fire] block_state.Name set value "soul_fire"
scoreboard players set @s stage_object.count.1 0
particle trial_spawner_detection_ominous ~ ~0.1 ~ 0.6 0.6 0.6 0 30 force @a[distance=..60]
particle flash ~ ~0.1 ~ 0 0 0 0 1 force @a[distance=..60]
execute as @a[team=!red,predicate=sco:team_join] at @s run playsound block.trial_spawner.about_to_spawn_item record @s ~ ~ ~ 1 1 1
execute as @a[team=!red,predicate=sco:team_join] at @s run playsound block.beacon.activate record @s ~ ~ ~ 1 1 1
execute as @a[team=red] at @s run playsound block.beacon.deactivate record @s ~ ~ ~ 1 1 1
tellraw @a[predicate=sco:team_join] {"translate": "messege.sco.domination.capture.finish","fallback": ">[%s]がビーコンを確保した。","with":[{"text":"青blue","color":"blue","bold": true}],"bold": true}
tag @a[distance=..7] remove beacon.capture_area.sound
#setblock ~ ~ ~ lapis_block
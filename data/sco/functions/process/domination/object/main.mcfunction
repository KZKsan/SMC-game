#>sco:process/domination/object/main
#@within sco:process/domination/230
execute store result score #domination.red_capture_count game if entity @e[type=item_display,tag=beacon.core,tag=red]
execute store result score #domination.blue_capture_count game if entity @e[type=item_display,tag=beacon.core,tag=blue]

execute if score #domination.advantage game matches 1 if score #domination.red_capture_count game > #domination.blue_capture_count game run scoreboard players set #domination.advantage game 0
execute if score #domination.advantage game matches 0 if score #domination.red_capture_count game < #domination.blue_capture_count game run scoreboard players set #domination.advantage game 1



execute as @e[type=item_display,tag=beacon.core] at @s run function sco:process/domination/object/beacon/
execute as @a[tag=beacon.capture_area.sound,tag=!beacon.capture_area.already] at @s run function sco:process/domination/object/beacon/capture/sound/outside
tag @a[tag=beacon.capture_area.already] remove beacon.capture_area.already
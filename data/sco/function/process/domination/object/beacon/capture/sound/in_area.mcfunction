#>sco:process/domination/object/beacon/capture/sound/in_area
#@within sco:process/domination/object/beacon/capture/**

execute if entity @s[tag=!beacon.capture_area.sound] run playsound block.note_block.bit record @s ~ ~ ~ 1 1.4 1
tag @s[tag=!beacon.capture_area.sound] add beacon.capture_area.sound
tag @s add beacon.capture_area.already
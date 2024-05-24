#>sco:process/domination/object/beacon/capture/capture_value/blue
#@within sco:process/domination/object/beacon/capture/**

execute store result storage sco:data domination.tmp.num int 1 run scoreboard players get #domination.blue_capture_count game
function sco:process/domination/object/beacon/capture/capture_value/value with storage sco:data domination.tmp
scoreboard players operation @s stage_object.count.1 += # _
execute if score #domination.assist_flag game matches -1 run function sco:process/domination/object/beacon/capture/capture_value/assist/blue
execute if score @s stage_object.count.1 >= #domination.capture_time game run function sco:process/domination/object/beacon/capture/finish/blue

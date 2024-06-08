#>sco:process/domination/object/beacon/capture/capture_value/assist/red
#@within sco:process/domination/object/beacon/capture/capture_value/red
execute store result storage sco:data domination.tmp.num int 1 run scoreboard players get #domination.red_capture_count game
function sco:process/domination/object/beacon/capture/capture_value/assist/macro with storage sco:data domination.tmp
scoreboard players operation @s stage_object.count.1 += # _
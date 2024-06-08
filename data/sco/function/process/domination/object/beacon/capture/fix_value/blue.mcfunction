#>sco:process/domination/object/beacon/capture/fix_value/blue
#@within sco:process/domination/object/beacon/capture/**

execute store result storage sco:data domination.tmp.num int 1 run scoreboard players get #domination.blue_capture_count game
function sco:process/domination/object/beacon/capture/fix_value/macro with storage sco:data domination.tmp
scoreboard players operation @s[scores={stage_object.count.1=1..}] stage_object.count.1 -= # _
scoreboard players set @s[scores={stage_object.count.1=..-1}] stage_object.count.1 0


#>enderface:gui/processing/game_settings/stage_select/rule_check
#@within enderface:gui/processing/game_settings/stage_select/
execute store success score # _ run data modify storage p-storage _[0].data.sco.rule set from storage sco:config game.rule
execute if score # _ matches 1 run playsound block.note_block.bass record @s ~ ~ ~ 0.5 0.5
execute if score # _ matches 1 run return fail
return 1
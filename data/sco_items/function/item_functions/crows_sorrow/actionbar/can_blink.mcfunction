#>sco_items:item_functions/crows_sorrow/actionbar/cooldown
#@within sco_items:item_functions/crows_sorrow/actionbar/
scoreboard players set #5 _ 5
scoreboard players operation #time _ = #crows_sorrow.set_cooltime sco_items.configs
scoreboard players operation #time _ -= @s crows_sorrow_cooldown
scoreboard players operation #time _ *= #5 _
scoreboard players operation #time _ /= #crows_sorrow.can_blink.offset sco_items.configs

execute if score #time _ matches 0 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">","color": "#AA0000"},{"text":"■■■■■■■","color": "red"},{"text":"<","color": "#AA0000"}]'
execute if score #time _ matches 1 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">","color": "#AA0000"},{"text":"■■■","color": "red"},{"text":"_","color": "gray"},{"text":"■■■","color": "red"},{"text":"<","color": "#AA0000"}]'
execute if score #time _ matches 2 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">","color": "#AA0000"},{"text":"■■","color": "red"},{"text":"___","color": "gray"},{"text":"■■","color": "red"},{"text":"<","color": "#AA0000"}]'
execute if score #time _ matches 3 run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">","color": "#AA0000"},{"text":"■","color": "red"},{"text":"_____","color": "gray"},{"text":"■","color": "red"},{"text":"<","color": "#AA0000"}]'
execute if score #time _ matches 4.. run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">","color": "#AA0000"},{"text":"_______","color": "gray"},{"text":"<","color": "#AA0000"}]'

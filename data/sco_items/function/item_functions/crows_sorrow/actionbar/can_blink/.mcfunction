#>sco_items:item_functions/crows_sorrow/actionbar/can_blink/
#@within sco_items:item_functions/crows_sorrow/actionbar/
scoreboard players operation #i _ = #crows_sorrow.blink_count sco_items.configs
scoreboard players operation #i _ -= @s crows_sorrow_count
execute if score #i _ matches 1.. run function sco_items:item_functions/crows_sorrow/actionbar/can_blink/count/left
 data modify storage p-storage _[0].data.item_actionbar append value '[{"text": "Press [","bold": true,"color": "#AA0000"},{"keybind":"key.sneak","color": "white"},{"text": "]","color": "#AA0000"}]'
 scoreboard players operation #i _ = #crows_sorrow.blink_count sco_items.configs
scoreboard players operation #i _ -= @s crows_sorrow_count
execute if score #i _ matches 1.. run function sco_items:item_functions/crows_sorrow/actionbar/can_blink/count/right

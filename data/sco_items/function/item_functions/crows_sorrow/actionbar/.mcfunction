#>sco_items:item_functions/crows_sorrow/actionbar/
#@within sco_items:item_functions/crows_sorrow/holding
function sco_items:actionbar/set_str
execute if score @s crows_sorrow_count >= #crows_sorrow.blink_count sco_items.configs run function sco_items:item_functions/crows_sorrow/actionbar/cooldown
execute unless score @s[scores={crows_sorrow_count=1..}] crows_sorrow_count >= #crows_sorrow.blink_count sco_items.configs run function sco_items:item_functions/crows_sorrow/actionbar/can_blink
execute if entity @s[scores={crows_sorrow_count=0}] run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">Press [","bold": true,"color": "#AA0000"},{"keybind":"key.sneak","color": "white"},{"text": "]<","color": "#AA0000"}]'
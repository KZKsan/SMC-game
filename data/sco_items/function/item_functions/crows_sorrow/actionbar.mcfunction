#>sco_items:item_functions/crows_sorrow/actionbar
#@within sco_items:item_functions/crows_sorrow/holding
function sco_items:actionbar/set_str
execute if entity @s[scores={crows_sorrow_count=2..}] run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": "Cooldown: ","bold": true,"color": "white"},{"score":{"name": "@s","objective": "crows_sorrow_cooldown"},"color": "gold"},{"text": "t"}]'
execute unless entity @s[scores={crows_sorrow_count=2..}] run data modify storage p-storage _[0].data.item_actionbar append value '[{"text": ">Press [","bold": true,"color": "#AA0000"},{"keybind":"key.sneak","color": "white"},{"text": "]<","color": "#AA0000"}]'
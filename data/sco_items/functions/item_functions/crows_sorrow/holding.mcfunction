#>sco_items:item_functions/crows_sorrow/holding
#@within advancement sco_items:item_functions/crows_sorrow/holding

execute if entity @s[nbt={OnGround:1b},scores={moving=2..,sneaked=1,crows_sorrow_cooldown=..55}] unless entity @s[scores={crows_sorrow_count=2..}] run function sco_items:item_functions/crows_sorrow/step/speed
execute if entity @s[predicate=running,nbt={OnGround:1b},scores={sneaked=1,crows_sorrow_cooldown=..55}] unless entity @s[scores={crows_sorrow_count=2..}] run function sco_items:item_functions/crows_sorrow/step/speed

title @s[scores={crows_sorrow_count=2..}] actionbar [{"text": "Cooldown: ","bold": true,"color": "white"},{"score":{"name": "@s","objective": "crows_sorrow_cooldown"},"color": "gold"},{"text": "t"}]
execute unless entity @s[scores={crows_sorrow_count=2..}] run title @s actionbar [{"text": ">Press [","bold": true,"color": "#AA0000"},{"keybind":"key.sneak","color": "white"},{"text": "]<","color": "#AA0000"}]
advancement revoke @s only sco_items:item_functions/crows_sorrow/holding
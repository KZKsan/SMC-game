#>sco_items:item_functions/crows_sorrow/holding
#@within advancement sco_items:item_functions/crows_sorrow/holding
advancement revoke @s only sco_items:item_functions/crows_sorrow/holding

execute if entity @s[predicate=sneak,nbt={OnGround:1b},scores={moving=2..}] unless entity @s[scores={crows_sorrow_cooldown=1..}] run function sco_items:item_functions/crows_sorrow/step/speed
execute if entity @s[predicate=sneak,predicate=running,nbt={OnGround:1b}] unless entity @s[scores={crows_sorrow_cooldown=1..}] run function sco_items:item_functions/crows_sorrow/step/speed
scoreboard players set @s moving 0
title @s[scores={crows_sorrow_cooldown=1..}] actionbar [{"text": "Cooldown: ","bold": true,"color": "white"},{"score":{"name": "@s","objective": "crows_sorrow_cooldown"},"color": "gold"},{"text": "t"}]
execute unless entity @s[scores={crows_sorrow_cooldown=1..}] run title @s actionbar [{"text": ">Press [","bold": true,"color": "#AA0000"},{"keybind":"key.sneak","color": "white"},{"text": "]<","color": "#AA0000"}]
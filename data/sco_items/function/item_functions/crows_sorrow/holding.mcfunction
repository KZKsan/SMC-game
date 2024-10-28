#>sco_items:item_functions/crows_sorrow/holding
#@within advancement sco_items:item_functions/crows_sorrow/holding

execute if entity @s[nbt={OnGround:1b},scores={moving=2..,sneaked=1}] if score @s crows_sorrow_cooldown <= #crows_sorrow.can_blink sco_items.configs unless score @s crows_sorrow_count >= #crows_sorrow.blink_count sco_items.configs run function sco_items:item_functions/crows_sorrow/step/speed
execute if entity @s[predicate=running,nbt={OnGround:1b},scores={sneaked=1}] if score @s crows_sorrow_cooldown <= #crows_sorrow.can_blink sco_items.configs unless score @s crows_sorrow_count >= #crows_sorrow.blink_count sco_items.configs run function sco_items:item_functions/crows_sorrow/step/speed
scoreboard players set @s moving 0
function sco_items:item_functions/crows_sorrow/actionbar/flag
advancement revoke @s only sco_items:item_functions/crows_sorrow/holding
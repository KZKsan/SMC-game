#>sco_items:item_functions/crows_sorrow/actionbar/
#@within sco_items:item_functions/crows_sorrow/holding
function sco_items:actionbar/set_str
execute if score @s crows_sorrow_count < #crows_sorrow.blink_count sco_items.configs if score @s crows_sorrow_cooldown <= #crows_sorrow.can_blink sco_items.configs run function sco_items:item_functions/crows_sorrow/actionbar/can_blink/
execute if score @s[scores={crows_sorrow_count=1..}] crows_sorrow_count < #crows_sorrow.blink_count sco_items.configs if score @s crows_sorrow_cooldown > #crows_sorrow.can_blink sco_items.configs run function sco_items:item_functions/crows_sorrow/actionbar/active_blink
execute if score @s crows_sorrow_count >= #crows_sorrow.blink_count sco_items.configs run function sco_items:item_functions/crows_sorrow/actionbar/cooldown
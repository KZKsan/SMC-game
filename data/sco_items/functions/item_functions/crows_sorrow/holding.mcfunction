#>sco_items:item_functions/crows_sorrow/holding
#@within advancement sco_items:item_functions/crows_sorrow/holding

execute if entity @s[nbt={OnGround:1b},scores={moving=2..,sneaked=1,crows_sorrow_cooldown=..95}] unless entity @s[scores={crows_sorrow_count=2..}] run function sco_items:item_functions/crows_sorrow/step/speed
execute if entity @s[predicate=running,nbt={OnGround:1b},scores={sneaked=1,crows_sorrow_cooldown=..95}] unless entity @s[scores={crows_sorrow_count=2..}] run function sco_items:item_functions/crows_sorrow/step/speed
scoreboard players set @s moving 0
function p-storage/get
data modify storage p-storage _[0].data.item_actionbar_flag.crows_sorrow set value true
tag @s[tag=!item_actionbar] add item_actionbar
advancement revoke @s only sco_items:item_functions/crows_sorrow/holding
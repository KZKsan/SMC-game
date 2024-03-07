#>sco_items:item_functions/passive_effects/
#@within advancement sco_items:item_functions/set_effects/test
execute if entity @s[advancements={sco_items:item_functions/passive_effects/test={chest=true}}] if data entity @s Inventory[{Slot:102b}].tag.item_functions.passive_effects run function sco_items:item_functions/passive_effects/chest
advancement revoke @s only sco_items:item_functions/passive_effects/test
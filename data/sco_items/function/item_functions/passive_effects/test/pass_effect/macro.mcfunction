#>sco_items:item_functions/passive_effects/test/pass_effect/macro
#@within sco_items:item_functions/passive_effects/test/pass_effect/
$execute if data entity @s active_effects[{id:"$(id)"}] run return 1
$execute if data entity @s active_effects[{id:"minecraft:$(id)"}] run return 1
return fail
#>sco_items:item_functions/passive_effects/test/
#@within sco_items:item_functions/passive_effects/loop
execute unless data storage sco_items:data passive_effects[0].hide_particle run data modify storage sco_items:data passive_effects[0].hide_particle set value "false"
execute if entity @s[scores={cure_arrow=-2147483648..2147483647}] unless data storage sco_items:data passive_effects[0].bypasses_cure_arrow run return fail
execute if data storage sco_items:data passive_effects[0].pass_effect if function sco_items:item_functions/passive_effects/test/pass_effect/ run return fail
return 1
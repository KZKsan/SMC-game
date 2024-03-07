#>sco_items:item_functions/passive_effects/test
#@within sco_items:item_functions/passive_effects/loop
execute unless data storage _ data_fetch[0].hide_particle run data modify storage _ data_fetch[0].hide_particle set value "false"
execute if entity @s[scores={cure_arrow=-2147483648..2147483647}] unless data storage _ data_fetch[0].bypasses_cure_arrow run return fail
return 1
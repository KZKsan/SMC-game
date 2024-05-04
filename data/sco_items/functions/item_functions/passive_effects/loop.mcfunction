#>sco_items:item_functions/passive_effects/loop
#@within sco_items:item_functions/passive_effects/**
execute if function sco_items:item_functions/passive_effects/test/ run function sco_items:item_functions/passive_effects/macro with storage sco_items:data passive_effects[0]
data remove storage sco_items:data passive_effects[0]
execute if data storage sco_items:data passive_effects[0] run function sco_items:item_functions/passive_effects/loop
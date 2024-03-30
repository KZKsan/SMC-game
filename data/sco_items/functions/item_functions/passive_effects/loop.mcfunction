#>sco_items:item_functions/passive_effects/loop
#@within sco_items:item_functions/passive_effects/**
execute if function sco_items:item_functions/passive_effects/test run function sco_items:item_functions/passive_effects/macro with storage _ data_fetch[0]
data remove storage _ data_fetch[0]
execute if data storage _ data_fetch[0] run function sco_items:item_functions/passive_effects/loop
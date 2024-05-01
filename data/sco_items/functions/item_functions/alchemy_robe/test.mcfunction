#>sco_items:item_functions/alchemy_robe/test
#@within sco_items:item_functions/alchemy_robe/set_data
execute on origin if items entity @s armor.* *[custom_data~{item_functions:{alchemy_robe:true}}] run return 1
return fail
#>sco_items:item_functions/throwing_limit/
#@within sco_items:main
execute if function sco_items:item_functions/throwing_limit/test run function sco_items:item_functions/throwing_limit/return_item
execute unless function sco_items:item_functions/throwing_limit/test run function sco_items:item_functions/throwing_limit/add_time
tag @s add item_function.throwing_limit.already
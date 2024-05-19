#>sco_items:item_functions/throw_lock/
#@within sco_items:main
execute if function sco_items:item_functions/throw_lock/test run function sco_items:item_functions/throw_lock/return_item
execute unless function sco_items:item_functions/throw_lock/test run function sco_items:item_functions/throw_lock/add_time
tag @s add item_function.throw_lock.already
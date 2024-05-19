#>sco_items:item_functions/throw_lock/test
#@within sco_items:item_functions/throw_lock/
execute on origin if entity @s[scores={throw_lock.time=1..}] run return 1
return fail
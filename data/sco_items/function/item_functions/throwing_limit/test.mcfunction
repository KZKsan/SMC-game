#>sco_items:item_functions/throwing_limit/test
#@within sco_items:item_functions/throwing_limit/
execute on origin if entity @s[scores={throwing_limit.time=1..}] run return 1
return fail
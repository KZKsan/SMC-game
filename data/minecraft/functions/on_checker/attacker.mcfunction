#>minecraft:on_checker/attacker
#@api
execute on attacker if entity @s[tag=origin] run return 1
return fail
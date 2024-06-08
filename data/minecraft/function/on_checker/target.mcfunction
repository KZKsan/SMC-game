#>minecraft:on_checker/target
#@api
execute on target if entity @s[tag=origin] run return 1
return fail
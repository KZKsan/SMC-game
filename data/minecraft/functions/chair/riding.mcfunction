#>minecraft:chair/riding
#@within minecraft:chair/
execute on passengers run scoreboard players set @s sitting 5
execute on passengers run return 1
return fail
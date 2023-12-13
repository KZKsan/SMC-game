#>sco_items:item_functions/magic_bullet/
#@within sco_items:main

execute store result score #vector _ run data get entity @s Motion[0] 30000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #vector _
execute store result score #vector _ run data get entity @s Motion[1] 30000
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #vector _
execute store result score #vector _ run data get entity @s Motion[2] 30000
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #vector _
tag @s add already
damage @s 0.000001
#advancement revoke @s only sco_items:item_functions/magic_bullet/
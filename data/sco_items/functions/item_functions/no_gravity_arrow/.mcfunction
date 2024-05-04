#>sco_items:item_functions/no_gravity_arrow/
#@within sco_items:main
scoreboard players add @s age 1
particle dust{color:[0.5,0.0,0.7],scale:1} ~ ~ ~ 0.02 0.02 0.02 1 1 force @a[distance=..60]
particle enchant ~ ~ ~ 0.02 0.02 0.02 0.1 1 force @a[distance=..60]
particle end_rod ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
kill @s[scores={age=70..}]
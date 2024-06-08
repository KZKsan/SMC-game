#>sco:practice/entity/health_pop
#@within sco:main
scoreboard players add @s age 1
teleport @s[scores={age=1}] ~ ~0.6 ~
#data modify entity @s[scores={age=1}] transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}
kill @s[scores={age=16..}]
scoreboard players add @s age 1
data merge entity @s[scores={age=2}] {start_interpolation:-1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.1875f,0.125f,0.125f],translation:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={age=4}] {start_interpolation:-1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.125f,0.1875f,0.25f],translation:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={age=6}] {start_interpolation:-1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.1875f,0.25f],translation:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={age=8}] {start_interpolation:-1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.25f],translation:[0.0f,0.0f,0.0f]}}
data merge entity @s[scores={age=10}] {start_interpolation:-1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0625f,0.0625f,0.0625f],translation:[0.0f,0.0f,0.0f]}}
kill @s[scores={age=12..}]
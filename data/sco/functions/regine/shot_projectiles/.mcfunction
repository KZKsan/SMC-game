#>sco:regine/shot_projectiles/
#@within sco:main
#declare tag rg_shot_projectiles
execute on origin store success score # _ if entity @s[tag=rg_shot_projectiles]
scoreboard players set @s shot_projectiles 0
execute if score # _ matches 0 run return 0
kill
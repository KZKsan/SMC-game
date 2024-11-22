#>sco:regine/shot_projectiles/
#@within sco:main
#declare tag rg.shot_projectiles
execute on origin store success score # _ if entity @s[type=player,tag=rg.shot_projectiles]
scoreboard players set @s shot_projectiles 0
execute if score # _ matches 0 run return 0
execute if entity @s[predicate=sco:regine/shot_projectiles/small] run data modify storage _ item_data set from entity @s item
execute if entity @s[predicate=!sco:regine/shot_projectiles/small] run data modify storage _ item_data set from entity @s Item
execute on origin run function item/macro/give/
kill
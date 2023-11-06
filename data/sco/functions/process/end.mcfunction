#>sco:process/end
#@within sco:process/**
tellraw @a "終了"

scoreboard players set process game 0
scoreboard players set runtime game -1
scoreboard players reset last gameID
scoreboard players reset @a gameID
tag @a remove join_red
tag @a remove join_blue
tag @a[tag=rg_drop_item] remove rg_drop_item
tag @a[tag=rg_shot_projectiles] remove rg_shot_projectiles
effect clear @a[predicate=sco:team_join]
execute as @a[team=!] run function sco:player/retune_lobby
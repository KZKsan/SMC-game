#>sco:start/
#@public
execute store result score # _ if entity @a[team=random_team]
execute if entity @p[team=red] run scoreboard players add # _ 1
execute if entity @p[team=blue] run scoreboard players add # _ 1
scoreboard players set # _ 2
execute if score # _ matches 2.. run function sco:start/set_score
execute if score # _ matches ..1 run say Error
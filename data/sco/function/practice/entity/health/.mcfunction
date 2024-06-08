#>sco:practice/entity/health/
#@within sco:practice/entity/sandbag/
execute store result score #damage _ run data get entity @s Health 10
scoreboard players set #health _ 8000
scoreboard players set #10 _ 10
execute if score #damage _ > #health _ run function sco:practice/entity/health/heal
execute if score #damage _ <= #health _ run function sco:practice/entity/health/hurt
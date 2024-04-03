#>sco:practice/entity/health/
#@within sco:practice/entity/sandbag/
execute store result score #damage _ run data get entity @s Health 10
scoreboard players set #health _ 5000
scoreboard players set #10 _ 10
scoreboard players operation #health _ -= #damage _
scoreboard players operation #health-0_1 _ = #health _
scoreboard players operation #health-0_1 _ %= #10 _
scoreboard players operation #health _ /= #10 _
summon text_display ^ ^ ^ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},billboard:"center",teleport_duration:5,interpolation_duration:5,Tags:["health_pop"],text:'[{"score":{"name":"#health","objective":"_"},"color":"red","bold":true},".",{"score":{"name":"#health-0_1","objective":"_"},"color":"red","bold":true}]'}
data modify entity @s Health set value 500f
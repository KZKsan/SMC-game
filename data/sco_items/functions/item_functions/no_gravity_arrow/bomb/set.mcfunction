#>sco_items:item_functions/no_gravity_arrow/bomb/set
#@within sco_items:item_functions/no_gravity_arrow/**
tag @s add origin
summon tnt ~ ~ ~ {Tags:[set_data,no_gravity_arrow.bomb],Motion:[0.0d,0.2d,0.0d],fuse:600,block_state:{Name:"heavy_core"},Passengers:[{id:"marker",Tags:[set_data,no_gravity_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
execute if entity @s[team=red] run tag @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] add red
execute if entity @s[team=blue] run tag @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] add blue
execute if entity @s[team=mode.practice] run tag @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] add mode.practice
execute if entity @s[team=!red,team=!blue,team=!mode.practice] run tag @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] add other
execute if entity @s[predicate=sco:team_join,team=!spectator] run tag @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] add sco-object
execute if entity @s[predicate=sco:team_join,team=!spectator] run tag @e[type=marker,tag=no_gravity_arrow.marker,tag=set_data,limit=1,distance=..2] add sco-object
execute store result entity @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] Motion[0] double 0.00001 run random value -4000..4000
execute store result entity @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] Motion[2] double 0.00001 run random value -4000..4000
damage @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] 1
data modify entity @e[type=marker,tag=no_gravity_arrow.marker,tag=set_data,limit=1,distance=..2] data.Owner set from entity @s UUID
tag @e[type=tnt,tag=no_gravity_arrow.bomb,tag=set_data,limit=1,distance=..2] remove set_data
tag @e[type=marker,tag=no_gravity_arrow.marker,tag=set_data,limit=1,distance=..2] remove set_data
tag @s remove origin
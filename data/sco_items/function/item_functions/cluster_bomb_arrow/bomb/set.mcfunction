#>sco_items:item_functions/cluster_bomb_arrow/bomb/set
#@within sco_items:item_functions/cluster_bomb_arrow/**
tag @s add origin
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb,center],Motion:[0.0d,0.2d,0.0d],fuse:81,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[0.6d,0.2d,0.0d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[-0.6d,0.2d,0.0d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[0.6d,0.2d,0.6d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[0.6d,0.2d,-0.6d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[-0.6d,0.2d,0.6d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[-0.6d,0.2d,-0.6d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[0.0d,0.2d,0.6d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
summon tnt ~ ~ ~ {Tags:[set_data,cluster_bomb_arrow.bomb],Motion:[0.0d,0.2d,-0.6d],fuse:100,block_state:{Name:"tnt"},Passengers:[{id:"marker",Tags:[set_data,cluster_bomb_arrow.marker],data:{Owner:[I;0,0,0,0]}}]}
execute if entity @s[team=red] run tag @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] add red
execute if entity @s[team=blue] run tag @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] add blue
execute if entity @s[team=mode.practice] run tag @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] add mode.practice
execute if entity @s[team=!red,team=!blue,team=!mode.practice] run tag @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] add other
execute if entity @s[predicate=sco:team_join,team=!spectator] run tag @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] add sco-object
execute if entity @s[predicate=sco:team_join,team=!spectator] run tag @e[type=marker,tag=cluster_bomb_arrow.marker,tag=set_data,distance=..2] add sco-object

execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=center] store result entity @s Motion[0] double 0.00001 run random value -4000..4000
execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=center] store result entity @s Motion[2] double 0.00001 run random value -4000..4000
scoreboard players set @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=center] age 20

execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=!center] store result entity @s Motion[0] double 0.00001 run random value -70000..70000
execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=!center] store result entity @s Motion[2] double 0.00001 run random value -70000..70000
execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=!center] store result score @s age run random value 0..19
scoreboard players set @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=!center] _ 101
execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2,tag=!center] store result entity @s fuse int 1 run scoreboard players operation @s _ -= @s age

execute as @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] run damage @s 1
execute as @e[type=marker,tag=cluster_bomb_arrow.marker,tag=set_data,distance=..2] run data modify entity @s data.Owner set from entity @p[tag=origin] UUID
tag @e[type=tnt,tag=cluster_bomb_arrow.bomb,tag=set_data,distance=..2] remove set_data
tag @e[type=marker,tag=cluster_bomb_arrow.marker,tag=set_data,distance=..2] remove set_data
tag @s remove origin
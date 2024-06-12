#>sco:stage_data/stage/blank_fortress/object/bomb/set
#@within sco:stage_data/stage/blank_fortress/object/cannon/**
$summon block_display ~ ~ ~ {Tags:[sco-object,blank_fortress,bomb,set_nbt],block_state:{Name:"tnt"},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0f,-0.3f],scale:[0.6f,0.6f,0.6f]},Passengers:[{id:"marker",Tags:[sco-object,blank_fortress],data:{team:"$(team)"}}]}
execute as @e[tag=set_nbt,tag=blank_fortress,tag=bomb,limit=1] store result score @s stage_object.count.1 run data get entity @s Pos[1] 10
tag @e[tag=set_nbt,tag=blank_fortress,tag=bomb,limit=1] remove set_nbt
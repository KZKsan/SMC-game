#>sco:stage_data/stage/blank_fortress/object/bomb/
#@within sco:stage_data/stage/blank_fortress/gimmick

scoreboard players add @s stage_object.count.0 1
scoreboard players set @s[scores={stage_object.count.0=10}] stage_object.count.0 0

execute if score @s stage_object.count.0 matches ..20 if score @s stage_object.count.1 matches ..-640 run scoreboard players set @s stage_object.count.0 21
execute if function sco:stage_data/stage/blank_fortress/object/bomb/pos/grand positioned over motion_blocking_no_leaves run function sco:stage_data/stage/blank_fortress/object/bomb/explosion/
#execute positioned over motion_blocking_no_leaves run particle explosion ~ ~ ~ 0 0 0 1 1 force
#particle smoke ~ ~ ~ 0 0 0 0 1 force
execute if score @s stage_object.count.0 matches ..20 store result score @s stage_object.count.1 run data get entity @s Pos[1] 10


execute if entity @s[scores={stage_object.count.0=21..}] run function sco:stage_data/stage/blank_fortress/object/bomb/delete
#>sco:stage_data/stage/blank_fortress/object/bomb/pos/grand
#@within sco:stage_data/stage/blank_fortress/object/bomb/
execute positioned over motion_blocking_no_leaves run teleport ~ ~ ~
execute at @s[scores={stage_object.count.0=1}] run function sco:stage_data/stage/blank_fortress/object/bomb/circle
execute store result score # _ run data get entity @s Pos[1] 10
teleport ~ ~-10 ~
execute if score @s stage_object.count.1 <= # _ run return 1
return fail
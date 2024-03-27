#>sco:stage_data/stage/blank_fortress/object/bomb/explosion/
#@within sco:stage_data/stage/blank_fortress/object/bomb/

function sco:stage_data/stage/blank_fortress/object/bomb/break_blocks
execute if data storage sco:data game{friendlyfire:false} on passengers as @s[type=marker] run function sco:stage_data/stage/blank_fortress/object/bomb/explosion/damage/friendlyfire_off with entity @s data
execute unless data storage sco:data game{friendlyfire:false} on passengers as @s[type=marker] run function sco:stage_data/stage/blank_fortress/object/bomb/explosion/damage/friendlyfire_on
particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[distance=..60]
particle explosion ~ ~ ~ 1 1 1 0.3 40 force @a[distance=..60]
particle cloud ~ ~ ~ 0 0 0 0.1 30 force @a[distance=..60]
particle cloud ~ ~ ~ 0 0 0 0.2 10 force @a[distance=..60]
particle cloud ~ ~ ~ 0 0 0 2 60 force @a[distance=..60]
particle large_smoke ~ ~ ~ 0 0 0 0.2 30 force @a[distance=..60]
teleport ~ ~ ~
playsound entity.generic.explode record @a ~ ~ ~ 0.8 1
scoreboard players set @s stage_object.count.0 21
#>sco:stage_data/stage/blank_fortress/gimmick
#@within sco:stage_data/gimmick

execute as @e[type=interaction, tag=blank_fortress, tag=pickup_coal] at @s run function sco:stage_data/stage/blank_fortress/object/pickup_coal/
execute as @e[type=interaction, tag=blank_fortress, tag=cannon] at @s run function sco:stage_data/stage/blank_fortress/object/cannon/
execute as @e[type=block_display, tag=blank_fortress, tag=bomb] at @s run function sco:stage_data/stage/blank_fortress/object/bomb/
#>sco:stage_data/stage/blank_fortress/generate/set_field/set_buildings/loop
#@within sco:stage_data/stage/blank_fortress/generate/set_field/set_buildings/
#@private
execute store result score # _ run random value 0..2

execute if score # _ matches 0 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/cannon
execute if score # _ matches 1 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/thunder
execute if score # _ matches 2 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/power_bullet

scoreboard players remove #i _ 1
execute if score #i _ matches 1.. run function sco:stage_data/stage/blank_fortress/generate/set_field/set_buildings/loop
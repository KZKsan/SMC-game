#>sco:stage_data/stage/blank_fortress/generate/set_field/set_buildings/
#@within sco:stage_data/stage/blank_fortress/generate/setup
#execute store result score #i _ run random value 1..2
#function sco:stage_data/stage/blank_fortress/generate/set_field/set_buildings/loop

execute store result score # _ run random value 0..1

execute if score # _ matches 0 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/cannon
execute if score # _ matches 1 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/power_bullet

execute store result score # _ run random value 0..4

execute if score # _ matches 0 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/cannon
execute if score # _ matches 1 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/thunder
execute if score # _ matches 2 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/shield
execute if score # _ matches 3 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/boost
execute if score # _ matches 4 positioned ^-4 ^-1 ^ run function sco:stage_data/stage/blank_fortress/generate/set_field/boost

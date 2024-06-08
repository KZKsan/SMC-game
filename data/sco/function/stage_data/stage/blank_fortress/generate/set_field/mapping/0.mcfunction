#>sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2

execute if block ^ ^ ^ emerald_block positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ #sco:stage_data/blank_fortress/generate_buildings/all positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ diamond_block positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ air positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ air positioned as @e[type=marker,tag=sco_builder] run fill ^ ^ ^ ^-3 ^ ^3 diamond_block

function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/tp
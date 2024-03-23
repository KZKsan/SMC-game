#>sco:stage_data/stage/blank_fortress/generate/set_field/mapping/2

execute if block ^ ^ ^ emerald_block positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ redstone_block positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
#execute if block ^ ^ ^ redstone_block positioned as @e[type=marker,tag=sco_builder] run fill ^ ^ ^ ^-3 ^ ^3 redstone_block
execute if block ^ ^ ^ netherite_block positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ diamond_block positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ air positioned as @e[type=marker,tag=sco_builder] run fill ^1 ^ ^-1 ^-4 ^ ^4 emerald_block replace air
execute if block ^ ^ ^ air positioned as @e[type=marker,tag=sco_builder] run fill ^ ^ ^ ^-3 ^ ^3 diamond_block
#execute positioned as @e[type=marker,tag=sco_builder] run setblock ~ ~1 ~ redstone_block
function sco:stage_data/stage/blank_fortress/generate/set_field/mapping/tp